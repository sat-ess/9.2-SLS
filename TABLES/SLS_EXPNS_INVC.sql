--------------------------------------------------------
--  DDL for Table SLS$EXPNS$INVC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$EXPNS$INVC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(5,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" TIMESTAMP (8), 
	"FY_ID" NUMBER(5,0), 
	"DRFT_INVC_NO" VARCHAR2(20 BYTE), 
	"INVC_NO" VARCHAR2(20 BYTE), 
	"INVC_DT" DATE, 
	"EO_ID" NUMBER(5,0), 
	"BILL_ADDS_ID" VARCHAR2(20 BYTE), 
	"COA_ID" NUMBER(10,0), 
	"CURR_ID_SP" NUMBER(10,0), 
	"CURR_CONV_FCTR" NUMBER(26,6), 
	"TOT_AMT_SP" NUMBER(26,6), 
	"TOT_AMT_BS" NUMBER(26,6), 
	"INVC_STAT" NUMBER(5,0), 
	"AUTH_STAT" VARCHAR2(1 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"EXT_INVC_NO" VARCHAR2(50 BYTE), 
	"EXT_INVC_DT" DATE, 
	"EXT_DOC_NO" VARCHAR2(50 BYTE), 
	"EXT_DOC_DT" DATE, 
	"PMNT_DT" DATE, 
	"INVC_TYPE" NUMBER(5,0), 
	"TAX_TYPE" NUMBER(10,0), 
	"PNT_OF_SPLY" VARCHAR2(20 BYTE), 
	"PRJ_ID" VARCHAR2(40 BYTE) DEFAULT 'PROJ0000', 
	"GL_VOU_ID" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"GL_VOU_ID_CNSL" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"REMARKS" VARCHAR2(255 BYTE)
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$EXPNS$INVC" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$EXPNS$INVC" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$EXPNS$INVC" TO "APP";
  GRANT QUERY REWRITE ON "SLS"."SLS$EXPNS$INVC" TO "APP";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$EXPNS$INVC" TO "APP";
  GRANT REFERENCES ON "SLS"."SLS$EXPNS$INVC" TO "APP";
  GRANT UPDATE ON "SLS"."SLS$EXPNS$INVC" TO "APP";
  GRANT SELECT ON "SLS"."SLS$EXPNS$INVC" TO "APP";
  GRANT INSERT ON "SLS"."SLS$EXPNS$INVC" TO "APP";
  GRANT INDEX ON "SLS"."SLS$EXPNS$INVC" TO "APP";
  GRANT DELETE ON "SLS"."SLS$EXPNS$INVC" TO "APP";
  GRANT ALTER ON "SLS"."SLS$EXPNS$INVC" TO "APP";
