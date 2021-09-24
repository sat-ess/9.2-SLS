--------------------------------------------------------
--  DDL for Table SLS$INV_29042020
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INV_29042020" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"CURR_ID_SP" NUMBER(20,0), 
	"CURR_RATE" NUMBER(26,6), 
	"INV_TYPE" NUMBER(20,0), 
	"EO_ID" NUMBER(20,0), 
	"INTIM_SLIP_ID" VARCHAR2(40 BYTE), 
	"BILL_ADD" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TOT_AMT_SP" NUMBER(26,6), 
	"TOT_AMT_BS" NUMBER(26,6), 
	"DISC_TYPE" VARCHAR2(1 BYTE), 
	"DISC_VAL" NUMBER(26,6), 
	"TAX_AFTER_DISC_FLG" VARCHAR2(1 BYTE), 
	"DISP_DOC_ID" VARCHAR2(20 BYTE), 
	"TAX_RULE_FLG" VARCHAR2(1 BYTE), 
	"CURR_ID_BS" NUMBER(20,0), 
	"INV_STAT" NUMBER(10,0), 
	"COA_ID" NUMBER(10,0), 
	"REMARKS" VARCHAR2(1000 BYTE), 
	"FY_ID" NUMBER(5,0), 
	"INV_MODE" NUMBER(10,0), 
	"EXT_DOC_NO" VARCHAR2(100 BYTE), 
	"EXT_DOC_DT" DATE, 
	"CASH_CUST_NM" VARCHAR2(100 BYTE), 
	"SALES_VOU_ID" VARCHAR2(40 BYTE), 
	"REF_DOC_ID" VARCHAR2(40 BYTE), 
	"TOT_ITM_AMT_GS_SP" NUMBER(26,6), 
	"TOT_ITM_AMT_GS_BS" NUMBER(26,6), 
	"INV_SUB_TYPE" NUMBER(10,0), 
	"LC_ID" VARCHAR2(40 BYTE), 
	"PEND_LC_AMT" NUMBER(26,6), 
	"REV_SALES_VOU_ID" VARCHAR2(40 BYTE), 
	"DRFT_INV_ID" VARCHAR2(20 BYTE), 
	"INCL_SRVC_ITM" VARCHAR2(1 BYTE), 
	"TAX_FORM_TYP_ID" NUMBER(20,0), 
	"PRJ_ID" VARCHAR2(40 BYTE), 
	"SHIP_TO_NM" VARCHAR2(50 BYTE), 
	"SHIP_TO_ADDS" VARCHAR2(250 BYTE), 
	"FORM_RCVD" VARCHAR2(1 BYTE), 
	"FORM_RCVD_DT" DATE, 
	"FORM_RCVD_RMRK" VARCHAR2(1000 BYTE), 
	"FORM_NO" VARCHAR2(50 BYTE), 
	"FORM_AMT" NUMBER(26,6), 
	"SUPPLI_OPER_TYPE" VARCHAR2(1 BYTE), 
	"EX_TRD_FLG" VARCHAR2(1 BYTE), 
	"REASON" VARCHAR2(100 BYTE), 
	"PDR_CALCULATED" VARCHAR2(1 BYTE), 
	"EXP_VOU_ID" VARCHAR2(40 BYTE), 
	"REV_EXP_VOU_ID" VARCHAR2(40 BYTE), 
	"MAIL_SENT_CHK" VARCHAR2(1 BYTE), 
	"DIRCT_PRNT_CHK" VARCHAR2(1 BYTE), 
	"MANUL_REMOV_DT" DATE, 
	"DIRCT_PRNT_CHK_FR_INV_RPT" VARCHAR2(1 BYTE), 
	"RPRT_PRNT_CNT" NUMBER(26,0), 
	"SEI_CALCULATED" VARCHAR2(1 BYTE), 
	"BUSNES_PATNR_ID" NUMBER(20,0), 
	"INV_RE_UPDTED" VARCHAR2(1 BYTE), 
	"AMD_NO" NUMBER(10,0), 
	"AMD_DT" DATE, 
	"TAX_TYPE" NUMBER(22,0), 
	"REF_SO_ID" VARCHAR2(50 BYTE), 
	"PNT_OF_SPLY" VARCHAR2(20 BYTE), 
	"E_WAY_BILL_NO" VARCHAR2(50 BYTE), 
	"RVRS_CHRG_APLICBL" VARCHAR2(1 BYTE), 
	"POST_AS_DEBIT_NOTE" VARCHAR2(1 BYTE), 
	"CUST_LEG_CODE" VARCHAR2(20 BYTE), 
	"PORT_ID" VARCHAR2(50 BYTE), 
	"FRIEGHT" NUMBER(5,0), 
	"CNTRY_ORIG" NUMBER(5,0), 
	"NOTIFY" NUMBER(20,0), 
	"LOAD_PORT" VARCHAR2(50 BYTE), 
	"DISCHRG_PORT" VARCHAR2(50 BYTE), 
	"FINAL_DEST" VARCHAR2(250 BYTE), 
	"CNTRY_FINAL_DEST" NUMBER(5,0), 
	"CRR_ACC_NO" VARCHAR2(20 BYTE), 
	"PLC_OF_DLV" VARCHAR2(250 BYTE), 
	"VESSEL_NO" VARCHAR2(250 BYTE), 
	"LUT_FLG" VARCHAR2(1 BYTE), 
	"SHIP_SEQ" NUMBER(26,6), 
	"SUBC_DONE" VARCHAR2(1 BYTE), 
	"REF_GLBL_DOC_ID" NUMBER(5,0), 
	"MERCHANT_EXPORTER" VARCHAR2(5 BYTE)
   ) ;
