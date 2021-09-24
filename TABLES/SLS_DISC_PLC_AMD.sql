--------------------------------------------------------
--  DDL for Table SLS$DISC$PLC$AMD
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$DISC$PLC$AMD" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DISC_BASIS" NUMBER(5,0), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"SLS_EXEC" NUMBER(20,0), 
	"LBL_ID" VARCHAR2(20 BYTE), 
	"DISC_TYPE" VARCHAR2(1 BYTE), 
	"DISC_VAL" NUMBER(26,6), 
	"EFFECTIVE_DT" DATE, 
	"EXPIRY_DT" DATE, 
	"ON_HOLD" VARCHAR2(1 BYTE), 
	"GRP_ID" VARCHAR2(20 BYTE), 
	"CATG_ID" NUMBER(5,0), 
	"USR_ID_CREATE" NUMBER(10,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(10,0), 
	"USR_ID_MOD_DT" DATE, 
	"REVRSL_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"AMD_NO" VARCHAR2(40 BYTE), 
	"AMD_DT" DATE
   ) ;
  GRANT UPDATE ON "SLS"."SLS$DISC$PLC$AMD" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$DISC$PLC$AMD" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$DISC$PLC$AMD" TO PUBLIC;
