INSERT INTO system.config_map_layer_metadata(name_layer, name, value) VALUES ('roads', 'in-plan-production', 'true');

CREATE OR REPLACE FUNCTION cadastre.get_label_with_owner(name_firstpart character varying, name_lastpart character varying, owner_name character varying)
  RETURNS character varying AS
$BODY$
BEGIN
  if(name_lastpart is null or name_lastpart = '') then
    return name_firstpart || E'\n' || coalesce(owner_name, '');
  else
    return name_firstpart || '/' || name_lastpart || E'\n' || coalesce(owner_name, '');
  end if;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION cadastre.get_label_with_owner(name_firstpart character varying, name_lastpart character varying, owner_name character varying)
  OWNER TO postgres;
COMMENT ON FUNCTION cadastre.get_label_with_owner(name_firstpart character varying, name_lastpart character varying, owner_name character varying) IS 'Returns cadastre object label based on provided owner name, name first and last parts.';

