update system.query set sql=
'select id, label, st_asewkb(ST_Transform(geom,#{srid})) as the_geom from cadastre.dist 
    where ST_Intersects(ST_Transform(geom,#{srid}), ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)'
where name = 'SpatialResult.getDistrict';

update system.query set sql=
'select id, label, st_asewkb(ST_Transform(geom,#{srid})) as the_geom from cadastre.reg 
    where ST_Intersects(ST_Transform(geom,#{srid}), ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)'
where name = 'SpatialResult.getRegion';

update system.query set sql=
'select id, label, st_asewkb(ST_Transform(geom,#{srid})) as the_geom from cadastre.chiefdom 
    where ST_Intersects(ST_Transform(geom,#{srid}), ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)'
where name = 'SpatialResult.getChiefdom';    

    
INSERT INTO application.request_type(
            code, request_category_code, display_value, description, status, 
            nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            service_panel_code, display_group_code, display_order)
    VALUES ('newParcel', 'registrationServices', 'New survey plan', '', 'c', 
            1, 25.00, 0.10, 0.00, 
            0, null, null, null, 
            'cadastreTransMap', 'survey', 399);

INSERT INTO system.approle(
            code, display_value, status, description)
    VALUES ('newParcel', 'Service - New survey plan', 'c', '"Survey Service. Allows New survey plan service to be started.');

INSERT INTO system.approle_appgroup(approle_code, appgroup_id)
    VALUES ('newParcel', 'super-group-id');

INSERT INTO system.approle_appgroup(approle_code, appgroup_id)
    VALUES ('newParcel', 'ff94bfad-7079-41ea-bf4b-6962e36cad1f');
