--------------------------------------------------------
--  DDL for Table SLS$PICK$ISSU$SR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PICK$ISSU$SR" 
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
	"SR_NO" VARCHAR2(100 BYTE), 
	"PICK_QTY" NUMBER(26,6), 
	"PICK_QTY_BS" NUMBER(26,6), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DLV_DT" DATE, 
	"PRJ_ID" VARCHAR2(40 BYTE) DEFAULT 'PROJ0000', 
	"SR_NO1" VARCHAR2(100 BYTE), 
	"SR_NO2" VARCHAR2(100 BYTE), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT NULL, 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT QUERY REWRITE ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PICK$ISSU$SR" TO PUBLIC;