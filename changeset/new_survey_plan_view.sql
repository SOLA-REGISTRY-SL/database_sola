DROP VIEW cadastre.survey_plan_view;

CREATE OR REPLACE VIEW cadastre.survey_plan_view AS 

 SELECT 
    sp.id, 
    sp.approval_datetime as dsl_date,
    sp.name_lastpart||'/'||sp.name_firstpart as ls_nr, 
    sp.owner_name, 
    sp.address, 
    sp.land_type, 
    sp.parcel_area, 
    sp.east_neighbour, 
    sp.west_neighbour, 
    sp.south_neighbour, 
    sp.north_neighbour, 
    sp.survey_method, 
    sp.survey_date, 
    sp.survey_type_code,
    sp.ref_name_firstpart||'/'||sp.ref_name_firstpart as ref_survey,
    sp.survey_number,
    sp.correspondence_file,
    sp.drawn_by,
    sp.checked_by,
    sp.checking_date,
    pls.name||' '|| pls.last_name AS license_surveyor
   FROM cadastre.cadastre_object sp
   JOIN party.party pls ON sp.licensed_surveyor_id::text = pls.id::text
   JOIN party.party pco ON sp.charting_officer_id::text = pco.id::text
   JOIN party.party pslco ON sp.state_land_clearing_officer_id::text = pslco.id::text
  ORDER BY sp.id;

ALTER TABLE cadastre.survey_plan_view
  OWNER TO postgres;


