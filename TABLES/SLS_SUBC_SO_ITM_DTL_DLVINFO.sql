--------------------------------------------------------
--  DDL for Table SLS$SUBC$SO$ITM$DTL$DLVINFO
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SUBC$SO$ITM$DTL$DLVINFO" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_SR_NO" NUMBER(10,0), 
	"DLV_LOC" VARCHAR2(40 BYTE), 
	"DLV_INFO" VARCHAR2(100 BYTE), 
	"CONTCT_PRSN" VARCHAR2(100 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
