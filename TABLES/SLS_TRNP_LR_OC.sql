--------------------------------------------------------
--  DDL for Table SLS$TRNP$LR$OC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$LR$OC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DEPARTURE_PNT" VARCHAR2(20 BYTE), 
	"ARRIVAL_PNT" VARCHAR2(20 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"TRAN_TYPE" VARCHAR2(2 BYTE), 
	"OC_ID" VARCHAR2(20 BYTE), 
	"AMT_SP_OC" NUMBER(26,6), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"OC_CAT" NUMBER(20,0), 
	"CURR_ID" NUMBER(10,0), 
	"CURR_RATE" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT SELECT ON "SLS"."SLS$TRNP$LR$OC" TO "APP";
  GRANT SELECT ON "SLS"."SLS$TRNP$LR$OC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$LR$OC" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TRNP$LR$OC" TO PUBLIC;
