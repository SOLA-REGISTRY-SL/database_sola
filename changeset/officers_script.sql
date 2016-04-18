
-- Table: party.party_type
<<<<<<< HEAD

DELETE FROM party.party_type WHERE code = 'license_surveyor' OR code = 'charting_officer' OR code = 'state_land_clearing_officer';

INSERT INTO party.party_type (code, display_value, status, description) values('license_surveyor','License Surveyor','c','A Certified License Surveyor of doing surveying of lands');
=======
>>>>>>> bd81eadf6e71ce87bb40c15421351c91e28877bb
INSERT INTO party.party_type (code, display_value, status, description) values('charting_officer','Charting Officer','c','A Certified Charting Officer');
INSERT INTO party.party_type (code, display_value, status, description) values('state_land_clearing_officer','State Land Clearing Officer','c','This is a Certified State Land Clearing Officer');


