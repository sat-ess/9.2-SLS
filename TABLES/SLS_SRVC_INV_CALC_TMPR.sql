--------------------------------------------------------
--  DDL for Table SLS$SRVC$INV$CALC$TMPR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SRVC$INV$CALC$TMPR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"SR_NO" NUMBER(10,0), 
	"TRAN_TYPE" VARCHAR2(2 BYTE), 
	"CC_ID" VARCHAR2(45 BYTE)
   ) ;
