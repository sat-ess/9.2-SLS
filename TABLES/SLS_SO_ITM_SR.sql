--------------------------------------------------------
--  DDL for Table SLS$SO$ITM$SR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$ITM$SR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" TIMESTAMP (8), 
	"LOT_ID" VARCHAR2(20 BYTE), 
	"BIN_ID" VARCHAR2(20 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"SR_NO" VARCHAR2(100 BYTE), 
	"ITM_QTY" NUMBER(26,6), 
	"ITM_QTY_BS" NUMBER(26,6), 
	"SR_NO1" VARCHAR2(100 BYTE), 
	"SR_NO2" VARCHAR2(100 BYTE), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$SO$ITM$SR"."SR_NO1" IS 'To store IMEI no.';
   COMMENT ON COLUMN "SLS"."SLS$SO$ITM$SR"."SR_NO2" IS 'To store IMEI no.';
  GRANT DELETE ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$ITM$SR" TO PUBLIC;
