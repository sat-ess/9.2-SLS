--------------------------------------------------------
--  DDL for Table SLS$SO$FLX_231019
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$FLX_231019" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"FIELD_ID" VARCHAR2(20 BYTE), 
	"FIELD_VAL" VARCHAR2(500 BYTE), 
	"DATA_TYPE" NUMBER(5,0), 
	"DATA_LEN" NUMBER(5,0), 
	"REQD" VARCHAR2(1 BYTE), 
	"USR_ID_CREATE" NUMBER(10,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(10,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
