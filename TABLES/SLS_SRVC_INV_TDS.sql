--------------------------------------------------------
--  DDL for Table SLS$SRVC$INV$TDS
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SRVC$INV$TDS" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_ID_SO" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"TDS_RULE_ID" NUMBER(10,0), 
	"TDS_RULE_FLG" VARCHAR2(1 BYTE), 
	"TDS_EXMPT_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"TDS_AMT" NUMBER(26,6), 
	"TDS_AMT_BS" NUMBER(26,6) DEFAULT 0, 
	"TDS_ON_AMT_SP" NUMBER(26,6), 
	"TDS_ON_AMT_BS" NUMBER(26,6), 
	"HO_ORG_ID" VARCHAR2(2 BYTE)
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$SRVC$INV$TDS" TO PUBLIC;