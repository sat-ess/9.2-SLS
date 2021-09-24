--------------------------------------------------------
--  DDL for Table SLS$INV$PMNT$SCHDL_02112019
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INV$PMNT$SCHDL_02112019" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"PAY_DT" DATE, 
	"PAY_MODE" NUMBER(20,0), 
	"TOT_AMT" NUMBER(26,6), 
	"PAY_AMT" NUMBER(26,6), 
	"ADV_FLG" VARCHAR2(1 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"PHONE_NO" VARCHAR2(50 BYTE)
   ) ;
