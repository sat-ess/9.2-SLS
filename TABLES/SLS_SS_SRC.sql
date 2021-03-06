--------------------------------------------------------
--  DDL for Table SLS$SS$SRC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SS$SRC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE), 
	"DOC_ID_SRC_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"SRC_TYPE" NUMBER(10,0), 
	"SRC_DISP_DOC_ID" VARCHAR2(40 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$SS$SRC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SS$SRC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SS$SRC" TO PUBLIC;
