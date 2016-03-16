
--- This is for correctly setting up the orthophoto onto localhost
UPDATE system.config_map_layer 
SET url = 'http://localhost:8085/geoserver/sola/wms',
wms_layers= 'sierraleone:sierraleone',
wms_format= 'image/jpeg',
visible_in_start = false,
active = FALSE
WHERE name='orthophoto';

--- This is for correctly setting up the orthophoto onto katsina land ministry server
--UPDATE system.config_map_layer 
--SET url = 'http://192.168.0.6:8085/geoserver/katsina/wms',
--wms_layers= 'katsina:katsina',
--wms_format= 'image/jpeg',
--visible_in_start = TRUE,
--active = TRUE
--WHERE name='orthophoto';


----- Existing Layer Updates ----
-- Remove layers from core SOLA that are not used by katsina, Nigeria
--DELETE FROM system.config_map_layer WHERE "name" IN ('place-names', 'survey-controls', 'roads'); 


-- Configure the new Navigation Layer
 

-- Setup Spatial Config for Sierra Leone
-- CLEAR CADASTRE DATABASE TABLES
DELETE FROM cadastre.spatial_value_area;
DELETE FROM cadastre.spatial_unit;
DELETE FROM cadastre.spatial_unit_historic;
DELETE FROM cadastre.level WHERE "name" IN ('Region', 'District');
DELETE FROM cadastre.level WHERE "name" IN ('Regions', 'Districts');
DELETE FROM system.config_map_layer WHERE name IN ('region', 'district');
DELETE FROM system.config_map_layer WHERE name IN ('regions', 'districts');
DELETE FROM cadastre.cadastre_object;
DELETE FROM cadastre.cadastre_object_historic;

-- Configure the Level data for Sierra Leone
-- add levels

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'Region', 'all', 'polygon', 'mixed', 'test');

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'District', 'all', 'polygon', 'mixed', 'test');

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'Chiefdom', 'all', 'polygon', 'mixed', 'test');

INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'Section', 'all', 'polygon', 'mixed', 'test');


--UPDATE system.config_map_layer

--Changes made by Momodu and Moses to add a new layer for sections - 10/03/2016
DELETE FROM system.config_map_layer WHERE name IN ('sug_reg', 'sug_dist', 'sug_chief', 'sug_sect');
DELETE FROM system.config_map_layer WHERE name IN ('sug_regs', 'sug_dists', 'sug_chiefs', 'sug_sects');
DELETE FROM system.config_map_layer WHERE name IN ('sug_lga', 'sug_ward', 'sug_section');
DELETE FROM system.config_map_layer WHERE "name" IN ('sug_lga', 'sug_wards', 'sug_sections');
DELETE FROM system.query WHERE name IN ('SpatialResult.getRegion', 'SpatialResult.getDistrict', 'SpatialResult.getChiefdom', 'SpatialResult.getSection');
DELETE FROM system.query WHERE name IN ('SpatialResult.getRegions', 'SpatialResult.getDistricts', 'SpatialResult.getChiefdoms', 'SpatialResult.getSections');

INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getRegion', 'select id, label, geom as the_geom from cadastre.reg where ST_Intersects(geom, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)', 'The spatial query that retrieves LGA');

INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getDistrict', 'select id, label, geom as the_geom from cadastre.dist where ST_Intersects(geom, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)', 'The spatial query that retrieves LGA');

INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getChiefdom', 'select id, label, geom as the_geom from cadastre.chief where ST_Intersects(geom, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)', 'The spatial query that retrieves LGA');

INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getSection', 'select id, label, geom as the_geom from cadastre.sect where ST_Intersects(geom, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)', 'The spatial query that retrieves LGA');

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_reg', 'Region', 'pojo', true, true, 90, 'reg.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getRegion');

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_dist', 'District', 'pojo', true, true, 90, 'dist.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getDistrict');

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_chief', 'Chiefdom', 'pojo', true, true, 90, 'chief.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getChiefdom');

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_sect', 'Section', 'pojo', true, true, 90, 'sect.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getSection');

 
--DROP VIEW cadastre.lga;

CREATE OR REPLACE VIEW cadastre.reg AS 
 SELECT s.id, s.label, s.geom
 FROM cadastre.spatial_unit_group s
 WHERE hierarchy_level=1;


ALTER TABLE cadastre.reg
  OWNER TO postgres;    

--DROP VIEW cadastre.ward;

CREATE OR REPLACE VIEW cadastre.dist AS 
 SELECT s.id, s.label, s.geom
 FROM cadastre.spatial_unit_group s
 WHERE hierarchy_level=2;


ALTER TABLE cadastre.dist
  OWNER TO postgres;
   

CREATE OR REPLACE VIEW cadastre.chief AS 
 SELECT s.id, s.label, s.geom
 FROM cadastre.spatial_unit_group s
 WHERE hierarchy_level=3;


ALTER TABLE cadastre.chief
  OWNER TO postgres; 


CREATE OR REPLACE VIEW cadastre.sect AS 
 SELECT s.id, s.label, s.geom
 FROM cadastre.spatial_unit_group s
 WHERE hierarchy_level=4;


ALTER TABLE cadastre.sect
  OWNER TO postgres;

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
--INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	--VALUES ('overlappingparcels', 'OverlappingParcels', 'pojo', true, false, 81, 'overlappingparcels.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getOverlappingParcels');




---------------------------------------------
----- update map search option
update system.map_search_option set active = true where code = 'BAUNIT';
update system.map_search_option set active = false where code = 'OWNER_OF_BAUNIT';
update system.config_map_layer set active = false, visible_in_start= false where name = 'parcels-historic-current-ba';
update system.map_search_option set title = 'Parcel' where code = 'NUMBER';

delete from system.map_search_option where query_name = 'map_search.cadastre_object_by_title';
delete from system.query where name = 'map_search.cadastre_object_by_title';
insert into system.query(name, sql) values('map_search.cadastre_object_by_title', 'select distinct co.id,  ba_unit.name || '' > '' || co.name_firstpart || ''/ '' || co.name_lastpart as label,  st_asewkb(st_transform(geom_polygon, #{srid})) as the_geom from cadastre.cadastre_object  co    inner join administrative.ba_unit_contains_spatial_unit bas on co.id = bas.spatial_unit_id     inner join administrative.ba_unit on ba_unit.id = bas.ba_unit_id  where (co.status_code= ''current'' or ba_unit.status_code= ''current'') and ba_unit.name is not null   and compare_strings(#{search_string}, ba_unit.name) limit 30');
insert into system.map_search_option(code, title, query_name, active, min_search_str_len, zoom_in_buffer) values('TITLE', 'Title', 'map_search.cadastre_object_by_title', true, 3, 50);


-------------------------------------------- 
 --SET NEW SRID and OTHER katsina PARAMETERS
UPDATE public.geometry_columns SET srid = 32628; 
UPDATE application.application set location = null;
UPDATE system.setting SET vl = '32629' WHERE "name" = 'map-srid'; 
UPDATE system.setting SET vl = '932994.67' WHERE "name" = 'map-west'; 
UPDATE system.setting SET vl = '228878.21' WHERE "name" = 'map-south'; 
UPDATE system.setting SET vl = '933293.94' WHERE "name" = 'map-east'; 
UPDATE system.setting SET vl = '182183.37' WHERE "name" = 'map-north';

--DELETING THE ALREADY INSERTED SPATIAL REFERENCES for SIERRA LEONE and Inserting the New Values
DELETE FROM system.crs WHERE srid IN ('32628', '32629');
Insert into system.crs(srid, item_order) values('32628', 1);
Insert into system.crs(srid, item_order) values('32629', 2);

--UPDATE system.crs SET srid = '32628';
 
---------------update cadastre.hierarchy_level --------------------------
update cadastre.hierarchy_level set status = 'x' where code in ('0','1','2','3','4'); -- disable spatial unit editor for nation, state, lga, ward
--update cadastre.hierarchy_level set status = 'c' where code = '2'; -- enable spatial unit editor for lgas
update cadastre.hierarchy_level set status = 'c' where code = '3'; -- enable spatial unit editor for wards
 



-- Reset the SRID check constraints
ALTER TABLE cadastre.spatial_unit DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.spatial_unit ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) IN (32628, 32629));
ALTER TABLE cadastre.spatial_unit_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.spatial_unit_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) IN (32628, 32629));

ALTER TABLE cadastre.spatial_unit DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
ALTER TABLE cadastre.spatial_unit ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) IN (32628, 32629));
ALTER TABLE cadastre.spatial_unit_historic DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
ALTER TABLE cadastre.spatial_unit_historic ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) IN (32628, 32629));


ALTER TABLE cadastre.spatial_unit_group DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.spatial_unit_group ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) IN (32628, 32629));
ALTER TABLE cadastre.spatial_unit_group_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.spatial_unit_group_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) IN (32628, 32629));

ALTER TABLE cadastre.spatial_unit_group DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
ALTER TABLE cadastre.spatial_unit_group ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) IN (32628, 32629));
ALTER TABLE cadastre.spatial_unit_group_historic DROP CONSTRAINT IF EXISTS enforce_srid_reference_point;
ALTER TABLE cadastre.spatial_unit_group_historic ADD CONSTRAINT enforce_srid_reference_point CHECK (st_srid(reference_point) IN (32628, 32629));
 


ALTER TABLE cadastre.cadastre_object DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;
ALTER TABLE cadastre.cadastre_object ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom_polygon) IN (32628, 32629));
ALTER TABLE cadastre.cadastre_object_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;

--THE geom column does not exist in cadastre_object so we have COMMENTED IT.
--ALTER TABLE cadastre.cadastre_object_historic ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom) IN (32628, 32629));

ALTER TABLE cadastre.cadastre_object_target DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;
ALTER TABLE cadastre.cadastre_object_target ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom_polygon) IN (32628, 32629));
ALTER TABLE cadastre.cadastre_object_target_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom_polygon;

--THE geom column does not exist in cadastre_object_historic so we have COMMENTED It too.
--ALTER TABLE cadastre.cadastre_object_target_historic ADD CONSTRAINT enforce_srid_geom_polygon CHECK (st_srid(geom) IN (32628, 32629));



ALTER TABLE cadastre.cadastre_object_node_target DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.cadastre_object_node_target ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) IN (32628, 32629));
ALTER TABLE cadastre.cadastre_object_node_target_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.cadastre_object_node_target_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) IN (32628, 32629));

ALTER TABLE application.application DROP CONSTRAINT IF EXISTS enforce_srid_location;
ALTER TABLE application.application ADD CONSTRAINT enforce_srid_location CHECK (st_srid(location) IN (32628, 32629));
ALTER TABLE application.application_historic DROP CONSTRAINT IF EXISTS enforce_srid_location;
ALTER TABLE application.application_historic ADD CONSTRAINT enforce_srid_location CHECK (st_srid(location) IN (32628, 32629));

ALTER TABLE cadastre.survey_point DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.survey_point ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) IN (32628, 32629));
ALTER TABLE cadastre.survey_point_historic DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE cadastre.survey_point_historic ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) IN (32628, 32629));

ALTER TABLE cadastre.survey_point DROP CONSTRAINT IF EXISTS enforce_srid_original_geom;
ALTER TABLE cadastre.survey_point ADD CONSTRAINT enforce_srid_original_geom CHECK (st_srid(original_geom) IN (32628, 32629));
ALTER TABLE cadastre.survey_point_historic DROP CONSTRAINT IF EXISTS enforce_srid_original_geom;
ALTER TABLE cadastre.survey_point_historic ADD CONSTRAINT enforce_srid_original_geom CHECK (st_srid(original_geom) IN (32628, 32629));

ALTER TABLE bulk_operation.spatial_unit_temporary DROP CONSTRAINT IF EXISTS enforce_srid_geom;
ALTER TABLE bulk_operation.spatial_unit_temporary ADD CONSTRAINT enforce_srid_geom CHECK (st_srid(geom) IN (32628, 32629));


-- Creates wrapper functions for those PostGIS 1.5 
-- functions used by SOLA that have been deprecated 
-- or removed from PostGIS 2.0
CREATE OR REPLACE FUNCTION ST_MakeBox3D(geometry, geometry)
RETURNS box3d
AS 'SELECT ST_3DMakeBox($1, $2)'
LANGUAGE 'sql' IMMUTABLE STRICT;

CREATE OR REPLACE FUNCTION SetSrid(geometry, integer)
RETURNS geometry
AS 'SELECT ST_SetSrid($1, $2)'
LANGUAGE 'sql' IMMUTABLE STRICT;





