--------------------------------------------------------
--  DDL for Table SLS$COM$QUOT$TR$LINES
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$COM$QUOT$TR$LINES" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SR_NO" NUMBER(5,0), 
	"TAX_ID" NUMBER(10,0), 
	"TAX_COA_ID" NUMBER(10,0), 
	"TAX_RULE_ID" NUMBER(10,0), 
	"TAX_AMT_BS" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TAX_AMT_SP" NUMBER(26,6), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"TAXABLE_AMT_SP" NUMBER(26,6), 
	"TAXABLE_AMT_BS" NUMBER(26,6), 
	"TAXABLE_AMT_SP_E" NUMBER(26,6), 
	"TAXABLE_AMT_BS_E" NUMBER(26,6), 
	"SUPP_EO_ID" NUMBER(10,0), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1
   ) ;
  GRANT INSERT ON "SLS"."SLS$COM$QUOT$TR$LINES" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$COM$QUOT$TR$LINES" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$COM$QUOT$TR$LINES" TO PUBLIC;
