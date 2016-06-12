INSERT INTO application.request_type(
            code, request_category_code, display_value, description, status, 
            nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            service_panel_code, display_group_code, display_order)
    VALUES ('existingParcel','registrationServices','Existing survey plan','','c', 
    1, 25.00, 0.10, 0.00, 0,null,null,null,'cadastreTransMap','survey',400);

INSERT INTO system.approle(code, display_value, status, description)
    VALUES ('existingParcel', 'Existing survey plan', 'c', '');

INSERT INTO system.approle_appgroup(approle_code, appgroup_id)
    VALUES ('existingParcel', 'super-group-id');


    INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('existingParcel','charting-group-id');
    