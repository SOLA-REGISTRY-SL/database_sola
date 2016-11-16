INSERT INTO system.version SELECT '1611a' WHERE NOT EXISTS (SELECT Version_Num FROM system.version WHERE Version_Num = '1611a');

UPDATE cadastre.survey_type SET display_value = 'Re-survey and amendment' WHERE code = 'resurvey_amend';
