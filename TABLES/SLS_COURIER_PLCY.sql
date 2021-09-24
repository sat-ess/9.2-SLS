--------------------------------------------------------
--  DDL for Table SLS$COURIER$PLCY
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$COURIER$PLCY" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"PLCY_ID" VARCHAR2(20 BYTE), 
	"PLCY_EFFCT_DT" DATE, 
	"FY_ID" NUMBER(2,0), 
	"PRJ_ID" VARCHAR2(40 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"DOC_ACTV" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) ;
  GRANT SELECT ON "SLS"."SLS$COURIER$PLCY" TO "APP";
