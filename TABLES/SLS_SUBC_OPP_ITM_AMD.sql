--------------------------------------------------------
--  DDL for Table SLS$SUBC$OPP$ITM$AMD
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SUBC$OPP$ITM$AMD" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_PRICE" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"ITM_QTY" NUMBER(26,6), 
	"ITM_EXP_PRICE" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"AMD_NO" VARCHAR2(40 BYTE), 
	"AMD_DATE" DATE, 
	"ITM_AMT_BS" NUMBER(26,6), 
	"ITM_AMT_SP" NUMBER(26,6), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"UOM_CONV_FCTR" NUMBER(26,6) DEFAULT 1
   ) ;
