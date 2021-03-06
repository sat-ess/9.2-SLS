--------------------------------------------------------
--  DDL for Table SLS$SHIPMNT$ITM$RCPT$CHAR$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SHIPMNT$ITM$RCPT$CHAR$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"SO_ID" VARCHAR2(40 BYTE), 
	"PICK_ID" VARCHAR2(40 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"COMP_NO" VARCHAR2(30 BYTE), 
	"COMP_SIZE" VARCHAR2(30 BYTE), 
	"ULLAGE" VARCHAR2(30 BYTE), 
	"TOP" VARCHAR2(30 BYTE), 
	"BOTTOM" VARCHAR2(30 BYTE), 
	"SR_NO" NUMBER(10,0), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1
   ) ;
  GRANT INSERT ON "SLS"."SLS$SHIPMNT$ITM$RCPT$CHAR$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SHIPMNT$ITM$RCPT$CHAR$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SHIPMNT$ITM$RCPT$CHAR$DTL" TO PUBLIC;
