--------------------------------------------------------
--  DDL for Table SLS$KAL$LOT$ATT$MAP
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$KAL$LOT$ATT$MAP" 
   (	"ATT_TYPE" NUMBER(10,0), 
	"ATT_SR_NO" NUMBER(10,0), 
	"ATT_NAME" VARCHAR2(50 BYTE), 
	"ATT_ID" VARCHAR2(50 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"CLD_ID" VARCHAR2(4 BYTE)
   ) ;
  GRANT SELECT ON "SLS"."SLS$KAL$LOT$ATT$MAP" TO PUBLIC;
