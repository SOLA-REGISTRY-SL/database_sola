-- Table: cadastre.survey_plan_details

DROP TABLE cadastre.survey_plan_details;

CREATE TABLE cadastre.survey_plan_details
(
  id character varying(20) NOT NULL,
  "ls_nr" character varying(20) NOT NULL,
  "owner_name" character varying(50) NOT NULL, -- The name of the Property Owner/Applicant
  "name_of_street" character varying(50) NOT NULL, -- The Name of the Street/Road where the land is situated. (eg. PENINSULA ROAD)
  "address_nr" character varying(10) NOT NULL, -- The address no of the property (eg. No. 2)
  "land_type" character varying(25) NOT NULL, -- The type of land (eg. Private Land, State Land)
  "land_area" double precision NOT NULL,
  "land_measurement" character varying(30) NOT NULL,
  "license_surveyor_name" character varying(50) NOT NULL, -- Name of the Licensed Surveyor who surveyed the land
  "east_neighbour" character varying(50), -- Name of the person occupying the land on the east side of this property.
  "west_neighbour" character varying(50), -- Name of the person occupying the land on the west side of this property.
  "north_neighbour" character varying(50), -- Name of the person occupying the land on the north side of this property.
  "sourth_neighbour" character varying(50), -- Name of the person occupying the land on the sourth side of this property.
  "survey_method" character varying(50) NOT NULL,
  "director_of_survey" character varying(50),
  "date_surveyed" date NOT NULL,
  "beacon_number" character varying(30) NOT NULL,
  "charting_officer_name" character varying(50), -- Name of the Charting Officer
  "state_land_clearing_officer_name" character varying(50), -- The Name of the State Land Clearing Officer (SLCO)
  "input_date" date, -- Date the survy plan was inputted into the system.
  "inputed_by" character varying(30), -- The user that inputted this record into the SOLA system.
  CONSTRAINT "License Surveyor No" PRIMARY KEY ("ls_nr"),
  CONSTRAINT "Foreign Key" FOREIGN KEY (id)
      REFERENCES cadastre.cadastre_object (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastre.survey_plan_details
  OWNER TO postgres;
COMMENT ON COLUMN cadastre.survey_plan_details."owner_name" IS 'The name of the Property Owner/Applicant';
COMMENT ON COLUMN cadastre.survey_plan_details."name_of_street" IS 'The Name of the Street/Road where the land is situated. (eg. PENINSULA ROAD)';
COMMENT ON COLUMN cadastre.survey_plan_details."address_nr" IS 'The address no of the property (eg. No. 2)';
COMMENT ON COLUMN cadastre.survey_plan_details."license_surveyor_name" IS 'Name of the Licensed Surveyor who surveyed the land';
COMMENT ON COLUMN cadastre.survey_plan_details."east_neighbour" IS 'Name of the person occupying the land on the east side of this property.';
COMMENT ON COLUMN cadastre.survey_plan_details."west_neighbour" IS 'Name of the person occupying the land on the west side of this property.';
COMMENT ON COLUMN cadastre.survey_plan_details."north_neighbour" IS 'Name of the person occupying the land on the north side of this property.';
COMMENT ON COLUMN cadastre.survey_plan_details."sourth_neighbour" IS 'Name of the person occupying the land on the sourth side of this property.';
COMMENT ON COLUMN cadastre.survey_plan_details."charting_officer_name" IS 'Name of the Charting Officer';
COMMENT ON COLUMN cadastre.survey_plan_details."state_land_clearing_officer_name" IS 'The Name of the State Land Clearing Officer (SLCO)';
COMMENT ON COLUMN cadastre.survey_plan_details."input_date" IS 'Date the survy plan was inputted into the system.';
COMMENT ON COLUMN cadastre.survey_plan_details."inputed_by" IS 'The user that inputted this record into the SOLA system.';


