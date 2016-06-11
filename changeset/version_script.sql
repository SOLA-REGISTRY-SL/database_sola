 
 INSERT INTO system.version SELECT '1606c' WHERE NOT EXISTS (SELECT Version_Num FROM system.version WHERE Version_Num = '1606c');