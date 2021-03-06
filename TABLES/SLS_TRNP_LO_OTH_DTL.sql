--------------------------------------------------------
--  DDL for Table SLS$TRNP$LO$OTH$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$LO$OTH$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SL_NO" NUMBER(5,0), 
	"EMP_TYPE" NUMBER(5,0), 
	"EMP_ID" NUMBER(20,0), 
	"EMP_NM" VARCHAR2(250 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT INSERT ON "SLS"."SLS$TRNP$LO$OTH$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$LO$OTH$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$LO$OTH$DTL" TO PUBLIC;
