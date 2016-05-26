--------------------------------------------------------
--  DDL for Table GEOSTREET
--------------------------------------------------------
  CREATE TABLE "GEOSTREET" 
   (	"ID" NUMBER(10,0), 
	"DSC" VARCHAR2(100 BYTE), 
	"STREETTYPEID" NUMBER, 
	"GEOAREAID" NUMBER
   );
--------------------------------------------------------
--  DDL for Index IX_GEOSTREET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IX_GEOSTREET_PK" ON "GEOSTREET" ("ID");
--------------------------------------------------------
--  DDL for Index IX_GEOSTREET_DSC
--------------------------------------------------------

  CREATE INDEX "IX_GEOSTREET_DSC" ON "GEOSTREET" ("DSC");
