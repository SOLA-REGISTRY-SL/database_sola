----------------------------------------------------------------------------------------------------------
--Table: party.party_type
----------------------------------------------------------------------------------------------------------
--DELETE FROM party.party_type WHERE code = 'licensed_surveyor' OR code = 'charting_officer' OR code = 'state_land_co';

--INSERT INTO party.party_type (code, display_value, status, description) values('licensed_surveyor','License Surveyor','c','A Certified License Surveyor of doing surveying of lands');
--INSERT INTO party.party_type (code, display_value, status, description) values('charting_officer','Charting Officer','c','A Certified Charting Officer');
--INSERT INTO party.party_type (code, display_value, status, description) values('state_land_co','State Land Clearing Officer','c','This is a Certified State Land Clearing Officer');
 
 --PREPARING THE party.id_type table
--DELETE FROM party.id_type WHERE code = 'NA';
--INSERT INTO party.id_type (code, description, display_value, status) values('NA', 'Not Available at the moment of Inserting this record', 'Not Available', 'c');


----------------------------------------------------------------------------------------------------------
--INSERTING LICENSED SUVEYOR
----------------------------------------------------------------------------------------------------------
-- DR. KOSONIKE KOSO-THOMAS


DELETE FROM party.party WHERE id = '060520161131-01';
DELETE FROM address.address WHERE id = '060520161131';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161131', 'C/O TECHSULT 26 PERCIVAL STREET, FREETOWN', 'NA');

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-01', 'na', 'licensed_surveyor', 'DR. KOSONIKE', 'KOSO-THOMAS', 'na', 'na', 
            'na', 'male', '060520161131', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

--BOBOH DAVID
DELETE FROM party.party WHERE id = '060520161131-02';
DELETE FROM address.address WHERE id = '060520161132';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161132', 'C/O SIERRA RUTILE P.O. BOX 59, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-02', 'na', 'licensed_surveyor', 'BOBOH', 'DAVID', 'na', 'na', 
            'na', 'male', '060520161132', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

--ERIC CHRISTIAN ARTHUR FORSTER
DELETE FROM party.party WHERE id = '060520161131-03';
DELETE FROM address.address WHERE id = '060520161133';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161133', '8A MUDGE FARM, MURRAY TOWN, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-03', 'na', 'licensed_surveyor', 'ERIC CHRISTIAN', 'ARTHUR FORSTER', 'na', 'na', 
            'na', 'male', '060520161133', 'NA', 'na', 'na', 
            'na', '076-261613', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

--FODAY JIBBA ANTHONY
DELETE FROM party.party WHERE id = '060520161131-04';
DELETE FROM address.address WHERE id = '060520161134';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161134', '13 DAVIS STREET, KISSY', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-04', 'na', 'licensed_surveyor', 'FODAY JIBBA', 'ANTHONY', 'na', 'na', 
            'na', 'male', '060520161134', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- SAMUEL CHRISPIN OZENDRICK SWARRAY
DELETE FROM party.party WHERE id = '060520161131-05';
DELETE FROM address.address WHERE id = '060520161135';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161135', '17D NEWCASTLE STREET, KISSY', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-05', 'na', 'licensed_surveyor', 'SAMUEL CHRISPIN', 'OZENDRICK SWARRAY', 'na', 'na', 
            'na', 'male', '060520161135', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- SIATI CHARLES LANSANA
DELETE FROM party.party WHERE id = '060520161131-06';
DELETE FROM address.address WHERE id = '060520161136';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161136', '21 MURRAY TOWN ROAD, MURRAY TOWN, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-06', 'na', 'licensed_surveyor', 'SIATI CHARLES', 'LANSANA', 'na', 'na', 
            'na', 'male', '060520161136', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI MOHAMED LAMIN ABDULLAH
DELETE FROM party.party WHERE id = '060520161131-07';
DELETE FROM address.address WHERE id = '060520161137';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161137', '3 UPPER SAVAGE SQUARE, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-07', 'na', 'licensed_surveyor', 'ALHAJI MOHAMED LAMIN', 'ABDULLAH', 'na', 'na', 
            'na', 'male', '060520161137', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- MOHAMED SANFA BOCKARIE
DELETE FROM party.party WHERE id = '060520161131-08';
DELETE FROM address.address WHERE id = '060520161138';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161138', 'SIEROMCO MINES P.O. BOX 725, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-08', 'na', 'licensed_surveyor', 'MOHAMED SANFA', 'BOCKARIE', 'na', 'na', 
            'na', 'male', '060520161138', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JOE PETER ARUNA
DELETE FROM party.party WHERE id = '060520161131-09';
DELETE FROM address.address WHERE id = '060520161139';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161139', 'SIERRA RUTILE LTD. P.O. BOX 59, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-09', 'na', 'licensed_surveyor', 'JOE PETER', 'ARUNA', 'na', 'na', 
            'na', 'male', '060520161139', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALEXANDER MACAVORAY COKER
DELETE FROM party.party WHERE id = '060520161131-40';
DELETE FROM address.address WHERE id = '060520161140';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161140', '45 BATHURST STREET, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-40', 'na', 'licensed_surveyor', 'ALEXANDER MACAVORAY', 'COKER', 'na', 'na', 
            'na', 'male', '060520161140', 'NA', 'na', 'na', 
            'na', '076613100', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JAMES MORGAI BANGURA
DELETE FROM party.party WHERE id = '060520161131-41';
DELETE FROM address.address WHERE id = '060520161141';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161141', '67 BASS STREET, BROOKFIELDS, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-41', 'na', 'licensed_surveyor', 'JAMES MORGAI', 'BANGURA', 'na', 'na', 
            'na', 'male', '060520161141', 'NA', 'na', 'na', 
            'na', '077542096', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- IBRAHIM KAMARA
DELETE FROM party.party WHERE id = '060520161131-42';
DELETE FROM address.address WHERE id = '060520161142';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161142', 'C/O SPIRITUS HOUSE, 5 HOWE STREET, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-42', 'na', 'licensed_surveyor', 'IBRAHIM', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161142', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI ISSA MOHAMED BANGURA
DELETE FROM party.party WHERE id = '060520161131-43';
DELETE FROM address.address WHERE id = '060520161143';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161143', '40A LOW COST HOUSING ESTATE, KISSY, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-43', 'na', 'licensed_surveyor', 'ALHAJI ISSA BANGURA', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161143', 'NA', 'na', 'na', 
            'na', '076673686', '077673686', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- SHERIFF ABASS KARGBO
DELETE FROM party.party WHERE id = '060520161131-44';
DELETE FROM address.address WHERE id = '060520161144';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161144', '11 MANNER STREET, ALLEN TOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-44', 'na', 'licensed_surveyor', 'SHERIFF ABASS', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161144', 'NA', 'na', 'na', 
            'na', '076686109', '077700862', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALLIAH JOSEPH SUNDIMA
DELETE FROM party.party WHERE id = '060520161131-45';
DELETE FROM address.address WHERE id = '060520161145';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161145', '27 CEMENTRY ROAD, ORUGU VILLAGE, ALLEN TOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-45', 'na', 'licensed_surveyor', 'ALLIAH JOSEPH', 'SUNDIMA', 'na', 'na', 
            'na', 'male', '060520161145', 'NA', 'na', 'na', 
            'na', '076628782', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- EDWARD ARTHUR EDDY

DELETE FROM party.party WHERE id = '060520161131-46';
DELETE FROM address.address WHERE id = '060520161146';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161146', '22 LEAH STREET, FREETOWN', 'na');

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-46', 'na', 'licensed_surveyor', 'EDWARD ARTHUR', 'EDDY', 'na', 'na', 
            'na', 'male', '060520161146', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JONATHAN D. COLLIER
DELETE FROM party.party WHERE id = '060520161131-47';
DELETE FROM address.address WHERE id = '060520161147';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161147', '26 GODERICH ROAD, LUMLEY, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-47', 'na', 'licensed_surveyor', 'JONATHAN D.', 'COLLIER', 'na', 'na', 
            'na', 'male', '060520161147', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------
 
-- SYLVANUS ABDUL LUSANIE
DELETE FROM party.party WHERE id = '060520161131-48';
DELETE FROM address.address WHERE id = '060520161148';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161148', '13D HANNESSON STREET, NEW ENGLAND, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-48', 'na', 'licensed_surveyor', 'SYLVANUS ABDUL', 'LUSANIE', 'na', 'na', 
            'na', 'male', '060520161148', 'NA', 'na', 'na', 
            'na', '076604050', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- FESTUS EDMONDSON THODPHILUS GEORGE
DELETE FROM party.party WHERE id = '060520161131-49';
DELETE FROM address.address WHERE id = '060520161149';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161149', '6 SAMUELS LAND, KISSY', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-49', 'na', 'licensed_surveyor', 'FESTUS EDMONDSON THODPHILUS', 'GEORGE', 'na', 'na', 
            'na', 'male', '060520161149', 'NA', 'na', 'na', 
            'na', '088579105', '030233768', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI AMADU IBRAHIM ALIM-TURAY
DELETE FROM party.party WHERE id = '060520161131-50';
DELETE FROM address.address WHERE id = '060520161150';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161150', '9F KINGHARMAN ROAD, BROOKFIELDS, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-50', 'na', 'licensed_surveyor', 'ALHAJI AMADU IBRAHIM', 'ALIM-TURAY', 'na', 'na', 
            'na', 'male', '060520161150', 'NA', 'na', 'na', 
            'na', '076262048', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JOSIAH BACOGUN COLE-DAVIS
DELETE FROM party.party WHERE id = '060520161131-51';
DELETE FROM address.address WHERE id = '060520161151';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161151', '6 SAWI DRIVE OFF KINGHARMAN ROAD, P.O. BOX 799, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-51', 'na', 'licensed_surveyor', 'JOSIAH BACOGUN', 'COLE-DAVIS', 'na', 'na', 
            'na', 'male', '060520161151', 'NA', 'na', 'na', 
            'na', '030230079', '025230079', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- GEOFFERY C. BOBB-LUCAS
DELETE FROM party.party WHERE id = '060520161131-52';
DELETE FROM address.address WHERE id = '060520161152';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161152', '168A CIRCULAR ROAD, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-52', 'na', 'licensed_surveyor', 'GEOFFERY C.', 'BOBB-LUCAS', 'na', 'na', 
            'na', 'male', '060520161152', 'NA', 'na', 'na', 
            'na', '076640736', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- STANLEY MUSTAPHA LAHAI
DELETE FROM party.party WHERE id = '060520161131-53';
DELETE FROM address.address WHERE id = '060520161153';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161153', '40 SUMAILA TOWN OFF PADEMBA ROAD, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-53', 'na', 'licensed_surveyor', 'STANLEY MUSTAPHA', 'LAHAI', 'na', 'na', 
            'na', 'male', '060520161153', 'NA', 'na', 'na', 
            'na', '076674479', '077991178', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------
 
-- ABDUL R. HAMID
DELETE FROM party.party WHERE id = '060520161131-54';
DELETE FROM address.address WHERE id = '060520161154';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161154', 'PASSANDI HOUSE, CANTONMENT ROAD, BROOKFIELDS, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-54', 'na', 'licensed_surveyor', 'ABDUL R.', 'HAMID', 'na', 'na', 
            'na', 'male', '060520161154', 'NA', 'na', 'na', 
            'na', '076652314', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALFRED B. JUNISA
DELETE FROM party.party WHERE id = '060520161131-55';
DELETE FROM address.address WHERE id = '060520161155';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161155', 'KENEMA', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-55', 'na', 'licensed_surveyor', 'ALFRED B.', 'JUNISA', 'na', 'na', 
            'na', 'male', '060520161155', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- MOHAMED B.B. MAHDI
DELETE FROM party.party WHERE id = '060520161131-56';
DELETE FROM address.address WHERE id = '060520161156';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161156', '14A ANSLEY STREET, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-56', 'na', 'licensed_surveyor', 'MOHAMED B.B.', 'MAHDI', 'na', 'na', 
            'na', 'male', '060520161156', 'NA', 'na', 'na', 
            'na', '077622184', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- PHILIP MOIBA
DELETE FROM party.party WHERE id = '060520161131-57';
DELETE FROM address.address WHERE id = '060520161157';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161157', '19A BOYLE LAND, BANAWA WATER, MURRAY TOWN, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-57', 'na', 'licensed_surveyor', 'PHILIP', 'MOIBA', 'na', 'na', 
            'na', 'male', '060520161157', 'NA', 'na', 'na', 
            'na', '076624828', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- SHEIK UMARU KABIA
DELETE FROM party.party WHERE id = '060520161131-58';
DELETE FROM address.address WHERE id = '060520161158';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161158', 'NA', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-58', 'na', 'licensed_surveyor', 'PHILIP', 'MOIBA', 'na', 'na', 
            'na', 'male', '060520161158', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ABDUL FATTAH IBRAHIM
DELETE FROM party.party WHERE id = '060520161131-59';
DELETE FROM address.address WHERE id = '060520161159';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161159', '3 PETER STREET, OFF MOUNTAIN CUT, FREETOWN', 'na');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-59', 'na', 'licensed_surveyor', 'ABDUL FATTAH', 'IBRAHIM', 'na', 'na', 
            'na', 'male', '060520161159', 'NA', 'na', 'na', 
            'na', '078744243', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- HAMLET A. KHANI
DELETE FROM party.party WHERE id = '060520161131-60';
DELETE FROM address.address WHERE id = '060520161160';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161160', '67 BASS STREET, BROOKFIELDS, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-60', 'na', 'licensed_surveyor', 'HAMLET A.', 'KHANI', 'na', 'na', 
            'na', 'male', '060520161160', 'NA', 'na', 'na', 
            'na', '076629436', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- AHMED M. BANGURA
DELETE FROM party.party WHERE id = '060520161131-61';
DELETE FROM address.address WHERE id = '060520161161';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161161', '18 PETER LANE, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-61', 'na', 'licensed_surveyor', 'AHMED M.', 'BANGURA', 'na', 'na', 
            'na', 'male', '060520161161', 'NA', 'na', 'na', 
            'na', '076752763', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- SYLVANUES B. FODAY
DELETE FROM party.party WHERE id = '060520161131-62';
DELETE FROM address.address WHERE id = '060520161162';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161162', '8 WHYSE MOORE STREET, PORTEE, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-62', 'na', 'licensed_surveyor', 'SYLVANUES B.', 'FODAY', 'na', 'na', 
            'na', 'male', '060520161162', 'NA', 'na', 'na', 
            'na', '076752763', '077428185', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ABUBAKARR K. JAJUA
DELETE FROM party.party WHERE id = '060520161131-63';
DELETE FROM address.address WHERE id = '060520161163';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161163', 'OFF MMTC, GODERICH, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-63', 'na', 'licensed_surveyor', 'ABUBAKARR K.', 'JAJUA', 'na', 'na', 
            'na', 'male', '060520161163', 'NA', 'na', 'na', 
            'na', '076817423', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- BANGALI BANGURA
DELETE FROM party.party WHERE id = '060520161131-64';
DELETE FROM address.address WHERE id = '060520161164';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161164', '62 SANDER STREET, FREETOWN', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-64', 'na', 'licensed_surveyor', 'BANGALI', 'BANGURA', 'na', 'na', 
            'na', 'male', '060520161164', 'NA', 'na', 'na', 
            'na', '078463586', '088190193', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- MOHAMED LAMARANA JALLOH
DELETE FROM party.party WHERE id = '060520161131-65';
DELETE FROM address.address WHERE id = '060520161165';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161165', 'KENEMA-ISU ROAD PROJECT', 'na');


INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-65', 'na', 'licensed_surveyor', 'MOHAMED LAMARANA', 'JALLOH', 'na', 'na', 
            'na', 'male', '060520161165', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

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



---------------------------------------------------------------------------------------------------------------


--- CHARTING OFFICERS -----------------------------------------------------------------------------------------
-- WE DONT HAVE THE ADDRESSES OF THE CHARTING OFFICERS
---------------------------------------------------------------------------------------------------------------



DELETE FROM address.address WHERE id = '060520161166';
INSERT INTO address.address (id, description, ext_address_id) Values('060520161166', 'NA', 'na');


-- TAMBA M. JONES
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-66', 'na', 'charting_officer', 'TAMBA M.', 'JONES', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ABRAHAM COOPER
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-67', 'na', 'charting_officer', 'ABRAHAM', 'COOPER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- NOAH FOFANAH
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-68', 'na', 'charting_officer', 'NOAH', 'FOFANAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- RASHEED CHARLES NGAIWEE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-69', 'na', 'charting_officer', 'RASHEED CHARLES', 'NGAIWEE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JOHN N. A. COKER

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-70', 'na', 'charting_officer', 'JOHN N. A.', 'COKER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- FRANCIS A. KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-71', 'na', 'charting_officer', 'FRANCIS A.', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALPHA SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-72', 'na', 'charting_officer', 'ALPHA', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- FRANK LEBBIE ALLIE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-73', 'na', 'charting_officer', 'FRANK LEBBIE', 'ALLIE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JOSEPH M. K. SINNAH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-74', 'na', 'charting_officer', 'JOSEPH M. K.', 'SINNAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI B. DUMBUYA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-75', 'na', 'charting_officer', 'ALHAJI B.', 'DUMBUYA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- MAMUDU M. JALLOH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-76', 'na', 'charting_officer', 'MAMUDU M.', 'JALLOH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JOSEPH C. K. TOMMY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-77', 'na', 'charting_officer', 'JOSEPH C. K.', 'TOMMY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- KARIM KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-78', 'na', 'charting_officer', 'KARIM', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- MISCHECK BOB KOKER

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-79', 'na', 'charting_officer', 'MISCHECK BOB', 'KOKER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- BERNARD SAHR JUSU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-80', 'na', 'charting_officer', 'BERNARD SAHR', 'JUSU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JUSTINE B. MUSA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-81', 'na', 'charting_officer', 'JUSTINE B.', 'MUSA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALFRED M. SIMBO 

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-82', 'na', 'charting_officer', 'ALFRED M.', 'SIMBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JAMES K. JUSU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-83', 'na', 'charting_officer', 'JAMES K.', 'JUSU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- IDRISSA KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-84', 'na', 'charting_officer', 'IDRISSA', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- SOLOMON L. SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-85', 'na', 'charting_officer', 'SOLOMON L.', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- DONALD S. C. HOYTE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-86', 'na', 'charting_officer', 'DONALD S. C.', 'HOYTE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
-- YAYA KAMARAKEH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-87', 'na', 'charting_officer', 'YAYA', 'HOYTE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALICE M. KANU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-88', 'na', 'charting_officer', 'ALICE M.', 'KANU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALBERT BENJAMIN

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-89', 'na', 'charting_officer', 'ALBERT', 'BENJAMIN', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ABDUL KARIM KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-90', 'na', 'charting_officer', 'ABDUL KARIM', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- SULAIMAN SAMURA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-91', 'na', 'charting_officer', 'SULAIMAN', 'SAMURA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- JOHN EDWARD SINNAH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-92', 'na', 'charting_officer', 'JOHN EDWARD', 'SINNAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- RAYMOND COLE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-93', 'na', 'charting_officer', 'RAYMOND', 'COLE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- CECIL STANLEY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-94', 'na', 'charting_officer', 'CECIL', 'STANLEY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- BUNGI M. TURAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-95', 'na', 'charting_officer', 'BUNGI M.', 'TURAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- SANTOS AHMED KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-96', 'na', 'charting_officer', 'SANTOS AHMED', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALHASSAN MORLAI KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-98', 'na', 'charting_officer', 'ALHASSAN MORLAI', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- SAMUEL GEORGE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-99', 'na', 'charting_officer', 'SAMUEL', 'GEORGE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- LANSANA MAGBA KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-100', 'na', 'charting_officer', 'LANSANA MAGBA', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- PETER KAMANDA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-101', 'na', 'charting_officer', 'PETER KAMANDA', 'KAMANDA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- NYUMA DAUDA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-199', 'na', 'charting_officer', 'NYUMA', 'DAUDA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALEX M. BUREH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-102', 'na', 'charting_officer', 'ALEX M.', 'BUREH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- HANNAH ROSELYN FARMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-103', 'na', 'charting_officer', 'HANNAH ROSELYN', 'FARMA', 'na', 'na', 
            'na', 'female', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALIMAMY SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-104', 'na', 'charting_officer', 'ALIMAMY', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- MOHAMED LANSANA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-105', 'na', 'charting_officer', 'MOHAMED', 'LANSANA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ABDUL KOLLIA KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-106', 'na', 'charting_officer', 'ABDUL KOLLIA', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- CHARLES SENESIE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-107', 'na', 'charting_officer', 'CHARLES', 'SENESIE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALPHA UMARU TURAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-108', 'na', 'charting_officer', 'ALPHA UMARU', 'TURAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
-- ANSUMANA ABU SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-109', 'na', 'charting_officer', 'ANSUMANA ABU', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
-- FRANCIS KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-110', 'na', 'charting_officer', 'FRANCIS', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
-- DAVID KOMBA KONO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-111', 'na', 'charting_officer', 'DAVID KOMBA', 'KONO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
-- BABAH K. KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-112', 'na', 'charting_officer', 'BABAH K.', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
--  MOHAMED S. B. CONTEH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-113', 'na', 'charting_officer', 'MOHAMED S. B.', 'CONTEH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
--  MOSES MARCARTHY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-114', 'na', 'charting_officer', 'MOSES', 'MARCARTHY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
--  MUSTAPHA ARTHUR KEMOKAI

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-115', 'na', 'charting_officer', 'MUSTAPHA ARTHUR', 'KEMOKAI', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
--  LAMIN MOMOH SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-116', 'na', 'charting_officer', 'LAMIN MOMOH', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------





--- STATE LAND CLEARING OFFICER -------------------------------------------------------------------------------
-- WE DONT HAVE THE ADDRESSES OF THE STATE LAND CLEARING OFFICERS
---------------------------------------------------------------------------------------------------------------

--DELETE FROM address.address WHERE id = '060520161166';
--INSERT INTO address.address (id, description, ext_address_id) Values('060520161166', 'NA', 'na');


-- TAMBA M. JONES
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-166', 'na', 'state_land_co', 'TAMBA M.', 'JONES', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ABRAHAM COOPER
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-167', 'na', 'state_land_co', 'ABRAHAM', 'COOPER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- NOAH FOFANAH
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-168', 'na', 'state_land_co', 'NOAH', 'FOFANAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- RASHEED CHARLES NGAIWEE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-169', 'na', 'state_land_co', 'RASHEED CHARLES', 'NGAIWEE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JOHN N. A. COKER

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-170', 'na', 'state_land_co', 'JOHN N. A.', 'COKER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- FRANCIS A. KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-171', 'na', 'state_land_co', 'FRANCIS A.', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALPHA SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-172', 'na', 'state_land_co', 'ALPHA', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- FRANK LEBBIE ALLIE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-173', 'na', 'state_land_co', 'FRANK LEBBIE', 'ALLIE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JOSEPH M. K. SINNAH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-174', 'na', 'state_land_co', 'JOSEPH M. K.', 'SINNAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALHAJI B. DUMBUYA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-175', 'na', 'state_land_co', 'ALHAJI B.', 'DUMBUYA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- MAMUDU M. JALLOH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-176', 'na', 'state_land_co', 'MAMUDU M.', 'JALLOH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JOSEPH C. K. TOMMY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-177', 'na', 'state_land_co', 'JOSEPH C. K.', 'TOMMY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- KARIM KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-178', 'na', 'state_land_co', 'KARIM', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- MISCHECK BOB KOKER

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-179', 'na', 'state_land_co', 'MISCHECK BOB', 'KOKER', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- BERNARD SAHR JUSU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-180', 'na', 'state_land_co', 'BERNARD SAHR', 'JUSU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JUSTINE B. MUSA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-181', 'na', 'state_land_co', 'JUSTINE B.', 'MUSA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- ALFRED M. SIMBO 

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-182', 'na', 'state_land_co', 'ALFRED M.', 'SIMBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- JAMES K. JUSU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-183', 'na', 'state_land_co', 'JAMES K.', 'JUSU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- IDRISSA KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-184', 'na', 'state_land_co', 'IDRISSA', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- SOLOMON L. SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-185', 'na', 'state_land_co', 'SOLOMON L.', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- DONALD S. C. HOYTE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-186', 'na', 'state_land_co', 'DONALD S. C.', 'HOYTE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
-- YAYA KAMARAKEH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-187', 'na', 'state_land_co', 'YAYA', 'HOYTE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALICE M. KANU

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-188', 'na', 'state_land_co', 'ALICE M.', 'KANU', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALBERT BENJAMIN

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-189', 'na', 'state_land_co', 'ALBERT', 'BENJAMIN', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ABDUL KARIM KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-190', 'na', 'state_land_co', 'ABDUL KARIM', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- SULAIMAN SAMURA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-191', 'na', 'state_land_co', 'SULAIMAN', 'SAMURA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- JOHN EDWARD SINNAH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-192', 'na', 'state_land_co', 'JOHN EDWARD', 'SINNAH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- RAYMOND COLE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-193', 'na', 'state_land_co', 'RAYMOND', 'COLE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- CECIL STANLEY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-194', 'na', 'state_land_co', 'CECIL', 'STANLEY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

-- BUNGI M. TURAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-195', 'na', 'state_land_co', 'BUNGI M.', 'TURAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- SANTOS AHMED KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-196', 'na', 'state_land_co', 'SANTOS AHMED', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALHASSAN MORLAI KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-198', 'na', 'state_land_co', 'ALHASSAN MORLAI', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- SAMUEL GEORGE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-299', 'na', 'state_land_co', 'SAMUEL', 'GEORGE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- LANSANA MAGBA KOROMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1100', 'na', 'state_land_co', 'LANSANA MAGBA', 'KOROMA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- PETER KAMANDA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1101', 'na', 'state_land_co', 'PETER KAMANDA', 'KAMANDA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- NYUMA DAUDA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1199', 'na', 'state_land_co', 'NYUMA', 'DAUDA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALEX M. BUREH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1102', 'na', 'state_land_co', 'ALEX M.', 'BUREH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- HANNAH ROSELYN FARMA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1103', 'na', 'state_land_co', 'HANNAH ROSELYN', 'FARMA', 'na', 'na', 
            'na', 'female', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALIMAMY SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1104', 'na', 'state_land_co', 'ALIMAMY', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- MOHAMED LANSANA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1105', 'na', 'state_land_co', 'MOHAMED', 'LANSANA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ABDUL KOLLIA KARGBO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1106', 'na', 'state_land_co', 'ABDUL KOLLIA', 'KARGBO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- CHARLES SENESIE

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1107', 'na', 'state_land_co', 'CHARLES', 'SENESIE', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------


-- ALPHA UMARU TURAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1108', 'na', 'state_land_co', 'ALPHA UMARU', 'TURAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
-- ANSUMANA ABU SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1109', 'na', 'state_land_co', 'ANSUMANA ABU', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
-- FRANCIS KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1110', 'na', 'state_land_co', 'FRANCIS', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
-- DAVID KOMBA KONO

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1111', 'na', 'state_land_co', 'DAVID KOMBA', 'KONO', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
-- BABAH K. KAMARA

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1112', 'na', 'state_land_co', 'BABAH K.', 'KAMARA', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
--  MOHAMED S. B. CONTEH

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1113', 'na', 'state_land_co', 'MOHAMED S. B.', 'CONTEH', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
--  MOSES MARCARTHY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1114', 'na', 'state_land_co', 'MOSES', 'MARCARTHY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
--  MUSTAPHA ARTHUR KEMOKAI

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1115', 'na', 'state_land_co', 'MUSTAPHA ARTHUR', 'KEMOKAI', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------

 
--  LAMIN MOMOH SESAY

INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('060520161131-1116', 'na', 'state_land_co', 'LAMIN MOMOH', 'SESAY', 'na', 'na', 
            'na', 'male', '060520161166', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');
---------------------------------------------------------------------------------------------------------------