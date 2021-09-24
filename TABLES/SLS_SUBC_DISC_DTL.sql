--------------------------------------------------------
--  DDL for Table SLS$SUBC$DISC$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SUBC$DISC$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(1,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"MIN_AMT_FR_DISC" NUMBER(26,6), 
	"MAX_AMT_FR_DISC" NUMBER(26,6), 
	"DISC_TYPE" VARCHAR2(1 BYTE), 
	"DISC_VAL" NUMBER(26,6), 
	"DISC_APPLCBL_ON_AMT" NUMBER(26,6), 
	"S_NO" NUMBER(10,0)
   ) ;
