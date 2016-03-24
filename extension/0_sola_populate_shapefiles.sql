----------- SPATIAL_UNIT_GROUP TABLE POPULATION MADE by Paola on 10/09/2013 ----------------------------------------

-- insert Country, Region, District, Chiefdom - hierarchy

DELETE FROM cadastre.spatial_unit_group;
<<<<<<< HEAD
<<<<<<< HEAD


--------------- Country
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user) SELECT distinct 'Sierra Leone',uuid_generate_v1(), 0, 'Sierra Leone', 'test'
	FROM interim_data.country;

--------------- Region
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user) Select name_1, uuid_generate_v1(), 1, name_1, 'test' 
FROM interim_data.region;

--------------- District
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user) Select name_2, uuid_generate_v1(), 2, name_2, 'test' 
FROM interim_data.district;

<<<<<<< HEAD
--------------- Chiefdom
---INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user,geom,seq_nr) SELECT name_3, uuid_generate_v1(), 3, name_3, 'test', geom, 0 
---FROM interim_data.chiefdom

--------------- Section
---INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user,geom,seq_nr) SELECT first_sect, uuid_generate_v1(), 4, first_sect, 'test', geom, 0 
=======
=======
>>>>>>> 7bb7cff2c3026c755d9d3e047918e80fc4f76baf
DELETE FROM cadastre.spatial_unit_group_historic;


--------------- Country
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user) SELECT distinct 'Sierra Leone',uuid_generate_v1(), 0, 'Sierra Leone', 'test';
	--FROM interim_data.country;

--------------- Region
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user,geom,seq_nr) Select caption, uuid_generate_v1(), 1, caption, 'test', 
--ST_SetSRID(ST_GeometryN(geom, 1),32629), 0 
--ST_GeometryN(geom, 1) , 0
--ST_SetSRID(ST_GeometryN(geom, 1),32628), 0 
ST_Transform(
   ST_GeomFromText(
   ST_AsText(ST_GeometryN(geom, 1)),4326),32629), 0 
FROM interim_data.region;

--------------- District
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user,geom,seq_nr) Select adm2, uuid_generate_v1(), 2, adm2, 'test', ST_SetSRID(ST_GeometryN(geom, 1),32629), 0 
--name_2, uuid_generate_v1(), 2, name_2, 'test', 
--ST_SetSRID(ST_GeometryN(geom, 1),32629), 0 
--ST_GeometryN(geom, 1) , 0
--ST_SetSRID(ST_GeometryN(geom, 1),32628) , 0 
FROM interim_data.district where ST_GeometryN(geom, 1) is not null;

--------------- Chiefdom
---INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user,geom,seq_nr) SELECT name_3, uuid_generate_v1(), 3, name_3, 'test', ST_SetSRID(ST_GeometryN(geom, 1),32629), 0 
---FROM interim_data.chiefdom

--------------- Section
---INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user,geom,seq_nr) SELECT first_sect, uuid_generate_v1(), 4, first_sect, 'test', ST_SetSRID(ST_GeometryN(geom, 1),32629), 0 
<<<<<<< HEAD
>>>>>>> 7bb7cff2c3026c755d9d3e047918e80fc4f76baf
=======
>>>>>>> 7bb7cff2c3026c755d9d3e047918e80fc4f76baf
---FROM interim_data.sections
 

----------- SPATIAL_UNIT_GROUP_IN TABLE POPULATION ----------------------------------------

DELETE FROM cadastre.spatial_unit_in_group;
<<<<<<< HEAD
<<<<<<< HEAD


INSERT INTO cadastre.spatial_unit_in_group (spatial_unit_group_id, spatial_unit_id, change_user)
	SELECT cadastre.spatial_unit_group.id, cadastre.spatial_unit.id, 'test' FROM cadastre.spatial_unit, cadastre.spatial_unit_group
			WHERE cadastre.spatial_unit.label = cadastre.spatial_unit_group.label;

 
=======
>>>>>>> c56c2cbc92efa7c8f81b332811f8d98843ee68ca
=======
>>>>>>> 7bb7cff2c3026c755d9d3e047918e80fc4f76baf
=======
>>>>>>> 7bb7cff2c3026c755d9d3e047918e80fc4f76baf
