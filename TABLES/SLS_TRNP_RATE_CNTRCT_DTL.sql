--------------------------------------------------------
--  DDL for Table SLS$TRNP$RATE$CNTRCT$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$RATE$CNTRCT$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"ITM_ID" VARCHAR2(40 BYTE), 
	"RATE" NUMBER(26,6), 
	"RATE_UOM" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SR_NO" NUMBER(10,0) DEFAULT 1
   ) ;
  GRANT INSERT ON "SLS"."SLS$TRNP$RATE$CNTRCT$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$RATE$CNTRCT$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$RATE$CNTRCT$DTL" TO PUBLIC;