--------------------------------------------------------
--  DDL for Table SLS$PRIC$BUILDR$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PRIC$BUILDR$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"CATG_ID" NUMBER(5,0), 
	"ITM_ID" VARCHAR2(40 BYTE), 
	"PACK_SIZE" NUMBER(5,0), 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"PKNG_COST_PR_UNIT" NUMBER(26,6), 
	"FREIGHT_VAL" NUMBER(26,6), 
	"ITM_PRICE" NUMBER(26,6), 
	"ITM_PRICE_OLD" NUMBER(26,6), 
	"PRICE_PER_BUNDL" NUMBER(26,6), 
	"PRICE_DIFF_PERC" NUMBER(26,6), 
	"ITM_PRICE_PER_KG" NUMBER(26,6), 
	"OLD_ITM_PRICE_PER_KG" NUMBER(26,6), 
	"PRICE_DIFF_KG_PERC" NUMBER(26,6), 
	"WEIGHT_PER_KG" NUMBER(26,6), 
	"EFFECTIVE_DT" TIMESTAMP (6), 
	"EXTERNAL_COMP_COST" NUMBER(26,6), 
	"USR_ID_MOD" NUMBER(5,0), 
	"ITM_GROUP" VARCHAR2(40 BYTE), 
	"USR_ID_CREATE" NUMBER(5,0)
   ) ;
