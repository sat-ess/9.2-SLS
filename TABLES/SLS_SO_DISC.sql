--------------------------------------------------------
--  DDL for Table SLS$SO$DISC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$DISC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"DISC_BASIS" NUMBER(5,0), 
	"DISC_TYPE" VARCHAR2(1 BYTE), 
	"DISC_VAL" NUMBER(26,6), 
	"DISC_AMT_SP" NUMBER(20,0), 
	"DISC_AMT_BS" NUMBER(10,0), 
	"DISC_SEL_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1
   ) ;
  GRANT INSERT ON "SLS"."SLS$SO$DISC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$DISC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$DISC" TO PUBLIC;
