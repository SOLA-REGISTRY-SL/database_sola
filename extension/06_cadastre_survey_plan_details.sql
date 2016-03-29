-- Table: cadastre.survey_plan_details

DROP TABLE cadastre.survey_plan_details;

CREATE TABLE cadastre.survey_plan_details
(
  id character varying(20) NOT NULL,
  "LSNo" character varying(20) NOT NULL,
  "NameofOwner" character varying(50) NOT NULL, -- The name of the Property Owner/Applicant
  "Gender" character varying(15) NOT NULL, -- The Gender (male/female) of the Applicant
  "DateofBirth" date NOT NULL,
  "PlaceofBirth" character varying(50),
  "PhoneNo" character varying(50) NOT NULL,
  "EmailAddress" character varying(60),
  "NationalIDNo" character varying(30), -- National Identity Card No of the Owner/Applicant
  "PassportNo" character varying(25), -- Passport No of the applicant is available.
  "AddressofOwner" character varying(100) NOT NULL,
  "PropertyNameofStreet" character varying(50) NOT NULL, -- The Name of the Street/Road where the land is situated. (eg. PENINSULA ROAD)
  "PropertyAddressNo" character varying(10) NOT NULL, -- The address no of the property (eg. No. 2)
  "TypeofLand" character varying(25) NOT NULL, -- The type of land (eg. Private Land, State Land)
  "AreaofLand" double precision NOT NULL,
  "LandMeasurement" character varying(30) NOT NULL,
  "NameofLicenseSurveyor" character varying(50) NOT NULL, -- Name of the Licensed Surveyor who surveyed the land
  "EastNeighborPlotHolder" character varying(50), -- Name of the person occupying the land on the east side of this property.
  "WestNeighborPlotHolder" character varying(50), -- Name of the person occupying the land on the west side of this property.
  "NorthNeighborPlotHolder" character varying(50), -- Name of the person occupying the land on the north side of this property.
  "SouthNeighborPlotHolder" character varying(50), -- Name of the person occupying the land on the sourth side of this property.
  "SurveyingMethod" character varying(50) NOT NULL,
  "DirectorofSurveys" character varying(50),
  "DateSurveyed" date NOT NULL,
  "BeaconNumber" character varying(30) NOT NULL,
  "NameofCO" character varying(50), -- Name of the Charting Officer
  "PhoneNoofCO" character varying(30),
  "DateApprovedbyCO" date, -- The date that this survey plan was approved by the Charting Officer (CO).
  "DesignationofCO" character varying(30), -- The designation/position of the Charting Officer.
  "NameofSLCO" character varying(50), -- The Name of the State Land Clearing Officer (SLCO)
  "PhoneNoOfSLCO" character varying(30),
  "EmailAddressOfSLCO" character varying(50),
  "DateInputtedIntoSystem" date, -- Date the survy plan was inputted into the system.
  "InputtedBy" character varying(30), -- The user that inputted this record into the SOLA system.
  CONSTRAINT "License Surveyor No" PRIMARY KEY ("LSNo"),
  CONSTRAINT "Foreign Key" FOREIGN KEY (id)
      REFERENCES cadastre.cadastre_object (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastre.survey_plan_details
  OWNER TO postgres;
COMMENT ON COLUMN cadastre.survey_plan_details."NameofOwner" IS 'The name of the Property Owner/Applicant';
COMMENT ON COLUMN cadastre.survey_plan_details."Gender" IS 'The Gender (male/female) of the Applicant';
COMMENT ON COLUMN cadastre.survey_plan_details."NationalIDNo" IS 'National Identity Card No of the Owner/Applicant';
COMMENT ON COLUMN cadastre.survey_plan_details."PassportNo" IS 'Passport No of the applicant is available.';
COMMENT ON COLUMN cadastre.survey_plan_details."PropertyNameofStreet" IS 'The Name of the Street/Road where the land is situated. (eg. PENINSULA ROAD)';
COMMENT ON COLUMN cadastre.survey_plan_details."PropertyAddressNo" IS 'The address no of the property (eg. No. 2)';
COMMENT ON COLUMN cadastre.survey_plan_details."NameofLicenseSurveyor" IS 'Name of the Licensed Surveyor who surveyed the land';
COMMENT ON COLUMN cadastre.survey_plan_details."EastNeighborPlotHolder" IS 'Name of the person occupying the land on the east side of this property.';
COMMENT ON COLUMN cadastre.survey_plan_details."WestNeighborPlotHolder" IS 'Name of the person occupying the land on the west side of this property.';
COMMENT ON COLUMN cadastre.survey_plan_details."NorthNeighborPlotHolder" IS 'Name of the person occupying the land on the north side of this property.';
COMMENT ON COLUMN cadastre.survey_plan_details."SouthNeighborPlotHolder" IS 'Name of the person occupying the land on the sourth side of this property.';
COMMENT ON COLUMN cadastre.survey_plan_details."NameofCO" IS 'Name of the Charting Officer';
COMMENT ON COLUMN cadastre.survey_plan_details."DateApprovedbyCO" IS 'The date that this survey plan was approved by the Charting Officer (CO).';
COMMENT ON COLUMN cadastre.survey_plan_details."DesignationofCO" IS 'The designation/position of the Charting Officer.';
COMMENT ON COLUMN cadastre.survey_plan_details."NameofSLCO" IS 'The Name of the State Land Clearing Officer (SLCO)';
COMMENT ON COLUMN cadastre.survey_plan_details."DateInputtedIntoSystem" IS 'Date the survy plan was inputted into the system.';
COMMENT ON COLUMN cadastre.survey_plan_details."InputtedBy" IS 'The user that inputted this record into the SOLA system.';


