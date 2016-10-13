update system.br_validation set severity_code = 'warning' where br_id = 'survey-plan-indemnity-required';
update system.br_validation set severity_code = 'warning' where br_id = 'survey-plan-cleared-by-planning';
update system.br_validation set severity_code = 'warning' where br_id = 'survey-plan-cleared-by-environment';

delete from system.br_validation where br_id = 'new-survey-SL-objects-do-not-overlap' and target_reg_moment = 'pending';
delete from system.br_validation where br_id = 'new-survey-objects-do-not-overlap' and target_reg_moment = 'pending';
delete from system.br_validation where br_id = 'existing-survey-SL-objects-do-not-overlap' and target_reg_moment = 'pending';
delete from system.br_validation where br_id = 'existing-survey-objects-do-not-overlap' and target_reg_moment = 'pending';


update system.config_map_layer set url = 'http://solaproduction:8085/geoserver/sola/wms', wms_layers = 'sola:Freetown', active = true, visible_in_start = true where name = 'orthophoto'; 
INSERT INTO system.config_map_layer(
            name, title, type_code, active, visible_in_start, item_order, 
            style, url, wms_layers, wms_version, wms_format, wms_data_source, 
            pojo_structure, pojo_query_name, pojo_query_name_for_select, 
            shape_location, security_user, security_password, added_from_bulk_operation, 
            use_in_public_display, use_for_ot)
    VALUES ('topo', 'Topo', 'wms', true, false, 11,null, 
            'http://solaproduction:8085/geoserver/sola/wms', 'sola:sierraleone', '1.1.1', 'image/jpeg',null, 
            null, null, null, 
            null, null, null, false, 
            false, false);