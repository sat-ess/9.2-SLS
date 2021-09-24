--------------------------------------------------------
--  DDL for Table SLS$RMA$ISSU$ASMBL$SR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$RMA$ISSU$ASMBL$SR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_ID_COMP" VARCHAR2(50 BYTE), 
	"LOT_ID_COMP" VARCHAR2(50 BYTE), 
	"BIN_ID_COMP" VARCHAR2(50 BYTE), 
	"SR_NO_COMP" VARCHAR2(50 BYTE), 
	"TOT_QTY" NUMBER(26,6), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"UOM_CONV_FCTR" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$RMA$ISSU$ASMBL$SR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$RMA$ISSU$ASMBL$SR" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$RMA$ISSU$ASMBL$SR" TO PUBLIC;