CREATE OR REPLACE FUNCTION cadastre.get_label(name_firstpart character varying, name_lastpart character varying)
  RETURNS character varying AS
$BODY$
BEGIN
  if(name_lastpart is null or name_lastpart = '') then
    return name_firstpart;
  else
    return name_firstpart || '/' || name_lastpart;
  end if;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION cadastre.get_label(name_firstpart character varying, name_lastpart character varying)
  OWNER TO postgres;
COMMENT ON FUNCTION cadastre.get_label(name_firstpart character varying, name_lastpart character varying) IS 'Returns cadastre object label based on provided name first and last parts.';

update system.query set sql = 
'select co.id, cadastre.get_label(co.name_firstpart, co.name_lastpart) as parcel_nr, (select string_agg(ba.name_firstpart || ''/'' || ba.name_lastpart, '','') from administrative.ba_unit_contains_spatial_unit bas, administrative.ba_unit ba where spatial_unit_id= co.id and bas.ba_unit_id= ba.id) as ba_units, (SELECT spatial_value_area.size FROM cadastre.spatial_value_area WHERE spatial_value_area.type_code=''officialArea'' and spatial_value_area.spatial_unit_id = co.id) AS area_official_sqm, st_asewkb(st_transform(co.geom_polygon, #{srid})) as the_geom from cadastre.cadastre_object co where type_code= ''parcel'' and status_code= ''current'' and ST_Intersects(st_transform(co.geom_polygon, #{srid}), ST_SetSRID(ST_GeomFromWKB(#{wkb_geom}), #{srid}))'
where name = 'dynamic.informationtool.get_parcel';

update system.query set sql = 
'select co.id, cadastre.get_label(co.name_firstpart, co.name_lastpart) as parcel_nr, (select string_agg(ba.name_firstpart || ''/'' || ba.name_lastpart, '','') from administrative.ba_unit_contains_spatial_unit bas, administrative.ba_unit ba where spatial_unit_id= co.id and bas.ba_unit_id= ba.id) as ba_units, (SELECT spatial_value_area.size FROM cadastre.spatial_value_area WHERE spatial_value_area.type_code=''officialArea'' and spatial_value_area.spatial_unit_id = co.id) AS area_official_sqm, st_asewkb(st_transform(co.geom_polygon, #{srid})) as the_geom from cadastre.cadastre_object co inner join administrative.ba_unit_contains_spatial_unit ba_co on co.id = ba_co.spatial_unit_id inner join administrative.ba_unit ba_unit on ba_unit.id= ba_co.ba_unit_id where co.type_code=''parcel'' and co.status_code= ''historic'' and ba_unit.status_code = ''current'' and ST_Intersects(st_transform(co.geom_polygon, #{srid}), ST_SetSRID(ST_GeomFromWKB(#{wkb_geom}), #{srid}))'
where name = 'dynamic.informationtool.get_parcel_historic_current_ba';

update system.query set sql = 
'select co.id, cadastre.get_label(co.name_firstpart, co.name_lastpart) as parcel_nr, (SELECT spatial_value_area.size FROM cadastre.spatial_value_area WHERE spatial_value_area.type_code=''officialArea'' and spatial_value_area.spatial_unit_id = co.id) AS area_official_sqm, st_asewkb(st_transform(co.geom_polygon, #{srid})) as the_geom from cadastre.cadastre_object co  where type_code= ''parcel'' and ((status_code= ''pending'' and ST_Intersects(st_transform(co.geom_polygon, #{srid}), ST_SetSRID(ST_GeomFromWKB(#{wkb_geom}), #{srid}))) or (co.id in (select cadastre_object_id from cadastre.cadastre_object_target co_t inner join transaction.transaction t on co_t.transaction_id=t.id where ST_Intersects(st_transform(co.geom_polygon, #{srid}), ST_SetSRID(ST_GeomFromWKB(#{wkb_geom}), #{srid})) and t.status_code not in (''approved''))))'
where name = 'dynamic.informationtool.get_parcel_pending';

update system.query set sql = 
'select distinct co.id,  ba_unit.name_firstpart || ''/ '' || ba_unit.name_lastpart || '' > '' || cadastre.get_label(co.name_firstpart, co.name_lastpart) as label,  st_asewkb(st_transform(geom_polygon, #{srid})) as the_geom from cadastre.cadastre_object  co    inner join administrative.ba_unit_contains_spatial_unit bas on co.id = bas.spatial_unit_id     inner join administrative.ba_unit on ba_unit.id = bas.ba_unit_id  where (co.status_code= ''current'' or ba_unit.status_code= ''current'')    and compare_strings(#{search_string}, ba_unit.name_firstpart || '' '' || ba_unit.name_lastpart) limit 30'
where name = 'map_search.cadastre_object_by_baunit';

update system.query set sql = 
'select distinct co.id,  coalesce(party.name, '''') || '' '' || coalesce(party.last_name, '''') || '' > '' || cadastre.get_label(co.name_firstpart, co.name_lastpart) as label,  st_asewkb(st_transform(co.geom_polygon, #{srid})) as the_geom  from cadastre.cadastre_object  co     inner join administrative.ba_unit_contains_spatial_unit bas on co.id = bas.spatial_unit_id     inner join administrative.ba_unit on bas.ba_unit_id= ba_unit.id     inner join administrative.rrr on (ba_unit.id = rrr.ba_unit_id and rrr.status_code = ''current'' and rrr.type_code = ''ownership'')     inner join administrative.party_for_rrr pfr on rrr.id = pfr.rrr_id     inner join party.party on pfr.party_id= party.id where (co.status_code= ''current'' or ba_unit.status_code= ''current'')     and compare_strings(#{search_string}, coalesce(party.name, '''') || '' '' || coalesce(party.last_name, '''')) limit 30'
where name = 'map_search.cadastre_object_by_baunit_owner';

update system.query set sql = 
'select id, cadastre.get_label(name_firstpart, name_lastpart) as label, st_asewkb(st_transform(geom_polygon, #{srid})) as the_geom  from cadastre.cadastre_object  where status_code= ''current'' and compare_strings(#{search_string}, name_firstpart || '' '' || coalesce(name_lastpart, '''')) limit 30'
where name = 'map_search.cadastre_object_by_number';

update system.query set sql = 
'select distinct co.id,  ba_unit.name || '' > '' || cadastre.get_label(co.name_firstpart, co.name_lastpart) as label,  st_asewkb(st_transform(geom_polygon, #{srid})) as the_geom from cadastre.cadastre_object  co    inner join administrative.ba_unit_contains_spatial_unit bas on co.id = bas.spatial_unit_id     inner join administrative.ba_unit on ba_unit.id = bas.ba_unit_id  where (co.status_code= ''current'' or ba_unit.status_code= ''current'') and ba_unit.name is not null   and compare_strings(#{search_string}, ba_unit.name) limit 30'
where name = 'map_search.cadastre_object_by_title';

update system.query set sql = 
'select co.id, cadastre.get_label(co.name_firstpart, co.name_lastpart) as label,  st_asewkb(st_transform(co.geom_polygon, #{srid})) as the_geom from cadastre.cadastre_object co where type_code= ''parcel'' and status_code= ''current'' and ST_Intersects(st_transform(co.geom_polygon, #{srid}), ST_SetSRID(ST_3DMakeBox(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) and st_area(co.geom_polygon)> power(5 * #{pixel_res}, 2)'
where name = 'SpatialResult.getParcels';

update system.query set sql = 
'select co.id, cadastre.get_label(co.name_firstpart, co.name_lastpart) as label,  st_asewkb(st_transform(co.geom_polygon, #{srid})) as the_geom from cadastre.cadastre_object co inner join administrative.ba_unit_contains_spatial_unit ba_co on co.id = ba_co.spatial_unit_id   inner join administrative.ba_unit ba_unit on ba_unit.id= ba_co.ba_unit_id where co.type_code=''parcel'' and co.status_code= ''historic'' and ba_unit.status_code = ''current'' and ST_Intersects(st_transform(co.geom_polygon, #{srid}), ST_SetSRID(ST_3DMakeBox(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid}))'
where name = 'SpatialResult.getParcelsHistoricWithCurrentBA';

update system.query set sql = 
'select co.id, cadastre.get_label(co.name_firstpart, co.name_lastpart) as label,  st_asewkb(st_transform(co.geom_polygon, #{srid})) as the_geom  from cadastre.cadastre_object co  where type_code= ''parcel'' and status_code= ''pending''   and ST_Intersects(st_transform(co.geom_polygon, #{srid}), ST_SetSRID(ST_3DMakeBox(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid})) union select co.id, cadastre.get_label(co.name_firstpart, co.name_lastpart) as label,  st_asewkb(co_t.geom_polygon) as the_geom  from cadastre.cadastre_object co inner join cadastre.cadastre_object_target co_t on co.id = co_t.cadastre_object_id and co_t.geom_polygon is not null where ST_Intersects(co_t.geom_polygon, ST_SetSRID(ST_3DMakeBox(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid}))       and co_t.transaction_id in (select id from transaction.transaction where status_code not in (''approved'')) '
where name = 'SpatialResult.getParcelsPending';


