--------------------------------------------------------
--  DDL for Table SLS$INTM$SLIP$ITM$STK
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INTM$SLIP$ITM$STK" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"LOT_ID" VARCHAR2(20 BYTE), 
	"BIN_ID" VARCHAR2(20 BYTE), 
	"SR_NO" VARCHAR2(100 BYTE), 
	"TOT_QTY" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"SHIP_DOC_ID" VARCHAR2(40 BYTE), 
	"PICK_ID" VARCHAR2(40 BYTE), 
	"SO_ID" VARCHAR2(40 BYTE), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT ALTER ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT ALTER ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT DEBUG ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT DEBUG ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT DELETE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT DELETE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT FLASHBACK ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT FLASHBACK ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT INDEX ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT INDEX ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT INSERT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT INSERT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT QUERY REWRITE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT QUERY REWRITE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT REFERENCES ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT REFERENCES ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT SELECT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT SELECT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT UPDATE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM";
  GRANT UPDATE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC";
  GRANT SELECT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "APP" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "MM" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INTM$SLIP$ITM$STK" TO "SVC" WITH GRANT OPTION;