--------------------------------------------------------
--  DDL for Table SLS$CR$LMT$LOG
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$CR$LMT$LOG" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(1,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"GLBL_DOC_ID" NUMBER(20,0), 
	"P_DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"COA_ID" NUMBER(20,0), 
	"CURR_ID_SP" NUMBER(20,0), 
	"ASON_DT" DATE, 
	"FUN_FLG" VARCHAR2(1 BYTE), 
	"CALL_BY" VARCHAR2(50 BYTE), 
	"P_MODE" VARCHAR2(1 BYTE), 
	"P_RET_MODE" VARCHAR2(1 BYTE), 
	"CR_LIMIT" NUMBER, 
	"ORD_BAL" NUMBER, 
	"PAID_VAL" NUMBER, 
	"ADV_BAL" NUMBER, 
	"BALC_VAL" NUMBER, 
	"CR_BAL" NUMBER, 
	"CR_DT" DATE
   ) ;
