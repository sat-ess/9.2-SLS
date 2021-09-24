--------------------------------------------------------
--  DDL for Table SLS$TRNP$VHCL$SCHDL$ITM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$VHCL$SCHDL$ITM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(4 BYTE), 
	"HO_ORG_ID" VARCHAR2(4 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"LR_DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_SR_NO" NUMBER(5,0), 
	"ITM_QTY" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_QTY_BS" NUMBER(26,6), 
	"UOM_CONV_FCTR" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"ITM_RATE" NUMBER(26,6), 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"ITM_WT" NUMBER(26,6), 
	"EO_ID" NUMBER(5,0), 
	"DEPARTURE_PNT" VARCHAR2(20 BYTE), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE), 
	"ARRIVAL_PNT" VARCHAR2(20 BYTE), 
	"ITM_CONV_WT" NUMBER(26,6), 
	"SCHDL_NO" NUMBER DEFAULT 1, 
	"DLV_DT" DATE DEFAULT to_date(SYSDATE,'DD-MM-YY'), 
	"WH_ID" VARCHAR2(10 BYTE) DEFAULT '0', 
	"SCHM_FLG" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) ;
  GRANT INSERT ON "SLS"."SLS$TRNP$VHCL$SCHDL$ITM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$VHCL$SCHDL$ITM" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$VHCL$SCHDL$ITM" TO PUBLIC;
