--------------------------------------------------------
--  DDL for Table SLS$PACK$PCK$MTL$SR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PACK$PCK$MTL$SR" 
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
	"SR_NO" VARCHAR2(100 BYTE), 
	"PCK_QTY" NUMBER(26,6), 
	"PCK_QTY_BS" NUMBER(26,6), 
	"PRJ_ID" VARCHAR2(40 BYTE) DEFAULT 'PROJ0000'
   ) ;
  GRANT UPDATE ON "SLS"."SLS$PACK$PCK$MTL$SR" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$PACK$PCK$MTL$SR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PACK$PCK$MTL$SR" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$PACK$PCK$MTL$SR" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";
  GRANT DEBUG ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";
  GRANT DELETE ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";
  GRANT FLASHBACK ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";
  GRANT INDEX ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";
  GRANT INSERT ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";
  GRANT QUERY REWRITE ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";
  GRANT REFERENCES ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";
  GRANT SELECT ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";
  GRANT UPDATE ON "SLS"."SLS$PACK$PCK$MTL$SR" TO "MM";