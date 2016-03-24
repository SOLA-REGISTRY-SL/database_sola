----------- SPATIAL_UNIT_GROUP TABLE POPULATION MADE by Paola on 10/09/2013 ----------------------------------------

-- insert State - LGA - Ward hierarchy

DELETE FROM cadastre.spatial_unit_group;

--------------- Country
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user) SELECT distinct 'Nigeria','Nigeria', 0, 'Nigeria', 'test'
	FROM interim_data."LGA" WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);

--------------- Region
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user) SELECT distinct(state),(state), 1, (state), 'test'
	FROM interim_data."LGA" WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);

--------------- District
INSERT INTO cadastre.spatial_unit_group( id, hierarchy_level, label, name, geom, change_user) 
	SELECT state||'/'||lga, 2, lga, state||'/'||lga, ST_GeometryN(the_geom, 1), 'test'
	FROM interim_data."LGA" WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);

--------------- Chiefdom
--- test the inconsistencies in the geometry
INSERT INTO cadastre.spatial_unit_group( id, hierarchy_level, label, name, geom, change_user, seq_nr)
select distinct(lga_group.name ||'/'|| w.ward_temp), 3, w.ward_temp, lga_group.name||'/'||w.ward_temp, ST_GeometryN(w.the_geom, 1), 'test', 0
from cadastre.spatial_unit_group as lga_group,  interim_data."Ward" as w 
where lga_group.hierarchy_level = 2 and st_intersects(lga_group.geom, st_pointonsurface(w.the_geom));

--------------- Sections
--- test the inconsistencies in the geometry
INSERT INTO cadastre.spatial_unit_group( id, hierarchy_level, label, name, geom, change_user, seq_nr)
select ward_group.name || '/' || s.gid, 4, s.gid, ward_group.name || '/' || s.gid, ST_GeometryN(s.the_geom, 1), 'test', 0
from cadastre.spatial_unit_group as ward_group,  interim_data."Section" as s 
where ward_group.hierarchy_level = 3 and st_intersects(ward_group.geom, st_pointonsurface(s.the_geom));



