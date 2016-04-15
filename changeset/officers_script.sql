
-- Table: party.party_type

DELETE FROM party.party_type WHERE code = 'license_surveyor' OR code = 'charting_officer' OR code = 'state_land_clearing_officer';

INSERT INTO party.party_type (code, display_value, status, description) values('license_surveyor','License Surveyor','c','A Certified License Surveyor of doing surveying of lands');
INSERT INTO party.party_type (code, display_value, status, description) values('charting_officer','Charting Officer','c','A Certified Charting Officer');
INSERT INTO party.party_type (code, display_value, status, description) values('state_land_clearing_officer','State Land Clearing Officer','c','This is a Certified State Land Clearing Officer');


-- Table: party.party

INSERT INTO address.address (id, description, ext_address) values('addressid','theaddress','optional');
INSERT INTO party.party (ext_id, type_code, name, last_name, alias, gender_code, address_id, id_type_code, id_number, email, phone) Values('extid','type_code','name','last name','alias','gendercode','addressid','id_typecode','idnumber','email','phone')