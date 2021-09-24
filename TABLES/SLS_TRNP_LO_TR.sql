--------------------------------------------------------
--  DDL for Table SLS$TRNP$LO$TR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$LO$TR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"TAX_RULE_ID" NUMBER(10,0), 
	"TAX_AMT" NUMBER(26,6), 
	"TAX_AMT_BS" NUMBER(26,6), 
	"TAXABLE_AMT_SP" NUMBER(26,6), 
	"TAXABLE_AMT_BS" NUMBER(26,6)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$TRNP$LO$TR"."TAX_AMT" IS 'Stores Tax amount Sp';
  GRANT INSERT ON "SLS"."SLS$TRNP$LO$TR" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$LO$TR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$LO$TR" TO PUBLIC;
