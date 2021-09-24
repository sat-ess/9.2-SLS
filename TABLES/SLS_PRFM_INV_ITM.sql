--------------------------------------------------------
--  DDL for Table SLS$PRFM$INV$ITM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PRFM$INV$ITM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"SO_ID" VARCHAR2(40 BYTE), 
	"DLV_DT" DATE, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_RATE" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"UOM_CONV_FCTR" NUMBER(26,6), 
	"DLV_QTY_SP" NUMBER(26,6), 
	"DLV_QTY_BS" NUMBER(26,6), 
	"ITM_DISC_TYP" VARCHAR2(1 BYTE), 
	"ITM_DISC_VAL" NUMBER(26,6), 
	"ITM_AMT_BS" NUMBER(26,6), 
	"ITM_AMT_SP" NUMBER(26,6), 
	"REMARKS" VARCHAR2(1000 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TAX_RULE_FLG" VARCHAR2(1 BYTE), 
	"ITM_AMT_GS_SP" NUMBER(26,6), 
	"ITM_AMT_GS_BS" NUMBER(26,6), 
	"ASBL_AMT_BS" NUMBER(26,6), 
	"ASBL_AMT_SP" NUMBER(26,6), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0, 
	"INCL_TX" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRJ_ID" VARCHAR2(40 BYTE) DEFAULT 'PROJ0000', 
	"PI_QTY_SP" NUMBER(26,6) DEFAULT 0, 
	"PI_QTY_BS" NUMBER(26,6) DEFAULT 0, 
	"TAXABL_AMT_SP" NUMBER(26,6) DEFAULT 0, 
	"TAXABL_AMT_BS" NUMBER(26,6) DEFAULT 0, 
	"TAX_RULE_ID" NUMBER(10,0), 
	"OC_AMT_SP" NUMBER(26,6), 
	"OC_AMT_BS" NUMBER(26,6), 
	"TAX_AMT_SP" NUMBER(26,6), 
	"TAX_AMT_BS" NUMBER(26,6)
   ) ;
  GRANT SELECT ON "SLS"."SLS$PRFM$INV$ITM" TO "APP";
  GRANT INSERT ON "SLS"."SLS$PRFM$INV$ITM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PRFM$INV$ITM" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$PRFM$INV$ITM" TO PUBLIC;