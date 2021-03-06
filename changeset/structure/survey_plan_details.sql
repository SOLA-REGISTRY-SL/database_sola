﻿ALTER TABLE cadastre.cadastre_object ADD COLUMN owner_name character varying(2000);
ALTER TABLE cadastre.cadastre_object ADD COLUMN address character varying(1000);
ALTER TABLE cadastre.cadastre_object ADD COLUMN land_type character varying(20);
ALTER TABLE cadastre.cadastre_object ADD COLUMN parcel_area double precision;
ALTER TABLE cadastre.cadastre_object ADD COLUMN licensed_surveyor_id character varying(40);
ALTER TABLE cadastre.cadastre_object ADD COLUMN east_neighbour character varying(500);
ALTER TABLE cadastre.cadastre_object ADD COLUMN west_neighbour character varying(500);
ALTER TABLE cadastre.cadastre_object ADD COLUMN south_neighbour character varying(500);
ALTER TABLE cadastre.cadastre_object ADD COLUMN north_neighbour character varying(500);
ALTER TABLE cadastre.cadastre_object ADD COLUMN survey_method character varying(20);
ALTER TABLE cadastre.cadastre_object ADD COLUMN survey_date date;
ALTER TABLE cadastre.cadastre_object ADD COLUMN beacon_number character varying(30);
ALTER TABLE cadastre.cadastre_object ADD COLUMN charting_officer_id character varying(40);
ALTER TABLE cadastre.cadastre_object ADD COLUMN state_land_clearing_officer_id character varying(40);
ALTER TABLE cadastre.cadastre_object ADD COLUMN chiefdom_type character varying(20);
      
ALTER TABLE cadastre.cadastre_object ADD CONSTRAINT cadastre_object_land_type_fk FOREIGN KEY (land_type) REFERENCES cadastre.land_type (code) ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE cadastre.cadastre_object ADD CONSTRAINT cadastre_object_party_surveyor_fk FOREIGN KEY (licensed_surveyor_id) REFERENCES party.party (id) ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE cadastre.cadastre_object ADD CONSTRAINT cadastre_object_party_charting_officer_fk FOREIGN KEY (charting_officer_id) REFERENCES party.party (id) ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE cadastre.cadastre_object ADD CONSTRAINT cadastre_object_party_state_land_officer_fk FOREIGN KEY (state_land_clearing_officer_id) REFERENCES party.party (id) ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE cadastre.cadastre_object ADD CONSTRAINT cadastre_object_surveying_method_fk FOREIGN KEY (survey_method) REFERENCES cadastre.surveying_method_type (code) ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE cadastre.cadastre_object ADD FOREIGN KEY (chiefdom_type) REFERENCES cadastre.chiefdoms_type (code) ON UPDATE CASCADE ON DELETE RESTRICT;

COMMENT ON COLUMN cadastre.cadastre_object.owner_name IS 'The name of the Property Owner/Applicant';
COMMENT ON COLUMN cadastre.cadastre_object.address IS 'Parcel address';
COMMENT ON COLUMN cadastre.cadastre_object.land_type IS 'Land type code';
COMMENT ON COLUMN cadastre.cadastre_object.parcel_area IS 'Parcel area in sq meters';
COMMENT ON COLUMN cadastre.cadastre_object.licensed_surveyor_id IS 'Licensed surveyor id';
COMMENT ON COLUMN cadastre.cadastre_object.east_neighbour IS 'Neighbour name at the east';
COMMENT ON COLUMN cadastre.cadastre_object.west_neighbour IS 'Neighbour name at the west';
COMMENT ON COLUMN cadastre.cadastre_object.south_neighbour IS 'Neighbour name at the south';
COMMENT ON COLUMN cadastre.cadastre_object.north_neighbour IS 'Neighbour name at the north';
COMMENT ON COLUMN cadastre.cadastre_object.survey_method IS 'Survey method code';
COMMENT ON COLUMN cadastre.cadastre_object.survey_date IS 'Surveying date';
COMMENT ON COLUMN cadastre.cadastre_object.beacon_number IS 'Beacon number';
COMMENT ON COLUMN cadastre.cadastre_object.charting_officer_id IS 'Charting officer id';
COMMENT ON COLUMN cadastre.cadastre_object.state_land_clearing_officer_id IS 'State land clearing officer id';
COMMENT ON COLUMN cadastre.cadastre_object.chiefdom_type IS 'Chiefdom type code.';

ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN owner_name character varying(2000);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN address character varying(1000);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN land_type character varying(20);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN parcel_area double precision;
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN licensed_surveyor_id character varying(40);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN east_neighbour character varying(500);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN west_neighbour character varying(500);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN south_neighbour character varying(500);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN north_neighbour character varying(500);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN survey_method character varying(20);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN survey_date date;
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN beacon_number character varying(30);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN charting_officer_id character varying(40);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN state_land_clearing_officer_id character varying(40);
ALTER TABLE cadastre.cadastre_object_historic ADD COLUMN chiefdom_type character varying(20);