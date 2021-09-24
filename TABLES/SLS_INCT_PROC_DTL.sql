--------------------------------------------------------
--  DDL for Table SLS$INCT$PROC$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INCT$PROC$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"AMT_TYPE" VARCHAR2(1 BYTE), 
	"FREQ_BASIS" NUMBER(20,0), 
	"TRGT_VLU" NUMBER(26,6), 
	"ACHV_VLU" NUMBER(26,6), 
	"INCT_IN_AMT" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ACHV_VLU_PER" NUMBER(26,6) DEFAULT 0, 
	"INCT_PER_APL" NUMBER(26,6) DEFAULT 0, 
	"ADSN_IN_AMT" NUMBER(26,6), 
	"SPCL_IN_AMT" NUMBER(26,6), 
	"GRP_ID" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$INCT$PROC$DTL"."AMT_TYPE" IS 'A - AMOUNT, P - PERCENTAGE';
   COMMENT ON COLUMN "SLS"."SLS$INCT$PROC$DTL"."FREQ_BASIS" IS '1 - DAILY, 2- WEEKLY, 3- QUARTERLY, 4- HALFYEARLY, 5- MONTHLY';
  GRANT INSERT ON "SLS"."SLS$INCT$PROC$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$INCT$PROC$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$INCT$PROC$DTL" TO PUBLIC;