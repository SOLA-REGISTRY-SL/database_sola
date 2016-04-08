-- Table: cadastre.chiefdoms_type
-- Script designed by Moses and Momodu for REGISTRY-SL

DROP TABLE IF EXISTS cadastre.chiefdoms_type;

CREATE TABLE cadastre.chiefdoms_type
(
  code character varying(20) NOT NULL, -- LADM Definition: The code for the chiefdom.
  display_value character varying(500) NOT NULL, -- LADM Definition: Displayed value of the chiefdom.
  description character varying(1000), -- LADM Definition: Description of the chiefdom.
  status character(1) NOT NULL DEFAULT 't'::bpchar, -- SOLA Extension: Status of the chiefdom
  CONSTRAINT chiefdoms_pkey PRIMARY KEY (code),
  CONSTRAINT chiefdoms_display_value_unique UNIQUE (display_value)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastre.chiefdoms_type
  OWNER TO postgres;
COMMENT ON TABLE cadastre.chiefdoms_type
  IS 'Code list of chiefdoms. 
Tags: Reference Table, LADM Reference Object';
COMMENT ON COLUMN cadastre.chiefdoms_type.code IS 'LADM Definition: The code for the chiefdom.';
COMMENT ON COLUMN cadastre.chiefdoms_type.display_value IS 'LADM Definition: Displayed value of the chiefdom.';
COMMENT ON COLUMN cadastre.chiefdoms_type.description IS 'LADM Definition: Description of the chiefdom.';
COMMENT ON COLUMN cadastre.chiefdoms_type.status IS 'SOLA Extension: Status of the chiefdom';

DELETE FROM cadastre.chiefdoms_type;
--INSERT INTO cadastre.chiefdoms_type (code, display_value, description, status) values('','','','');

INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('dea','Dea','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('jawei','Jawei','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kissi kama','Kissi Kama','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kissi teng','Kissi Teng','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kissi tongi','Kissi Tongi','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kpeje bongre','Kpeje Bongre','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kpeje west','Kpeje West','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('luawa','Luawa','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('malema','Malema','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('mandu','Mandu','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('njaluahun','Njaluahun','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('penguia','Penguia','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('upper bambara','Upper Bambara','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('yawei','Yawei','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('dama','Dama','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('dodo','Dodo','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gaura','Gaura','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gaura','Gaura','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gorama mende','Gorama Mende','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kandu leppiama','Kandu Leppiama','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('koya','Koya','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('langrama','Langrama','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('lower bambara','Lower Bambara','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('malegohun','Malegohun','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('niawa','Niawa','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('nomo','Nomo','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('nongowa','Nongowa','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('simbaru','Simbaru','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('small bo','Small Bo','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('tunkia','Tunkia','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('wandor','Wandor','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kenema town','Kenema Town','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('koidu town','Koidu Town','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('fiama','Fiama','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gbane','Gbane','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gbane kandor','Gbane Kandor','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gbense','Gbense','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gorama kono','Gorama Kono','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kamara','Kamara','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('lei','Lei','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('mafindor','Mafindor','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('nimikoro','Nimikoro','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('nimiyama','Nimiyama','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('sandor','Sandor','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('soa','Soa','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('tankoro','Tankoro','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('biriwa','Biriwa','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bombali sebora','Bombali Sebora','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gbanti kamarank','Gbanti Kamarank','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gbendembu ngowa','Gbendembu Ngowa','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('libeisaygahun','Libeisaygahun','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('magbaimba ndorh','Magbaimba Ndorh','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('makari gbanti','Makari Gbanti','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('paki masabong','Paki Masabong','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('safroko limba','Safroko Limba','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('sanda loko','Sanda Loko','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('sanda tendaran','Sanda Tendaran','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('tambakha','Tambakha','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('makeni town','Makeni Town','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bramaia','Bramaia','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gbinle dixing','Gbinle Dixing','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('magbema','Magbema','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('mambolo','Mambolo','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('masungbala','Masungbala','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('samu','Samu','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('tonko limba','Tonko Limba','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('dembelia - sink','Dembelia - Sink','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('diang','Diang','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('folosaba dembel','Folosaba Dembel','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kasunko','Kasunko','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('mongo','Mongo','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('nieni','Nieni','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('sengbe','Sengbe','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('sulima','Sulima','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('wara wara bafod','Wara Wara Bafod','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bureh kasseh ma','Bureh Kasseh Ma','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('buya romende','Buya Romende','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('dibia','Dibia','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kaffu bullom','Kaffu Bullom','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('koya','Koya','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('lokomasama','Lokomasama','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('maforki','Maforki','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('marampa','Marampa','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('masimera','Masimera','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('sanda magbolont','Sanda Magbolont','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('tms','TMS','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gbonkolenken','Gbonkolenken','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kafe simiria','Kafe Simiria','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kalansogoia','Kalansogoia','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kholifa mabang','Kholifa Mabang','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kunike','Kunike','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kunike barina','Kunike Barina','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('malal mara','Malal Mara','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('sambaya','Sambaya','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('tane','Tane','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('yoni','Yoni','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('badjia','Badjia','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('wonde','Wonde','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('selenga','Selenga','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('niawa lenga','Niawa Lenga','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bagbwe','Bagbwe','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('valunia','Valunia','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('jaiama bongor','Jaiama Bongor','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bagbo','Bagbo','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('tikonko','Tikonko','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kakua','Kakua','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bumpe-gao','Bumpe-Gao','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('baoma','Baoma','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('gbo','Gbo','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('lugbu','Lugbu','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bo town','Bo Town','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bendu-cha','Bendu-Cha','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bum','Bum','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('dema','Dema','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('imperri','Imperri','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('jong','Jong','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kpanda kemo','Kpanda Kemo','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kwamebai krim','Kwamebai Krim','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('nongoba bullom','Nongoba Bullom','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('sogbeni','Sogbeni','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('yawbeko','Yawbeko','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bonthe urban','Bonthe Urban','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bagruwa','Bagruwa','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('bumpeh','Bumpeh','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('dasse','Dasse','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('fakunya','Fakunya','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kagboro','Kagboro','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kaiyamba','Kaiyamba','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kamajei','Kamajei','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kongbora','Kongbora','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kori','Kori','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kowa','Kowa','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('lower banta','Lower Banta','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('ribbi','Ribbi','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('timdale','Timdale','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('upper banta','Upper Banta','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('barri','Barri','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('galliness perri','Galliness Perri','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('kpaka','Kpaka','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('makpele','Makpele','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('malen','Malen','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('malen','Malen','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('mono sakrim','Mono Sakrim','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('panga kabonde','Panga Kabonde','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('panga krim','Panga krim','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('pejeh(futa peje','Pejeh(Futa peje','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('soro gbema','Soro Gbema','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('sowa','Sowa','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('yakemu kpukumu','Yakemu Kpukumu','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('koya rural','Koya Rural','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('mountain rural','Mountain Rural','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('waterloo rural','Waterloo Rural','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('york rural','York Rural','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('central i','Central I','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('central ii','Central II','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('central ii','Central II','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('east i','East I','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('east ii','East II','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('east iii','East III','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('west i','West I','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('west ii','West II','  ','c');
INSERT INTO cadastre.chiefdoms_type (code,display_value,description,status) VALUES ('west iii','West III','  ','c');
