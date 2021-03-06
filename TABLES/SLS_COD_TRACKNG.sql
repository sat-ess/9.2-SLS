--------------------------------------------------------
--  DDL for Table SLS$COD$TRACKNG
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$COD$TRACKNG" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"EO_ID" NUMBER(5,0), 
	"DISP_DOC_ID" VARCHAR2(40 BYTE), 
	"EXPCTD_DELVRY_DT" DATE, 
	"DOC_STAT" NUMBER(5,0), 
	"DOC_TYPE" NUMBER(5,0), 
	"INV_DISP_DOC_ID" VARCHAR2(40 BYTE), 
	"INV_DOC_ID" VARCHAR2(40 BYTE), 
	"INV_DOC_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"FREIGHT_AMT" NUMBER(26,6), 
	"SHIP_WEIGHT" NUMBER(26,6), 
	"NO_OF_BOXES" NUMBER(5,0), 
	"DOCKET_NO" VARCHAR2(40 BYTE), 
	"REMARKS" VARCHAR2(250 BYTE), 
	"DELV_MODE" NUMBER(5,0), 
	"COURIER_AGENT" NUMBER(5,0), 
	"PROJ_ID" VARCHAR2(40 BYTE), 
	"DLVRD_FLG" VARCHAR2(1 BYTE), 
	"DELVRY_DT" DATE, 
	"POD_RCV_DT" DATE, 
	"INSTRMNT_AMT" NUMBER(26,6), 
	"INSTRMNT_DT" DATE, 
	"INSTRMNT_NO" NUMBER(5,0), 
	"DRAWEE_BNK" VARCHAR2(40 BYTE), 
	"INV_AMT" NUMBER(26,6), 
	"BAL_AMT" NUMBER(26,6), 
	"EO_COD_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"DISPATCH_DT" DATE, 
	"EO_BILL_ADDS" VARCHAR2(50 BYTE)
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$COD$TRACKNG" TO PUBLIC;
