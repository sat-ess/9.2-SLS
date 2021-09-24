--------------------------------------------------------
--  DDL for Table SLS$DSH$TOPN$CUST
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$DSH$TOPN$CUST" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"EO_ID" NUMBER(10,0), 
	"EO_NM" VARCHAR2(250 BYTE), 
	"TOT_AMT" NUMBER(26,6)
   ) ;
  GRANT INSERT ON "SLS"."SLS$DSH$TOPN$CUST" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$DSH$TOPN$CUST" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$DSH$TOPN$CUST" TO PUBLIC;
