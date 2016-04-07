-- Table: cadastre.chiefdoms_type
-- Script designed by Moses and Momodu for REGISTRY-SL

DROP TABLE IF EXISTS cadastre.chiefdoms_type;

CREATE TABLE cadastre.chiefdoms_type
(
  code character varying(20) NOT NULL, -- LADM Definition: The code for the chiefdom.
  display_value character varying(500) NOT NULL, -- LADM Definition: Displayed value of the chiefdom.
  description character varying(1000), -- LADM Definition: Description of the chiefdom.
  status character(1) NOT NULL DEFAULT 't'::bpchar, -- SOLA Extension: Status of the chiefdom
  CONSTRAINT chiefdoms_pkey PRIMARY KEY (code),
  CONSTRAINT chiefdoms_display_value_unique UNIQUE (display_value)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastre.chiefdoms_type
  OWNER TO postgres;
COMMENT ON TABLE cadastre.chiefdoms_type
  IS 'Code list of chiefdoms. 
Tags: Reference Table, LADM Reference Object';
COMMENT ON COLUMN cadastre.chiefdoms_type.code IS 'LADM Definition: The code for the chiefdom.';
COMMENT ON COLUMN cadastre.chiefdoms_type.display_value IS 'LADM Definition: Displayed value of the chiefdom.';
COMMENT ON COLUMN cadastre.chiefdoms_type.description IS 'LADM Definition: Description of the chiefdom.';
COMMENT ON COLUMN cadastre.chiefdoms_type.status IS 'SOLA Extension: Status of the chiefdom';

--DELETE FROM cadastre.chiefdoms_type;
--INSERT INTO cadastre.chiefdoms_type (code, display_value, description, status) values('','','','');