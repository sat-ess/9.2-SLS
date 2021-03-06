--------------------------------------------------------
--  DDL for Table SLS$SO$DLV$SCHDL$ASMBL$LOT
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_ID_COMP" VARCHAR2(50 BYTE), 
	"LOT_ID_COMP" VARCHAR2(50 BYTE), 
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
  GRANT ALTER ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$SO$DLV$SCHDL$ASMBL$LOT" TO PUBLIC;
