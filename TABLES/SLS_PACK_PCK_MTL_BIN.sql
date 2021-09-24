--------------------------------------------------------
--  DDL for Table SLS$PACK$PCK$MTL$BIN
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PACK$PCK$MTL$BIN" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"PICK_ID" VARCHAR2(40 BYTE), 
	"LOT_ID" VARCHAR2(20 BYTE), 
	"BIN_ID" VARCHAR2(20 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"PCK_QTY" NUMBER(26,6), 
	"PCK_QTY_BS" NUMBER(26,6), 
	"PRJ_ID" VARCHAR2(40 BYTE) DEFAULT 'PROJ0000'
   ) ;
  GRANT SELECT ON "SLS"."SLS$PACK$PCK$MTL$BIN" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$PACK$PCK$MTL$BIN" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$PACK$PCK$MTL$BIN" TO PUBLIC;