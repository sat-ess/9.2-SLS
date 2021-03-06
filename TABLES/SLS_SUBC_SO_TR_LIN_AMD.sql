--------------------------------------------------------
--  DDL for Table SLS$SUBC$SO$TR$LIN$AMD
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SUBC$SO$TR$LIN$AMD" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"AMD_NO" NUMBER(5,0), 
	"AMD_DT" DATE, 
	"SR_NO" NUMBER(5,0), 
	"TAX_ID" NUMBER(10,0), 
	"TAX_COA_ID" NUMBER(10,0), 
	"TAX_RULE_ID" NUMBER(10,0), 
	"TAX_AMT_SP" NUMBER(26,6), 
	"TAX_AMT_BS" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"TAXABLE_AMT_SP" NUMBER(26,6) DEFAULT 0, 
	"TAXABLE_AMT_BS" NUMBER(26,6) DEFAULT 0, 
	"TAXABLE_AMT_SP_E" NUMBER(26,6) DEFAULT 0, 
	"TAXABLE_AMT_BS_E" NUMBER(26,6) DEFAULT 0, 
	"TAX_TYPE_MAN" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"ADV_TAX_AMT" NUMBER(26,6) DEFAULT 0, 
	"BAL_TAX_AMT" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT INSERT ON "SLS"."SLS$SUBC$SO$TR$LIN$AMD" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SUBC$SO$TR$LIN$AMD" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SUBC$SO$TR$LIN$AMD" TO PUBLIC;
