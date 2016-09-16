--SCRIPT to add new document  to the administration source types
----------------------------------------------------------------------------

-- 	STATE LAND REQUISITE DOCUMENT TYPES
INSERT INTO source.administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('applicationletter', 'Application Letter for State Land', 'c', 'Application Letter/document to Minister for a State Land', TRUE);
INSERT INTO source.administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('offerletterfrommlcpe', 'Offer Letter from MLCPE', 'c', 'Offer Letter from MLCPE for State Lands', TRUE);
INSERT INTO source.administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('acceptanceletter', 'Acceptance Letter', 'c', 'Acceptance Letter from MLCPE indicating the approval of the State Land Request', TRUE);
INSERT INTO source.administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('initialsurveybymlcpe', 'Initial Survey by MLCPE', 'c', 'Payment of initial rents for State Lands', TRUE);
INSERT INTO source.administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('receiptofpayment', 'Receipt of Payment', 'c', 'Payment of initial rent(s) for State Lands', TRUE);

 