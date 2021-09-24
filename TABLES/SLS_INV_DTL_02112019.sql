--------------------------------------------------------
--  DDL for Table SLS$INV$DTL_02112019
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INV$DTL_02112019" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"SHIP_ID" VARCHAR2(40 BYTE), 
	"SHIP_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"SHIP_AMT_SP" NUMBER(26,6), 
	"SHIP_AMT_BS" NUMBER(26,6)
   ) ;
