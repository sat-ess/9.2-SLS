--------------------------------------------------------
--  DDL for Table SLS$CUST$BARCODE$ATT
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$CUST$BARCODE$ATT" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(1,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"ATT_NM" VARCHAR2(20 BYTE), 
	"SEQ_NO" NUMBER(26,6), 
	"SMPL_VAL" VARCHAR2(30 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"SMPL_VAL_NUM" NUMBER(26,6), 
	"SMPL_VAL_DATE" DATE
   ) ;
