--------------------------------------------------------
--  DDL for Table SLS$QUOT$OC$TR$LINES
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$QUOT$OC$TR$LINES" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"OC_ID" VARCHAR2(20 BYTE), 
	"SR_NO" NUMBER(5,0), 
	"TAX_ID" NUMBER(10,0), 
	"TAX_COA_ID" NUMBER(10,0), 
	"TAX_RULE_ID" NUMBER(10,0), 
	"TAXABLE_AMT_SP" NUMBER(26,6) DEFAULT 0, 
	"TAXABLE_AMT_BS" NUMBER(26,6) DEFAULT 0, 
	"TAXABLE_AMT_SP_E" NUMBER(26,6) DEFAULT 0, 
	"TAXABLE_AMT_BS_E" NUMBER(26,6) DEFAULT 0, 
	"TAX_TYPE_MAN" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) ;
