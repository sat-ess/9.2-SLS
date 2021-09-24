--------------------------------------------------------
--  DDL for Table SLS$CUST$PRIC$LIST$ITM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$CUST$PRIC$LIST$ITM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"CATG_ID" NUMBER(5,0), 
	"ITM_ID" VARCHAR2(40 BYTE), 
	"PACK_SIZE" NUMBER(5,0), 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"ITM_UOM_SP" VARCHAR2(20 BYTE), 
	"ITM_PRICE" NUMBER(26,6), 
	"ITM_PRICE_OLD" NUMBER(26,6), 
	"EFFECTIVE_DT" TIMESTAMP (6), 
	"EXPRY_DT" TIMESTAMP (6), 
	"PRIC_LIST_TYPE" VARCHAR2(2 BYTE), 
	"CUST_PRIC_STP_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"USR_ID_CREATE" NUMBER(5,0), 
	"USR_ID_MOD" NUMBER(5,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD_DT" DATE, 
	"ITM_ATTRIBUTE" VARCHAR2(40 BYTE) DEFAULT '0', 
	"ITM_GROUP" VARCHAR2(40 BYTE)
   ) ;
