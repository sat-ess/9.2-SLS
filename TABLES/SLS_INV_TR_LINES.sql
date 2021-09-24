--------------------------------------------------------
--  DDL for Table SLS$INV$TR$LINES
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INV$TR$LINES" 
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
	"SO_ID" VARCHAR2(40 BYTE), 
	"SHIP_ID" VARCHAR2(40 BYTE), 
	"TAXABLE_AMT_SP" NUMBER(26,6) DEFAULT 0, 
	"TAXABLE_AMT_BS" NUMBER(26,6) DEFAULT 0, 
	"TAXABLE_AMT_SP_E" NUMBER(26,6) DEFAULT 0, 
	"TAXABLE_AMT_BS_E" NUMBER(26,6) DEFAULT 0, 
	"TAX_TYPE_MAN" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"TAX_AMT_RAW" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$INV$TR$LINES"."TAX_TYPE_MAN" IS 'to store is manual tax applicable on row';
  GRANT REFERENCES ON "SLS"."SLS$INV$TR$LINES" TO "PMS";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INV$TR$LINES" TO "PMS";
  GRANT QUERY REWRITE ON "SLS"."SLS$INV$TR$LINES" TO "PMS";
  GRANT DEBUG ON "SLS"."SLS$INV$TR$LINES" TO "PMS";
  GRANT FLASHBACK ON "SLS"."SLS$INV$TR$LINES" TO "PMS";
  GRANT SELECT ON "SLS"."SLS$INV$TR$LINES" TO "MM";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$INV$TR$LINES" TO "APP";
  GRANT FLASHBACK ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$INV$TR$LINES" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$INV$TR$LINES" TO "PMS";
  GRANT DELETE ON "SLS"."SLS$INV$TR$LINES" TO "PMS";
  GRANT INDEX ON "SLS"."SLS$INV$TR$LINES" TO "PMS";
  GRANT INSERT ON "SLS"."SLS$INV$TR$LINES" TO "PMS";
  GRANT SELECT ON "SLS"."SLS$INV$TR$LINES" TO "PMS";
  GRANT UPDATE ON "SLS"."SLS$INV$TR$LINES" TO "PMS";