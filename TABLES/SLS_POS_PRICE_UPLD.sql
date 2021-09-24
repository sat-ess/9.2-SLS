--------------------------------------------------------
--  DDL for Table SLS$POS$PRICE_UPLD
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$POS$PRICE_UPLD" 
   (	"CLD_ID" VARCHAR2(5 BYTE), 
	"SLOC_ID" NUMBER(5,0), 
	"HO_ORG_ID" VARCHAR2(5 BYTE), 
	"POS_NM" VARCHAR2(1000 BYTE), 
	"ORG_NM" VARCHAR2(1000 BYTE), 
	"ITM_NM" VARCHAR2(1000 BYTE), 
	"ITM_PRICE" NUMBER(26,6), 
	"ITM_TAX_AMT" NUMBER(26,6), 
	"EFFCT_DT" TIMESTAMP (6), 
	"SL_NO" NUMBER(5,0), 
	"EE_TYPE" VARCHAR2(500 BYTE), 
	"ITM_CODE" VARCHAR2(1000 BYTE), 
	"ITM_MIN_PRICE" NUMBER(26,6) DEFAULT 0, 
	"VERIFIED_DATA" VARCHAR2(1 BYTE) DEFAULT 'Y'
   ) ;
  GRANT ALTER ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$POS$PRICE_UPLD" TO PUBLIC;
