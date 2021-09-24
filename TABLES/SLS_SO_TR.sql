--------------------------------------------------------
--  DDL for Table SLS$SO$TR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$TR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SR_NO" NUMBER(5,0), 
	"TAX_RULE_ID" NUMBER(10,0), 
	"TAX_AMT_SP" NUMBER(26,6), 
	"TAX_AMT_BS" NUMBER(26,6), 
	"EXMPT_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"TAXABLE_AMT" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1
   ) ;
  GRANT REFERENCES ON "SLS"."SLS$SO$TR" TO "PMS";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$TR" TO "PMS";
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$TR" TO "PMS";
  GRANT DEBUG ON "SLS"."SLS$SO$TR" TO "PMS";
  GRANT FLASHBACK ON "SLS"."SLS$SO$TR" TO "PMS";
  GRANT ALTER ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$SO$TR" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$SO$TR" TO "PMS";
  GRANT DELETE ON "SLS"."SLS$SO$TR" TO "PMS";
  GRANT INDEX ON "SLS"."SLS$SO$TR" TO "PMS";
  GRANT INSERT ON "SLS"."SLS$SO$TR" TO "PMS";
  GRANT SELECT ON "SLS"."SLS$SO$TR" TO "PMS";
  GRANT UPDATE ON "SLS"."SLS$SO$TR" TO "PMS";