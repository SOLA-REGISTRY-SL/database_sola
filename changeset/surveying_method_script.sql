-- Table: system.surveying_method
-- Script designed by Moses and Momodu for REGISTRY-SL

DROP TABLE IF EXISTS system.surveying_method;

CREATE TABLE system.surveying_method
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
ALTER TABLE system.surveying_method
  OWNER TO postgres;
COMMENT ON TABLE system.surveying_method
  IS 'Code list of surveying_method. 
Tags: Reference Table, LADM Reference Object';
COMMENT ON COLUMN system.surveying_method.code IS 'LADM Definition: The code for the Surveying Method.';
COMMENT ON COLUMN system.surveying_method.display_value IS 'LADM Definition: Displayed value of the Surveying Method.';
COMMENT ON COLUMN system.surveying_method.description IS 'LADM Definition: Description of the Surveying Method.';
COMMENT ON COLUMN system.surveying_method.status IS 'SOLA Extension: Status of the Surveying Method';

--DELETE FROM system.surveying_method;
--INSERT INTO system.surveying_method (code, display_value, description, status) values('','','','');