UPDATE system.config_map_layer
   SET title='Road and stream centerlines'
 WHERE name='road-centerlines';
 
 UPDATE cadastre.level
   SET  name='Road and stream centerlines'
 WHERE id='road-centerlines;


INSERT INTO source.administrative_source_type(
            code, display_value, status, description, is_for_registration)
    VALUES ('fieldSketch', 'Sketch', 'c', 'sketch from the field', false);
 

INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('cadastralSurvey', 'newParcel');


INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('fieldSketch', 'newParcel');





    