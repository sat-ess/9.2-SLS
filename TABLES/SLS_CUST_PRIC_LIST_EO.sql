--------------------------------------------------------
--  DDL for Table SLS$CUST$PRIC$LIST$EO
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$CUST$PRIC$LIST$EO" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"CATG_ID" NUMBER(5,0), 
	"EO_ID" NUMBER(5,0), 
	"PRIC_LIST_TYPE" VARCHAR2(2 BYTE), 
	"ACTV" VARCHAR2(1 BYTE) DEFAULT 'Y', 
	"USR_ID_CREATE" NUMBER(5,0), 
	"USR_ID_MOD" NUMBER(5,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD_DT" DATE
   ) ;
