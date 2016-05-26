--------------------------------------------------------
--  DDL for Table CFGGEOSTREETTYPES
--------------------------------------------------------

  CREATE TABLE "CFGGEOSTREETTYPES" 
   (	"ID" NUMBER, 
	"DSC" VARCHAR2(100 BYTE)
   );
--------------------------------------------------------
--  Constraints for Table CFGGEOSTREETTYPES
--------------------------------------------------------

  ALTER TABLE "CFGGEOSTREETTYPES" MODIFY ("DSC" NOT NULL ENABLE);
  ALTER TABLE "CFGGEOSTREETTYPES" MODIFY ("ID" NOT NULL ENABLE);