--------------------------------------------------------
--  DDL for Table SLS$TRNP$OL$ROUTE$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$OL$ROUTE$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DEPARTURE_PNT" VARCHAR2(20 BYTE), 
	"DEPARTURE_DATE" DATE, 
	"ARRIVAL_PNT" VARCHAR2(20 BYTE), 
	"ARRIVAL_DATE" DATE, 
	"STRT_READ" NUMBER(20,0), 
	"END_READ" NUMBER(20,0), 
	"UOM" VARCHAR2(20 BYTE), 
	"RATE" NUMBER(26,6), 
	"ACT_VAL" NUMBER(26,6), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"SL_NO" NUMBER(5,0), 
	"REMARKS" VARCHAR2(200 BYTE), 
	"VHCL_STATUS" VARCHAR2(1 BYTE) DEFAULT 'L'
   ) ;
  GRANT UPDATE ON "SLS"."SLS$TRNP$OL$ROUTE$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$OL$ROUTE$DTL" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TRNP$OL$ROUTE$DTL" TO PUBLIC;
