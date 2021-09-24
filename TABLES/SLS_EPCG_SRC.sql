--------------------------------------------------------
--  DDL for Table SLS$EPCG$SRC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$EPCG$SRC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE), 
	"USR_ID_CREATE" NUMBER(5,0), 
	"USR_ID_MOD" NUMBER(5,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD_DT" DATE, 
	"EO_ID" NUMBER(20,0), 
	"CURR_ID_SP" NUMBER(20,0), 
	"CURR_RATE" NUMBER(26,6), 
	"ITM_AMT_BS" NUMBER(26,6), 
	"ITM_AMT_SP" NUMBER(26,6), 
	"REMARKS" VARCHAR2(1000 BYTE)
   ) ;
