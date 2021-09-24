--------------------------------------------------------
--  DDL for Table SLS$EO$PRICE_HIST
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$EO$PRICE_HIST" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"CATG_ID" NUMBER(10,0), 
	"EFFECTIVE_DT" TIMESTAMP (8), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"MRP_RATE" NUMBER(26,6), 
	"MRP_TYP" VARCHAR2(1 BYTE), 
	"MRP_PRICE" NUMBER(26,6), 
	"MIN_PRICE" NUMBER(26,6), 
	"PRICE_APPLY" VARCHAR2(1 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(20,0), 
	"USR_ID_MOD_DT" DATE, 
	"BASE_PRICE" NUMBER(26,6), 
	"EXPIRY_DT" TIMESTAMP (8), 
	"EO_PRICE_TYPE" VARCHAR2(1 BYTE), 
	"EO_PART_NO" VARCHAR2(250 BYTE), 
	"UPD_BASE_PRICE_TYPE" VARCHAR2(1 BYTE), 
	"UPD_BASE_PRICE_RATE" NUMBER(26,6), 
	"TOT_MRP_RATE" NUMBER(26,6), 
	"MRP_ADD_SUB" VARCHAR2(1 BYTE) DEFAULT 'A', 
	"ADD_MRP_ADD_SUB" VARCHAR2(1 BYTE) DEFAULT 'A', 
	"ADD_MRP_RATE" NUMBER(26,6), 
	"ADD_MRP_TYP" VARCHAR2(1 BYTE) DEFAULT 'A', 
	"ADD_TOT_MRP_RATE" NUMBER(26,6), 
	"ADD_MRP_PRICE" NUMBER(26,6), 
	"PYMNT_TRMS_ID" NUMBER(5,0) DEFAULT 0, 
	"ITM_DISPTCH_LOC" VARCHAR2(20 BYTE) DEFAULT '0', 
	"HIST_DT" TIMESTAMP (6), 
	"RETALR_PRC" NUMBER(26,6), 
	"END_USR_PRC" NUMBER(26,6)
   ) ;
  GRANT QUERY REWRITE ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$EO$PRICE_HIST" TO PUBLIC;
