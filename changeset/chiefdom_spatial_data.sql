
delete from cadastre.spatial_unit_group where hierarchy_level = 0 ;
delete from cadastre.spatial_unit_group where hierarchy_level = 1 ;
delete from cadastre.spatial_unit_group where hierarchy_level = 2 ;
delete from cadastre.spatial_unit_group where hierarchy_level = 3 ;
--------------- Chiefdom
--INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  
--change_user,geom,seq_nr) Select adm3_name, uuid_generate_v1(), 3, adm3_name, 'test', ST_SetSRID(ST_GeometryN(the_geom, 1),32629), 0 
--name_2, uuid_generate_v1(), 2, name_2, 'test', 
--ST_SetSRID(ST_GeometryN(geom, 1),32629), 0 
--ST_GeometryN(geom, 1) , 0
--ST_SetSRID(ST_GeometryN(geom, 1),32628) , 0 
--FROM public.chiefdom where ST_GeometryN(the_geom, 1) is not null;


--------------- Chiefdom
--INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  
--change_user,geom,seq_nr) Select adm3_name, uuid_generate_v1(), 3, adm3_name, 'test', ST_GeometryN(the_geom, 1), 0 
--FROM cadastre."29Chiefdom" where ST_GeometryN(the_geom, 1) is not null;

--------------- Chiefdom
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  
change_user,geom,seq_nr) Select chiefdom, uuid_generate_v1(), 3, chiefdom, 'test', ST_GeometryN(the_geom, 1), 0 
FROM cadastre."26chief" where ST_GeometryN(the_geom, 1) is not null;


--------------- District
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  
change_user,geom,seq_nr) Select district, uuid_generate_v1(), 2, district, 'test', ST_GeometryN(the_geom, 1), 0 
--ST_Transform(
  -- ST_GeomFromText(
   --ST_AsText(ST_GeometryN(the_geom, 1)),ST_SRID(the_geom)),32629), 0 
FROM cadastre."26district" where ST_GeometryN(the_geom, 1) is not null;




--------------- Region
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  
change_user,geom,seq_nr) Select district, uuid_generate_v1(), 1, district, 'test', ST_GeometryN(the_geom, 1), 0 
--ST_Transform(
  -- ST_GeomFromText(
   --ST_AsText(ST_GeometryN(the_geom, 1)),ST_SRID(the_geom)),32629), 0 
FROM cadastre."29region" where ST_GeometryN(the_geom, 1) is not null;

CREATE OR REPLACE VIEW cadastre.chiefdom AS 
 SELECT s.id, s.label, s.geom
 FROM cadastre.spatial_unit_group s
 WHERE hierarchy_level=3;


ALTER TABLE cadastre.chiefdom
  OWNER TO postgres; 


INSERT INTO cadastre.level (id, name, register_type_code, structure_code, type_code, change_user)
	VALUES (uuid_generate_v1(), 'Chiefdom', 'all', 'polygon', 'mixed', 'test');




delete from system.config_map_layer where name = 'sug_dist';
delete from system.query where name = 'SpatialResult.getDistrict';
INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getDistrict', 'select id, label, st_asewkb(geom) as the_geom from cadastre.dist 
    where ST_Intersects(geom, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)', 'The spatial query that retrieves districts');

INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_dist', 'District', 'pojo', true, true, 90, 'dist.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getDistrict');


INSERT INTO system.query(name, sql, description)
    VALUES ('SpatialResult.getChiefdom', 'select id, label, st_asewkb(geom) as the_geom from cadastre.chiefdom 
    where ST_Intersects(geom, ST_SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(geom)> power(5 * #{pixel_res}, 2)', 'The spatial query that retrieves chiefdom');



INSERT INTO system.config_map_layer (name, title, type_code, active, visible_in_start, item_order, style, pojo_structure, pojo_query_name)
	VALUES ('sug_chiefdom', 'Chiefdom', 'pojo', true, true, 91, 'chiefdom.xml', 'theGeom:Polygon,label:""', 'SpatialResult.getChiefdom');
	


-- View: cadastre.road

-- DROP VIEW cadastre.road;

CREATE OR REPLACE VIEW cadastre.road AS 
 SELECT su.id, su.label, su.geom
   FROM cadastre.level l, cadastre.spatial_unit su
  WHERE l.id::text = su.level_id::text AND l.name::text = 'Roads'::text;

ALTER TABLE cadastre.road
  OWNER TO postgres;

INSERT INTO cadastre.spatial_unit(
            id, label, level_id,  geom) Select  uuid_generate_v1(), roadno, 'c06a4e0c-99dd-11e3-b4a8-df59099d962e', ST_GeometryN(the_geom, 1)
from cadastre."29Roads" 
where ST_GeometryN(the_geom, 1) is not null;

	