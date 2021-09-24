--------------------------------------------------------
--  DDL for Table SLS$COD$TRACKNG$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$COD$TRACKNG$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"EO_ID" NUMBER(5,0), 
	"SR_NO" NUMBER(5,0), 
	"INSTRMNT_AMT" NUMBER(26,6), 
	"INSTRMNT_DT" DATE, 
	"INSTRMNT_NO" NUMBER(6,0), 
	"DRAWEE_BNK" VARCHAR2(40 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE
   ) ;
