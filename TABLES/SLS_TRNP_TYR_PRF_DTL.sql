--------------------------------------------------------
--  DDL for Table SLS$TRNP$TYR$PRF$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$TYR$PRF$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(1,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"TYRE_GRP" VARCHAR2(40 BYTE), 
	"TYRE_ID" VARCHAR2(40 BYTE), 
	"TYRE_TYPE" NUMBER(5,0), 
	"SR_NO" VARCHAR2(40 BYTE), 
	"DISP_LBL" VARCHAR2(40 BYTE), 
	"LGCY_CODE" VARCHAR2(40 BYTE), 
	"SLVG_VAL" NUMBER(26,6), 
	"TYRE_LIFE" NUMBER(26,6), 
	"STRT_DT" DATE, 
	"TOT_DIST_CLOCK" NUMBER(26,6), 
	"STATUS" NUMBER(5,0), 
	"TOT_COST" NUMBER(26,6), 
	"ADDTNL_COST" NUMBER(26,6), 
	"FINAL_COST" NUMBER(26,6), 
	"REMARKS" VARCHAR2(100 BYTE), 
	"USR_ID_CREATE" NUMBER(5,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(5,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT INSERT ON "SLS"."SLS$TRNP$TYR$PRF$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$TYR$PRF$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$TYR$PRF$DTL" TO PUBLIC;
