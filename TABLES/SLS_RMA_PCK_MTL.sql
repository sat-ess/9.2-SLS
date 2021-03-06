--------------------------------------------------------
--  DDL for Table SLS$RMA$PCK$MTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$RMA$PCK$MTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SHIPMNT_ID" VARCHAR2(40 BYTE), 
	"PICK_ID" VARCHAR2(40 BYTE), 
	"SO_ID" VARCHAR2(40 BYTE), 
	"RCPT_ITM_ID" VARCHAR2(50 BYTE), 
	"RCPT_ITM_SR_NO" NUMBER(10,0), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"PCK_ITM_QTY" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"PCK_ITM_QTY_BS" NUMBER(26,6), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"UOM_CONV_FCTR" NUMBER(26,6) DEFAULT 1, 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"PRJ_ID" VARCHAR2(40 BYTE) DEFAULT 'PROJ0000', 
	"GP_ID" VARCHAR2(40 BYTE), 
	"RET_QTY_BS" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT INSERT ON "SLS"."SLS$RMA$PCK$MTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$RMA$PCK$MTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$RMA$PCK$MTL" TO PUBLIC;
