--------------------------------------------------------
--  DDL for Table SLS$SO$ITM$BIN$AMD
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$ITM$BIN$AMD" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"AMD_NO" VARCHAR2(40 BYTE), 
	"AMD_DT" DATE, 
	"WH_ID" VARCHAR2(20 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"LOT_ID" VARCHAR2(20 BYTE), 
	"BIN_ID" VARCHAR2(20 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"ITM_QTY" NUMBER(26,6), 
	"ITM_QTY_BS" NUMBER(26,6), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$SO$ITM$BIN$AMD" TO PUBLIC;
