--------------------------------------------------------
--  DDL for Table SLS$EO$FIRST$PRICE$LIST_TEMP
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$EO$FIRST$PRICE$LIST_TEMP" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"CATG_ID" NUMBER(10,0), 
	"EFFECTIVE_DT" TIMESTAMP (8), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(20,0), 
	"USR_ID_MOD_DT" DATE, 
	"EXPR_DT" DATE, 
	"INS_FROM" VARCHAR2(2 BYTE), 
	"PRICE_BS_UOM" NUMBER(26,6), 
	"PACK_SIZE" NUMBER, 
	"GROUP_ID" VARCHAR2(255 BYTE)
   ) ;
