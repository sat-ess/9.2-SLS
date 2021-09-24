--------------------------------------------------------
--  DDL for Table SLS$TRNP$BIL$RCNCL$TDS$LIN
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$BIL$RCNCL$TDS$LIN" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"LR_DOC_ID" VARCHAR2(40 BYTE), 
	"TDS_RULE_ID" NUMBER(10,0), 
	"TDS_RULE_FLG" VARCHAR2(1 BYTE), 
	"TDS_TYPE" NUMBER(10,0), 
	"TDS_COA_ID" NUMBER(10,0), 
	"TDS_AMT_SP" NUMBER(26,6), 
	"TDS_AMT_BS" NUMBER(26,6), 
	"TDS_PER" NUMBER(26,6), 
	"TDS_RULE_SLNO" NUMBER(2,0), 
	"TDS_RULE_PRIORITY" NUMBER(2,0), 
	"TDS_ON_AMT_SP" NUMBER(26,6) DEFAULT 0, 
	"TDS_ON_AMT_BS" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT INSERT ON "SLS"."SLS$TRNP$BIL$RCNCL$TDS$LIN" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$BIL$RCNCL$TDS$LIN" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$BIL$RCNCL$TDS$LIN" TO PUBLIC;
