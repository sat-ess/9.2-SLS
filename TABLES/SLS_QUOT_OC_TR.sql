--------------------------------------------------------
--  DDL for Table SLS$QUOT$OC$TR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$QUOT$OC$TR" 
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
	"TAX_RULE_ID" NUMBER(10,0), 
	"EXMPT_FLG" VARCHAR2(1 BYTE), 
	"TAXABLE_AMT" NUMBER(26,6)
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$QUOT$OC$TR" TO PUBLIC;