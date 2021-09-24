--------------------------------------------------------
--  DDL for Table SLS$EO$PRICE$LOC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$EO$PRICE$LOC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(5,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"LOC_ID" VARCHAR2(20 BYTE), 
	"ITM_PRICE" NUMBER(26,6), 
	"ITM_PRICE_BS" NUMBER(26,6)
   ) ;
  GRANT INSERT ON "SLS"."SLS$EO$PRICE$LOC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$EO$PRICE$LOC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$EO$PRICE$LOC" TO PUBLIC;
