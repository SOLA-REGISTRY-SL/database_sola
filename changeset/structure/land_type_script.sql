-- Table: cadastre.land_type
-- Script designed by Moses and Momodu for REGISTRY-SL

DROP TABLE IF EXISTS cadastre.land_type;

CREATE TABLE cadastre.land_type
(
  code character varying(20) NOT NULL, -- LADM Definition: The code for the land type.
  display_value character varying(500) NOT NULL, -- LADM Definition: Displayed value of the land type.
  description character varying(1000), -- LADM Definition: Description of the land type.
  status character(1) NOT NULL DEFAULT 't'::bpchar, -- SOLA Extension: Status of the land type
  CONSTRAINT land_type_pkey PRIMARY KEY (code),
  CONSTRAINT land_type_display_value_unique UNIQUE (display_value)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastre.land_type
  OWNER TO postgres;
COMMENT ON TABLE cadastre.land_type
  IS 'Code list of land types. E.g. Private, State Land. 
Tags: Reference Table, LADM Reference Object';
COMMENT ON COLUMN cadastre.land_type.code IS 'LADM Definition: The code for the land type (private or state_land).';
COMMENT ON COLUMN cadastre.land_type.display_value IS 'LADM Definition: Displayed value of the land type (Private or State Land).';
COMMENT ON COLUMN cadastre.land_type.description IS 'LADM Definition: Description of the land type.';
COMMENT ON COLUMN cadastre.land_type.status IS 'SOLA Extension: Status of the land type';

DELETE FROM cadastre.land_type;
INSERT INTO cadastre.land_type (code, display_value, description, status) values('private_land','Private Land','Land owned privately by an individual','c');
INSERT INTO cadastre.land_type (code, display_value, description, status) values('state_land','State Land','Land owned by the government buy may be acquired by an individual after going through series of procedures.','c');
