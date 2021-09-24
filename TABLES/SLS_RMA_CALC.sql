--------------------------------------------------------
--  DDL for Table SLS$RMA$CALC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$RMA$CALC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"CURR_ID_SP" NUMBER(10,0), 
	"CURR_CONV_RATE" NUMBER(10,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TAXABL_VAL" NUMBER(26,6), 
	"COA_NM" VARCHAR2(100 BYTE), 
	"SR_NO" NUMBER(10,0), 
	"TRAN_TYPE" VARCHAR2(2 BYTE), 
	"CURR_ID_BS" NUMBER(10,0), 
	"CC_ID" VARCHAR2(45 BYTE)
   ) ;
  GRANT UPDATE ON "SLS"."SLS$RMA$CALC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$RMA$CALC" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$RMA$CALC" TO PUBLIC;
