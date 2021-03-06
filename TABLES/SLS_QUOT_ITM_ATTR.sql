--------------------------------------------------------
--  DDL for Table SLS$QUOT$ITM$ATTR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$QUOT$ITM$ATTR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 0, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"QUOT_QTY" NUMBER(26,6), 
	"WIDTH" NUMBER(26,6), 
	"HEIGHT" NUMBER(26,6), 
	"LENGTH" NUMBER(26,6), 
	"DIAMETRER" NUMBER(26,6), 
	"THICKNESS" NUMBER(26,6), 
	"GAUGE" NUMBER(26,6), 
	"DENSITY" NUMBER(26,6), 
	"COLOR" VARCHAR2(10 BYTE), 
	"ITEM_BRAND" VARCHAR2(50 BYTE), 
	"SR_NO" NUMBER(10,0), 
	"ROLL_SHEET" NUMBER(10,0)
   ) ;
