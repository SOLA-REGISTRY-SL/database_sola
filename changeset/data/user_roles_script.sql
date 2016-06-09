
--- DELETE THE ALREADY INPUTED APPROLE_APPGROUP

DELETE FROM system.approle_appgroup WHERE appgroup_id = 'admin-group-id';
DELETE FROM system.approle_appgroup WHERE appgroup_id = 'oarg-group-id';
DELETE FROM system.approle_appgroup WHERE appgroup_id = 'charting-group-id';
DELETE FROM system.approle_appgroup WHERE appgroup_id = 'secretary-group-id';
DELETE FROM system.approle_appgroup WHERE appgroup_id = 'director-group-id';
DELETE FROM system.approle_appgroup WHERE appgroup_id = 'finance-group-id';
DELETE FROM system.approle_appgroup WHERE appgroup_id = 'snr-mgmt-group-id';
DELETE FROM system.approle_appgroup WHERE appgroup_id = 'gis-group-id';

 
--- DELETE THE ALREADY INPUTED APPGROUP
 
DELETE FROM system.appgroup WHERE id = 'admin-group-id';
DELETE FROM system.appgroup WHERE id = 'oarg-group-id';
DELETE FROM system.appgroup WHERE id = 'charting-group-id';
DELETE FROM system.appgroup WHERE id = 'secretary-group-id';
DELETE FROM system.appgroup WHERE id = 'director-group-id';
DELETE FROM system.appgroup WHERE id = 'finance-group-id';
DELETE FROM system.appgroup WHERE id = 'snr-mgmt-group-id';
DELETE FROM system.appgroup WHERE id = 'gis-group-id';



--- INSERTING THE APPGROUP
--------------------------

INSERT INTO system.appgroup (id, name, description) Values('admin-group-id','Administrator','This is a user who has the rights to virtually every aspect of the SOLA System');
INSERT INTO system.appgroup (id, name, description) Values('oarg-group-id','OARG','This group is meant to used for oarg-group-id');
INSERT INTO system.appgroup (id, name, description) Values('charting-group-id','Charting','This group is meant to used for charting-group-id Office/Officers');
INSERT INTO system.appgroup (id, name, description) Values('secretary-group-id','Secretary','This group is meant to used for Regis-group-idtry');
INSERT INTO system.appgroup (id, name, description) Values('director-group-id','Director','This group is meant to used for director-group-id of Surveys and Lands');
INSERT INTO system.appgroup (id, name, description) Values('finance-group-id','Finance','This group is meant to used for finance-group-id');
INSERT INTO system.appgroup (id, name, description) Values('snr-mgmt-group-id','Senior Management','This group is meant to used for users who only view the system and do not really have rights to make modifications');
INSERT INTO system.appgroup (id, name, description) Values('gis-group-id','GIS','This group is meant to used for the gis-group-id department who oversee the system and do not make modifications');


 --- INSERTING THE APPROLE LINKED WITH THE APPGROUP
 
 
 --- APPROLE SETTING FOR - admin-group-id
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('01SEC_Unrestricted','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('02SEC_Restricted','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('03SEC_Confidential','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('04SEC_Secret','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('05SEC_TopSecret','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('10SEC_SuppressOrd','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnApprove','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnArchive','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnAssignOthers','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnAssignSelf','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnCreate','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnDispatch','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnEdit','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnReject','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnRequisition','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnResubmit','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnStatus','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnTransfer','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnUnassignOthers','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnUnassignSelf','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnValidate','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnView','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnWithdraw','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('BaunitCertificate','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('BaunitSave','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('BaunitSearch','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('buildingRestriction','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('BulkApplication','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cadastreChange','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cadastrePrint','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cancelProperty','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cancelRelationship','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('CancelService','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('caveat','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangePassword','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangeSecClass','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cnclPowerOfAttorney','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cnclStandardDocument','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('CompleteService','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('consolidationCons','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('consolidationExt','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewAssign','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewUnassign','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('documentCopy','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ExportMap','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('historicOrder','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('limtedRoadAccess','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('lodgeObjection','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageBR','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageRefdata','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSecurity','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSettings','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('mapExistingParcel','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('MapFeatureEditor','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('MapZoneEditor','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('mortgage','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('newApartment','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('newDigitalTitle','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('newFreehold','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('newOwnership','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('newParcel','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('NoPasswordExpiry','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('obscurationRequest','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ParcelSave','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PartySave','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PartySearch','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PrintMap','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('recordRelationship','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('redefineCadastre','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('registerLease','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('regnOnTitle','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('regnPowerOfAttorney','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('regnStandardDocument','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('removeCaveat','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('removeRestriction','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('removeRight','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGender','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGenerate','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('RevertService','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('RHSave','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('RightsExport','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('serviceEnquiry','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('servitude','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourcePrint','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSave','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSearch','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('StartService','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('surveyPlanCopy','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('systematicRegn','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('titleSearch','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('TransactionCommit','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('varyCaveat','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('varyLease','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('varyMortgage','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('varyRight','admin-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ViewMap','admin-group-id');
-------------------------------------------------------------------------------------------------------


--- APPROLE SETTING FOR - oarg-group-id
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnView','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cadastrePrint','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangePassword','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewAssign','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewUnassign','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('documentCopy','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSecurity','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSettings','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('NoPasswordExpiry','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PartySearch','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGender','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGenerate','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('serviceEnquiry','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourcePrint','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSearch','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('titleSearch','oarg-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ViewMap','oarg-group-id');


--- APPROLE SETTING FOR - charting-group-id
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnAssignSelf','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnCreate','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnEdit','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnStatus','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnUnassignSelf','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnValidate','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnView','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cadastreChange','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cadastrePrint','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('CancelService','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangePassword','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cnclStandardDocument','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewAssign','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewUnassign','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('documentCopy','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ExportMap','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('historicOrder','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSecurity','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSettings','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('mapExistingParcel','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('MapFeatureEditor','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('MapZoneEditor','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('newParcel','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('NoPasswordExpiry','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ParcelSave','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PartySave','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PartySearch','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PrintMap','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('redefineCadastre','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGender','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGenerate','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('RevertService','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('serviceEnquiry','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourcePrint','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSave','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSearch','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('StartService','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('surveyPlanCopy','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('titleSearch','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('TransactionCommit','charting-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ViewMap','charting-group-id');


--- APPROLE SETTING FOR - secretary-group-id
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnView','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cadastrePrint','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangePassword','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewAssign','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewUnassign','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('documentCopy','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSecurity','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSettings','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('NoPasswordExpiry','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PartySearch','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PrintMap','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGender','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('serviceEnquiry','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourcePrint','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSearch','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('titleSearch','secretary-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ViewMap','secretary-group-id');





--- APPROLE SETTING FOR - director-group-id
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnApprove','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnAssignOthers','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnAssignSelf','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnStatus','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnUnassignOthers','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnUnassignSelf','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnView','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cadastrePrint','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangePassword','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewAssign','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewUnassign','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('documentCopy','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ExportMap','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSecurity','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSettings','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('NoPasswordExpiry','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PrintMap','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGenerate','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('serviceEnquiry','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourcePrint','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSearch','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('surveyPlanCopy','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('titleSearch','director-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ViewMap','director-group-id');




--- APPROLE SETTING FOR - finance-group-id
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnAssignSelf','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnEdit','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnStatus','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnUnassignSelf','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnValidate','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnView','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangePassword','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewAssign','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewUnassign','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('documentCopy','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSecurity','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSettings','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('NoPasswordExpiry','finance-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('serviceEnquiry','finance-group-id');




--- APPROLE SETTING FOR - SENIOR MANAGEMENT
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnView','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cadastrePrint','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangePassword','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewAssign','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewUnassign','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('documentCopy','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ExportMap','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSecurity','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSettings','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('NoPasswordExpiry','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PartySearch','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PrintMap','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGender','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGenerate','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourcePrint','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSearch','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('surveyPlanCopy','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('titleSearch','snr-mgmt-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ViewMap','snr-mgmt-group-id');



--- APPROLE SETTING FOR - gis-group-id
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ApplnView','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('cadastrePrint','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ChangePassword','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewAssign','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('DashbrdViewUnassign','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('documentCopy','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ExportMap','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSecurity','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ManageSettings','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('NoPasswordExpiry','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PartySearch','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('PrintMap','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGender','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ReportGenerate','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('serviceEnquiry','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourcePrint','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('SourceSearch','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('surveyPlanCopy','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('titleSearch','gis-group-id');
INSERT INTO system.approle_appgroup (approle_code,appgroup_id) values('ViewMap','gis-group-id');




