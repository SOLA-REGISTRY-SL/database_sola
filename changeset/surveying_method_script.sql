-- Table: system.surveying_method
-- Script designed by Moses and Momodu for REGISTRY-SL

DROP TABLE IF EXISTS system.surveying_method_type;

CREATE TABLE cadastre.surveying_method_type
(
  code character varying(20) NOT NULL, -- LADM Definition: The code for the Surveying Method.
  display_value character varying(500) NOT NULL, -- LADM Definition: Displayed value of the Surveying Method.
  description character varying(1000), -- LADM Definition: Description of the Surveying Method.
  status character(1) NOT NULL DEFAULT 't'::bpchar, -- SOLA Extension: Status of the Surveying Method
  CONSTRAINT surveying_method_pkey PRIMARY KEY (code),
  CONSTRAINT surveying_method_display_value_unique UNIQUE (display_value)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastre.surveying_method_type
  OWNER TO postgres;
COMMENT ON TABLE cadastre.surveying_method_type
  IS 'Code list of surveying_method. 
Tags: Reference Table, LADM Reference Object';
COMMENT ON COLUMN cadastre.surveying_method_type.code IS 'LADM Definition: The code for the Surveying Method.';
COMMENT ON COLUMN cadastre.surveying_method_type.display_value IS 'LADM Definition: Displayed value of the Surveying Method.';
COMMENT ON COLUMN cadastre.surveying_method_type.description IS 'LADM Definition: Description of the Surveying Method.';
COMMENT ON COLUMN cadastre.surveying_method_type.status IS 'SOLA Extension: Status of the Surveying Method';

DELETE FROM system.surveying_method_type;
INSERT INTO system.surveying_method_type (code, display_value, description, status) values('theodolite_SBS','Theodolite and Steel Band Survey','A survey that uses theodolite and steel bank','c');
INSERT INTO system.surveying_method_type (code, display_value, description, status) values('gps_observation_ABP','GPS Observation at Boundary Points','A survey that is done using gps equipments','c');
INSERT INTO system.surveying_method_type (code, display_value, description, status) values('theodolite_SBS_GPS','Theodolite and Steel Band Survey on GPS Observation at Boundary Points','A survey that uses the combination of theodolite and steel band with the inclusion of a GPS equipment.','c');
INSERT INTO system.surveying_method_type (code, display_value, description, status) values('tape_rule','Tape Rule','A survey that uses a tape rull to measure distance','c');
INSERT INTO system.surveying_method_type (code, display_value, description, status) values('laser','Laser','A survey that uses a laser device to measure distance.','c');
