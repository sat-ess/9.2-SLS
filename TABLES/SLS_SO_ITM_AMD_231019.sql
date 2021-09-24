--------------------------------------------------------
--  DDL for Table SLS$SO$ITM$AMD_231019
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$ITM$AMD_231019" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"AMD_NO" VARCHAR2(40 BYTE), 
	"AMD_DT" DATE, 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_RATE" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"ITM_QTY" NUMBER(26,6), 
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
	"PO_DOC_ID" VARCHAR2(40 BYTE), 
	"BAL_QTY" NUMBER(26,6), 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"UOM_CONV_FCTR" NUMBER(26,6), 
	"ITM_QTY_BS" NUMBER(26,6), 
	"ITM_SR_NO" NUMBER(10,0), 
	"CNT_QTY" NUMBER(26,6), 
	"AMC_FLG" VARCHAR2(1 BYTE), 
	"ASBL_AMT_BS" NUMBER(26,6), 
	"ASBL_AMT_SP" NUMBER(26,6), 
	"BC_NO" VARCHAR2(100 BYTE), 
	"CC_ID" VARCHAR2(40 BYTE), 
	"EO_PART_NO" VARCHAR2(250 BYTE), 
	"INCL_TX" VARCHAR2(1 BYTE), 
	"ITM_AMT_GS_BS" NUMBER(26,6), 
	"ITM_AMT_GS_SP" NUMBER(26,6), 
	"ITM_BASIS" NUMBER(5,0), 
	"ITM_ID_SRC" VARCHAR2(50 BYTE), 
	"ITM_MIN_SEL_RATE" NUMBER(26,6), 
	"ITM_SR_NO_SRC" NUMBER(10,0), 
	"OC_AMT_BS" NUMBER(26,6), 
	"OC_AMT_SP" NUMBER(26,6), 
	"PHNTM_ITM_ID" VARCHAR2(50 BYTE), 
	"PYMNT_TRMS_ID" NUMBER(5,0), 
	"QC_OVERRIDE_FLG" VARCHAR2(1 BYTE), 
	"QC_REQD_FLG" VARCHAR2(1 BYTE), 
	"SCHM_FLG" VARCHAR2(1 BYTE), 
	"STORAGE_TYPE_FLG" NUMBER(5,0), 
	"TEMP_AMT_SP" NUMBER(26,6), 
	"TMP_BAL_QTY" NUMBER(26,6), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"WTY_ID" VARCHAR2(20 BYTE), 
	"FRZ_LOT_ATT" VARCHAR2(1 BYTE)
   ) ;