
DELETE FROM system.br_validation WHERE br_id = 'new-parcel-out_of_zone';
DELETE FROM system.br_definition WHERE br_id = 'new-parcel-out_of_zone';
DELETE FROM system.br WHERE id = 'new-parcel-out_of_zone';


INSERT INTO system.br(
            id, display_name, technical_type_code, feedback, description, 
            technical_description)
    VALUES ('new-parcel-out_of_zone', 'New Parcel is Out of Sierra Leone Zone', 'sql', 'Parcel polygon must fall within Zone 28 or 29 of the map viewer. These cordinates seem incorrect as they fall outside of the Sierra Leone boundary.', null, 
            '#{id}(transaction_id) is requested');

INSERT INTO system.br_definition(
            br_id, active_from, active_until, body)
    VALUES ('new-parcel-out_of_zone', '2016-01-01', 'infinity', 'SELECT x = st_x(st_transform(st_centroid(geom), 32628)) as v1 from system.crs where x >= 32628 and x<=32629');

INSERT INTO system.br_validation(
            id, br_id, target_code, target_application_moment, target_service_moment, 
            target_reg_moment, target_request_type_code, target_rrr_type_code, 
            severity_code, order_of_execution)
    VALUES (uuid_generate_v1(), 'new-parcel-out_of_zone', 'cadastre_object', null, null, 'pending', 'cadastreChange', null,
            'critical', 110);