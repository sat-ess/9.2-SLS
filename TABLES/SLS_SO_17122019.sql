--------------------------------------------------------
--  DDL for Table SLS$SO_17122019
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO_17122019" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"EO_ID" NUMBER(20,0), 
	"CASH_CUST_NM" VARCHAR2(100 BYTE), 
	"QUOT_ID" VARCHAR2(40 BYTE), 
	"ORDER_STAT" NUMBER(10,0), 
	"SCH_FLG" VARCHAR2(1 BYTE), 
	"ORDER_TYPE" NUMBER(10,0), 
	"DISC_TYPE" VARCHAR2(1 BYTE), 
	"DISC_PERC" NUMBER(26,6), 
	"DISC_VAL" NUMBER(26,6), 
	"TAX_RULE_FLG" VARCHAR2(1 BYTE), 
	"CURR_ID_SP" NUMBER(10,0), 
	"CURR_CONV_FCTR" NUMBER(26,6), 
	"CURR_ID_BS" NUMBER(10,0), 
	"ADV_PAY_FLG" VARCHAR2(1 BYTE), 
	"HOLD_TILL_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TOT_AMT_SP" NUMBER(26,6), 
	"TOT_AMT_BS" NUMBER(26,6), 
	"AMD_NO" VARCHAR2(40 BYTE), 
	"AMD_DT" DATE, 
	"TAX_AFTER_DISC_FLG" VARCHAR2(1 BYTE), 
	"SO_ID" VARCHAR2(20 BYTE), 
	"REF_SO_DOC_ID" VARCHAR2(40 BYTE), 
	"TMPL_DOC_ID" VARCHAR2(40 BYTE), 
	"INS_AMT" NUMBER(26,6), 
	"SO_BASIS" NUMBER(10,0), 
	"TLRNC_DAYS" NUMBER(10,0), 
	"COA_ID" NUMBER(10,0), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"FY_ID" NUMBER(5,0), 
	"SO_MODE" NUMBER(10,0), 
	"SO_VLDT_DT" DATE, 
	"SHIP_ADDS" VARCHAR2(20 BYTE), 
	"ASSIGNED_TO" NUMBER(10,0), 
	"CASH_SALES_VOU_ID" VARCHAR2(40 BYTE), 
	"COGS_VOU_ID" VARCHAR2(40 BYTE), 
	"EXT_DOC_NO" VARCHAR2(100 BYTE), 
	"EXT_DOC_DT" DATE, 
	"CASH_CUST_ADDS" VARCHAR2(250 BYTE), 
	"SO_CONTRACT_BASIS" NUMBER(10,0), 
	"SO_CONTRACT_QTY" NUMBER(26,6), 
	"SO_CONTRACT_PRICE" NUMBER(26,6), 
	"SO_CONTRACT_VALUE" NUMBER(26,6), 
	"EO_PRICE_PLC" VARCHAR2(20 BYTE), 
	"REMARKS" VARCHAR2(1000 BYTE), 
	"SO_DOC_ORIGIN_ORG" VARCHAR2(2 BYTE), 
	"TOT_ITM_AMT_GS_SP" NUMBER(26,6), 
	"TOT_ITM_AMT_GS_BS" NUMBER(26,6), 
	"TRANS_VH_NO" VARCHAR2(50 BYTE), 
	"TAX_FORM_TYP_ID" NUMBER(20,0), 
	"SO_SUB_TYPE" NUMBER(10,0), 
	"PRJ_ID" VARCHAR2(40 BYTE), 
	"REF_TYP_SRC" NUMBER(5,0), 
	"SHIP_TO_NM" VARCHAR2(50 BYTE), 
	"SHIP_TO_ADDS" VARCHAR2(250 BYTE), 
	"PAYMNT_VOU_ID" VARCHAR2(40 BYTE), 
	"SPLIT_FLG" VARCHAR2(1 BYTE), 
	"REF_DOC_SPLIT_SRC" VARCHAR2(40 BYTE), 
	"EO_CATG_ID" NUMBER(10,0), 
	"CLS_RSN" VARCHAR2(100 BYTE), 
	"SO_DOC_TYP_SRC" NUMBER(10,0), 
	"SO_DOC_TXN_ID_SRC" VARCHAR2(40 BYTE), 
	"DRFT_SO_ID" VARCHAR2(20 BYTE), 
	"TRANSPORTER_ID" NUMBER(20,0), 
	"TRANS_MODE" NUMBER(5,0), 
	"TRANS_GR_NO" VARCHAR2(50 BYTE), 
	"TRANS_GR_DT" DATE, 
	"TRANS_CONTNR_NO" VARCHAR2(50 BYTE), 
	"DRVR_NM" VARCHAR2(100 BYTE), 
	"DRVR_CNTC" VARCHAR2(100 BYTE), 
	"PORT_OF_LANDING" VARCHAR2(20 BYTE), 
	"PORT_OF_DISCHRG" VARCHAR2(20 BYTE), 
	"GROSS_WT" NUMBER(26,6), 
	"NET_WT" NUMBER(26,6), 
	"EMPTY_WT" NUMBER(26,6), 
	"SHIP_DLV_DISTANCE" NUMBER(26,6), 
	"DLV_TYPE" NUMBER(20,0), 
	"DRVR_ID" VARCHAR2(50 BYTE), 
	"BUSNES_PATNR_ID" NUMBER(20,0), 
	"INVC_GEN" VARCHAR2(1 BYTE), 
	"ORDR_PLCD" VARCHAR2(20 BYTE), 
	"PYMNT_RCVD" VARCHAR2(20 BYTE), 
	"TAX_TYPE" NUMBER(10,0), 
	"BILL_ADDS" VARCHAR2(20 BYTE), 
	"PNT_OF_SPLY" VARCHAR2(20 BYTE), 
	"RVRS_CHRG_APLICBL" VARCHAR2(1 BYTE), 
	"EO_REF_UID" VARCHAR2(50 BYTE), 
	"EO_REF_VAT_NO" VARCHAR2(50 BYTE), 
	"MULTI_SHCM_ID" VARCHAR2(40 BYTE), 
	"EO_REF_EMAIL_ID" VARCHAR2(100 BYTE), 
	"SCHOOL_NM_ID" VARCHAR2(20 BYTE), 
	"EO_REF_MOB_NO" VARCHAR2(20 BYTE), 
	"FILE_NO" VARCHAR2(40 BYTE), 
	"EO_LEG_CODE" VARCHAR2(20 BYTE), 
	"PORT_ID" VARCHAR2(50 BYTE), 
	"FRIEGHT" NUMBER(5,0), 
	"CNTRY_ORIG" NUMBER(5,0), 
	"CNTRY_DEST" NUMBER(5,0), 
	"DLV_SRVC_TYPE" NUMBER(5,0), 
	"LC_ID" VARCHAR2(40 BYTE), 
	"CRR_ACC_NO" VARCHAR2(20 BYTE), 
	"PLC_OF_DLV" VARCHAR2(250 BYTE), 
	"FINAL_DEST" VARCHAR2(250 BYTE), 
	"NOTIFY" NUMBER(20,0), 
	"CNCL_REASON" VARCHAR2(50 BYTE), 
	"SO_CONTRACT_UOM_BASIS" NUMBER(10,0), 
	"CNTRCT_PROD_GRP_ID" VARCHAR2(20 BYTE), 
	"MERCHANT_EXPORTER" VARCHAR2(5 BYTE), 
	"EO_TPN_NO" VARCHAR2(40 BYTE), 
	"SO_FRM_VLDT_DT" DATE, 
	"CRS_SLS_EXECTIV" NUMBER(5,0), 
	"PIN_NO" NUMBER(20,0), 
	"SHORT_CLOSE_REASON" VARCHAR2(250 BYTE), 
	"SENT_MAIL" VARCHAR2(1 BYTE)
   ) ;
