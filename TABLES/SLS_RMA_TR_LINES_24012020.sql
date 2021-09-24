--------------------------------------------------------
--  DDL for Table SLS$RMA$TR$LINES_24012020
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$RMA$TR$LINES_24012020" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SR_NO" NUMBER(5,0), 
	"TAX_ID" NUMBER(10,0), 
	"TAX_COA_ID" NUMBER(10,0), 
	"TAX_RULE_ID" NUMBER(10,0), 
	"TAX_AMT_SP" NUMBER(26,6), 
	"TAX_AMT_BS" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"SHIPMNT_ID" VARCHAR2(40 BYTE), 
	"SO_ID" VARCHAR2(40 BYTE), 
	"PICK_ID" VARCHAR2(40 BYTE), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"TAXABLE_AMT_SP" NUMBER(26,6), 
	"TAXABLE_AMT_BS" NUMBER(26,6), 
	"TAXABLE_AMT_SP_E" NUMBER(26,6), 
	"TAXABLE_AMT_BS_E" NUMBER(26,6), 
	"ITM_SR_NO" NUMBER(10,0)
   ) ;
