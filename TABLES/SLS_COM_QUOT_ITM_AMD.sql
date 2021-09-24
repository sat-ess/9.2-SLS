--------------------------------------------------------
--  DDL for Table SLS$COM$QUOT$ITM$AMD
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$COM$QUOT$ITM$AMD" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"AMD_NO" VARCHAR2(40 BYTE), 
	"AMD_DT" DATE, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_PRICE" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"QUOT_QTY" NUMBER(26,6), 
	"ITM_AMT_BS" NUMBER(26,6), 
	"ITM_AMT_SP" NUMBER(26,6), 
	"ITM_DISC_TYP" VARCHAR2(1 BYTE), 
	"ITM_DISC_VAL" NUMBER(26,6), 
	"REMARKS" VARCHAR2(1000 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"UOM_CONV_FCTR" NUMBER(26,6), 
	"ITM_QTY_BS" NUMBER(26,6), 
	"ITM_AMT_GS_SP" NUMBER(26,6), 
	"ITM_AMT_GS_BS" NUMBER(26,6), 
	"SUPP_EO_ID" NUMBER(10,0), 
	"CURR_ID_SP" NUMBER(10,0), 
	"CURR_CONV_FCTR" NUMBER(26,6), 
	"MARGIN_TYP" VARCHAR2(1 BYTE) DEFAULT 'A', 
	"MARGIN_VAL" NUMBER(26,6) DEFAULT 0, 
	"MAKE" VARCHAR2(250 BYTE), 
	"SUPP_ADDS_ID" VARCHAR2(100 BYTE), 
	"DISC_TYP" VARCHAR2(1 BYTE) DEFAULT 'A', 
	"DISC_VAL" NUMBER(26,6) DEFAULT 0, 
	"ITM_PRICE_ORIGN" NUMBER(26,6) DEFAULT 0, 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT NULL, 
	"ITM_PRJ_NM" VARCHAR2(100 BYTE), 
	"ITM_LINE_SR_NO" VARCHAR2(50 BYTE), 
	"MODEL" VARCHAR2(250 BYTE), 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0, 
	"SLS_FACTR_AMT" NUMBER(26,6) DEFAULT 0, 
	"ITM_SUP_BASIS" NUMBER(5,0) DEFAULT 1069, 
	"ITM_COST_RATE" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT INSERT ON "SLS"."SLS$COM$QUOT$ITM$AMD" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$COM$QUOT$ITM$AMD" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$COM$QUOT$ITM$AMD" TO PUBLIC;
