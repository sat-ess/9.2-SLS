--------------------------------------------------------
--  DDL for Table SLS$TRNP$BULK$VR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$BULK$VR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"DISP_ID" VARCHAR2(20 BYTE), 
	"DRFT_DISP_ID" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"FY_ID" NUMBER(10,0), 
	"LR_STATUS" NUMBER(10,0), 
	"FREEZE" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CURR_ID_SP" NUMBER(20,0), 
	"CURR_CONV_FCTR" NUMBER(26,6), 
	"DOC_TYP_ID" NUMBER(20,0)
   ) ;
  GRANT INSERT ON "SLS"."SLS$TRNP$BULK$VR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$BULK$VR" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$BULK$VR" TO PUBLIC;
