--------------------------------------------------------
--  DDL for Table SLS$SUBC$ITM$DTL$DLVINFO$PR$DT
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SUBC$ITM$DTL$DLVINFO$PR$DT" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"TECH_CONTACT_NM" VARCHAR2(40 BYTE), 
	"TECH_CONTACH_NO" VARCHAR2(20 BYTE), 
	"DLV_LOCATION_ID" VARCHAR2(500 BYTE), 
	"USR_ID_CREATE" NUMBER(5,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(5,0), 
	"USR_ID_MOD_DT" DATE, 
	"DLVR_TYPE_ID" NUMBER(5,0), 
	"DLV_MODE_ID" NUMBER(5,0), 
	"TECH_EMAIL" VARCHAR2(300 BYTE), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE)
   ) ;
