UPDATE application.request_type
   SET 
       status='c'
 WHERE code = 'cadastreChange';
UPDATE application.request_type
   SET 
       status='c'
 WHERE code = 'redefineCadastre';

 UPDATE source.administrative_source_type
   SET 
       display_value ='Survey Plan'
 WHERE code = 'cadastralSurvey';

DROP FUNCTION get_geometry_with_srid(geometry);

CREATE OR REPLACE FUNCTION get_geometry_with_srid(geom geometry)
  RETURNS geometry AS
$BODY$
declare
  srid_found integer;
  x float;
  last_part geometry;
begin
  if (select count(*) from system.crs) = 1 then
    return geom;
  end if;
  x = st_x(st_transform(st_centroid(geom), 4326));
  srid_found = (select srid from system.crs where x >= from_long and x < to_long );
  last_part := ST_SetSRID(geom,srid_found);
  --return st_transform(geom, srid_found);

 -- return  ST_Transform(
  -- ST_GeomFromText(
  -- ST_AsText(geom),4326),32629);
  return geom; 
end;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION get_geometry_with_srid(geometry)
  OWNER TO postgres;
COMMENT ON FUNCTION get_geometry_with_srid(geometry) IS 'This function assigns a srid found in the settings to the geometry passed as parameter. The srid is chosen based in the longitude where the centroid of the geometry is.';