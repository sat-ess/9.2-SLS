--------------------------------------------------------
--  DDL for Table SLS$UNQ$DISP$ID
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$UNQ$DISP$ID" 
   (	"TXN_ID" VARCHAR2(50 BYTE), 
	"SOURCE_INFO" VARCHAR2(100 BYTE), 
	"STATUS" VARCHAR2(1 BYTE), 
	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(1,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"WH_ID" VARCHAR2(10 BYTE), 
	"DOC_ID" NUMBER(10,0), 
	"DOC_HEX_ID" VARCHAR2(50 BYTE), 
	"DOC_TYPE_ID" NUMBER(10,0) DEFAULT NULL, 
	"TABLENAME" VARCHAR2(30 BYTE), 
	"FY_ID" NUMBER(10,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD_DT" DATE
   ) ;