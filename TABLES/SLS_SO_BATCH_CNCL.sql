--------------------------------------------------------
--  DDL for Table SLS$SO$BATCH$CNCL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$BATCH$CNCL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"DOC_ID_SO" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"EO_CATG_ID" NUMBER(10,0), 
	"STRT_DT" DATE, 
	"END_DT" DATE, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_GRP_ID" VARCHAR2(50 BYTE), 
	"ORDER_TYPE" NUMBER(10,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"DOC_STAT" NUMBER(4,0), 
	"BTCH_SO_ID" VARCHAR2(20 BYTE), 
	"DRFT_BTCH_SO_ID" VARCHAR2(20 BYTE), 
	"FY_ID" NUMBER(5,0)
   ) ;
  GRANT ALTER ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT DELETE ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT INDEX ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT INSERT ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT SELECT ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT UPDATE ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT REFERENCES ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT FLASHBACK ON "SLS"."SLS$SO$BATCH$CNCL" TO "APP";
  GRANT INSERT ON "SLS"."SLS$SO$BATCH$CNCL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$BATCH$CNCL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$BATCH$CNCL" TO PUBLIC;
