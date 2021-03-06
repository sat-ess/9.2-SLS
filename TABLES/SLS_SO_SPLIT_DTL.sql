--------------------------------------------------------
--  DDL for Table SLS$SO$SPLIT$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$SPLIT$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_QTY" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"SPLIT_FLAG" VARCHAR2(5 BYTE) DEFAULT 'N'
   ) ;
  GRANT INSERT ON "SLS"."SLS$SO$SPLIT$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$SPLIT$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$SPLIT$DTL" TO PUBLIC;
