INSERT INTO system.version SELECT '1609a' WHERE NOT EXISTS (SELECT Version_Num FROM system.version WHERE Version_Num = '1609a');

ALTER TABLE cadastre.cadastre_object ADD COLUMN state_land_clearance boolean DEFAULT 'f';
COMMENT ON COLUMN cadastre.cadastre_object.state_land_clearance IS 'Flag indicating that State land clearance received. True - received, False - not received.';

ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN state_land_clearance boolean;

INSERT INTO system.approle (code, display_value, status, description) VALUES ('StateLandClearance', 'State Land Clearance', 'c', 'Role used to give clearance for private land survey plan before approval.');
INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('StateLandClearance', 'clearance-group-id');
--INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('StateLandClearance', 'super-group-id');

INSERT INTO system.br(id, display_name, technical_type_code, feedback, description, technical_description)
    VALUES ('survey-plan-cleared-by-state-land', 'survey-plan-cleared-by-state-land', 'sql', 'State Land clearance must be received', '', 'User with StateLandClearance role must provide clearance to the survey plan.');

INSERT INTO system.br_definition(br_id, active_from, active_until, body)
    VALUES ('survey-plan-cleared-by-state-land', '2000-01-01', 'infinity', 
	'SELECT state_land_clearance as vl 
	FROM cadastre.cadastre_object
	WHERE transaction_id in (select id from transaction.transaction where from_service_id = #{id}) and status_code = ''pending'' and land_type = ''private_land''
	LIMIT 1');


INSERT INTO system.br_validation(br_id, target_code, target_service_moment, target_request_type_code, severity_code, order_of_execution)
    VALUES ('survey-plan-cleared-by-state-land', 'service', 'complete', 'newParcel', 'critical', 100);

INSERT INTO system.br_validation(br_id, target_code, target_service_moment, target_request_type_code, severity_code, order_of_execution)
    VALUES ('survey-plan-cleared-by-state-land', 'service', 'complete', 'existingParcel', 'critical', 110);


UPDATE source.administrative_source_type SET status = 'c' WHERE code = 'surveyDataFile';

