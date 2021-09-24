--------------------------------------------------------
--  DDL for Table SLS$SEI$SRC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SEI$SRC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE), 
	"DOC_ID_SRC_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"SRC_TYPE" NUMBER(10,0), 
	"SRC_DISP_ID" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(20,0)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$SEI$SRC"."EO_ID" IS 'to store customer for invoice.';
  GRANT UPDATE ON "SLS"."SLS$SEI$SRC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SEI$SRC" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SEI$SRC" TO PUBLIC;
