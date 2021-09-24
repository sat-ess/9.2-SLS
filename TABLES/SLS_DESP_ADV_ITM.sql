--------------------------------------------------------
--  DDL for Table SLS$DESP$ADV$ITM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$DESP$ADV$ITM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"DESPATCH_QTY" NUMBER(10,3), 
	"PRODUCT_RATE" NUMBER(17,6), 
	"DT_SCHEDULE_DATE" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT ALTER ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$DESP$ADV$ITM" TO PUBLIC;