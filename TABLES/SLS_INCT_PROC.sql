--------------------------------------------------------
--  DDL for Table SLS$INCT$PROC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INCT$PROC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"PROC_NO" VARCHAR2(40 BYTE), 
	"PROC_DT" DATE, 
	"TRGT_TYPE" NUMBER(5,0), 
	"AMT_TYPE" VARCHAR2(1 BYTE), 
	"FREQ_BASIS" NUMBER(20,0), 
	"PROC_START_DT" DATE, 
	"PROC_END_DT" DATE, 
	"FY_ID" NUMBER(2,0), 
	"PROC_STAT" NUMBER(5,0), 
	"PRJ_ID" VARCHAR2(40 BYTE), 
	"GRP_ID" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$INCT$PROC"."TRGT_TYPE" IS '1 - COLLECTION, 2 - REVENUE';
   COMMENT ON COLUMN "SLS"."SLS$INCT$PROC"."AMT_TYPE" IS 'A - AMOUNT, P - PERCENTAGE';
   COMMENT ON COLUMN "SLS"."SLS$INCT$PROC"."FREQ_BASIS" IS '1 - DAILY, 2- WEEKLY, 3- QUARTERLY, 4- HALFYEARLY, 5- MONTHLY';
  GRANT INSERT ON "SLS"."SLS$INCT$PROC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$INCT$PROC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$INCT$PROC" TO PUBLIC;