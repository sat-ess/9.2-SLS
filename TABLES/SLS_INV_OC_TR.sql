--------------------------------------------------------
--  DDL for Table SLS$INV$OC$TR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INV$OC$TR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"SR_NO" NUMBER(5,0), 
	"TAX_RULE_ID" NUMBER(10,0), 
	"EXMPT_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"TAXABLE_AMT" NUMBER(26,6)
   ) ;
