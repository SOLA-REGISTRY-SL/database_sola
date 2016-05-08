CREATE OR REPLACE VIEW cadastre.Survey_Plan_View AS

 --SP - Cadastre Object table containg details of the Survey Plan
SELECT SP.id, SP.type_code, SP.building_unit_type_code, SP.approval_datetime, SP.historic_datetime, 
       source_reference, name_firstpart, name_lastpart, status_code, 
       SP.geom_polygon, SP.transaction_id, SP.land_use_code, SP.rowidentifier, SP.rowversion, 
       SP.change_action, SP.change_user, SP.change_time, SP.classification_code, 
       SP.redact_code, SP.owner_name, SP.address, SP.land_type, SP.parcel_area, SP.licensed_surveyor_id, 
       SP.east_neighbour, SP.west_neighbour, SP.south_neighbour, SP.north_neighbour, 
       SP.survey_method, SP.survey_date, SP.beacon_number, SP.charting_officer_id, 
       SP.state_land_clearing_officer_id,

 --PCO - Party for Charting Officer
      PCO.id AS PCO_id,PCO.ext_id AS CO_ext_id,PCO.type_code AS CO_type_code,PCO.name AS CO_name,PCO.last_name AS CO_last_name,PCO.fathers_name AS CO_fathers_name, 
      PCO.fathers_last_name AS CO_fathers_last_name,PCO.alias AS CO_alias,PCO.gender_code AS CO_gender_code,PCO.address_id AS CO_address, 
      PCO.id_type_code AS CO_id_type_code,PCO.id_number AS CO_id_number,PCO.email AS CO_email,PCO.mobile AS CO_mobile, PCO.phone AS CO_phone, 
      PCO.fax AS CO_fax,PCO.preferred_communication_code AS CO_preferred_communication_code, 
      PCO.birth_date AS CO_birth_date, 
      PCO.classification_code AS CO_classification_code,PCO.redact_code AS CO_redact_code,

--PSLCO - Party for State Land Clearing Officer
      PSLCO.id AS PSLCO_id ,PSLCO.ext_id AS SLCO_ext_id ,PSLCO.type_code AS SLCO_type_code ,PSLCO.name AS SLCO_name ,PSLCO.last_name AS SLCO_last_name ,PSLCO.fathers_name AS SLCO_fathers_name, 
      PSLCO.fathers_last_name AS SLCO_fathers_last_name ,PSLCO.alias AS SLCO_alias ,PSLCO.gender_code AS SLCO_gender_code ,PSLCO.address_id AS SLCO_address, 
      PSLCO.id_type_code AS SLCO_id_type_code ,PSLCO.id_number AS SLCO_id_number ,PSLCO.email AS SLCO_email ,PSLCO.mobile AS SLCO_mobile, PSLCO.phone AS SLCO_phone, 
      PSLCO.fax AS SLCO_fax ,PSLCO.preferred_communication_code AS SLCO_preferred_communication_code, 
      PSLCO.birth_date AS SLCO_birth_date, 
      PSLCO.classification_code AS SLCO_classification_code ,PSLCO.redact_code AS SLCO_redact_code

   FROM cadastre.cadastre_object AS SP
   INNER JOIN party.party AS PCO
      ON SP.charting_officer_id = PCO.ext_id
   INNER JOIN party.party AS PSLCO
      ON SP.state_land_clearing_officer_id = PSLCO.ext_id
   ORDER BY SP.id ASC 
   