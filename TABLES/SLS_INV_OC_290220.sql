--------------------------------------------------------
--  DDL for Table SLS$INV$OC_290220
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INV$OC_290220" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"OC_DESC" NUMBER(20,0), 
	"CURR_ID" NUMBER(10,0), 
	"CURR_RATE" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TRAN_TYPE" VARCHAR2(2 BYTE), 
	"OC_ID" VARCHAR2(20 BYTE), 
	"TAX_AMT_SP" NUMBER(26,6), 
	"TAX_AMT_BS" NUMBER(26,6)
   ) ;
