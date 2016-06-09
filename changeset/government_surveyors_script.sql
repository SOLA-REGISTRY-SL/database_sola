 

UPDATE party.party_role_type SET display_value = 'Government Surveyor', status = 'c' WHERE code = 'surveyor';

 
----------------------------------------------------------------------------------------------------------
--INSERTING GOVERNMENT LICENSED SUVEYORS
----------------------------------------------------------------------------------------------------------
-- CHRISTIAN A. PRATT

DELETE FROM party.party_role WHERE party_id = '080620161549-01';
DELETE FROM party.party WHERE id = '080620161549-01';
DELETE FROM address.address WHERE id = '080620161549';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161549', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-01', 'na', 'naturalPerson', 'CHRISTIAN A.', 'PRATT', 'na', 'na', 
            'na', 'male', '080620161549', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-01', 'surveyor');
---------------------------------------------------------------------------------------------------------------


-- FAYIA ALPHA

DELETE FROM party.party_role WHERE party_id = '080620161549-02';
DELETE FROM party.party WHERE id = '080620161549-02';
DELETE FROM address.address WHERE id = '080620161550';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161550', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-02', 'na', 'naturalPerson', 'FAYIA.', 'ALPHA', 'na', 'na', 
            'na', 'male', '080620161550', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-02', 'surveyor');
---------------------------------------------------------------------------------------------------------------


-- DONALD M. JONES

DELETE FROM party.party_role WHERE party_id = '080620161549-03';
DELETE FROM party.party WHERE id = '080620161549-03';
DELETE FROM address.address WHERE id = '080620161551';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161551', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-03', 'na', 'naturalPerson', 'DONALD M.', 'JONES', 'na', 'na', 
            'na', 'male', '080620161551', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-03', 'surveyor');
---------------------------------------------------------------------------------------------------------------



-- TAMBA S. DAUDA

DELETE FROM party.party_role WHERE party_id = '080620161549-04';
DELETE FROM party.party WHERE id = '080620161549-04';
DELETE FROM address.address WHERE id = '080620161552';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161552', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-04', 'na', 'naturalPerson', 'TAMBA S.', 'DAUDA', 'na', 'na', 
            'na', 'male', '080620161552', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-04', 'surveyor');
---------------------------------------------------------------------------------------------------------------


-- SAHR MARK KANAWA

DELETE FROM party.party_role WHERE party_id = '080620161549-05';
DELETE FROM party.party WHERE id = '080620161549-05';
DELETE FROM address.address WHERE id = '080620161553';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161553', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-05', 'na', 'naturalPerson', 'SAHR MARK', 'KANAWA', 'na', 'na', 
            'na', 'male', '080620161553', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-05', 'surveyor');
---------------------------------------------------------------------------------------------------------------
 

-- ABRAHAM COOPER

DELETE FROM party.party_role WHERE party_id = '080620161549-06';
DELETE FROM party.party WHERE id = '080620161549-06';
DELETE FROM address.address WHERE id = '080620161554';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161554', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-06', 'na', 'naturalPerson', 'ABRAHAM', 'COOPER', 'na', 'na', 
            'na', 'male', '080620161554', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-06', 'surveyor');
---------------------------------------------------------------------------------------------------------------



-- NOAH FOFANAH

DELETE FROM party.party_role WHERE party_id = '080620161549-07';
DELETE FROM party.party WHERE id = '080620161549-07';
DELETE FROM address.address WHERE id = '080620161555';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161555', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-07', 'na', 'naturalPerson', 'NOAH', 'FOFANAH', 'na', 'na', 
            'na', 'male', '080620161555', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-07', 'surveyor');
---------------------------------------------------------------------------------------------------------------
 

-- RASHEED CHARLES NGIAWEE

DELETE FROM party.party_role WHERE party_id = '080620161549-07';
DELETE FROM party.party WHERE id = '080620161549-07';
DELETE FROM address.address WHERE id = '080620161555';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161555', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-07', 'na', 'naturalPerson', 'RASHEED CHARLES', 'NGIAWEE', 'na', 'na', 
            'na', 'male', '080620161555', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-07', 'surveyor');
---------------------------------------------------------------------------------------------------------------
 
 
-- JOHN N. A. COKER

DELETE FROM party.party_role WHERE party_id = '080620161549-08';
DELETE FROM party.party WHERE id = '080620161549-08';
DELETE FROM address.address WHERE id = '080620161556';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161556', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-08', 'na', 'naturalPerson', 'JOHN N. A.', 'COKER', 'na', 'na', 
            'na', 'male', '080620161556', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-08', 'surveyor');
---------------------------------------------------------------------------------------------------------------

 
 
-- ALPHA SESAY

DELETE FROM party.party_role WHERE party_id = '080620161549-09';
DELETE FROM party.party WHERE id = '080620161549-09';
DELETE FROM address.address WHERE id = '080620161557';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161557', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-09', 'na', 'naturalPerson', 'ALPHA', 'SESAY', 'na', 'na', 
            'na', 'male', '080620161557', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-09', 'surveyor');
---------------------------------------------------------------------------------------------------------------

 
 
-- FRANK LEBBIE ALLIE

DELETE FROM party.party_role WHERE party_id = '080620161549-10';
DELETE FROM party.party WHERE id = '080620161549-10';
DELETE FROM address.address WHERE id = '080620161558';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161558', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-10', 'na', 'naturalPerson', 'FRANK LEBBIE', 'ALLIE', 'na', 'na', 
            'na', 'male', '080620161558', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-10', 'surveyor');
---------------------------------------------------------------------------------------------------------------

 
  
-- JOSEPH M. K. SINNAH

DELETE FROM party.party_role WHERE party_id = '080620161549-11';
DELETE FROM party.party WHERE id = '080620161549-11';
DELETE FROM address.address WHERE id = '080620161559';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161559', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-11', 'na', 'naturalPerson', 'JOSEPH M. K.', 'SINNAH', 'na', 'na', 
            'na', 'male', '080620161559', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-11', 'surveyor');
---------------------------------------------------------------------------------------------------------------

 
-- ALHAJI B. DUMBUYA

DELETE FROM party.party_role WHERE party_id = '080620161549-12';
DELETE FROM party.party WHERE id = '080620161549-12';
DELETE FROM address.address WHERE id = '080620161560';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161560', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-12', 'na', 'naturalPerson', 'ALHAJI B.', 'DUMBUYA', 'na', 'na', 
            'na', 'male', '080620161560', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-12', 'surveyor');
---------------------------------------------------------------------------------------------------------------


 
-- MAMADU M. JALLOH

DELETE FROM party.party_role WHERE party_id = '080620161549-13';
DELETE FROM party.party WHERE id = '080620161549-13';
DELETE FROM address.address WHERE id = '080620161561';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161561', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-13', 'na', 'naturalPerson', 'MAMADU M.', 'JALLOH', 'na', 'na', 
            'na', 'male', '080620161561', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-13', 'surveyor');
---------------------------------------------------------------------------------------------------------------

  
 
-- KARIM KARGBO

DELETE FROM party.party_role WHERE party_id = '080620161549-14';
DELETE FROM party.party WHERE id = '080620161549-14';
DELETE FROM address.address WHERE id = '080620161562';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161562', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-14', 'na', 'naturalPerson', 'KARIM', 'KARGBO', 'na', 'na', 
            'na', 'male', '080620161562', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-14', 'surveyor');
---------------------------------------------------------------------------------------------------------------


  
 
-- MISCHECK BOB KOKER

DELETE FROM party.party_role WHERE party_id = '080620161549-15';
DELETE FROM party.party WHERE id = '080620161549-15';
DELETE FROM address.address WHERE id = '080620161563';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161563', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-15', 'na', 'naturalPerson', 'MISCHECK BOB', 'KOKER', 'na', 'na', 
            'na', 'male', '080620161563', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-15', 'surveyor');
---------------------------------------------------------------------------------------------------------------


  
 
-- BERNARD SAHR JUSU

DELETE FROM party.party_role WHERE party_id = '080620161549-16';
DELETE FROM party.party WHERE id = '080620161549-16';
DELETE FROM address.address WHERE id = '080620161564';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161564', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-16', 'na', 'naturalPerson', 'BERNARD SAHR', 'JUSU', 'na', 'na', 
            'na', 'male', '080620161564', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-16', 'surveyor');
---------------------------------------------------------------------------------------------------------------

 
 
-- JUSTINE B. MUSA

DELETE FROM party.party_role WHERE party_id = '080620161549-17';
DELETE FROM party.party WHERE id = '080620161549-17';
DELETE FROM address.address WHERE id = '080620161565';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161565', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-17', 'na', 'naturalPerson', 'JUSTINE B.', 'MUSA', 'na', 'na', 
            'na', 'male', '080620161565', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-17', 'surveyor');
---------------------------------------------------------------------------------------------------------------


 
 
-- ALFRED M. SIMBO

DELETE FROM party.party_role WHERE party_id = '080620161549-18';
DELETE FROM party.party WHERE id = '080620161549-18';
DELETE FROM address.address WHERE id = '080620161566';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161566', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-18', 'na', 'naturalPerson', 'ALFRED M.', 'SIMBO', 'na', 'na', 
            'na', 'male', '080620161566', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-18', 'surveyor');
---------------------------------------------------------------------------------------------------------------
 
 
 
-- JAMES K. JUSU

DELETE FROM party.party_role WHERE party_id = '080620161549-19';
DELETE FROM party.party WHERE id = '080620161549-19';
DELETE FROM address.address WHERE id = '080620161567';
INSERT INTO address.address (id, description, ext_address_id) Values('080620161567', 'NA', 'NA');
 
INSERT INTO party.party(id, ext_id, type_code, name, last_name, fathers_name, fathers_last_name, 
            alias, gender_code, address_id, id_type_code, id_number, email, 
            phone, mobile, fax, preferred_communication_code, birth_date, 
            classification_code, redact_code)
			
			Values('080620161549-19', 'na', 'naturalPerson', 'JAMES K.', 'JUSU', 'na', 'na', 
            'na', 'male', '080620161567', 'NA', 'na', 'na', 
            'na', 'na', 'na', 'phone', '2999-01-01', 
            'na', 'na');  
			
INSERT INTO party.party_role (party_id, type_code) values('080620161549-19', 'surveyor');
---------------------------------------------------------------------------------------------------------------

