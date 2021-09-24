--------------------------------------------------------
--  DDL for Table SLS$TRNP$TB
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$TB" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"TB_ID" VARCHAR2(20 BYTE), 
	"TB_DT" DATE, 
	"ST_DT" DATE, 
	"END_DT" DATE, 
	"TRNSP_ID" NUMBER(5,0), 
	"CURR_ID_SP" NUMBER(20,0), 
	"CURR_CONV_FCTR" NUMBER(26,6), 
	"TB_STATUS" NUMBER(5,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"COA_ID" NUMBER(10,0), 
	"TOT_AMT_SP" NUMBER(26,6), 
	"TOT_AMT_BS" NUMBER(26,6), 
	"FY_ID" NUMBER(10,0)
   ) ;
  GRANT SELECT ON "SLS"."SLS$TRNP$TB" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$TB" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TRNP$TB" TO PUBLIC;