--------------------------------------------------------
--  DDL for Table SLS$SUBC$RATE$CONTR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SUBC$RATE$CONTR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"FY_ID" NUMBER(5,0), 
	"CAT_ID" NUMBER(10,0), 
	"ITEM_ID" VARCHAR2(20 BYTE), 
	"RATE_BASIS" NUMBER(10,0), 
	"BASE_PRICE" NUMBER(26,6), 
	"RATE" NUMBER(26,6), 
	"MIN_CIRCULATION" NUMBER(26,6), 
	"MAX_CIRCULATION" NUMBER(26,6), 
	"MIN_AMOUNT" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"EFFECTIVE_DT" DATE, 
	"ALLW_PRICE" VARCHAR2(2 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$SUBC$RATE$CONTR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SUBC$RATE$CONTR" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SUBC$RATE$CONTR" TO PUBLIC;
