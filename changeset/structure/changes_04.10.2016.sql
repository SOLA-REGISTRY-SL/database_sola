INSERT INTO system.version SELECT '1610a' WHERE NOT EXISTS (SELECT Version_Num FROM system.version WHERE Version_Num = '1610a');

update application.request_type set display_value = 'Existing survey plan for Private Land' where code = 'existingParcel';
update application.request_type set display_value = 'New survey plan for Private Land' where code = 'newParcel';
update source.administrative_source_type set display_value = 'Affidavit for private land' where code = 'affidavis';
update source.administrative_source_type set display_value = 'Master Plan for sub devision Land' where code = 'masterplan';
update source.administrative_source_type set display_value = 'Initial rent Payment document/Receipt' where code = 'payinitialrent';
update source.administrative_source_type set display_value = 'State Land Clearance' where code = 'stastelandclearance';

INSERT INTO system.br(id, display_name, technical_type_code, feedback, description, technical_description)
    VALUES ('survey-plan-master-plan-provided', 'survey-plan-master-plan-provided', 'sql', 'Master Survey Plan document together with attachment must be provided when subdividing master plot', '', 'Master survey plan must be attached to the application.');

INSERT INTO system.br_definition(br_id, active_from, active_until, body)
    VALUES ('survey-plan-master-plan-provided', '2000-01-01', 'infinity', 
	'SELECT count(1) > 0 as vl 
	FROM cadastre.cadastre_object
	WHERE (transaction_id in (select id from transaction.transaction where from_service_id = #{id}) and status_code = ''pending'' and land_type = ''private_land'')
		and ((survey_type_code <> ''subdivision'' or survey_type_code is null) or 
			(select count(1) 
			 from application.application_uses_source apps inner join source.source s on apps.source_id = s.id
			 where apps.application_id in (select application_id from application.service where id = #{id}) and s.type_code = ''masterplan'' and s.ext_archive_id is not null) > 0
		    )
	LIMIT 1');

INSERT INTO system.br_validation(br_id, target_code, target_service_moment, target_request_type_code, severity_code, order_of_execution)
    VALUES ('survey-plan-master-plan-provided', 'service', 'complete', 'newParcel', 'critical', 110);


INSERT INTO system.br(id, display_name, technical_type_code, feedback, description, technical_description)
    VALUES ('survey-plan-affidavits-required', 'survey-plan-affidavits-required', 'sql', 'Affidavits document together with attachment must be provided for the first survey', '', 'Affidavits has to be attached to the application.');

INSERT INTO system.br_definition(br_id, active_from, active_until, body)
    VALUES ('survey-plan-affidavits-required', '2000-01-01', 'infinity', 
	'SELECT count(1) > 0 as vl 
	FROM cadastre.cadastre_object
	WHERE (transaction_id in (select id from transaction.transaction where from_service_id = #{id}) and status_code = ''pending'' and land_type = ''private_land'')
		and (survey_type_code is not null or 
			(select count(1) 
			 from application.application_uses_source apps inner join source.source s on apps.source_id = s.id
			 where apps.application_id in (select application_id from application.service where id = #{id}) and s.type_code = ''affidavis'' and s.ext_archive_id is not null) > 0
		    )
	LIMIT 1');


INSERT INTO system.br_validation(br_id, target_code, target_service_moment, target_request_type_code, severity_code, order_of_execution)
    VALUES ('survey-plan-affidavits-required', 'service', 'complete', 'newParcel', 'critical', 120);
    

INSERT INTO system.br(id, display_name, technical_type_code, feedback, description, technical_description)
    VALUES ('survey-plan-indemnity-required', 'survey-plan-indemnity-required', 'sql', 'Letter of indemnity document together with attachment must be provided for the first survey', '', 'Letter of indemnity has to be attached to the application.');

INSERT INTO system.br_definition(br_id, active_from, active_until, body)
    VALUES ('survey-plan-indemnity-required', '2000-01-01', 'infinity', 
	'SELECT count(1) > 0 as vl 
	FROM cadastre.cadastre_object
	WHERE (transaction_id in (select id from transaction.transaction where from_service_id = #{id}) and status_code = ''pending'' and land_type = ''private_land'')
		and (survey_type_code is not null or 
			(select count(1) 
			 from application.application_uses_source apps inner join source.source s on apps.source_id = s.id
			 where apps.application_id in (select application_id from application.service where id = #{id}) and s.type_code = ''letterofindemiti'' and s.ext_archive_id is not null) > 0
		    )
	LIMIT 1');


INSERT INTO system.br_validation(br_id, target_code, target_service_moment, target_request_type_code, severity_code, order_of_execution)
    VALUES ('survey-plan-indemnity-required', 'service', 'complete', 'newParcel', 'critical', 130);

ALTER TABLE cadastre.cadastre_object ADD COLUMN planning_clearance boolean DEFAULT 'f';
ALTER TABLE cadastre.cadastre_object ADD COLUMN environment_clearance boolean DEFAULT 'f';
COMMENT ON COLUMN cadastre.cadastre_object.planning_clearance IS 'Flag indicating that Planning clearance received. True - received, False - not received.';
COMMENT ON COLUMN cadastre.cadastre_object.environment_clearance IS 'Flag indicating that Environment clearance received. True - received, False - not received.';

ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN planning_clearance boolean;
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN environment_clearance boolean;



INSERT INTO system.appgroup(
            id, name, description)
    VALUES ('planning-group-id', 'Planning clearance', 'This group is meant to used for the Planning department who gives planning clearance');
INSERT INTO system.appgroup(
            id, name, description)
    VALUES ('environment-group-id', 'Environment clearance', 'This group is meant to used for the Environment department who gives planning clearance');

INSERT INTO system.approle (code, display_value, status, description) VALUES ('ManageSurveyPlan', 'Create/edit survey plans', 'c', 'Role used to create or edit survey plans.');
INSERT INTO system.approle (code, display_value, status, description) VALUES ('PlanningClearance', 'Planing Clearance', 'c', 'Role used to give planing clearance for private land survey plan before approval.');
INSERT INTO system.approle (code, display_value, status, description) VALUES ('EvironmentClearance', 'Environment Clearance', 'c', 'Role used to give environment clearance for private land survey plan before approval.');

INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ViewMap','clearance-group-id');

--- APPROLE SETTING FOR - planning-group-id
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnAssignSelf','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnEdit','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnStatus','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnUnassignSelf','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnValidate','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnView','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangePassword','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewAssign','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewUnassign','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('documentCopy','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSecurity','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSettings','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('NoPasswordExpiry','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('serviceEnquiry','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSearch','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('CompleteService','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('RevertService','planning-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ViewMap','planning-group-id');

--- APPROLE SETTING FOR - environment-group-id
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnAssignSelf','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnEdit','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnStatus','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnUnassignSelf','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnValidate','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnView','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangePassword','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewAssign','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewUnassign','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('documentCopy','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSecurity','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSettings','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('NoPasswordExpiry','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('serviceEnquiry','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSearch','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('CompleteService','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('RevertService','environment-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ViewMap','environment-group-id');

---- NEW ROLES FOR MANAGESURVEYPLAN GIVEN TO CHARTINGGIS AND SUPER GROUPS
INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('ManageSurveyPlan', 'charting-group-id');
INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('ManageSurveyPlan', 'gis-group-id');
INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('ManageSurveyPlan', 'super-group-id');


--INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('PlanningClearance', 'clearance-group-id');
--INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('EvironmentClearance', 'clearance-group-id');

--INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('PlanningClearance', 'super-group-id');
--INSERT INTO system.approle_appgroup (approle_code, appgroup_id) VALUES ('EvironmentClearance', 'super-group-id');

INSERT INTO system.br(id, display_name, technical_type_code, feedback, description, technical_description)
    VALUES ('survey-plan-cleared-by-planning', 'survey-plan-cleared-by-planing', 'sql', 'Planning clearance must be received', '', 'User with PlanningClearance role must provide clearance to the survey plan.');

INSERT INTO system.br_definition(br_id, active_from, active_until, body)
    VALUES ('survey-plan-cleared-by-planning', '2000-01-01', 'infinity', 
	'SELECT planning_clearance as vl 
	FROM cadastre.cadastre_object
	WHERE transaction_id in (select id from transaction.transaction where from_service_id = #{id}) and status_code = ''pending'' and land_type = ''private_land''
	LIMIT 1');


INSERT INTO system.br_validation(br_id, target_code, target_service_moment, target_request_type_code, severity_code, order_of_execution)
    VALUES ('survey-plan-cleared-by-planning', 'service', 'complete', 'newParcel', 'medium', 140);

INSERT INTO system.br_validation(br_id, target_code, target_service_moment, target_request_type_code, severity_code, order_of_execution)
    VALUES ('survey-plan-cleared-by-planning', 'service', 'complete', 'existingParcel', 'medium', 150);


INSERT INTO system.br(id, display_name, technical_type_code, feedback, description, technical_description)
    VALUES ('survey-plan-cleared-by-environment', 'survey-plan-cleared-by-environment', 'sql', 'Environment clearance must be received', '', 'User with EnvironmentClearance role must provide clearance to the survey plan.');

INSERT INTO system.br_definition(br_id, active_from, active_until, body)
    VALUES ('survey-plan-cleared-by-environment', '2000-01-01', 'infinity', 
	'SELECT environment_clearance as vl 
	FROM cadastre.cadastre_object
	WHERE transaction_id in (select id from transaction.transaction where from_service_id = #{id}) and status_code = ''pending'' and land_type = ''private_land''
	LIMIT 1');


INSERT INTO system.br_validation(br_id, target_code, target_service_moment, target_request_type_code, severity_code, order_of_execution)
    VALUES ('survey-plan-cleared-by-environment', 'service', 'complete', 'newParcel', 'medium', 160);

INSERT INTO system.br_validation(br_id, target_code, target_service_moment, target_request_type_code, severity_code, order_of_execution)
    VALUES ('survey-plan-cleared-by-environment', 'service', 'complete', 'existingParcel', 'medium', 170);
    

