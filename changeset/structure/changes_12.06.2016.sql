
INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('cadastralSurvey', 'existingParcel');

-- DROP VIEW cadastre.survey_plan_view;

CREATE OR REPLACE VIEW cadastre.survey_plan_view AS 
 SELECT sp.id, sp.approval_datetime AS dsl_date, 
    (sp.name_lastpart::text || '/'::text) || sp.name_firstpart::text AS ls_nr, 
    sp.owner_name, sp.address, sp.land_type, sp.parcel_area, sp.east_neighbour, 
    sp.west_neighbour, sp.south_neighbour, sp.north_neighbour, sp.survey_method, 
    sp.survey_date, sp.survey_type_code, 
    (sp.ref_name_firstpart::text || '/'::text) || sp.ref_name_firstpart::text AS ref_survey, 
    sp.survey_number, sp.correspondence_file, sp.drawn_by, sp.checked_by, 
    sp.checking_date, 
    (pls.name::text || ' '::text) || pls.last_name::text AS license_surveyor
   FROM transaction.transaction tt, application.service ss, cadastre.cadastre_object sp
   JOIN party.party pls ON sp.licensed_surveyor_id::text = pls.id::text
   JOIN party.party pco ON sp.charting_officer_id::text = pco.id::text
   JOIN party.party pslco ON sp.state_land_clearing_officer_id::text = pslco.id::text
  WHERE sp.land_type::text <> 'state_land'::text
  and sp.transaction_id = tt.id
  and tt.from_service_id  = ss.id
  and ss.request_type_code = 'newParcel'
  ORDER BY sp.id;

ALTER TABLE cadastre.survey_plan_view
  OWNER TO postgres;

delete from system.config_map_layer_metadata where name_layer = 'road-centerlines';
INSERT INTO system.config_map_layer_metadata (name_layer, name, value) VALUES ('road-centerlines', 'in-plan-production', 'true');

delete from system.config_map_layer_metadata where name_layer = 'place-names';
INSERT INTO system.config_map_layer_metadata (name_layer, name, value) VALUES ('place-names', 'in-plan-production', 'true');




-- ADDED overlapping parcels layer
DELETE FROM cadastre.level WHERE "name" IN ('OverlappingParcels');
DELETE FROM system.config_map_layer WHERE "name" IN ('overlappingparcels');
DELETE FROM system.query WHERE name IN ('SpatialResult.getOverlappingParcels');

-- cadastre.level
INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'OverlappingParcels', 'all', 'polygon', 'mixed', 'test');

-- system.query
INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getOverlappingParcels', 'SELECT co.id, co.name_firstpart as label,  st_asewkb(co.geom_polygon) as the_geom  
from cadastre.cadastre_object co, cadastre.cadastre_object co_int 
where co.type_code= ''parcel''  and co_int.type_code= ''parcel'' 
  and co.id > co_int.id
  and ST_Intersects(co.geom_polygon, st_buffer(co_int.geom_polygon, -0.03))
  and ST_Intersects(co.geom_polygon, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid}))
  and ST_Intersects(co_int.geom_polygon, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid}))', 'The spatial query that retrieves Overlapping');

-- system.config_map_layer
INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('overlappingparcels', 'OverlappingParcels', 'pojo', true, false, 81, 'overlappingparcels.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getOverlappingParcels');

update system.map_search_option set active = false where code = 'BAUNIT';
update system.map_search_option set active = false where code = 'LOCALITY';
update system.map_search_option set active = false where code = 'TITLE';
update system.map_search_option set active = false where code = 'OWNER_OF_BAUNIT';



delete from system.map_search_option where query_name = 'map_search.cadastre_object_pending';
delete from system.query where name = 'map_search.cadastre_object_pending';
insert into system.query(name, sql) values('map_search.cadastre_object_pending', 'select id, cadastre.get_label(name_firstpart, name_lastpart) as label, st_asewkb(st_transform(geom_polygon, #{srid})) as the_geom  from cadastre.cadastre_object  where status_code= ''pending'' and compare_strings(#{search_string}, name_firstpart || '' '' || coalesce(name_lastpart, '''')) limit 30');
insert into system.map_search_option(code, title, query_name, active, min_search_str_len, zoom_in_buffer) values('PENDING', 'Pending Parcel', 'map_search.cadastre_object_pending', true, 3, 50);

INSERT INTO system.br (id, display_name, technical_type_code, feedback, description, technical_description) VALUES ('new-survey-objects-do-not-overlap', 'new-survey-objects-do-not-overlap', 'sql', 'The new parcel polygons must not overlap::::Новые участки не должны пересекаться.::::مضلعات القطعة الجديدة يجب ان لا تتداخل::::Les polygones des nouvelles parcelles ne doivent pas se superposer.::::::::::::Os polígonos das novas parcelas não devem se sobrepor.::::::::新宗地多边形不能重叠。', NULL, '#{id}(transaction_id) is requested. Check the union of new co has the same area as the sum of all areas of new co-s, which means the new co-s don''t overlap');
delete from system.br_definition where br_id = 'new-survey-objects-do-not-overlap';
INSERT INTO system.br_definition (br_id, active_from, active_until, body) VALUES ('new-survey-objects-do-not-overlap', '2014-02-20', 'infinity', 'WITH tolerance AS (SELECT CAST(ABS(LOG((CAST (vl AS NUMERIC)^2))) AS INT) AS area FROM system.setting where name = ''map-tolerance'' LIMIT 1)
SELECT COALESCE(ROUND(CAST (ST_AREA(ST_UNION(co.geom_polygon))AS NUMERIC), (SELECT area FROM tolerance)) = 
		ROUND(CAST(SUM(ST_AREA(co.geom_polygon))AS NUMERIC), (SELECT area FROM tolerance)), 
		TRUE) AS vl
FROM cadastre.cadastre_object co 
');
INSERT INTO system.br_validation (id, br_id, target_code, target_application_moment, target_service_moment, target_reg_moment, target_request_type_code, target_rrr_type_code, severity_code, order_of_execution) VALUES (uuid_generate_v1(), 'new-survey-objects-do-not-overlap', 'cadastre_object', NULL, NULL, 'pending', 'newParcel', NULL, 'warning', 802);
INSERT INTO system.br_validation (id, br_id, target_code, target_application_moment, target_service_moment, target_reg_moment, target_request_type_code, target_rrr_type_code, severity_code, order_of_execution) VALUES (uuid_generate_v1(), 'new-survey-objects-do-not-overlap', 'cadastre_object', NULL, NULL, 'current', 'newParcel', NULL, 'medium', 803);


INSERT INTO system.br (id, display_name, technical_type_code, feedback, description, technical_description) VALUES ('existing-survey-objects-do-not-overlap', 'existing-survey-objects-do-not-overlap', 'sql', 'The existing parcel polygons must not overlap::::Новые участки не должны пересекаться.::::مضلعات القطعة الجديدة يجب ان لا تتداخل::::Les polygones des nouvelles parcelles ne doivent pas se superposer.::::::::::::Os polígonos das novas parcelas não devem se sobrepor.::::::::新宗地多边形不能重叠。', NULL, '#{id}(transaction_id) is requested. Check the union of existing co has the same area as the sum of all areas of existing co-s, which means the existing co-s don''t overlap');
delete from system.br_definition where br_id = 'existing-survey-objects-do-not-overlap';
INSERT INTO system.br_definition (br_id, active_from, active_until, body) VALUES ('existing-survey-objects-do-not-overlap', '2014-02-20', 'infinity', 'WITH tolerance AS (SELECT CAST(ABS(LOG((CAST (vl AS NUMERIC)^2))) AS INT) AS area FROM system.setting where name = ''map-tolerance'' LIMIT 1)

SELECT COALESCE(ROUND(CAST (ST_AREA(ST_UNION(co.geom_polygon))AS NUMERIC), (SELECT area FROM tolerance)) = 
		ROUND(CAST(SUM(ST_AREA(co.geom_polygon))AS NUMERIC), (SELECT area FROM tolerance)), 
		TRUE) AS vl
FROM cadastre.cadastre_object co 
');
INSERT INTO system.br_validation (id, br_id, target_code, target_application_moment, target_service_moment, target_reg_moment, target_request_type_code, target_rrr_type_code, severity_code, order_of_execution) VALUES (uuid_generate_v1(), 'existing-survey-objects-do-not-overlap', 'cadastre_object', 'service', 'complete', NULL, 'existingParcel', NULL, 'warning', 800);
INSERT INTO system.br_validation (id, br_id, target_code, target_application_moment, target_service_moment, target_reg_moment, target_request_type_code, target_rrr_type_code, severity_code, order_of_execution) VALUES (uuid_generate_v1(), 'existing-survey-objects-do-not-overlap', 'cadastre_object', NULL, NULL, 'current', 'existingParcel', NULL, 'medium', 801);

 select uuid_generate_v1()
