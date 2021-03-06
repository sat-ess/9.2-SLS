--------------------------------------------------------
--  DDL for Table SLS$SO$ITM$UPLOAD$CORRUPT
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$ITM$UPLOAD$CORRUPT" 
   (	"ITEM_ID" VARCHAR2(40 BYTE), 
	"ITM_RATE" NUMBER(26,6), 
	"ITM_QTY" NUMBER(26,6), 
	"TLRNC_QTY_TYPE" VARCHAR2(1 BYTE), 
	"TLRNC_QTY_VAL" NUMBER(26,6), 
	"ITM_DISC_TYP" VARCHAR2(1 BYTE), 
	"ITM_DISC_VAL" NUMBER(26,6), 
	"ITEM_UOM" VARCHAR2(20 BYTE), 
	"ITM_AMT_SP" NUMBER(26,6), 
	"ITM_AMT_BS" NUMBER(26,6), 
	"ASBL_AMT_SP" NUMBER(26,6), 
	"ITM_BASIS" NUMBER(5,0), 
	"FETCH_ITM_PRICE" VARCHAR2(1 BYTE), 
	"ITEM_DESC" VARCHAR2(100 BYTE), 
	"CLD_ID" VARCHAR2(4 BYTE) DEFAULT '0000', 
	"SLOC_ID" NUMBER(2,0) DEFAULT 1, 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"COLOR_ATT_GRP_ID" VARCHAR2(20 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$SO$ITM$UPLOAD$CORRUPT" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$ITM$UPLOAD$CORRUPT" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$ITM$UPLOAD$CORRUPT" TO PUBLIC;
