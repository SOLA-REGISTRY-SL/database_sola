----------------------------------------------------------------------------------------------------------
--Table: party.party_type
----------------------------------------------------------------------------------------------------------
--DELETE FROM party.party_type WHERE code = 'certifiedSurveyor' OR code = 'charting_officer' OR code = 'stland_clr_officer';

--INSERT INTO party.party_type (code, display_value, status, description) values('certifiedSurveyor','License Surveyor','c','A Certified License Surveyor of doing surveying of lands');
--INSERT INTO party.party_type (code, display_value, status, description) values('charting_officer','Charting Officer','c','A Certified Charting Officer');
--INSERT INTO party.party_type (code, display_value, status, description) values('stland_clr_officer','State Land Clearing Officer','c','This is a Certified State Land Clearing Officer');
 
 --PREPARING THE party.id_type table
--DELETE FROM party.id_type WHERE code = 'NA';
--INSERT INTO party.id_type (code, description, display_value, status) values('NA', 'Not Available at the moment of Inserting this record', 'Not Available', 'c');

INSERT INTO party.id_type (code, description, display_value, status) SELECT 'NA', 'Not Available at the moment of Inserting this record', 'Not Available', 'c'   where not exists (SELECT code FROM party.id_type WHERE code = 'NA');

DELETE FROM party.party_role_type WHERE code = 'certifiedSurveyor' OR code = 'charting_officer' OR code = 'stland_clr_officer';

INSERT INTO party.party_role_type (code, display_value, status, description) values('certifiedSurveyor','License Surveyor','c','A Certified License Surveyor of doing surveying of lands');
INSERT INTO party.party_role_type (code, display_value, status, description) values('charting_officer','Charting Officer','c','A Certified Charting Officer');
INSERT INTO party.party_role_type (code, display_value, status, description) values('stland_clr_officer','State Land Clearing Officer','c','This is a Certified State Land Clearing Officer');

----------------------------------------------------------------------------------------------------------
--INSERTING LICENSED SUVEYOR
----------------------------------------------------------------------------------------------------------
-- DR. KOSONIKE KOSO-THOMAS

DELETE FROM party.party_role WHERE party_id = '060520161131-01';
DELETE FROM party.party WHERE id = '060520161131-01';
DELETE FROM address.address WHERE id = '060520161131';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161131', 'C/O TECHSULT 26 PERCIVAL STREET, FREETOWN', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-01', 'na', 'naturalPerson', 'DR. KOSONIKE', 'KOSO-THOMAS', 'na', 'na', 
            'na', 'male', '060520161131', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('060520161131-01', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

--BOBOH DAVID

DELETE FROM party.party_role WHERE party_id = '060520161131-02';
DELETE FROM party.party WHERE id = '060520161131-02';
DELETE FROM address.address WHERE id = '060520161132';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161132', 'C/O SIERRA RUTILE P.O. BOX 59, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-02', 'na', 'naturalPerson', 'BOBOH', 'DAVID', 'na', 'na', 
            'na', 'male', '060520161132', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('060520161131-02', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

--ERIC CHRISTIAN ARTHUR FORSTER
DELETE FROM party.party_role WHERE party_id = '060520161131-03';
DELETE FROM party.party WHERE id = '060520161131-03';
DELETE FROM address.address WHERE id = '060520161133';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161133', '8A MUDGE FARM, MURRAY TOWN, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-03', 'na', 'naturalPerson', 'ERIC CHRISTIAN', 'ARTHUR FORSTER', 'na', 'na', 
            'na', 'male', '060520161133', 'NA', 'na', 'na', 
            'na', '076-261613', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-03', 'certifiedSurveyor'); 
---------------------------------------------------------------------------------------------------------------

--FODAY JIBBA ANTHONY
DELETE FROM party.party_role WHERE party_id = '060520161131-04';
DELETE FROM party.party WHERE id = '060520161131-04';
DELETE FROM address.address WHERE id = '060520161134';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161134', '13 DAVIS STREET, KISSY', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-04', 'na', 'naturalPerson', 'FODAY JIBBA', 'ANTHONY', 'na', 'na', 
            'na', 'male', '060520161134', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-04', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- SAMUEL CHRISPIN OZENDRICK SWARRAY
DELETE FROM party.party_role WHERE party_id = '060520161131-05';
DELETE FROM party.party WHERE id = '060520161131-05';
DELETE FROM address.address WHERE id = '060520161135';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161135', '17D NEWCASTLE STREET, KISSY', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-05', 'na', 'naturalPerson', 'SAMUEL CHRISPIN', 'OZENDRICK SWARRAY', 'na', 'na', 
            'na', 'male', '060520161135', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-05', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- SIATI CHARLES LANSANA
DELETE FROM party.party_role WHERE party_id = '060520161131-06';
DELETE FROM party.party WHERE id = '060520161131-06';
DELETE FROM address.address WHERE id = '060520161136';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161136', '21 MURRAY TOWN ROAD, MURRAY TOWN, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-06', 'na', 'naturalPerson', 'SIATI CHARLES', 'LANSANA', 'na', 'na', 
            'na', 'male', '060520161136', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-06', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI MOHAMED LAMIN ABDULLAH
DELETE FROM party.party_role WHERE party_id = '060520161131-07';
DELETE FROM party.party WHERE id = '060520161131-07';
DELETE FROM address.address WHERE id = '060520161137';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161137', '3 UPPER SAVAGE SQUARE, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-07', 'na', 'naturalPerson', 'ALHAJI MOHAMED LAMIN', 'ABDULLAH', 'na', 'na', 
            'na', 'male', '060520161137', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-07', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- MOHAMED SANFA BOCKARIE
DELETE FROM party.party_role WHERE party_id = '060520161131-08';
DELETE FROM party.party WHERE id = '060520161131-08';
DELETE FROM address.address WHERE id = '060520161138';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161138', 'SIEROMCO MINES P.O. BOX 725, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-08', 'na', 'naturalPerson', 'MOHAMED SANFA', 'BOCKARIE', 'na', 'na', 
            'na', 'male', '060520161138', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-08', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- JOE PETER ARUNA
DELETE FROM party.party_role WHERE party_id = '060520161131-09';
DELETE FROM party.party WHERE id = '060520161131-09';
DELETE FROM address.address WHERE id = '060520161139';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161139', 'SIERRA RUTILE LTD. P.O. BOX 59, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-09', 'na', 'naturalPerson', 'JOE PETER', 'ARUNA', 'na', 'na', 
            'na', 'male', '060520161139', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-09', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- ALEXANDER MACAVORAY COKER
DELETE FROM party.party_role WHERE party_id = '060520161131-40';
DELETE FROM party.party WHERE id = '060520161131-40';
DELETE FROM address.address WHERE id = '060520161140';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161140', '45 BATHURST STREET, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-40', 'na', 'naturalPerson', 'ALEXANDER MACAVORAY', 'COKER', 'na', 'na', 
            'na', 'male', '060520161140', 'NA', 'na', 'na', 
            'na', '076613100', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-40', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- JAMES MORGAI BANGURA
DELETE FROM party.party_role WHERE party_id = '060520161131-41';
DELETE FROM party.party WHERE id = '060520161131-41';
DELETE FROM address.address WHERE id = '060520161141';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161141', '67 BASS STREET, BROOKFIELDS, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-41', 'na', 'naturalPerson', 'JAMES MORGAI', 'BANGURA', 'na', 'na', 
            'na', 'male', '060520161141', 'NA', 'na', 'na', 
            'na', '077542096', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-41', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- IBRAHIM KAMARA
DELETE FROM party.party_role WHERE party_id = '060520161131-42';
DELETE FROM party.party WHERE id = '060520161131-42';
DELETE FROM address.address WHERE id = '060520161142';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161142', 'C/O SPIRITUS HOUSE, 5 HOWE STREET, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-42', 'na', 'naturalPerson', 'IBRAHIM', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161142', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-42', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI ISSA MOHAMED BANGURA
DELETE FROM party.party_role WHERE party_id = '060520161131-43';
DELETE FROM party.party WHERE id = '060520161131-43';
DELETE FROM address.address WHERE id = '060520161143';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161143', '40A LOW COST HOUSING ESTATE, KISSY, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-43', 'na', 'naturalPerson', 'ALHAJI ISSA BANGURA', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161143', 'NA', 'na', 'na', 
            'na', '076673686', '077673686', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-43', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- SHERIFF ABASS KARGBO
DELETE FROM party.party_role WHERE party_id = '060520161131-44';
DELETE FROM party.party WHERE id = '060520161131-44';
DELETE FROM address.address WHERE id = '060520161144';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161144', '11 MANNER STREET, ALLEN TOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-44', 'na', 'naturalPerson', 'SHERIFF ABASS', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161144', 'NA', 'na', 'na', 
            'na', '076686109', '077700862', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-44', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- ALLIAH JOSEPH SUNDIMA
DELETE FROM party.party_role WHERE party_id = '060520161131-45';
DELETE FROM party.party WHERE id = '060520161131-45';
DELETE FROM address.address WHERE id = '060520161145';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161145', '27 CEMENTRY ROAD, ORUGU VILLAGE, ALLEN TOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-45', 'na', 'naturalPerson', 'ALLIAH JOSEPH', 'SUNDIMA', 'na', 'na', 
            'na', 'male', '060520161145', 'NA', 'na', 'na', 
            'na', '076628782', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-45', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- EDWARD ARTHUR EDDY
DELETE FROM party.party_role WHERE party_id = '060520161131-46';
DELETE FROM party.party WHERE id = '060520161131-46';
DELETE FROM address.address WHERE id = '060520161146';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161146', '22 LEAH STREET, FREETOWN', 'na');

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-46', 'na', 'naturalPerson', 'EDWARD ARTHUR', 'EDDY', 'na', 'na', 
            'na', 'male', '060520161146', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-46', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- JONATHAN D. COLLIER
DELETE FROM party.party_role WHERE party_id = '060520161131-47';
DELETE FROM party.party WHERE id = '060520161131-47';
DELETE FROM address.address WHERE id = '060520161147';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161147', '26 GODERICH ROAD, LUMLEY, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-47', 'na', 'naturalPerson', 'JONATHAN D.', 'COLLIER', 'na', 'na', 
            'na', 'male', '060520161147', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-47', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------
 
-- SYLVANUS ABDUL LUSANIE
DELETE FROM party.party_role WHERE party_id = '060520161131-48';
DELETE FROM party.party WHERE id = '060520161131-48';
DELETE FROM address.address WHERE id = '060520161148';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161148', '13D HANNESSON STREET, NEW ENGLAND, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-48', 'na', 'naturalPerson', 'SYLVANUS ABDUL', 'LUSANIE', 'na', 'na', 
            'na', 'male', '060520161148', 'NA', 'na', 'na', 
            'na', '076604050', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-48', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- FESTUS EDMONDSON THODPHILUS GEORGE
DELETE FROM party.party_role WHERE party_id = '060520161131-49';
DELETE FROM party.party WHERE id = '060520161131-49';
DELETE FROM address.address WHERE id = '060520161149';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161149', '6 SAMUELS LAND, KISSY', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-49', 'na', 'naturalPerson', 'FESTUS EDMONDSON THODPHILUS', 'GEORGE', 'na', 'na', 
            'na', 'male', '060520161149', 'NA', 'na', 'na', 
            'na', '088579105', '030233768', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-49', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI AMADU IBRAHIM ALIM-TURAY
DELETE FROM party.party_role WHERE party_id = '060520161131-50';
DELETE FROM party.party WHERE id = '060520161131-50';
DELETE FROM address.address WHERE id = '060520161150';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161150', '9F KINGHARMAN ROAD, BROOKFIELDS, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-50', 'na', 'naturalPerson', 'ALHAJI AMADU IBRAHIM', 'ALIM-TURAY', 'na', 'na', 
            'na', 'male', '060520161150', 'NA', 'na', 'na', 
            'na', '076262048', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-50', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- JOSIAH BACOGUN COLE-DAVIS
DELETE FROM party.party_role WHERE party_id = '060520161131-51';
DELETE FROM party.party WHERE id = '060520161131-51';
DELETE FROM address.address WHERE id = '060520161151';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161151', '6 SAWI DRIVE OFF KINGHARMAN ROAD, P.O. BOX 799, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-51', 'na', 'naturalPerson', 'JOSIAH BACOGUN', 'COLE-DAVIS', 'na', 'na', 
            'na', 'male', '060520161151', 'NA', 'na', 'na', 
            'na', '030230079', '025230079', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-51', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- GEOFFERY C. BOBB-LUCAS
DELETE FROM party.party_role WHERE party_id = '060520161131-52';
DELETE FROM party.party WHERE id = '060520161131-52';
DELETE FROM address.address WHERE id = '060520161152';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161152', '168A CIRCULAR ROAD, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-52', 'na', 'naturalPerson', 'GEOFFERY C.', 'BOBB-LUCAS', 'na', 'na', 
            'na', 'male', '060520161152', 'NA', 'na', 'na', 
            'na', '076640736', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-52', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- STANLEY MUSTAPHA LAHAI
DELETE FROM party.party_role WHERE party_id = '060520161131-53';
DELETE FROM party.party WHERE id = '060520161131-53';
DELETE FROM address.address WHERE id = '060520161153';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161153', '40 SUMAILA TOWN OFF PADEMBA ROAD, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-53', 'na', 'naturalPerson', 'STANLEY MUSTAPHA', 'LAHAI', 'na', 'na', 
            'na', 'male', '060520161153', 'NA', 'na', 'na', 
            'na', '076674479', '077991178', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-53', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------
 
-- ABDUL R. HAMID
DELETE FROM party.party_role WHERE party_id = '060520161131-54';
DELETE FROM party.party WHERE id = '060520161131-54';
DELETE FROM address.address WHERE id = '060520161154';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161154', 'PASSANDI HOUSE, CANTONMENT ROAD, BROOKFIELDS, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-54', 'na', 'naturalPerson', 'ABDUL R.', 'HAMID', 'na', 'na', 
            'na', 'male', '060520161154', 'NA', 'na', 'na', 
            'na', '076652314', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-54', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- ALFRED B. JUNISA
DELETE FROM party.party_role WHERE party_id = '060520161131-55';
DELETE FROM party.party WHERE id = '060520161131-55';
DELETE FROM address.address WHERE id = '060520161155';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161155', 'KENEMA', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-55', 'na', 'naturalPerson', 'ALFRED B.', 'JUNISA', 'na', 'na', 
            'na', 'male', '060520161155', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-55', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- MOHAMED B.B. MAHDI
DELETE FROM party.party_role WHERE party_id = '060520161131-56';
DELETE FROM party.party WHERE id = '060520161131-56';
DELETE FROM address.address WHERE id = '060520161156';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161156', '14A ANSLEY STREET, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-56', 'na', 'naturalPerson', 'MOHAMED B.B.', 'MAHDI', 'na', 'na', 
            'na', 'male', '060520161156', 'NA', 'na', 'na', 
            'na', '077622184', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-56', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- PHILIP MOIBA
DELETE FROM party.party_role WHERE party_id = '060520161131-57';
DELETE FROM party.party WHERE id = '060520161131-57';
DELETE FROM address.address WHERE id = '060520161157';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161157', '19A BOYLE LAND, BANAWA WATER, MURRAY TOWN, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-57', 'na', 'naturalPerson', 'PHILIP', 'MOIBA', 'na', 'na', 
            'na', 'male', '060520161157', 'NA', 'na', 'na', 
            'na', '076624828', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-57', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- SHEIK UMARU KABIA
DELETE FROM party.party_role WHERE party_id = '060520161131-58';
DELETE FROM party.party WHERE id = '060520161131-58';
DELETE FROM address.address WHERE id = '060520161158';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161158', 'na', 'na');  

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-58', 'na', 'naturalPerson', 'PHILIP', 'MOIBA', 'na', 'na', 
            'na', 'male', '060520161158', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-58', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- ABDUL FATTAH IBRAHIM
DELETE FROM party.party_role WHERE party_id = '060520161131-59';
DELETE FROM party.party WHERE id = '060520161131-59';
DELETE FROM address.address WHERE id = '060520161159';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161159', '3 PETER STREET, OFF MOUNTAIN CUT, FREETOWN', 'na');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-59', 'na', 'naturalPerson', 'ABDUL FATTAH', 'IBRAHIM', 'na', 'na', 
            'na', 'male', '060520161159', 'NA', 'na', 'na', 
            'na', '078744243', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-59', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- HAMLET A. KHANI
DELETE FROM party.party_role WHERE party_id = '060520161131-60';
DELETE FROM party.party WHERE id = '060520161131-60';
DELETE FROM address.address WHERE id = '060520161160';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161160', '67 BASS STREET, BROOKFIELDS, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-60', 'na', 'naturalPerson', 'HAMLET A.', 'KHANI', 'na', 'na', 
            'na', 'male', '060520161160', 'NA', 'na', 'na', 
            'na', '076629436', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-60', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- AHMED M. BANGURA
DELETE FROM party.party_role WHERE party_id = '060520161131-61';
DELETE FROM party.party WHERE id = '060520161131-61';
DELETE FROM address.address WHERE id = '060520161161';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161161', '18 PETER LANE, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-61', 'na', 'naturalPerson', 'AHMED M.', 'BANGURA', 'na', 'na', 
            'na', 'male', '060520161161', 'NA', 'na', 'na', 
            'na', '076752763', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-61', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- SYLVANUES B. FODAY
DELETE FROM party.party_role WHERE party_id = '060520161131-62';
DELETE FROM party.party WHERE id = '060520161131-62';
DELETE FROM address.address WHERE id = '060520161162';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161162', '8 WHYSE MOORE STREET, PORTEE, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-62', 'na', 'naturalPerson', 'SYLVANUES B.', 'FODAY', 'na', 'na', 
            'na', 'male', '060520161162', 'NA', 'na', 'na', 
            'na', '076752763', '077428185', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-62', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- ABUBAKARR K. JAJUA
DELETE FROM party.party_role WHERE party_id = '060520161131-63';
DELETE FROM party.party WHERE id = '060520161131-63';

DELETE FROM address.address WHERE id = '060520161163';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161163', 'OFF MMTC, GODERICH, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-63', 'na', 'naturalPerson', 'ABUBAKARR K.', 'JAJUA', 'na', 'na', 
            'na', 'male', '060520161163', 'NA', 'na', 'na', 
            'na', '076817423', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-63', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- BANGALI BANGURA
DELETE FROM party.party_role WHERE party_id = '060520161131-64';
DELETE FROM party.party WHERE id = '060520161131-64';
DELETE FROM address.address WHERE id = '060520161164';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161164', '62 SANDER STREET, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-64', 'na', 'naturalPerson', 'BANGALI', 'BANGURA', 'na', 'na', 
            'na', 'male', '060520161164', 'NA', 'na', 'na', 
            'na', '078463586', '088190193', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-64', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- MOHAMED LAMARANA JALLOH
DELETE FROM party.party_role WHERE party_id = '060520161131-65';
DELETE FROM party.party WHERE id = '060520161131-65';
DELETE FROM address.address WHERE id = '060520161165';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161165', 'KENEMA-ISU ROAD PROJECT', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-65', 'na', 'naturalPerson', 'MOHAMED LAMARANA', 'JALLOH', 'na', 'na', 
            'na', 'male', '060520161165', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-65', 'certifiedSurveyor');
---------------------------------------------------------------------------------------------------------------

-- DELETING CHARTING OFFICERS AND STATE LAND CLEARING OFFICERS RECORDS FROM THE PARTY_ROLE TABLE
 
--- CHARTING OFFICERS
DELETE FROM party.party_role WHERE party_id = '060520161131-66';
DELETE FROM party.party_role WHERE party_id = '060520161131-67';
DELETE FROM party.party_role WHERE party_id = '060520161131-68';
DELETE FROM party.party_role WHERE party_id = '060520161131-69';
DELETE FROM party.party_role WHERE party_id = '060520161131-70';
DELETE FROM party.party_role WHERE party_id = '060520161131-71';
DELETE FROM party.party_role WHERE party_id = '060520161131-72';
DELETE FROM party.party_role WHERE party_id = '060520161131-73';
DELETE FROM party.party_role WHERE party_id = '060520161131-74';
DELETE FROM party.party_role WHERE party_id = '060520161131-75';
DELETE FROM party.party_role WHERE party_id = '060520161131-76';
DELETE FROM party.party_role WHERE party_id = '060520161131-77';
DELETE FROM party.party_role WHERE party_id = '060520161131-78';
DELETE FROM party.party_role WHERE party_id = '060520161131-79';
DELETE FROM party.party_role WHERE party_id = '060520161131-80';
DELETE FROM party.party_role WHERE party_id = '060520161131-81';
DELETE FROM party.party_role WHERE party_id = '060520161131-81';
DELETE FROM party.party_role WHERE party_id = '060520161131-82';
DELETE FROM party.party_role WHERE party_id = '060520161131-83';
DELETE FROM party.party_role WHERE party_id = '060520161131-84';
DELETE FROM party.party_role WHERE party_id = '060520161131-85';
DELETE FROM party.party_role WHERE party_id = '060520161131-86';
DELETE FROM party.party_role WHERE party_id = '060520161131-87';
DELETE FROM party.party_role WHERE party_id = '060520161131-88';
DELETE FROM party.party_role WHERE party_id = '060520161131-89';
DELETE FROM party.party_role WHERE party_id = '060520161131-90';
DELETE FROM party.party_role WHERE party_id = '060520161131-91';
DELETE FROM party.party_role WHERE party_id = '060520161131-92';
DELETE FROM party.party_role WHERE party_id = '060520161131-93';
DELETE FROM party.party_role WHERE party_id = '060520161131-94';
DELETE FROM party.party_role WHERE party_id = '060520161131-95';
DELETE FROM party.party_role WHERE party_id = '060520161131-96';
DELETE FROM party.party_role WHERE party_id = '060520161131-98';
DELETE FROM party.party_role WHERE party_id = '060520161131-99';
DELETE FROM party.party_role WHERE party_id = '060520161131-100';
DELETE FROM party.party_role WHERE party_id = '060520161131-101';
DELETE FROM party.party_role WHERE party_id = '060520161131-199';
DELETE FROM party.party_role WHERE party_id = '060520161131-102';
DELETE FROM party.party_role WHERE party_id = '060520161131-103';
DELETE FROM party.party_role WHERE party_id = '060520161131-104';
DELETE FROM party.party_role WHERE party_id = '060520161131-105';
DELETE FROM party.party_role WHERE party_id = '060520161131-106';
DELETE FROM party.party_role WHERE party_id = '060520161131-107';
DELETE FROM party.party_role WHERE party_id = '060520161131-108';
DELETE FROM party.party_role WHERE party_id = '060520161131-109';
DELETE FROM party.party_role WHERE party_id = '060520161131-110';
DELETE FROM party.party_role WHERE party_id = '060520161131-111';
DELETE FROM party.party_role WHERE party_id = '060520161131-112';
DELETE FROM party.party_role WHERE party_id = '060520161131-113';
DELETE FROM party.party_role WHERE party_id = '060520161131-114';
DELETE FROM party.party_role WHERE party_id = '060520161131-115';
DELETE FROM party.party_role WHERE party_id = '060520161131-116';

DELETE FROM party.party_role WHERE party_id = '060520161131-216';
DELETE FROM party.party_role WHERE party_id = '060520161131-217';
DELETE FROM party.party_role WHERE party_id = '060520161131-218';
DELETE FROM party.party_role WHERE party_id = '060520161131-219';
DELETE FROM party.party_role WHERE party_id = '060520161131-220';
DELETE FROM party.party_role WHERE party_id = '060520161131-221';
DELETE FROM party.party_role WHERE party_id = '060520161131-222';
DELETE FROM party.party_role WHERE party_id = '060520161131-223';
DELETE FROM party.party_role WHERE party_id = '060520161131-224';
DELETE FROM party.party_role WHERE party_id = '060520161131-2241';
DELETE FROM party.party_role WHERE party_id = '060520161131-2251';
DELETE FROM party.party_role WHERE party_id = '060520161131-225';
DELETE FROM party.party_role WHERE party_id = '060520161131-226';
DELETE FROM party.party_role WHERE party_id = '060520161131-227';
DELETE FROM party.party_role WHERE party_id = '060520161131-228';
DELETE FROM party.party_role WHERE party_id = '060520161131-229';
DELETE FROM party.party_role WHERE party_id = '060520161131-230';
DELETE FROM party.party_role WHERE party_id = '060520161131-231';
DELETE FROM party.party_role WHERE party_id = '060520161131-232';
DELETE FROM party.party_role WHERE party_id = '060520161131-233';
DELETE FROM party.party_role WHERE party_id = '060520161131-234';
DELETE FROM party.party_role WHERE party_id = '060520161131-235';
DELETE FROM party.party_role WHERE party_id = '060520161131-236';
DELETE FROM party.party_role WHERE party_id = '060520161131-237';
DELETE FROM party.party_role WHERE party_id = '060520161131-238';




-- STATE LAND CLEARING OFFICERS ----------------------
DELETE FROM party.party_role WHERE party_id = '060520161131-166';
DELETE FROM party.party_role WHERE party_id = '060520161131-167';
DELETE FROM party.party_role WHERE party_id = '060520161131-168';
DELETE FROM party.party_role WHERE party_id = '060520161131-169';
DELETE FROM party.party_role WHERE party_id = '060520161131-170';
DELETE FROM party.party_role WHERE party_id = '060520161131-171';
DELETE FROM party.party_role WHERE party_id = '060520161131-172';
DELETE FROM party.party_role WHERE party_id = '060520161131-173';
DELETE FROM party.party_role WHERE party_id = '060520161131-174';
DELETE FROM party.party_role WHERE party_id = '060520161131-175';
DELETE FROM party.party_role WHERE party_id = '060520161131-176';
DELETE FROM party.party_role WHERE party_id = '060520161131-177';
DELETE FROM party.party_role WHERE party_id = '060520161131-178';
DELETE FROM party.party_role WHERE party_id = '060520161131-179';
DELETE FROM party.party_role WHERE party_id = '060520161131-180';
DELETE FROM party.party_role WHERE party_id = '060520161131-181';
DELETE FROM party.party_role WHERE party_id = '060520161131-181';
DELETE FROM party.party_role WHERE party_id = '060520161131-182';
DELETE FROM party.party_role WHERE party_id = '060520161131-183';
DELETE FROM party.party_role WHERE party_id = '060520161131-184';
DELETE FROM party.party_role WHERE party_id = '060520161131-185';
DELETE FROM party.party_role WHERE party_id = '060520161131-186';
DELETE FROM party.party_role WHERE party_id = '060520161131-187';
DELETE FROM party.party_role WHERE party_id = '060520161131-188';
DELETE FROM party.party_role WHERE party_id = '060520161131-189';
DELETE FROM party.party_role WHERE party_id = '060520161131-190';
DELETE FROM party.party_role WHERE party_id = '060520161131-191';
DELETE FROM party.party_role WHERE party_id = '060520161131-192';
DELETE FROM party.party_role WHERE party_id = '060520161131-193';
DELETE FROM party.party_role WHERE party_id = '060520161131-194';
DELETE FROM party.party_role WHERE party_id = '060520161131-195';
DELETE FROM party.party_role WHERE party_id = '060520161131-196';
DELETE FROM party.party_role WHERE party_id = '060520161131-198';
DELETE FROM party.party_role WHERE party_id = '060520161131-299';
DELETE FROM party.party_role WHERE party_id = '060520161131-1100';
DELETE FROM party.party_role WHERE party_id = '060520161131-1101';
DELETE FROM party.party_role WHERE party_id = '060520161131-1199';
DELETE FROM party.party_role WHERE party_id = '060520161131-1102';
DELETE FROM party.party_role WHERE party_id = '060520161131-1103';
DELETE FROM party.party_role WHERE party_id = '060520161131-1104';
DELETE FROM party.party_role WHERE party_id = '060520161131-1105';
DELETE FROM party.party_role WHERE party_id = '060520161131-1106';
DELETE FROM party.party_role WHERE party_id = '060520161131-1107';
DELETE FROM party.party_role WHERE party_id = '060520161131-1108';
DELETE FROM party.party_role WHERE party_id = '060520161131-1109';
DELETE FROM party.party_role WHERE party_id = '060520161131-1110';
DELETE FROM party.party_role WHERE party_id = '060520161131-1111';
DELETE FROM party.party_role WHERE party_id = '060520161131-1112';
DELETE FROM party.party_role WHERE party_id = '060520161131-1113';
DELETE FROM party.party_role WHERE party_id = '060520161131-1114';
DELETE FROM party.party_role WHERE party_id = '060520161131-1115';
DELETE FROM party.party_role WHERE party_id = '060520161131-1116';

DELETE FROM party.party_role WHERE party_id = '060520161131-316';
DELETE FROM party.party_role WHERE party_id = '060520161131-317';
DELETE FROM party.party_role WHERE party_id = '060520161131-318';
DELETE FROM party.party_role WHERE party_id = '060520161131-319';
DELETE FROM party.party_role WHERE party_id = '060520161131-320';
DELETE FROM party.party_role WHERE party_id = '060520161131-321';
DELETE FROM party.party_role WHERE party_id = '060520161131-322';
DELETE FROM party.party_role WHERE party_id = '060520161131-323';
DELETE FROM party.party_role WHERE party_id = '060520161131-324';
DELETE FROM party.party_role WHERE party_id = '060520161131-3241';
DELETE FROM party.party_role WHERE party_id = '060520161131-3251';
DELETE FROM party.party_role WHERE party_id = '060520161131-325';
DELETE FROM party.party_role WHERE party_id = '060520161131-326';
DELETE FROM party.party_role WHERE party_id = '060520161131-327';
DELETE FROM party.party_role WHERE party_id = '060520161131-328';
DELETE FROM party.party_role WHERE party_id = '060520161131-329';
DELETE FROM party.party_role WHERE party_id = '060520161131-330';
DELETE FROM party.party_role WHERE party_id = '060520161131-331';
DELETE FROM party.party_role WHERE party_id = '060520161131-332';
DELETE FROM party.party_role WHERE party_id = '060520161131-333';
DELETE FROM party.party_role WHERE party_id = '060520161131-334';
DELETE FROM party.party_role WHERE party_id = '060520161131-335';
DELETE FROM party.party_role WHERE party_id = '060520161131-336';
DELETE FROM party.party_role WHERE party_id = '060520161131-337';
DELETE FROM party.party_role WHERE party_id = '060520161131-338';




--- DELETING THE ALREADY ENTERED CHARTING OFFICERS AND STATE LAND CLEARING OFFICERS ---------------------------

--- CHARTING OFFICERS
DELETE FROM party.party WHERE id = '060520161131-66';
DELETE FROM party.party WHERE id = '060520161131-67';
DELETE FROM party.party WHERE id = '060520161131-68';
DELETE FROM party.party WHERE id = '060520161131-69';
DELETE FROM party.party WHERE id = '060520161131-70';
DELETE FROM party.party WHERE id = '060520161131-71';
DELETE FROM party.party WHERE id = '060520161131-72';
DELETE FROM party.party WHERE id = '060520161131-73';
DELETE FROM party.party WHERE id = '060520161131-74';
DELETE FROM party.party WHERE id = '060520161131-75';
DELETE FROM party.party WHERE id = '060520161131-76';
DELETE FROM party.party WHERE id = '060520161131-77';
DELETE FROM party.party WHERE id = '060520161131-78';
DELETE FROM party.party WHERE id = '060520161131-79';
DELETE FROM party.party WHERE id = '060520161131-80';
DELETE FROM party.party WHERE id = '060520161131-81';
DELETE FROM party.party WHERE id = '060520161131-81';
DELETE FROM party.party WHERE id = '060520161131-82';
DELETE FROM party.party WHERE id = '060520161131-83';
DELETE FROM party.party WHERE id = '060520161131-84';
DELETE FROM party.party WHERE id = '060520161131-85';
DELETE FROM party.party WHERE id = '060520161131-86';
DELETE FROM party.party WHERE id = '060520161131-87';
DELETE FROM party.party WHERE id = '060520161131-88';
DELETE FROM party.party WHERE id = '060520161131-89';
DELETE FROM party.party WHERE id = '060520161131-90';
DELETE FROM party.party WHERE id = '060520161131-91';
DELETE FROM party.party WHERE id = '060520161131-92';
DELETE FROM party.party WHERE id = '060520161131-93';
DELETE FROM party.party WHERE id = '060520161131-94';
DELETE FROM party.party WHERE id = '060520161131-95';
DELETE FROM party.party WHERE id = '060520161131-96';
DELETE FROM party.party WHERE id = '060520161131-98';
DELETE FROM party.party WHERE id = '060520161131-99';
DELETE FROM party.party WHERE id = '060520161131-100';
DELETE FROM party.party WHERE id = '060520161131-101';
DELETE FROM party.party WHERE id = '060520161131-199';
DELETE FROM party.party WHERE id = '060520161131-102';
DELETE FROM party.party WHERE id = '060520161131-103';
DELETE FROM party.party WHERE id = '060520161131-104';
DELETE FROM party.party WHERE id = '060520161131-105';
DELETE FROM party.party WHERE id = '060520161131-106';
DELETE FROM party.party WHERE id = '060520161131-107';
DELETE FROM party.party WHERE id = '060520161131-108';
DELETE FROM party.party WHERE id = '060520161131-109';
DELETE FROM party.party WHERE id = '060520161131-110';
DELETE FROM party.party WHERE id = '060520161131-111';
DELETE FROM party.party WHERE id = '060520161131-112';
DELETE FROM party.party WHERE id = '060520161131-113';
DELETE FROM party.party WHERE id = '060520161131-114';
DELETE FROM party.party WHERE id = '060520161131-115';
DELETE FROM party.party WHERE id = '060520161131-116';

DELETE FROM party.party WHERE id = '060520161131-216';
DELETE FROM party.party WHERE id = '060520161131-217';
DELETE FROM party.party WHERE id = '060520161131-218';
DELETE FROM party.party WHERE id = '060520161131-219';
DELETE FROM party.party WHERE id = '060520161131-220';
DELETE FROM party.party WHERE id = '060520161131-221';
DELETE FROM party.party WHERE id = '060520161131-222';
DELETE FROM party.party WHERE id = '060520161131-223';
DELETE FROM party.party WHERE id = '060520161131-224';
DELETE FROM party.party WHERE id = '060520161131-2241';
DELETE FROM party.party WHERE id = '060520161131-2251';
DELETE FROM party.party WHERE id = '060520161131-225';
DELETE FROM party.party WHERE id = '060520161131-226';
DELETE FROM party.party WHERE id = '060520161131-227';
DELETE FROM party.party WHERE id = '060520161131-228';
DELETE FROM party.party WHERE id = '060520161131-229';
DELETE FROM party.party WHERE id = '060520161131-230';
DELETE FROM party.party WHERE id = '060520161131-231';
DELETE FROM party.party WHERE id = '060520161131-232';
DELETE FROM party.party WHERE id = '060520161131-233';
DELETE FROM party.party WHERE id = '060520161131-234';
DELETE FROM party.party WHERE id = '060520161131-235';
DELETE FROM party.party WHERE id = '060520161131-236';
DELETE FROM party.party WHERE id = '060520161131-237';
DELETE FROM party.party WHERE id = '060520161131-238';




-- STATE LAND CLEARING OFFICERS ----------------------
DELETE FROM party.party WHERE id = '060520161131-166';
DELETE FROM party.party WHERE id = '060520161131-167';
DELETE FROM party.party WHERE id = '060520161131-168';
DELETE FROM party.party WHERE id = '060520161131-169';
DELETE FROM party.party WHERE id = '060520161131-170';
DELETE FROM party.party WHERE id = '060520161131-171';
DELETE FROM party.party WHERE id = '060520161131-172';
DELETE FROM party.party WHERE id = '060520161131-173';
DELETE FROM party.party WHERE id = '060520161131-174';
DELETE FROM party.party WHERE id = '060520161131-175';
DELETE FROM party.party WHERE id = '060520161131-176';
DELETE FROM party.party WHERE id = '060520161131-177';
DELETE FROM party.party WHERE id = '060520161131-178';
DELETE FROM party.party WHERE id = '060520161131-179';
DELETE FROM party.party WHERE id = '060520161131-180';
DELETE FROM party.party WHERE id = '060520161131-181';
DELETE FROM party.party WHERE id = '060520161131-181';
DELETE FROM party.party WHERE id = '060520161131-182';
DELETE FROM party.party WHERE id = '060520161131-183';
DELETE FROM party.party WHERE id = '060520161131-184';
DELETE FROM party.party WHERE id = '060520161131-185';
DELETE FROM party.party WHERE id = '060520161131-186';
DELETE FROM party.party WHERE id = '060520161131-187';
DELETE FROM party.party WHERE id = '060520161131-188';
DELETE FROM party.party WHERE id = '060520161131-189';
DELETE FROM party.party WHERE id = '060520161131-190';
DELETE FROM party.party WHERE id = '060520161131-191';
DELETE FROM party.party WHERE id = '060520161131-192';
DELETE FROM party.party WHERE id = '060520161131-193';
DELETE FROM party.party WHERE id = '060520161131-194';
DELETE FROM party.party WHERE id = '060520161131-195';
DELETE FROM party.party WHERE id = '060520161131-196';
DELETE FROM party.party WHERE id = '060520161131-198';
DELETE FROM party.party WHERE id = '060520161131-299';
DELETE FROM party.party WHERE id = '060520161131-1100';
DELETE FROM party.party WHERE id = '060520161131-1101';
DELETE FROM party.party WHERE id = '060520161131-1199';
DELETE FROM party.party WHERE id = '060520161131-1102';
DELETE FROM party.party WHERE id = '060520161131-1103';
DELETE FROM party.party WHERE id = '060520161131-1104';
DELETE FROM party.party WHERE id = '060520161131-1105';
DELETE FROM party.party WHERE id = '060520161131-1106';
DELETE FROM party.party WHERE id = '060520161131-1107';
DELETE FROM party.party WHERE id = '060520161131-1108';
DELETE FROM party.party WHERE id = '060520161131-1109';
DELETE FROM party.party WHERE id = '060520161131-1110';
DELETE FROM party.party WHERE id = '060520161131-1111';
DELETE FROM party.party WHERE id = '060520161131-1112';
DELETE FROM party.party WHERE id = '060520161131-1113';
DELETE FROM party.party WHERE id = '060520161131-1114';
DELETE FROM party.party WHERE id = '060520161131-1115';
DELETE FROM party.party WHERE id = '060520161131-1116';

DELETE FROM party.party WHERE id = '060520161131-316';
DELETE FROM party.party WHERE id = '060520161131-317';
DELETE FROM party.party WHERE id = '060520161131-318';
DELETE FROM party.party WHERE id = '060520161131-319';
DELETE FROM party.party WHERE id = '060520161131-320';
DELETE FROM party.party WHERE id = '060520161131-321';
DELETE FROM party.party WHERE id = '060520161131-322';
DELETE FROM party.party WHERE id = '060520161131-323';
DELETE FROM party.party WHERE id = '060520161131-324';
DELETE FROM party.party WHERE id = '060520161131-3241';
DELETE FROM party.party WHERE id = '060520161131-3251';
DELETE FROM party.party WHERE id = '060520161131-325';
DELETE FROM party.party WHERE id = '060520161131-326';
DELETE FROM party.party WHERE id = '060520161131-327';
DELETE FROM party.party WHERE id = '060520161131-328';
DELETE FROM party.party WHERE id = '060520161131-329';
DELETE FROM party.party WHERE id = '060520161131-330';
DELETE FROM party.party WHERE id = '060520161131-331';
DELETE FROM party.party WHERE id = '060520161131-332';
DELETE FROM party.party WHERE id = '060520161131-333';
DELETE FROM party.party WHERE id = '060520161131-334';
DELETE FROM party.party WHERE id = '060520161131-335';
DELETE FROM party.party WHERE id = '060520161131-336';
DELETE FROM party.party WHERE id = '060520161131-337';
DELETE FROM party.party WHERE id = '060520161131-338';



---------------------------------------------------------------------------------------------------------------
--- CHARTING OFFICERS -----------------------------------------------------------------------------------------
-- WE DONT HAVE THE ADDRESSES OF THE CHARTING OFFICERS
---------------------------------------------------------------------------------------------------------------
 
DELETE FROM address.address WHERE id = '060520161166';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161166', 'na', 'na'); 


-- TAMBA M. JONES
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-66', 'na', 'naturalPerson', 'TAMBA M.', 'JONES', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-66', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- ABRAHAM COOPER
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-67', 'na', 'naturalPerson', 'ABRAHAM', 'COOPER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-67', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- NOAH FOFANAH
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-68', 'na', 'naturalPerson', 'NOAH', 'FOFANAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-68', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- RASHEED CHARLES NGAIWEE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-69', 'na', 'naturalPerson', 'RASHEED CHARLES', 'NGAIWEE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-69', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- JOHN N. A. COKER

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-70', 'na', 'naturalPerson', 'JOHN N. A.', 'COKER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-70', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- FRANCIS A. KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-71', 'na', 'naturalPerson', 'FRANCIS A.', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-71', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- ALPHA SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-72', 'na', 'naturalPerson', 'ALPHA', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-72', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- FRANK LEBBIE ALLIE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-73', 'na', 'naturalPerson', 'FRANK LEBBIE', 'ALLIE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-73', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- JOSEPH M. K. SINNAH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-74', 'na', 'naturalPerson', 'JOSEPH M. K.', 'SINNAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-74', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI B. DUMBUYA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-75', 'na', 'naturalPerson', 'ALHAJI B.', 'DUMBUYA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-75', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- MAMUDU M. JALLOH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-76', 'na', 'naturalPerson', 'MAMUDU M.', 'JALLOH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-76', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- JOSEPH C. K. TOMMY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-77', 'na', 'naturalPerson', 'JOSEPH C. K.', 'TOMMY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-77', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- KARIM KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-78', 'na', 'naturalPerson', 'KARIM', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-78', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- MISCHECK BOB KOKER

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-79', 'na', 'naturalPerson', 'MISCHECK BOB', 'KOKER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-79', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- BERNARD SAHR JUSU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-80', 'na', 'naturalPerson', 'BERNARD SAHR', 'JUSU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-80', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- JUSTINE B. MUSA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-81', 'na', 'naturalPerson', 'JUSTINE B.', 'MUSA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-81', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- ALFRED M. SIMBO 

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-82', 'na', 'naturalPerson', 'ALFRED M.', 'SIMBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-82', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- JAMES K. JUSU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-83', 'na', 'naturalPerson', 'JAMES K.', 'JUSU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-83', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- IDRISSA KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-84', 'na', 'naturalPerson', 'IDRISSA', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-84', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- SOLOMON L. SESAY
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-85', 'na', 'naturalPerson', 'SOLOMON L.', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-85', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- DONALD S. C. HOYTE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-86', 'na', 'naturalPerson', 'DONALD S. C.', 'HOYTE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-86', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

 
-- YAYA KAMARAKEH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-87', 'na', 'naturalPerson', 'YAYA', 'HOYTE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-87', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- ALICE M. KANU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-88', 'na', 'naturalPerson', 'ALICE M.', 'KANU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-88', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- ALBERT BENJAMIN

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-89', 'na', 'naturalPerson', 'ALBERT', 'BENJAMIN', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-89', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- ABDUL KARIM KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-90', 'na', 'naturalPerson', 'ABDUL KARIM', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-90', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- SULAIMAN SAMURA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-91', 'na', 'naturalPerson', 'SULAIMAN', 'SAMURA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-91', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- JOHN EDWARD SINNAH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-92', 'na', 'naturalPerson', 'JOHN EDWARD', 'SINNAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-92', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- RAYMOND COLE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-93', 'na', 'naturalPerson', 'RAYMOND', 'COLE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-93', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- CECIL STANLEY
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-94', 'na', 'naturalPerson', 'CECIL', 'STANLEY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-94', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- BUNGI M. TURAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-95', 'na', 'naturalPerson', 'BUNGI M.', 'TURAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-95', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- SANTOS AHMED KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-96', 'na', 'naturalPerson', 'SANTOS AHMED', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-96', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- ALHASSAN MORLAI KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-98', 'na', 'naturalPerson', 'ALHASSAN MORLAI', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-98', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- SAMUEL GEORGE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-99', 'na', 'naturalPerson', 'SAMUEL', 'GEORGE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-99', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- LANSANA MAGBA KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-100', 'na', 'naturalPerson', 'LANSANA MAGBA', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-100', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- PETER KAMANDA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-101', 'na', 'naturalPerson', 'PETER KAMANDA', 'KAMANDA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-101', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- NYUMA DAUDA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-199', 'na', 'naturalPerson', 'NYUMA', 'DAUDA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-199', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- ALEX M. BUREH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-102', 'na', 'naturalPerson', 'ALEX M.', 'BUREH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-102', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- HANNAH ROSELYN FARMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-103', 'na', 'naturalPerson', 'HANNAH ROSELYN', 'FARMA', 'na', 'na', 
            'na', 'female', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-103', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- ALIMAMY SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-104', 'na', 'naturalPerson', 'ALIMAMY', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-104', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- MOHAMED LANSANA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-105', 'na', 'naturalPerson', 'MOHAMED', 'LANSANA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-105', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- ABDUL KOLLIA KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-106', 'na', 'naturalPerson', 'ABDUL KOLLIA', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-106', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- CHARLES SENESIE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-107', 'na', 'naturalPerson', 'CHARLES', 'SENESIE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-107', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


-- ALPHA UMARU TURAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-108', 'na', 'naturalPerson', 'ALPHA UMARU', 'TURAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-108', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

 
-- ANSUMANA ABU SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-109', 'na', 'naturalPerson', 'ANSUMANA ABU', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-109', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

 
-- FRANCIS KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-110', 'na', 'naturalPerson', 'FRANCIS', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-110', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

 
-- DAVID KOMBA KONO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-111', 'na', 'naturalPerson', 'DAVID KOMBA', 'KONO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-111', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

 
-- BABAH K. KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-112', 'na', 'naturalPerson', 'BABAH K.', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-112', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

 
--  MOHAMED S. B. CONTEH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-113', 'na', 'naturalPerson', 'MOHAMED S. B.', 'CONTEH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-113', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

 
--  MOSES MARCARTHY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-114', 'na', 'naturalPerson', 'MOSES', 'MARCARTHY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-114', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

 
--  MUSTAPHA ARTHUR KEMOKAI

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-115', 'na', 'naturalPerson', 'MUSTAPHA ARTHUR', 'KEMOKAI', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-115', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

 
--  LAMIN MOMOH SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-116', 'na', 'naturalPerson', 'LAMIN MOMOH', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-116', 'charting_officer');
---------------------------------------------------------------------------------------------------------------
 
 
 
 
--  IBRAHIM SENGEH YANKUBA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-216', 'na', 'naturalPerson', 'IBRAHIM SENGEH', 'YANKUBA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-216', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  PATRICK JOSIE KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-217', 'na', 'naturalPerson', 'PATRICK JOSIE', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-217', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  PAUL A. SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-218', 'na', 'naturalPerson', 'PAUL A.', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-218', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  SIAKA MASSAQUOI

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-219', 'na', 'naturalPerson', 'SIAKA', 'MASSAQUOI', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-219', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  GIBRILLA SABO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-220', 'na', 'naturalPerson', 'GIBRILLA', 'SABO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-220', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  CHRISTIAN GAZA SAMURA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-221', 'na', 'naturalPerson', 'CHRISTIAN GAZA', 'SAMURA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-221', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  ABDUL RAHMAN SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-222', 'na', 'naturalPerson', 'ABDUL RAHMAN', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-222', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  IBRAHIM SANTIGIE KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-223', 'na', 'naturalPerson', 'IBRAHIM SANTIGIE', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-223', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  SORIE BANGURA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-224', 'na', 'naturalPerson', 'SORIE', 'BANGURA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-224', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  ALPHA BANGURA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-2241', 'na', 'naturalPerson', 'ALPHA', 'BANGURA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-2241', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  ABU BAKARR KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-225', 'na', 'naturalPerson', 'ABU BAKARR', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-225', 'charting_officer');
---------------------------------------------------------------------------------------------------------------


--  ABU BAKARR KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-2251', 'na', 'naturalPerson', 'ABU BAKARR', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-2251', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  MISBAWOH DINDA BARRIE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-226', 'na', 'naturalPerson', 'MISBAWOH DINDA', 'BARRIE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-226', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  ALIMAMY MANSARAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-227', 'na', 'naturalPerson', 'ALIMAMY', 'MANSARAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-227', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI MOHAMED RABIEU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-228', 'na', 'naturalPerson', 'ALHAJI MOHAMED', 'RABIEU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-228', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  JOSEPH JOHN KPANABOM

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-229', 'na', 'naturalPerson', 'JOSEPH JOHN', 'KPANABOM', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-229', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  JOSEPH KORPOI JAIA LAVALY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-230', 'na', 'naturalPerson', 'JOSEPH KORPOI JAIA', 'LAVALY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-230', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  FRANK MBOMA ROBERTS

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-231', 'na', 'naturalPerson', 'FRANK MBOMA', 'ROBERTS', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-231', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  YUSUFU KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-232', 'na', 'naturalPerson', 'YUSUF', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-232', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  VICTOR AIAH MONDEH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-233', 'na', 'naturalPerson', 'VICTOR AIAH', 'MONDEH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-233', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  FREDERICK ROLAND MENJOR

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-234', 'na', 'naturalPerson', 'FREDERICK ROLAND', 'MENJOR', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-234', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  ABDUL K. KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-235', 'na', 'naturalPerson', 'ABDUL K.', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-235', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  IDRISSA KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-236', 'na', 'naturalPerson', 'IDRISSA', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-236', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  SAO J. KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-237', 'na', 'naturalPerson', 'SAO J.', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-237', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  EMMANUEL SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-238', 'na', 'naturalPerson', 'EMMANUEL', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-238', 'charting_officer');
---------------------------------------------------------------------------------------------------------------




--- STATE LAND CLEARING OFFICER -------------------------------------------------------------------------------
-- WE DONT HAVE THE ADDRESSES OF THE STATE LAND CLEARING OFFICERS
---------------------------------------------------------------------------------------------------------------

--DELETE FROM address.address WHERE id = '060520161166';
--INSERT INTO address.address (id, description, ext_address_id) Values('060520161166', 'na', 'na'); 
 
-- TAMBA M. JONES
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-166', 'na', 'naturalPerson', 'TAMBA M.', 'JONES', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-166', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- ABRAHAM COOPER
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-167', 'na', 'naturalPerson', 'ABRAHAM', 'COOPER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-167', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- NOAH FOFANAH
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-168', 'na', 'naturalPerson', 'NOAH', 'FOFANAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-168', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- RASHEED CHARLES NGAIWEE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-169', 'na', 'naturalPerson', 'RASHEED CHARLES', 'NGAIWEE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-169', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- JOHN N. A. COKER

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-170', 'na', 'naturalPerson', 'JOHN N. A.', 'COKER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-170', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- FRANCIS A. KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-171', 'na', 'naturalPerson', 'FRANCIS A.', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-171', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- ALPHA SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-172', 'na', 'naturalPerson', 'ALPHA', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-172', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- FRANK LEBBIE ALLIE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-173', 'na', 'naturalPerson', 'FRANK LEBBIE', 'ALLIE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-173', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- JOSEPH M. K. SINNAH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-174', 'na', 'naturalPerson', 'JOSEPH M. K.', 'SINNAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-174', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI B. DUMBUYA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-175', 'na', 'naturalPerson', 'ALHAJI B.', 'DUMBUYA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-175', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- MAMUDU M. JALLOH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-176', 'na', 'naturalPerson', 'MAMUDU M.', 'JALLOH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-176', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- JOSEPH C. K. TOMMY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-177', 'na', 'naturalPerson', 'JOSEPH C. K.', 'TOMMY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-177', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- KARIM KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-178', 'na', 'naturalPerson', 'KARIM', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-178', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- MISCHECK BOB KOKER

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-179', 'na', 'naturalPerson', 'MISCHECK BOB', 'KOKER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-179', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- BERNARD SAHR JUSU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-180', 'na', 'naturalPerson', 'BERNARD SAHR', 'JUSU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-180', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- JUSTINE B. MUSA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-181', 'na', 'naturalPerson', 'JUSTINE B.', 'MUSA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-181', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- ALFRED M. SIMBO 

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-182', 'na', 'naturalPerson', 'ALFRED M.', 'SIMBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-182', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- JAMES K. JUSU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-183', 'na', 'naturalPerson', 'JAMES K.', 'JUSU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-183', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- IDRISSA KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-184', 'na', 'naturalPerson', 'IDRISSA', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-184', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- SOLOMON L. SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-185', 'na', 'naturalPerson', 'SOLOMON L.', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-185', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- DONALD S. C. HOYTE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-186', 'na', 'naturalPerson', 'DONALD S. C.', 'HOYTE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-186', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

 
-- YAYA KAMARAKEH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-187', 'na', 'naturalPerson', 'YAYA', 'HOYTE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-187', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- ALICE M. KANU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-188', 'na', 'naturalPerson', 'ALICE M.', 'KANU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-188', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- ALBERT BENJAMIN

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-189', 'na', 'naturalPerson', 'ALBERT', 'BENJAMIN', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-189', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- ABDUL KARIM KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-190', 'na', 'naturalPerson', 'ABDUL KARIM', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-190', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- SULAIMAN SAMURA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-191', 'na', 'naturalPerson', 'SULAIMAN', 'SAMURA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-191', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- JOHN EDWARD SINNAH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-192', 'na', 'naturalPerson', 'JOHN EDWARD', 'SINNAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-192', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- RAYMOND COLE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-193', 'na', 'naturalPerson', 'RAYMOND', 'COLE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-193', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- CECIL STANLEY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-194', 'na', 'naturalPerson', 'CECIL', 'STANLEY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-194', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- BUNGI M. TURAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-195', 'na', 'naturalPerson', 'BUNGI M.', 'TURAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-195', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- SANTOS AHMED KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-196', 'na', 'naturalPerson', 'SANTOS AHMED', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-196', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- ALHASSAN MORLAI KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-198', 'na', 'naturalPerson', 'ALHASSAN MORLAI', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-198', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- SAMUEL GEORGE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-299', 'na', 'naturalPerson', 'SAMUEL', 'GEORGE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-299', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- LANSANA MAGBA KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1100', 'na', 'naturalPerson', 'LANSANA MAGBA', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1100', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- PETER KAMANDA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1101', 'na', 'naturalPerson', 'PETER KAMANDA', 'KAMANDA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1101', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- NYUMA DAUDA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1199', 'na', 'naturalPerson', 'NYUMA', 'DAUDA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1199', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- ALEX M. BUREH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1102', 'na', 'naturalPerson', 'ALEX M.', 'BUREH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1102', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- HANNAH ROSELYN FARMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1103', 'na', 'naturalPerson', 'HANNAH ROSELYN', 'FARMA', 'na', 'na', 
            'na', 'female', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1103', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- ALIMAMY SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1104', 'na', 'naturalPerson', 'ALIMAMY', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1104', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- MOHAMED LANSANA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1105', 'na', 'naturalPerson', 'MOHAMED', 'LANSANA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1105', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- ABDUL KOLLIA KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1106', 'na', 'naturalPerson', 'ABDUL KOLLIA', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1106', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- CHARLES SENESIE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1107', 'na', 'naturalPerson', 'CHARLES', 'SENESIE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1107', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


-- ALPHA UMARU TURAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1108', 'na', 'naturalPerson', 'ALPHA UMARU', 'TURAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1108', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

 
-- ANSUMANA ABU SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1109', 'na', 'naturalPerson', 'ANSUMANA ABU', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1109', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

 
-- FRANCIS KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1110', 'na', 'naturalPerson', 'FRANCIS', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1110', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

 
-- DAVID KOMBA KONO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1111', 'na', 'naturalPerson', 'DAVID KOMBA', 'KONO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1111', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

 
-- BABAH K. KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1112', 'na', 'naturalPerson', 'BABAH K.', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1112', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

 
--  MOHAMED S. B. CONTEH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1113', 'na', 'naturalPerson', 'MOHAMED S. B.', 'CONTEH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1113', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

 
--  MOSES MARCARTHY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1114', 'na', 'naturalPerson', 'MOSES', 'MARCARTHY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1114', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

 
--  MUSTAPHA ARTHUR KEMOKAI

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1115', 'na', 'naturalPerson', 'MUSTAPHA ARTHUR', 'KEMOKAI', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1115', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

 
--  LAMIN MOMOH SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1116', 'na', 'naturalPerson', 'LAMIN MOMOH', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-1116', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------




 
--  IBRAHIM SENGEH YANKUBA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-316', 'na', 'naturalPerson', 'IBRAHIM SENGEH', 'YANKUBA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-316', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  PATRICK JOSIE KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-317', 'na', 'naturalPerson', 'PATRICK JOSIE', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-317', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  PAUL A. SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-318', 'na', 'naturalPerson', 'PAUL A.', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-318', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  SIAKA MASSAQUOI

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-319', 'na', 'naturalPerson', 'SIAKA', 'MASSAQUOI', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-319', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  GIBRILLA SABO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-320', 'na', 'naturalPerson', 'GIBRILLA', 'SABO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-320', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  CHRISTIAN GAZA SAMURA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-321', 'na', 'naturalPerson', 'CHRISTIAN GAZA', 'SAMURA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-321', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  ABDUL RAHMAN SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-322', 'na', 'naturalPerson', 'ABDUL RAHMAN', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-322', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  IBRAHIM SANTIGIE KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-323', 'na', 'naturalPerson', 'IBRAHIM SANTIGIE', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-323', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  SORIE BANGURA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-324', 'na', 'naturalPerson', 'SORIE', 'BANGURA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-324', 'charting_officer');
---------------------------------------------------------------------------------------------------------------

--  ALPHA BANGURA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-3241', 'na', 'naturalPerson', 'ALPHA', 'BANGURA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-3241', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  ABU BAKARR KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-325', 'na', 'naturalPerson', 'ABU BAKARR', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-325', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------


--  ABU BAKARR KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-3251', 'na', 'naturalPerson', 'ABU BAKARR', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-3251', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  MISBAWOH DINDA BARRIE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-326', 'na', 'naturalPerson', 'MISBAWOH DINDA', 'BARRIE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-326', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  ALIMAMY MANSARAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-327', 'na', 'naturalPerson', 'ALIMAMY', 'MANSARAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-327', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI MOHAMED RABIEU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-328', 'na', 'naturalPerson', 'ALHAJI MOHAMED', 'RABIEU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-328', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  JOSEPH JOHN KPANABOM

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-329', 'na', 'naturalPerson', 'JOSEPH JOHN', 'KPANABOM', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-329', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  JOSEPH KORPOI JAIA LAVALY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-330', 'na', 'naturalPerson', 'JOSEPH KORPOI JAIA', 'LAVALY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-330', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  FRANK MBOMA ROBERTS

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-331', 'na', 'naturalPerson', 'FRANK MBOMA', 'ROBERTS', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-331', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  YUSUFU KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-332', 'na', 'naturalPerson', 'YUSUF', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-332', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  VICTOR AIAH MONDEH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-333', 'na', 'naturalPerson', 'VICTOR AIAH', 'MONDEH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-333', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  FREDERICK ROLAND MENJOR

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-334', 'na', 'naturalPerson', 'FREDERICK ROLAND', 'MENJOR', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-334', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  ABDUL K. KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-335', 'na', 'naturalPerson', 'ABDUL K.', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-335', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  IDRISSA KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-336', 'na', 'naturalPerson', 'IDRISSA', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-336', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  SAO J. KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-337', 'na', 'naturalPerson', 'SAO J.', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-337', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------

--  EMMANUEL SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)

			Values('060520161131-338', 'na', 'naturalPerson', 'EMMANUEL', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na'); INSERT INTO party.party_role (party_id, type_code) values('060520161131-338', 'stland_clr_officer');
---------------------------------------------------------------------------------------------------------------
