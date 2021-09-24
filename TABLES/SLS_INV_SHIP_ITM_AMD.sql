--------------------------------------------------------
--  DDL for Table SLS$INV$SHIP$ITM$AMD
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INV$SHIP$ITM$AMD" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SHIP_ID" VARCHAR2(40 BYTE), 
	"SO_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_RATE" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"ITM_SHIP_QTY" NUMBER(26,6), 
	"ITM_DISC_TYP" VARCHAR2(1 BYTE), 
	"ITM_DISC_VAL" NUMBER(26,6), 
	"ITM_AMT_BS" NUMBER(26,6), 
	"ITM_AMT_SP" NUMBER(26,6), 
	"REMARKS" VARCHAR2(1000 BYTE), 
	"TLRNC_QTY_TYPE" VARCHAR2(1 BYTE), 
	"TLRNC_QTY_VAL" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TAX_RULE_FLG" VARCHAR2(1 BYTE), 
	"SCH_ID" VARCHAR2(40 BYTE), 
	"SUPPLI_ITM_RATE" NUMBER, 
	"OLD_ITM_RATE" NUMBER(26,6), 
	"ITM_AMT_GS_SP" NUMBER(26,6), 
	"ITM_AMT_GS_BS" NUMBER(26,6), 
	"WTY_ID" VARCHAR2(20 BYTE), 
	"SCHM_FLG" VARCHAR2(1 BYTE), 
	"ASBL_AMT_BS" NUMBER(26,6), 
	"ASBL_AMT_SP" NUMBER(26,6), 
	"OLD_ITM_SHIP_QTY" NUMBER(26,6), 
	"CC_ID" VARCHAR2(45 BYTE), 
	"EO_PART_NO" VARCHAR2(50 BYTE), 
	"AMC_FLG" VARCHAR2(1 BYTE), 
	"ITM_SLS_EXP_AMT" NUMBER(26,6), 
	"ITM_SR_NO" NUMBER(10,0), 
	"ITM_GRP_ID_CC" VARCHAR2(20 BYTE), 
	"CNT_QTY" NUMBER(26,6), 
	"AMD_NO" NUMBER(10,0), 
	"AMD_DT" DATE, 
	"INCL_TX" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) ;
  GRANT INSERT ON "SLS"."SLS$INV$SHIP$ITM$AMD" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$INV$SHIP$ITM$AMD" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$INV$SHIP$ITM$AMD" TO PUBLIC;
