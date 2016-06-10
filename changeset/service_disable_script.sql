-- DISABLING SERVICES THAT ARE NOT USED AND ARE NOT TO BE DISPLAYED
-- IN THE LIST OF SERVICES THAT AN APPLICANT APPLIES FOR
----------------------------------------------------------------------------
UPDATE application.request_type SET status = 'c' WHERE code = 'newParcel';
UPDATE application.request_type SET status = 'c' WHERE code = 'redefineCadastre';
UPDATE application.request_type SET status = 'c' WHERE code = 'documentCopy';
UPDATE application.request_type SET status = 'c' WHERE code = 'cadastreChange';
UPDATE application.request_type SET status = 'c' WHERE code = 'cadastrePrint';

UPDATE application.request_type SET status = 'x' WHERE code = 'buildingRestriction';
UPDATE application.request_type SET status = 'x' WHERE code = 'cadastreBulk';
UPDATE application.request_type SET status = 'x' WHERE code = 'cadastreExport';
UPDATE application.request_type SET status = 'x' WHERE code = 'cancelProperty';
UPDATE application.request_type SET status = 'x' WHERE code = 'cancelRelationship';
UPDATE application.request_type SET status = 'x' WHERE code = 'caveat';
UPDATE application.request_type SET status = 'x' WHERE code = 'cnclPowerOfAttorney';
UPDATE application.request_type SET status = 'x' WHERE code = 'cnclStandardDocument';
UPDATE application.request_type SET status = 'x' WHERE code = 'historicOrder';
UPDATE application.request_type SET status = 'x' WHERE code = 'lifeEstate';
UPDATE application.request_type SET status = 'x' WHERE code = 'limitedRoadAccess';
UPDATE application.request_type SET status = 'x' WHERE code = 'lodgeObjection';
UPDATE application.request_type SET status = 'x' WHERE code = 'mapExistingParcel';
UPDATE application.request_type SET status = 'x' WHERE code = 'mortgage';
UPDATE application.request_type SET status = 'x' WHERE code = 'newApartment';
UPDATE application.request_type SET status = 'x' WHERE code = 'newDigitalProperty';
UPDATE application.request_type SET status = 'x' WHERE code = 'newDigitalTitle';
UPDATE application.request_type SET status = 'x' WHERE code = 'newFreehold';
UPDATE application.request_type SET status = 'x' WHERE code = 'newOwnership';
UPDATE application.request_type SET status = 'x' WHERE code = 'newState';
UPDATE application.request_type SET status = 'x' WHERE code = 'noteOccupation';
UPDATE application.request_type SET status = 'x' WHERE code = 'obscurationRequest';
UPDATE application.request_type SET status = 'x' WHERE code = 'recordRelationship';
UPDATE application.request_type SET status = 'x' WHERE code = 'recordTransfer';
UPDATE application.request_type SET status = 'x' WHERE code = 'registerLease';
UPDATE application.request_type SET status = 'x' WHERE code = 'regnDeeds';
UPDATE application.request_type SET status = 'x' WHERE code = 'regnOnTitle';
UPDATE application.request_type SET status = 'x' WHERE code = 'regnPowerOfAttorney';
UPDATE application.request_type SET status = 'x' WHERE code = 'regnStandardDocument';
UPDATE application.request_type SET status = 'x' WHERE code = 'removeCaveat';
UPDATE application.request_type SET status = 'x' WHERE code = 'removeRestriction';
UPDATE application.request_type SET status = 'x' WHERE code = 'removeRight';
UPDATE application.request_type SET status = 'x' WHERE code = 'serviceEnquiry';
UPDATE application.request_type SET status = 'x' WHERE code = 'servitude';
UPDATE application.request_type SET status = 'x' WHERE code = 'subdivideProperty';
UPDATE application.request_type SET status = 'x' WHERE code = 'surveyPlanCopy';
UPDATE application.request_type SET status = 'x' WHERE code = 'systematicRegn';
UPDATE application.request_type SET status = 'x' WHERE code = 'titleSearch';
UPDATE application.request_type SET status = 'x' WHERE code = 'usufruct';
UPDATE application.request_type SET status = 'x' WHERE code = 'varyCaveat';
UPDATE application.request_type SET status = 'x' WHERE code = 'varyLease';
UPDATE application.request_type SET status = 'x' WHERE code = 'varyMortgage';
UPDATE application.request_type SET status = 'x' WHERE code = 'varyRight';
UPDATE application.request_type SET status = 'x' WHERE code = 'waterRights';
 


