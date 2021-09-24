--------------------------------------------------------
--  DDL for Table SLS$PICK$ISSU$BIN
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PICK$ISSU$BIN" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SO_ID" VARCHAR2(40 BYTE), 
	"SO_DT" TIMESTAMP (8), 
	"LOT_ID" VARCHAR2(20 BYTE), 
	"BIN_ID" VARCHAR2(20 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"PICK_QTY" NUMBER(26,6), 
	"PICK_QTY_BS" NUMBER(26,6), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DLV_DT" DATE, 
	"PRJ_ID" VARCHAR2(40 BYTE) DEFAULT 'PROJ0000', 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT NULL, 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT DEBUG ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
  GRANT FLASHBACK ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
  GRANT FLASHBACK ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PICK$ISSU$BIN" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
  GRANT DELETE ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
  GRANT INDEX ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
  GRANT INSERT ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
  GRANT SELECT ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
  GRANT UPDATE ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
  GRANT REFERENCES ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
  GRANT QUERY REWRITE ON "SLS"."SLS$PICK$ISSU$BIN" TO "PMS";
