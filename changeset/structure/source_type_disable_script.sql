-- DISABLING DOCUMENT SOURCES THAT ARE NOT USED AND ARE NOT TO BE DISPLAYED
-- IN THE LIST OF DOCUMENT THAT AN APPLICANT PROVIDES
----------------------------------------------------------------------------
 
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'agreement';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'caveat';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'contractForSale';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'courtOrder';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'deed';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'lease';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'mortgage';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'powerOfAttorney';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'proclamation';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'requisition';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'title';
UPDATE source.administrative_source_type SET status = 'x' WHERE code = 'will';