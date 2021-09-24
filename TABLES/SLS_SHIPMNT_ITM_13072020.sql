--------------------------------------------------------
--  DDL for Table SLS$SHIPMNT$ITM_13072020
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SHIPMNT$ITM_13072020" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"PACK_NO" VARCHAR2(250 BYTE), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"SHIPMNT_QTY" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"PICK_QTY" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_PRICE" NUMBER(26,6), 
	"ITM_AMT_SP" NUMBER(26,6), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"SO_ID" VARCHAR2(40 BYTE), 
	"PICK_ID" VARCHAR2(40 BYTE), 
	"ITM_AMT_BS" NUMBER(26,6), 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"UOM_CONV_FCTR" NUMBER(26,6), 
	"ITM_QTY_BS" NUMBER(26,6), 
	"BAL_QTY" NUMBER(26,6), 
	"TMP_BAL_QTY" NUMBER(26,6), 
	"ITM_DISC_TYP" VARCHAR2(1 BYTE), 
	"ITM_DISC_VAL" NUMBER(26,6), 
	"ITM_AMT_GS_SP" NUMBER(26,6), 
	"ITM_AMT_GS_BS" NUMBER(26,6), 
	"ASBL_AMT_BS" NUMBER(26,6), 
	"ASBL_AMT_SP" NUMBER(26,6), 
	"CC_ID" VARCHAR2(40 BYTE), 
	"PRJ_ID" VARCHAR2(40 BYTE), 
	"SS_BAL_QTY" NUMBER(26,6), 
	"ITM_SR_NO" NUMBER(10,0), 
	"CNT_QTY" NUMBER(26,6), 
	"BAR_CODE_NO" VARCHAR2(40 BYTE), 
	"BAR_CODE_DESC" VARCHAR2(40 BYTE), 
	"REMARKS" VARCHAR2(250 BYTE)
   ) ;
