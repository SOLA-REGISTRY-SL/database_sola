
    
INSERT INTO application.request_type(
            code, request_category_code, display_value, description, status, 
            nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            service_panel_code, display_group_code, display_order)
    VALUES ('newParcelSL', 'registrationServices', 'New survey plan for State Land', '', 'c', 
            1, 25.00, 0.10, 0.00, 
            0, null, null, null, 
            'cadastreTransMap', 'survey', 399);

INSERT INTO system.approle(
            code, display_value, status, description)
    VALUES ('newParcelSL', 'Service - New survey plan for State Land', 'c', '"Survey Service. Allows New survey plan service to be started.');

INSERT INTO system.approle_appgroup(approle_code, appgroup_id)
    VALUES ('newParcelSL', 'super-group-id');

INSERT INTO system.approle_appgroup(approle_code, appgroup_id)
    VALUES ('newParcelSL', 'ff94bfad-7079-41ea-bf4b-6962e36cad1f');




 
INSERT INTO application.request_type(
            code, request_category_code, display_value, description, status, 
            nr_days_to_complete, base_fee, area_base_fee, value_base_fee, 
            nr_properties_required, notation_template, rrr_type_code, type_action_code, 
            service_panel_code, display_group_code, display_order)
    VALUES ('existingParcelSL', 'registrationServices', 'Existing survey plan for State Land', '', 'c', 
            1, 25.00, 0.10, 0.00, 
            0, null, null, null, 
            'cadastreTransMap', 'survey', 399);

INSERT INTO system.approle(
            code, display_value, status, description)
    VALUES ('existingParcelSL', 'Service - Existing survey plan for State Land', 'c', '"Survey Service. Allows Existing survey plan for State Land service to be started.');

INSERT INTO system.approle_appgroup(approle_code, appgroup_id)
    VALUES ('existingParcelSL', 'super-group-id');

INSERT INTO system.approle_appgroup(approle_code, appgroup_id)
    VALUES ('existingParcelSL', 'ff94bfad-7079-41ea-bf4b-6962e36cad1f');

INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('existingParcelSL','charting-group-id');
    


----SOURCE TYPE FOR REQUEST TYPE ------

INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('cadastralSurvey', 'existingParcelSL');
    
INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('fieldSketch', 'newParcelSL');


INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('taxPayment', 'newParcelSL');

INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('taxPayment', 'existingParcelSL');

INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('taxPayment', 'existingParcel');


  --- new document types for SL  

INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('initialapplication', 'newParcelSL');


INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('siteinspectionrpt', 'newParcelSL');

INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('approvalofferletter', 'newParcelSL');

INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('payinitialrent', 'newParcelSL');



INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('initialapplication', 'existingParcelSL');


INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('siteinspectionrpt', 'existingParcelSL');

INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('approvalofferletter', 'existingParcelSL');

INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('payinitialrent', 'existingParcelSL');

---NEW Private Land Document type-----
---INSERT INTO source.administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('surveybill', 'Payment of Survey Bill', 'c', 'Payment of survey bill for private land', true);
---INSERT INTO source.administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('stastelandclearance', ' State Land Clearance', 'c', 'Submission of state land clearance for private land', true);
---INSERT INTO source.administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('masterplan', ' Master Plan for sub devision Land', 'c', 'Mater Plan if the new land is a sub division from a master plot', true);
--INSERT INTO source.administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('letterofindemiti', 'Letter of Indemity for Private Land', 'c', 'Submission of state land clearance for private land', true);
--INSERT INTO source.administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('affidavis', ' Affidavit for private land', 'c', 'Affidavit for private land', true);


INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('surveybill', 'newParcel');


INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('stastelandclearance', 'newParcel');

--TBD IF THESE MUST BE BR OR MANDATORY DOCUMENTS ----
--INSERT INTO application.request_type_requires_source_type(
  --          source_type_code, request_type_code)
    --VALUES ('masterplan', 'newParcel');



---INSERT INTO application.request_type_requires_source_type(
   --         source_type_code, request_type_code)
    --VALUES ('letterofindemiti', 'newParcel');


---INSERT INTO application.request_type_requires_source_type(
   --         source_type_code, request_type_code)
   -- VALUES ('affidavis', 'newParcel');

     

update source.administrative_source_type  set display_value='Survey Bill'
where code = 'taxPayment';

update source.administrative_source_type  set display_value='Master Plan', status = 'c'
where code = 'cadastralMap';

update source.administrative_source_type  set display_value='Survey DataSheet'
where code = 'fieldSketch';    

-------BR------------------------------------------------------------
INSERT INTO system.br(
            id, display_name, technical_type_code, feedback, description, 
            technical_description)
    VALUES ('new-parcel-SL-created', 'new-parcel-SL-created', 'sql', 'Parcel plygon must be created. Only 1 polygon is allowed', null, 
            '#{id}(transaction_id) is requested');

INSERT INTO system.br_definition(
            br_id, active_from, active_until, body)
    VALUES ('new-parcel-SL-created', '2016-01-01', 'infinity', 'select count(*) = 1 as vl from cadastre.cadastre_object where transaction_id= #{id}');

INSERT INTO system.br_validation(
            id, br_id, target_code, target_application_moment, target_service_moment, 
            target_reg_moment, target_request_type_code, target_rrr_type_code, 
            severity_code, order_of_execution)
    VALUES (uuid_generate_v1(), 'new-parcel-SL-created', 'cadastre_object', null, null, 'pending', 'newParcelSL', null,
            'critical', 100);

INSERT INTO system.br(
            id, display_name, technical_type_code, feedback, description, 
            technical_description)
    VALUES ('new-parcel-SL-lastpart-assigned', 'new-parcel-SL-lastpart-assigned', 'sql', 'Parcel first part and last part identifiers must be assigned according to the survey plan SL details.', null, 
            '#{id}(transaction_id) is requested');

INSERT INTO system.br_definition(
            br_id, active_from, active_until, body)
    VALUES ('new-parcel-SL-lastpart-assigned', '2016-01-01', 'infinity', 'select sum(case when name_firstpart = ''tmp'' then 1 else 0 end)<1 as vl from cadastre.cadastre_object where transaction_id= #{id}');

INSERT INTO system.br_validation(
            id, br_id, target_code, target_application_moment, target_service_moment, 
            target_reg_moment, target_request_type_code, target_rrr_type_code, 
            severity_code, order_of_execution)
    VALUES (uuid_generate_v1(), 'new-parcel-SL-lastpart-assigned', 'cadastre_object', null, null, 'pending', 'newParcelSL', null,
            'critical', 100);


  
delete from system.br_validation where br_id = 'app_on_approve_check_SP';
delete from system.br_definition where br_id = 'app_on_approve_check_SP';
delete from system.br where id = 'app_on_approve_check_SP';
INSERT INTO system.br(
            id, display_name, technical_type_code, feedback, description, 
            technical_description)
    VALUES ('app_on_approve_check_SP', 'app_on_approve_check_SP', 'sql', 'there must be the SP attached to approve the application', null, 
            '#{id}(application) is requested');

INSERT INTO system.br_definition(
            br_id, active_from, active_until, body)
    VALUES ('app_on_approve_check_SP', '2016-01-01', 'infinity', '
SELECT (
(Select count (*)
FROM application.application aa, application.service s, 
source.source ss, application.application_uses_source aus 
WHERE s.application_id::text = aa.id::text 
AND (s.request_type_code::text = ''newParcel''::text OR s.request_type_code::text = ''newParcelSL''::text) AND s.status_code::text = ''completed''::text 
and aus.application_id = aa.id and aus.source_id = ss.id and ss.type_code = ''cadastralSurvey'' 
and aa.id = #{id})
-
(Select count (*)
FROM application.application aa, application.service s, 
source.source ss, application.application_uses_source aus 
WHERE s.application_id::text = aa.id::text 
AND (s.request_type_code::text = ''newParcel''::text OR s.request_type_code::text = ''newParcelSL''::text) AND s.status_code::text = ''completed''::text 
and aus.application_id = aa.id and aus.source_id = ss.id 
and aa.id = #{id}
)
>= 0) AS vl 
;');

INSERT INTO system.br_validation(
            id, br_id, target_code, target_application_moment, target_service_moment, 
            target_reg_moment, target_request_type_code, target_rrr_type_code, 
            severity_code, order_of_execution)
    VALUES (uuid_generate_v1(), 'app_on_approve_check_SP', 'application', 'approve', null, null, null, null,
            'critical', 722);

INSERT INTO system.br_validation(
            id, br_id, target_code, target_application_moment, target_service_moment, 
            target_reg_moment, target_request_type_code, target_rrr_type_code, 
            severity_code, order_of_execution)
    VALUES (uuid_generate_v1(), 'app_on_approve_check_SP', 'application', 'validate', null, null, null, null,
            'critical', 723);



--- OVERLAPPING

INSERT INTO system.br (id, display_name, technical_type_code, feedback, description, technical_description) VALUES ('new-survey-SL-objects-do-not-overlap', 'new-survey-SL-objects-do-not-overlap', 'sql', 'The new parcel polygons must not overlap::::Новые участки не должны пересекаться.::::مضلعات القطعة الجديدة يجب ان لا تتداخل::::Les polygones des nouvelles parcelles ne doivent pas se superposer.::::::::::::Os polígonos das novas parcelas não devem se sobrepor.::::::::新宗地多边形不能重叠。', NULL, '#{id}(transaction_id) is requested. Check the union of new co has the same area as the sum of all areas of new co-s, which means the new co-s don''t overlap');
delete from system.br_definition where br_id = 'new-survey-SL-objects-do-not-overlap';
INSERT INTO system.br_definition (br_id, active_from, active_until, body) VALUES ('new-survey-SL-objects-do-not-overlap', '2014-02-20', 'infinity', 'WITH tolerance AS (SELECT CAST(ABS(LOG((CAST (vl AS NUMERIC)^2))) AS INT) AS area FROM system.setting where name = ''map-tolerance'' LIMIT 1)
SELECT COALESCE(ROUND(CAST (ST_AREA(ST_UNION(co.geom_polygon))AS NUMERIC), (SELECT area FROM tolerance)) = 
		ROUND(CAST(SUM(ST_AREA(co.geom_polygon))AS NUMERIC), (SELECT area FROM tolerance)), 
		TRUE) AS vl
FROM cadastre.cadastre_object co 
');
INSERT INTO system.br_validation (id, br_id, target_code, target_application_moment, target_service_moment, target_reg_moment, target_request_type_code, target_rrr_type_code, severity_code, order_of_execution) VALUES (uuid_generate_v1(), 'new-survey-SL-objects-do-not-overlap', 'cadastre_object', NULL, NULL, 'pending', 'newParcelSL', NULL, 'warning', 802);
INSERT INTO system.br_validation (id, br_id, target_code, target_application_moment, target_service_moment, target_reg_moment, target_request_type_code, target_rrr_type_code, severity_code, order_of_execution) VALUES (uuid_generate_v1(), 'new-survey-SL-objects-do-not-overlap', 'cadastre_object', NULL, NULL, 'current', 'newParcelSL', NULL, 'medium', 803);


INSERT INTO system.br (id, display_name, technical_type_code, feedback, description, technical_description) VALUES ('existing-survey-SL-objects-do-not-overlap', 'existing-survey-SL-objects-do-not-overlap', 'sql', 'The existing parcel polygons must not overlap::::Новые участки не должны пересекаться.::::مضلعات القطعة الجديدة يجب ان لا تتداخل::::Les polygones des nouvelles parcelles ne doivent pas se superposer.::::::::::::Os polígonos das novas parcelas não devem se sobrepor.::::::::新宗地多边形不能重叠。', NULL, '#{id}(transaction_id) is requested. Check the union of existing co has the same area as the sum of all areas of existing co-s, which means the existing co-s don''t overlap');
delete from system.br_definition where br_id = 'existing-survey-SL-objects-do-not-overlap';
INSERT INTO system.br_definition (br_id, active_from, active_until, body) VALUES ('existing-survey-SL-objects-do-not-overlap', '2014-02-20', 'infinity', 'WITH tolerance AS (SELECT CAST(ABS(LOG((CAST (vl AS NUMERIC)^2))) AS INT) AS area FROM system.setting where name = ''map-tolerance'' LIMIT 1)

SELECT COALESCE(ROUND(CAST (ST_AREA(ST_UNION(co.geom_polygon))AS NUMERIC), (SELECT area FROM tolerance)) = 
		ROUND(CAST(SUM(ST_AREA(co.geom_polygon))AS NUMERIC), (SELECT area FROM tolerance)), 
		TRUE) AS vl
FROM cadastre.cadastre_object co 
');
INSERT INTO system.br_validation (id, br_id, target_code, target_application_moment, target_service_moment, target_reg_moment, target_request_type_code, target_rrr_type_code, severity_code, order_of_execution) VALUES (uuid_generate_v1(), 'existing-survey-objects-do-not-overlap', 'cadastre_object', NULL, NULL, 'pending', 'existingParcel', NULL, 'warning', 800);

INSERT INTO system.br_validation (id, br_id, target_code, target_application_moment, target_service_moment, target_reg_moment, target_request_type_code, target_rrr_type_code, severity_code, order_of_execution) VALUES (uuid_generate_v1(), 'existing-survey-SL-objects-do-not-overlap', 'cadastre_object', NULL, NULL, 'pending',  'existingParcelSL', NULL, 'warning', 800);
INSERT INTO system.br_validation (id, br_id, target_code, target_application_moment, target_service_moment, target_reg_moment, target_request_type_code, target_rrr_type_code, severity_code, order_of_execution) VALUES (uuid_generate_v1(), 'existing-survey-SL-objects-do-not-overlap', 'cadastre_object', NULL, NULL, 'current', 'existingParcelSL', NULL, 'medium', 801);






