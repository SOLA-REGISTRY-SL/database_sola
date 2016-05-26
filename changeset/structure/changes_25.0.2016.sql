
CREATE TABLE cadastre.survey_type
(
  code character varying(20) NOT NULL,
  display_value character varying(500) NOT NULL,
  description character varying(1000),
  status character(1) NOT NULL,
  CONSTRAINT survey_type_pkey PRIMARY KEY (code),
  CONSTRAINT survey_type_display_value_unique UNIQUE (display_value)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastre.survey_type
  OWNER TO postgres;
COMMENT ON TABLE cadastre.survey_type
  IS 'Code list of survey types. E.g. Sub-Division, Change of Name, Based on, etc. 
Tags: FLOSS SOLA Extension, Reference Table';
COMMENT ON COLUMN cadastre.survey_type.code IS 'The code for the survey type.';
COMMENT ON COLUMN cadastre.survey_type.display_value IS 'Displayed value of the survey type.';
COMMENT ON COLUMN cadastre.survey_type.description IS 'Description of the survey type.';
COMMENT ON COLUMN cadastre.survey_type.status IS 'Status of the survey type';

insert into cadastre.survey_type (code,display_value,description,status) values ('subdivision','Sub-Division','','c');
insert into cadastre.survey_type (code,display_value,description,status) values ('name_change','Change of Name','','c');
insert into cadastre.survey_type (code,display_value,description,status) values ('based_on','Based on','','c');
insert into cadastre.survey_type (code,display_value,description,status) values ('resurvey_amend','Re-survey amendment','','c');
insert into cadastre.survey_type (code,display_value,description,status) values ('resurvey_ext','Re-survey extension','','c');

---

ALTER TABLE cadastre.cadastre_object
   ALTER COLUMN name_lastpart DROP NOT NULL;
ALTER TABLE cadastre.cadastre_object
  ADD COLUMN survey_type_code character varying(20);
ALTER TABLE cadastre.cadastre_object
  ADD COLUMN ref_name_firstpart character varying(20);
ALTER TABLE cadastre.cadastre_object
  ADD COLUMN ref_name_lastpart character varying(50);
ALTER TABLE cadastre.cadastre_object
  ADD COLUMN survey_number character varying(50);
ALTER TABLE cadastre.cadastre_object
  ADD COLUMN correspondence_file character varying(50);
ALTER TABLE cadastre.cadastre_object
  ADD COLUMN computation_file character varying(50);
ALTER TABLE cadastre.cadastre_object
  ADD COLUMN drawn_by character varying(250);
ALTER TABLE cadastre.cadastre_object
  ADD COLUMN checked_by character varying(250);
ALTER TABLE cadastre.cadastre_object
  ADD COLUMN checking_date date;
ALTER TABLE cadastre.cadastre_object
  ADD CONSTRAINT cadastre_object_survey_type_fkey FOREIGN KEY (survey_type_code) REFERENCES cadastre.survey_type (code) ON UPDATE RESTRICT ON DELETE RESTRICT;
COMMENT ON COLUMN cadastre.cadastre_object.name_lastpart IS 'The remaining part of the name or reference assigned by the land administration agency to identify the cadastre object. E.g. survey plan number, map number, section reference, etc.';
COMMENT ON COLUMN cadastre.cadastre_object.survey_type_code IS 'Survey type code';
COMMENT ON COLUMN cadastre.cadastre_object.ref_name_firstpart IS 'Referenced name first part';
COMMENT ON COLUMN cadastre.cadastre_object.ref_name_lastpart IS 'Referenced name last part';
COMMENT ON COLUMN cadastre.cadastre_object.survey_number IS 'Survey number';
COMMENT ON COLUMN cadastre.cadastre_object.correspondence_file IS 'Correspondence file name';
COMMENT ON COLUMN cadastre.cadastre_object.computation_file IS 'Computation file name';
COMMENT ON COLUMN cadastre.cadastre_object.drawn_by IS 'Drawing officer name';
COMMENT ON COLUMN cadastre.cadastre_object.checked_by IS 'Checking officer name';
COMMENT ON COLUMN cadastre.cadastre_object.checking_date IS 'Checking date';
COMMENT ON TABLE cadastre.cadastre_object
  IS 'Specialization of Spatial Unit that represents primary cadastral features such as parcels. Parcels captured in SOLA should have a spatial definition that illustrates the shape and geographic location of the parcel although this is not a mandatory requirement. Parcels without a spatial definition may be referred to as aspatial or textual parcels.
Tags: FLOSS SOLA Extension, Change History';


