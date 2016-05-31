INSERT INTO system.br(
            id, display_name, technical_type_code, feedback, description, 
            technical_description)
    VALUES ('new-parcel-created', 'new-parcel-created', 'sql', 'Parcel plygon must be created. Only 1 polygon is allowed', null, 
            '#{id}(transaction_id) is requested');

INSERT INTO system.br_definition(
            br_id, active_from, active_until, body)
    VALUES ('new-parcel-created', '2016-01-01', 'infinity', 'select count(*) = 1 as vl from cadastre.cadastre_object where transaction_id= #{id}');

INSERT INTO system.br_validation(
            id, br_id, target_code, target_application_moment, target_service_moment, 
            target_reg_moment, target_request_type_code, target_rrr_type_code, 
            severity_code, order_of_execution)
    VALUES (uuid_generate_v1(), 'new-parcel-created', 'cadastre_object', null, null, 'pending', 'newParcel', null,
            'critical', 100);

UPDATE system.br_validation SET target_request_type_code='cadastreChange' WHERE br_id = 'target-parcels-present';

INSERT INTO system.br(
            id, display_name, technical_type_code, feedback, description, 
            technical_description)
    VALUES ('new-parcel-lastpart-assigned', 'new-parcel-lastpart-assigned', 'sql', 'Parcel first part and last part identifiers must be assigned according to the survey plan details.', null, 
            '#{id}(transaction_id) is requested');

INSERT INTO system.br_definition(
            br_id, active_from, active_until, body)
    VALUES ('new-parcel-lastpart-assigned', '2016-01-01', 'infinity', 'select sum(case when name_firstpart = ''tmp'' then 1 else 0 end)<1 as vl from cadastre.cadastre_object where transaction_id= #{id}');

INSERT INTO system.br_validation(
            id, br_id, target_code, target_application_moment, target_service_moment, 
            target_reg_moment, target_request_type_code, target_rrr_type_code, 
            severity_code, order_of_execution)
    VALUES (uuid_generate_v1(), 'new-parcel-lastpart-assigned', 'cadastre_object', null, null, 'pending', 'newParcel', null,
            'critical', 100);

