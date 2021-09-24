--------------------------------------------------------
--  DDL for Table SLS$INV$RPT$CNT
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INV$RPT$CNT" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"RPT_CNT" NUMBER(20,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"RPT_NM" VARCHAR2(100 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$INV$RPT$CNT" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$INV$RPT$CNT" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$INV$RPT$CNT" TO PUBLIC;
