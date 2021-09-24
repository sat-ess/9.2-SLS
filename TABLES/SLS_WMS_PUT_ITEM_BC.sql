--------------------------------------------------------
--  DDL for Table SLS$WMS$PUT$ITEM$BC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$WMS$PUT$ITEM$BC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(4 BYTE), 
	"HO_ORG_ID" VARCHAR2(4 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_QTY" NUMBER(26,6) DEFAULT 0, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"EO_ID" NUMBER(5,0), 
	"DEPARTURE_PNT" VARCHAR2(20 BYTE), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE), 
	"ARRIVAL_PNT" VARCHAR2(20 BYTE), 
	"DLV_DT" DATE, 
	"WH_ID" VARCHAR2(10 BYTE), 
	"VERIFIED_STATUS" CHAR(1 BYTE) DEFAULT 'N', 
	"ITM_COLOR" VARCHAR2(20 BYTE), 
	"ITM_U_SR_NO" VARCHAR2(100 BYTE), 
	"QR_STRING" VARCHAR2(100 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$WMS$PUT$ITEM$BC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$WMS$PUT$ITEM$BC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$WMS$PUT$ITEM$BC" TO PUBLIC;
