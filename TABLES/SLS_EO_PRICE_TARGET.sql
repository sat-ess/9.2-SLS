--------------------------------------------------------
--  DDL for Table SLS$EO$PRICE$TARGET
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$EO$PRICE$TARGET" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"GRP_ID" VARCHAR2(50 BYTE), 
	"TARGET_DATE" DATE, 
	"TARGET_QTY" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(20,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT INSERT ON "SLS"."SLS$EO$PRICE$TARGET" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$EO$PRICE$TARGET" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$EO$PRICE$TARGET" TO PUBLIC;
