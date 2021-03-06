--------------------------------------------------------
--  DDL for Table SLS$CCP$INV$ADJ$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$CCP$INV$ADJ$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE), 
	"DOC_ID_SRC_DT" DATE, 
	"EO_ID" NUMBER, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"SALES_VOU_ID" VARCHAR2(40 BYTE), 
	"ADJ_MST_VOU_ID" VARCHAR2(40 BYTE), 
	"RADJ_VOU_ID" VARCHAR2(40 BYTE), 
	"ADJUST_VOU_AMT" NUMBER
   ) ;
  GRANT INSERT ON "SLS"."SLS$CCP$INV$ADJ$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$CCP$INV$ADJ$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$CCP$INV$ADJ$DTL" TO PUBLIC;
