-- Table: system.cordinate_system_type
-- Script designed by Moses and Momodu for REGISTRY-SL

DROP TABLE IF EXISTS system.cordinate_system_type;

CREATE TABLE system.cordinate_system_type
(
  code character varying(20) NOT NULL, -- LADM Definition: The code for the cordinate system.
  display_value character varying(500) NOT NULL, -- LADM Definition: Displayed value of the cordinate system.
  description character varying(1000), -- LADM Definition: Description of the cordinate system.
  status character(1) NOT NULL DEFAULT 't'::bpchar, -- SOLA Extension: Status of the cordinate system
  CONSTRAINT cordinate_system_pkey PRIMARY KEY (code),
  CONSTRAINT cordinate_system_display_value_unique UNIQUE (display_value)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE system.cordinate_system_type
  OWNER TO postgres;
COMMENT ON TABLE system.cordinate_system_type
  IS 'Code list of cordinate_system. 
Tags: Reference Table, LADM Reference Object';
COMMENT ON COLUMN system.cordinate_system_type.code IS 'LADM Definition: The code for the cordinate system.';
COMMENT ON COLUMN system.cordinate_system_type.display_value IS 'LADM Definition: Displayed value of the cordinate system.';
COMMENT ON COLUMN system.cordinate_system_type.description IS 'LADM Definition: Description of the cordinate system.';
COMMENT ON COLUMN system.cordinate_system_type.status IS 'SOLA Extension: Status of the cordinate system';

--DELETE FROM system.cordinate_system_type;
--INSERT INTO system.cordinate_system_type (code, display_value, description, status) values('','','','');