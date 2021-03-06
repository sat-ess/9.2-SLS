--------------------------------------------------------
--  DDL for Table SLS$SUBC$BLK$INV$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SUBC$BLK$INV$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SLCTD" VARCHAR2(1 BYTE), 
	"SO_DISP_ID" VARCHAR2(20 BYTE), 
	"SO_DOC_ID" VARCHAR2(40 BYTE), 
	"SO_PMNT_SCHDL_DT" DATE, 
	"ERR_DATA" VARCHAR2(250 BYTE), 
	"INV_STAT" NUMBER(10,0), 
	"INV_DOC_ID" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"REMARKS" VARCHAR2(1000 BYTE), 
	"TOTAL_AMT_SP" NUMBER(26,6), 
	"TOTAL_AMT_BS" NUMBER(26,6), 
	"SUBC_INV_DISP_ID" VARCHAR2(40 BYTE), 
	"INVC_SUB_TYP" NUMBER(5,0) DEFAULT 0
   ) ;
  GRANT INSERT ON "SLS"."SLS$SUBC$BLK$INV$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SUBC$BLK$INV$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SUBC$BLK$INV$DTL" TO PUBLIC;
