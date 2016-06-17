update source.administrative_source_type  set display_value='Survey Bill'
where code = 'taxPayment';

INSERT INTO application.request_type_requires_source_type(
            source_type_code, request_type_code)
    VALUES ('taxPayment', 'newParcel');


update source.administrative_source_type  set display_value='Master Plan', status = 'c'
where code = 'cadastralMap';

update source.administrative_source_type  set display_value='Survey DataSheet'
where code = 'fieldSketch';



