--SCRIPT to add new document  to the administration source types
----------------------------------------------------------------------------
--State Land----
INSERT INTO administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('initialapplication', 'Initial Application Letter', 'c', 'Initial Application Letter/document to Minister for state Lands', true);
INSERT INTO administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('siteinspectionrpt', 'Site inspection report', 'c', 'Site inspection report for state Lands', true);
INSERT INTO administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('approvalofferletter', 'Approval and issuance of Offer Letter', 'c', 'Approval by the Hon. Minister and issuance of Offer Letter for state Lands', true);
INSERT INTO administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('payinitialrent', ' Initial rent Payment document/Receipt', 'c', 'Payment of initial rents for State Lands', true);

---Private Land Document type-----
INSERT INTO administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('surveybill', 'Payment of Survey Bill', 'c', 'Payment of survey bill for private land', true);
INSERT INTO administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('stastelandclearance', ' State Land Clearance', 'c', 'Submission of state land clearance for private land', true);
INSERT INTO administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('masterplan', ' Master Plan for sub devision Land', 'c', 'Mater Plan if the new land is a sub division from a master plot', true);
INSERT INTO administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('letterofindemiti', 'Letter of Indemity for Private Land', 'c', 'Submission of state land clearance for private land', true);
INSERT INTO administrative_source_type (code, display_value, status, description, is_for_registration) VALUES ('affidavis', ' Affidavit for private land', 'c', 'Affidavit for private land', true);


