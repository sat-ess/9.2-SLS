--------------------------------------------------------
--  DDL for Table SLS$SO$DLV$SCHDL_06112019
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$DLV$SCHDL_06112019" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"DLV_DT" DATE, 
	"TOT_QTY" NUMBER(26,6), 
	"DLV_MODE" NUMBER(20,0), 
	"DLV_QTY" NUMBER(26,6), 
	"TLRNC_QTY_TYPE" VARCHAR2(1 BYTE), 
	"TLRNC_QTY_VAL" NUMBER(26,6), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"DLV_ADDS_ID" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"DLV_SCHDL_NO" NUMBER(4,0), 
	"AVL_QTY" NUMBER(26,6), 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"UOM_CONV_FCTR" NUMBER(26,6), 
	"DLV_QTY_BS" NUMBER(26,6), 
	"BAL_QTY" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"REMARKS" VARCHAR2(250 BYTE), 
	"PLN_QTY" NUMBER(26,6), 
	"PRJ_ID" VARCHAR2(40 BYTE), 
	"TMP_BAL_QTY" NUMBER(26,6), 
	"ITM_SR_NO" NUMBER(10,0), 
	"RSRV_QTY" NUMBER(26,6), 
	"CNT_QTY" NUMBER(26,6), 
	"DLV_TYPE" NUMBER(20,0), 
	"GTC_ID" VARCHAR2(40 BYTE), 
	"ATC_ID" VARCHAR2(40 BYTE), 
	"SHIP_FLG" VARCHAR2(1 BYTE), 
	"PO_DOC_ID" VARCHAR2(40 BYTE), 
	"RETURN_QTY" NUMBER(26,6), 
	"PI_BAL_QTY" NUMBER(26,6), 
	"OLD_BAL_QTY" NUMBER(26,6), 
	"CNSL_FLG" VARCHAR2(1 BYTE), 
	"DLV_TIME" VARCHAR2(5 BYTE), 
	"LR_TEMP_BAL_QTY" NUMBER(26,6), 
	"LR_BAL_QTY" NUMBER(26,6)
   ) ;