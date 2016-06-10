delete from application.request_type_requires_source_type where  source_type_code = 'cadastralSurvey' and request_type_code = 'newParcel';
  

INSERT INTO system.br(
            id, display_name, technical_type_code, feedback, description, 
            technical_description)
    VALUES ('app_on_approve_check_SP', 'app_on_approve_check_SP', 'sql', 'there must be the SP attached to approve the application', null, 
            '#{id}(application) is requested');

INSERT INTO system.br_definition(
            br_id, active_from, active_until, body)
    VALUES ('app_on_approve_check_SP', '2016-01-01', 'infinity', 'SELECT (COUNT(*) > 0)  AS vl
   FROM  application.application aa, application.service s, source.source ss, application.application_uses_source aus
  WHERE  s.application_id::text = aa.id::text 
  AND s.request_type_code::text = ''newParcel''::text 
  AND s.status_code::text = ''completed''::text
  and aus.application_id = aa.id
  and aus.source_id = ss.id
  and ss.type_code = ''cadastralSurvey''
  and aa.id = #{id};');

INSERT INTO system.br_validation(
            id, br_id, target_code, target_application_moment, target_service_moment, 
            target_reg_moment, target_request_type_code, target_rrr_type_code, 
            severity_code, order_of_execution)
    VALUES (uuid_generate_v1(), 'app_on_approve_check_SP', 'application', 'approve', null, null, null, null,
            'critical', 722);
