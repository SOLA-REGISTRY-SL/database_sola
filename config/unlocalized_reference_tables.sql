--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = application, pg_catalog;

--
-- Data for Name: request_type_requires_source_type; Type: TABLE DATA; Schema: application; Owner: postgres
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE request_type_requires_source_type DISABLE TRIGGER ALL;

INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('cadastralSurvey', 'cadastreChange');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('cadastralSurvey', 'redefineCadastre');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('mortgage', 'varyMortgage');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'varyMortgage');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'regnOnTitle');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'regnDeeds');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('lease', 'registerLease');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('powerOfAttorney', 'regnPowerOfAttorney');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('standardDocument', 'regnStandardDocument');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'noteOccupation');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'noteOccupation');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'usufruct');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'waterRights');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('mortgage', 'mortgage');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'buildingRestriction');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'servitude');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'lifeEstate');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'lifeEstate');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'newApartment');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'newState');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'caveat');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'removeCaveat');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'removeCaveat');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'historicOrder');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'limitedRoadAccess');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('lease', 'varyLease');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'varyLease');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'varyRight');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'varyRight');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'removeRight');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'removeRight');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'removeRestriction');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'removeRestriction');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'cnclPowerOfAttorney');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'cnclStandardDocument');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('caveat', 'caveat');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('cadastralSurvey', 'mapExistingParcel');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('title', 'newDigitalTitle');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('relationshipTitle', 'recordRelationship');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('relationshipTitle', 'cancelRelationship');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('restrictionOrder', 'obscurationRequest');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('deed', 'subdivideProperty');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('fieldSketch', 'newParcel');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('cadastralSurvey', 'existingParcel');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('taxPayment', 'newParcel');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('fieldSketch', 'newParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('cadastralSurvey', 'existingParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('initialapplication', 'existingParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('siteinspectionrpt', 'existingParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('approvalofferletter', 'existingParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('payinitialrent', 'existingParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('initialapplication', 'newParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('siteinspectionrpt', 'newParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('approvalofferletter', 'newParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('payinitialrent', 'newParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('taxPayment', 'existingParcelSL');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('taxPayment', 'existingParcel');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('surveybill', 'newParcel');
INSERT INTO request_type_requires_source_type (source_type_code, request_type_code) VALUES ('stastelandclearance', 'newParcel');


ALTER TABLE request_type_requires_source_type ENABLE TRIGGER ALL;

SET search_path = cadastre, pg_catalog;

--
-- Data for Name: level; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

ALTER TABLE level DISABLE TRIGGER ALL;

INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('cadastreObject', 'Cadastre object', 'all', 'polygon', 'primaryRight', 'be03cc56-99dd-11e3-b772-13b58d0363c9', 1, 'i', 'db:postgres', '2014-02-20 16:19:00.595', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('bffd0bb2-99dd-11e3-a43e-17754b2def8e', 'Survey Control', 'all', 'point', 'geographicLocator', 'bffee072-99dd-11e3-b838-a3032aff2862', 1, 'i', 'test', '2014-02-20 16:19:03.908', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('c06a4e0c-99dd-11e3-b4a8-df59099d962e', 'Roads', 'all', 'point', 'primaryRight', 'c06a9c2c-99dd-11e3-867c-3f6b8d26f6b4', 1, 'i', 'test', '2014-02-20 16:19:04.625', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('c1532ad2-99dd-11e3-a445-237731ad01b0', 'Parcels', 'all', 'polygon', 'primaryRight', 'c15351e2-99dd-11e3-be93-6f678d1a08cd', 1, 'i', 'test', '2014-02-20 16:19:06.145', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('c03162e0-99dd-11e3-a27b-2bfeef31a969', 'Place Names', 'all', 'point', 'geographicLocator', 'c03189f0-99dd-11e3-905e-8be6604148a7', 2, 'u', 'test', '2014-04-26 22:25:42.727', true);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('house-num', 'House Number', 'all', 'point', 'geographicLocator', '4ae9b152-02f3-11e4-a6bb-db5f0510f653', 1, 'i', 'soladev', '2014-07-04 08:47:35.126', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('5090813a-e767-11e5-8efe-679a04b0b2f3', 'Region', 'all', 'polygon', 'mixed', '50b08c5a-e767-11e5-8591-aba6f299e9e1', 1, 'i', 'test', '2016-03-11 09:57:42.394', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('50b2611a-e767-11e5-8887-1f73ea2cac9a', 'District', 'all', 'polygon', 'mixed', '50b2af3a-e767-11e5-96bf-674615468997', 1, 'i', 'test', '2016-03-11 09:57:42.618', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('50b435da-e767-11e5-aae5-e768b3dbd04d', 'Chiefdom', 'all', 'polygon', 'mixed', '50b45cea-e767-11e5-98ab-cf9991220f95', 1, 'i', 'test', '2016-03-11 09:57:42.629', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('4dd7b5b6-e768-11e5-8019-dfcd6c1f48c3', 'Region', 'all', 'polygon', 'mixed', '4dd7dcc6-e768-11e5-8baf-db54351887c7', 1, 'i', 'test', '2016-03-11 10:04:47.32', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('4dd851f6-e768-11e5-8313-0fb225969b2c', 'District', 'all', 'polygon', 'mixed', '4dd87906-e768-11e5-8478-e3d6348d1149', 1, 'i', 'test', '2016-03-11 10:04:47.32', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('4dd8a016-e768-11e5-96ed-d745d6370db4', 'Chiefdom', 'all', 'polygon', 'mixed', '4dd8ee36-e768-11e5-8bad-276bac3df080', 1, 'i', 'test', '2016-03-11 10:04:47.32', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('4909bfb0-e9e9-11e5-b9a6-8fb43cf55ab8', 'Region', 'all', 'polygon', 'mixed', '490a0dd0-e9e9-11e5-b9c7-7bc8171e2515', 1, 'i', 'test', '2016-03-14 14:33:06.669', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('490a34e0-e9e9-11e5-9ee0-93a7dcc4005c', 'District', 'all', 'polygon', 'mixed', '490a8300-e9e9-11e5-a219-4f6e342b13a6', 1, 'i', 'test', '2016-03-14 14:33:06.669', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('490aaa10-e9e9-11e5-abcb-47c82c2e0b20', 'Chiefdom', 'all', 'polygon', 'mixed', '490ad120-e9e9-11e5-b848-77d0ec343c77', 1, 'i', 'test', '2016-03-14 14:33:06.669', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('490b1f4a-e9e9-11e5-9f96-3fdda044bf77', 'Section', 'all', 'polygon', 'mixed', '490b465a-e9e9-11e5-a187-ff61fe13adaa', 1, 'i', 'test', '2016-03-14 14:33:06.669', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('e39cd310-11f7-11e6-a971-e31b5bfb0a72', 'Chiefdom', 'all', 'polygon', 'mixed', 'e39e59ba-11f7-11e6-9135-bf2c6f490115', 1, 'i', 'test', '2016-05-04 14:58:25.394', false);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('road-centerline', 'Road and stream centerlines', 'all', 'unStructuredLine', 'geographicLocator', 'f099731a-cd80-11e3-8b0c-53bca1817824', 2, 'u', 'db:postgres', '2016-05-30 17:07:38.604', true);
INSERT INTO level (id, name, register_type_code, structure_code, type_code, rowidentifier, rowversion, change_action, change_user, change_time, editable) VALUES ('4e701af8-307f-11e6-be0a-d724449883b4', 'OverlappingParcels', 'all', 'polygon', 'mixed', '4e7942b8-307f-11e6-b2d1-bb9795a6ad5d', 1, 'i', 'test', '2016-06-12 11:23:21.442', false);


ALTER TABLE level ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

