SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET SESSION AUTHORIZATION DEFAULT;

DELETE FROM application.request_type WHERE code = 'newFreehold';
DELETE FROM application.request_type WHERE code = 'LeaseRent';

--INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('subdivideProperty', 'registrationServices', 'SubDivision of Property (General)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);

INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('East_West_3TL1.0', 'registrationServices', 'SubDivision of Property (General)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('East_West_Greater3TL1.5', 'registrationServices', 'SubDivision of Property (General)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('East_West_Greater3TL2.0', 'registrationServices', 'SubDivision of Property (General)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('East_West_Greater3TL2.5', 'registrationServices', 'SubDivision of Property (General)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('East_West_Greater3TL3.0', 'registrationServices', 'SubDivision of Property (General)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);

INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Residential3Mil', 'registrationServices', 'SubDivision of Property (Residential)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Residential4Mil', 'registrationServices', 'SubDivision of Property (Residential)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Residential5Mil', 'registrationServices', 'SubDivision of Property (Residential)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Residential6Mil', 'registrationServices', 'SubDivision of Property (Residential)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Residential7Mil', 'registrationServices', 'SubDivision of Property (Residential)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Residential8Mil', 'registrationServices', 'SubDivision of Property (Residential)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Residential9Mil', 'registrationServices', 'SubDivision of Property (Residential)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Residential10Mil', 'registrationServices', 'SubDivision of Property (Residential)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);

INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial10Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial15Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial20Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial25Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial30Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial35Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial40Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial45Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial50Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial55Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial60Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial65Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial70Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial75Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial80Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial85Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial90Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial95Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);
INSERT INTO application.request_type (code, request_category_code, display_value, description, status, nr_daysl_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code, service_panel_code, display_group_code, display_order) VALUES ('Commercial100Mil', 'registrationServices', 'SubDivision of Property (Commercial)::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gꯩral)::::::::Variar Direitos (Geral)::::???? (??)', '...::::...::::...::::...::::::::...::::...', 'c', 5, 5.00, 0.00, 0.00, 1, 'Variation of <right> <reference>', NULL, 'vary', 'property', 'generalReg', 180);


DELETE FROM application.request_type_requires_source_type WHERE source_type_code = 'LeaseRent';
DELETE FROM application.request_type_requires_source_type WHERE source_type_code = 'newFreeHold';

INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('LeaseRent', 'East_West_3TL1.0');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('LeaseRent', 'East_West_Greater3TL1.5');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('LeaseRent', 'East_West_Greater3TL2.0');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('LeaseRent', 'East_West_Greater3TL2.5');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('LeaseRent', 'East_West_Greater3TL3.0');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Residential3Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Residential4Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Residential5Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Residential6Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Residential7Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Residential8Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Residential9Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Residential10Mil');

INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial10Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial15Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial20Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial25Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial30Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial35Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial40Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial45Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial50Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial55Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial60Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial65Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial70Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial75Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial80Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial85Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial90Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial95Mil');
INSERT INTO application.request_type_requires_source_type (source_type_code, request_type_code) VALUES ('newFreehold', 'Commercial100Mil');

UPDATE source.administrative_source_type
   SET display_value='Diagram'
 WHERE code='cadastralSurvey';

DELETE From application.request_type WHERE code = 'newFreehold'
DELETE From application.request_type WHERE code = 'LeaseRent'

---UPDATE VALUES FOR LeaseRent
UPDATE application.request_type_code
SET		base_fee= '1000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'East_West_3TL1.0';

UPDATE application.request_type_code
SET		base_fee= '1500000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'East_West_Greater3TL1.5';
 
UPDATE application.request_type_code
SET		base_fee= '2000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'East_West_Greater3TL2.0';

UPDATE application.request_type_code
SET		base_fee= '2500000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'East_West_Greater3TL2.5';

UPDATE application.request_type_code
SET		base_fee= '3000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'East_West_Greater3TL3.0';
--------------------------------------------------------------------------------------------------------

---UPDATE VALUES FOR Freehold (RESIDENTIAL)-------------------------------------------------------------
UPDATE application.request_type_code
SET		base_fee= '3000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Residential3Mil';

UPDATE application.request_type_code
SET		base_fee= '4000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Residential4Mil';

UPDATE application.request_type_code
SET		base_fee= '5000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Residential5Mil';

UPDATE application.request_type_code
SET		base_fee= '6000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Residential6Mil';

UPDATE application.request_type_code
SET		base_fee= '7000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Residential7Mil';

UPDATE application.request_type_code
SET		base_fee= '8000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Residential8Mil';

UPDATE application.request_type_code
SET		base_fee= '9000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Residential9Mil';

UPDATE application.request_type_code
SET		base_fee= '10000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Residential10Mil';


---UPDATE VALUES FOR Freehold (COMMERCIAL)------------------------------------------------------

UPDATE application.request_type_code
SET		base_fee= '10000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial10Mil';

UPDATE application.request_type_code
SET		base_fee= '15000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial15Mil';

UPDATE application.request_type_code
SET		base_fee= '20000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial20Mil';

UPDATE application.request_type_code
SET		base_fee= '25000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial25Mil';

UPDATE application.request_type_code
SET		base_fee= '30000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial30Mil';

UPDATE application.request_type_code
SET		base_fee= '35000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial35Mil';

UPDATE application.request_type_code
SET		base_fee= '40000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial40Mil';

UPDATE application.request_type_code
SET		base_fee= '45000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial45Mil';

UPDATE application.request_type_code
SET		base_fee= '50000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial50Mil';

UPDATE application.request_type_code
SET		base_fee= '55000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial55Mil';

UPDATE application.request_type_code
SET		base_fee= '60000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial60Mil';

UPDATE application.request_type_code
SET		base_fee= '65000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial65Mil';

UPDATE application.request_type_code
SET		base_fee= '70000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial70Mil';

UPDATE application.request_type_code
SET		base_fee= '75000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial75Mil';

UPDATE application.request_type_code
SET		base_fee= '80000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial80Mil';

UPDATE application.request_type_code
SET		base_fee= '85000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial85Mil';

UPDATE application.request_type_code
SET		base_fee= '90000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial90Mil';

UPDATE application.request_type_code
SET		base_fee= '95000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial95Mil';

UPDATE application.request_type_code
SET		base_fee= '100000000',
		area_base_fee= '0',
		value_base_fee='0'
WHERE code = 'Commercial100Mil';

---------------------------------------------------------------------------
 
--
-- Sierra Leone SOLA Registry Reference List Customisation
-- 16 March 2016
-- Correction to administrative_source_type 16 March


-- Data for Name: administrative_source_type; Type: TABLE DATA; Schema: source; Owner: postgres
--

UPDATE source.administrative_source_type SET status = 'x' WHERE code IN ( 'personPhoto', 'taxPayment', 'utilityBill', 'other', 'relationshipTitle', 'pdf',  'waiver',  'cadastralMap', 'agriConsent', 'tiff', 'jpg',
 'agriLease', 'tif', 'publicNotification', 'restrictionOrder', 'parcelPlan', 'standardDocument', 'surveyDataFile', 'systematicRegn', 'objection', 'agriNotaryStatement');

UPDATE source.administrative_source_type SET status = 'c' WHERE code IN ('courtOrder', 'mortgage', 'powerOfAttorney', 'proclamation', 'will', 'caveat',   'lease', 'deed', 'officeNote', 'agreement', 'contractForSale', 
'requisition', 'idVerification', 'title', 'cadastralSurvey', 'LeaseRent', 'newFreehold' );


UPDATE administrative.ba_unit_rel_type  SET display_value = 'Sub-lease::::Договор Аренды::::إيجار::::Bail::::Arrendar::::Arrendamento::::租赁' WHERE code = 'lease';
UPDATE administrative.ba_unit_rel_type  SET display_value = 'Certificate of Birth Death and Marriage::::::::شهادة حيوية::::::::::::::::重要证书' WHERE code = 'relationshipTitle';
UPDATE administrative.ba_unit_rel_type  SET display_value = 'Certificate of Occupancy::::Право Собственности::::سند ملكية::::Titre::::Titulo::::Título::::产权' WHERE code = 'title';


-- Data for Name: ba_unit_rel_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--
UPDATE administrative.ba_unit_rel_type  SET display_value = 'Prior CofO::::Предыдущая недвижимость::::سند الملكية السابق::::Titre précédent::::::::::::Título Prévio' WHERE code = 'priorTitle';
UPDATE administrative.ba_unit_rel_type  SET display_value = 'First CofO::::Корневая недвижимость::::أصل  سند الملكية::::Racine du Titre::::::::::::Origem do Título' WHERE code = 'rootTitle';


-- Data for Name: ba_unit_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--
UPDATE administrative.ba_unit_type SET status = 'x' WHERE code IN ('administrativeUnit', 'leasedUnit', 'propertyRightUnit');


-- Data for Name: mortgage_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--
UPDATE administrative.mortgage_type SET status = 'x' WHERE code IN ('microCredit');

UPDATE administrative.mortgage_type  SET display_value = 'Fixed Repayments::::Многоуровневый платеж::::دفعات متدرجة::::Niveau de Paiement::::::::::::Nível de Pagamento' WHERE code = 'levelPayment';
UPDATE administrative.mortgage_type  SET display_value = 'Fixed plus Interest Repayments::::Линейный::::خطي::::Linéaire::::::::::::Linear' WHERE code = 'linear';

-- Data for Name: request_display_group; Type: TABLE DATA; Schema: application; Owner: postgres
--

UPDATE application.request_display_group SET status = 'x' WHERE code IN ('systematicReg', 'gender', 'survey');


-- Data for Name: application.request_type; Type: TABLE DATA; Schema: application; Owner: postgres
--
UPDATE application.request_type SET status = 'x' WHERE code IN( 'regnDeeds', 'newDigitalProperty', 'newState', 'documentCopy', 'newApartment', 'obscurationRequest', 'recordRelationship', 'regnStandardDocument', 
'lifeEstate', 'usufruct', 'waterRights', 'noteOccupation', 'recordTransfer', 'cadastreBulk', 'cadastreExport','surveyPlanCopy', 'lodgeObjection', 'mapExistingParcel', 'systematicRegn', 'historicOrder', 
'limitedRoadAccess', 'servitude', 'cadastreChange', 'cadastrePrint', 'redefineCadastre', 'buildingRestriction', 'cancelRelationship', 'cnclStandardDocument');


UPDATE application.request_type SET display_value = 'Other CofO Registration::::Регистрация права собственности::::التسجيل على سند ملكية::::Enregistrement du Titre::::::::Registro no Título::::产权登记' WHERE code = 'regnOnTitle';
UPDATE application.request_type SET display_value = 'Cancel CofO::::Прекращение права собственности::::الغاء سند ملكية::::Annuler Titre::::::::Título Cancelado::::取消产权' WHERE  code = 'cancelProperty';
UPDATE application.request_type SET display_value =  'Register Sub-lease::::Регистрация права пользования::::تسجيل ايجار::::Enregistrer Bail::::::::Cadastrar Arrendamento::::登记租赁' WHERE code = 'registerLeased';
UPDATE application.request_type SET display_value =  'Vary Sub-lease::::Изменить право пользования::::تعديل الايجار::::Varier Bail::::::::Variar Arrendamento::::变更租赁' WHERE code = 'varyLease';
UPDATE application.request_type SET display_value =  'Existing Boundaries Change::::Изменение кадастрового объекта::::إعادة تعريف المساحة::::Redéfinir Cadastre::::::::Redefinir o Cadastro::::重新定义地籍' WHERE code = 'redefineCadastre';
UPDATE application.request_type SET display_value =  'New CofO::::Новое право собственности (свободное)::::سند ملكية جديد::::Nouveau Titre Propriété::::::::Novo Título de Propriedade::::新的终身保有产权' WHERE code = 'newFreehold';
UPDATE application.request_type SET display_value =  'Assign and Devolve::::Смена владельца::::تغيير الملكية::::Changement de propriétaire::::::::Mudança de Propriedade::::所有权变更' WHERE code = 'newOwnership';
UPDATE application.request_type SET display_value =  'Subdivide CofO::::???????? ????? (?????)::::????? ?? (???)::::Varier Droit (Gê¯©ral)::::::::Variar Direitos (Geral)::::???? (??)' WHERE code = 'subdivideProperty';
UPDATE application.request_type SET display_value =  'CofO Search::::Поиск недвижимости::::البحث عن سند ملكية.::::Recherche Titre::::::::Buscar o Título::::产权调查' WHERE code = 'titleSearch';


-- Data for Name: rrr_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

UPDATE administrative.rrr_type SET status = 'x' WHERE code IN ('tenancy', 'ownershipAssumed', 'customaryType', 'commonOwnership', 'waterwayMaintenance', 'agriActivity', 'grazing', 'monumentMaintenance', 'monument', 'superficies', 'informalOccupation', 'lifeEstate',
'adminPublicServitude', 'firewood', 'fishing', 'apartment', 'noBuilding', 'occupation', 'servitude', 'usufruct', 'waterrights', 'historicPreservation', 'limitedAccess', 'stateOwnership');

UPDATE administrative.rrr_type SET display_value = 'Sub-lease::::Аренда::::الأيجار::::Bail::::Arrendamiento::::Arrendamento::::租赁' WHERE code = 'lease';
UPDATE administrative.rrr_type SET display_value = 'Statutory Right of Occupation::::Право собственности::::ملكية::::Propriété::::Propiedad::::Proprietário::::所有权' WHERE code = 'ownership';


-- Nigeria SOLA Registry Katsina
-- Reference Data Changes
-- 09 November 2015
 

-- application.request_type

UPDATE application.request_type SET display_value = 'Convert to Digital CofO' WHERE code='title';
UPDATE application.request_type SET display_value = 'Register Sub-lease' WHERE code='lease';
UPDATE application.request_type SET notation_template = 'Certificate of Occupancy converted to digital format' WHERE code='newDigitalTitle';
UPDATE application.request_type SET notation_template = 'Right of Occupancy' WHERE code='newFreehold';
UPDATE application.request_type SET notation_template = 'Sub-lease of nn years to <name>' WHERE code='lease';
UPDATE application.request_type SET notation_template = 'Easement over <parcel1> in favour of <parcel2>' WHERE code='servitude';
UPDATE application.request_type SET notation_template = 'Certificate of Occupancy issued at completion of systematic registration' WHERE code='systematicRegn';
UPDATE application.request_type SET notation_template = 'Variation of Sub-lease <reference>' WHERE code='varyLease';

UPDATE source.administrative_source_type SET display_value = 'CofO Diagram' WHERE code='cadastralSurvey';
UPDATE source.administrative_source_type SET display_value = 'Certificate of Occupancy' WHERE code='title';

UPDATE system.config_map_layer SET active=FALSE WHERE name='sug_hierarchy';