--------------------------------------------------------
--  DDL for Table SLS$CCP$ITM$TR$LINES
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$CCP$ITM$TR$LINES" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE), 
	"SHIP_TXN_ID" VARCHAR2(40 BYTE), 
	"SO_TXN_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"TAX_AMT_BS" NUMBER(26,6), 
	"TAX_AMT_SP" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"EO_ID" NUMBER(20,0), 
	"ITM_SR_NO" NUMBER(10,0), 
	"SR_NO" NUMBER(10,0), 
	"TAX_ID" NUMBER(10,0), 
	"TAX_COA_ID" NUMBER(10,0), 
	"TAX_RULE_ID" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$CCP$ITM$TR$LINES"."SR_NO" IS 'To store the Sequence number';
  GRANT ALTER ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$CCP$ITM$TR$LINES" TO PUBLIC;