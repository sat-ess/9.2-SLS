--------------------------------------------------------
--  DDL for Table SLS$GEN$OPP$INTER
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$GEN$OPP$INTER" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(1,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"EO_ID" NUMBER(5,0), 
	"EO_CATG" NUMBER(5,0), 
	"USR_ID" NUMBER(5,0), 
	"USR_DT" DATE, 
	"ITM_ID" VARCHAR2(20 BYTE), 
	"ITM_QTY" NUMBER(26,6), 
	"ITM_PRICE" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"LEAD_TYPE" NUMBER(5,0), 
	"LEAD_SUB_TYPE" VARCHAR2(20 BYTE), 
	"LEAD_VAL" NUMBER(26,6), 
	"LEAD_NM" VARCHAR2(100 BYTE), 
	"LEAD_PLC" VARCHAR2(100 BYTE), 
	"LEAD_DT" DATE, 
	"EO_PER_NM" VARCHAR2(50 BYTE), 
	"EO_PER_ADD" VARCHAR2(50 BYTE), 
	"EO_PER_EMAIL1" VARCHAR2(50 BYTE), 
	"EO_PER_EMAIL2" VARCHAR2(50 BYTE), 
	"EO_PHON_NO" VARCHAR2(50 BYTE), 
	"EO_MOB_NO" VARCHAR2(20 BYTE), 
	"DLV_SRVC" NUMBER(5,0), 
	"DLV_SRVC_DESC" VARCHAR2(50 BYTE), 
	"NO_OF_STRS" NUMBER(10,0), 
	"MRKTNG_CMPNY_NM" VARCHAR2(100 BYTE), 
	"SR_NO" NUMBER(4,0), 
	"PORT_ID" VARCHAR2(20 BYTE), 
	"CURR_ID_SP" NUMBER(10,0), 
	"CURR_RATE" NUMBER(26,6), 
	"CURR_ID_BS" NUMBER(10,0), 
	"DLV_TYPE" NUMBER(5,0), 
	"DLV_TYPE_DESC" VARCHAR2(50 BYTE), 
	"UOM_CONV_FCTR" NUMBER(26,6)
   ) ;
  GRANT INSERT ON "SLS"."SLS$GEN$OPP$INTER" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$GEN$OPP$INTER" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$GEN$OPP$INTER" TO PUBLIC;