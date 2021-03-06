--------------------------------------------------------
--  DDL for Table SLS$TRNP$BULK$VR$ITM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$BULK$VR$ITM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SRC_DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"DLV_SCHDL_NO" NUMBER(4,0), 
	"DLV_DT" DATE, 
	"TOT_QTY" NUMBER(26,6), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"ITM_UOM_SP" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"DLV_QTY" NUMBER(26,6), 
	"SCHM_FLG" VARCHAR2(1 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$TRNP$BULK$VR$ITM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$BULK$VR$ITM" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$BULK$VR$ITM" TO PUBLIC;
