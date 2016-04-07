-- Table: cadastre.chiefdoms
-- Script designed by Moses and Momodu for REGISTRY-SL

DROP TABLE IF EXISTS cadastre.chiefdoms;

CREATE TABLE cadastre.chiefdoms
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
ALTER TABLE cadastre.chiefdoms
  OWNER TO postgres;
COMMENT ON TABLE cadastre.chiefdoms
  IS 'Code list of chiefdoms. 
Tags: Reference Table, LADM Reference Object';
COMMENT ON COLUMN cadastre.chiefdoms.code IS 'LADM Definition: The code for the chiefdom.';
COMMENT ON COLUMN cadastre.chiefdoms.display_value IS 'LADM Definition: Displayed value of the chiefdom.';
COMMENT ON COLUMN cadastre.chiefdoms.description IS 'LADM Definition: Description of the chiefdom.';
COMMENT ON COLUMN cadastre.chiefdoms.status IS 'SOLA Extension: Status of the chiefdom';

--DELETE FROM cadastre.chiefdoms;
--INSERT INTO cadastre.chiefdoms (code, display_value, description, status) values('','','','');