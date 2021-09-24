--------------------------------------------------------
--  DDL for Table SLS$EO$PRICE_13012020
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$EO$PRICE_13012020" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"CATG_ID" NUMBER(10,0), 
	"EFFECTIVE_DT" TIMESTAMP (8), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"MRP_RATE" NUMBER(26,6), 
	"MRP_TYP" VARCHAR2(1 BYTE), 
	"MRP_PRICE" NUMBER(26,6), 
	"MIN_PRICE" NUMBER(26,6), 
	"PRICE_APPLY" VARCHAR2(1 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(20,0), 
	"USR_ID_MOD_DT" DATE, 
	"BASE_PRICE" NUMBER(26,6), 
	"EXPIRY_DT" TIMESTAMP (8), 
	"EO_PRICE_TYPE" VARCHAR2(1 BYTE), 
	"EO_PART_NO" VARCHAR2(250 BYTE), 
	"UPD_BASE_PRICE_TYPE" VARCHAR2(1 BYTE), 
	"UPD_BASE_PRICE_RATE" NUMBER(26,6), 
	"TOT_MRP_RATE" NUMBER(26,6), 
	"MRP_ADD_SUB" VARCHAR2(1 BYTE), 
	"ADD_MRP_ADD_SUB" VARCHAR2(1 BYTE), 
	"ADD_MRP_RATE" NUMBER(26,6), 
	"ADD_MRP_TYP" VARCHAR2(1 BYTE), 
	"ADD_TOT_MRP_RATE" NUMBER(26,6), 
	"ADD_MRP_PRICE" NUMBER(26,6), 
	"PYMNT_TRMS_ID" NUMBER(5,0), 
	"ITM_DISPTCH_LOC" VARCHAR2(20 BYTE), 
	"INCL_TX" VARCHAR2(1 BYTE), 
	"RETALR_PRC" NUMBER(26,6), 
	"END_USR_PRC" NUMBER(26,6), 
	"CNTRY_ID" NUMBER(5,0), 
	"EXCLSV_ITM_FLG" VARCHAR2(1 BYTE), 
	"INS_FRM" VARCHAR2(2 BYTE)
   ) ;