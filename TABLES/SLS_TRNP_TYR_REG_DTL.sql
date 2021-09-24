--------------------------------------------------------
--  DDL for Table SLS$TRNP$TYR$REG$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$TYR$REG$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(1,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"TYRE_ID" VARCHAR2(40 BYTE), 
	"SR_NO" VARCHAR2(40 BYTE), 
	"INST_DATE" DATE, 
	"VHCL_NMBR" VARCHAR2(20 BYTE), 
	"TYR_POS" VARCHAR2(20 BYTE), 
	"INITIAL_MILG" NUMBER(26,6), 
	"FINL_MILG" NUMBER(26,6), 
	"TOT_DIST_CLOCK" NUMBER(26,6), 
	"PLACE" VARCHAR2(20 BYTE), 
	"GAITER" NUMBER(26,6), 
	"DRVNG_PRSN" VARCHAR2(20 BYTE), 
	"PUNCTURE" NUMBER(26,6), 
	"TUBE" NUMBER(26,6), 
	"EXPENSE" NUMBER(26,6), 
	"STATUS" NUMBER(5,0), 
	"REASON" VARCHAR2(50 BYTE), 
	"USR_ID_CREATE" NUMBER(5,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(5,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT INSERT ON "SLS"."SLS$TRNP$TYR$REG$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$TYR$REG$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$TYR$REG$DTL" TO PUBLIC;
