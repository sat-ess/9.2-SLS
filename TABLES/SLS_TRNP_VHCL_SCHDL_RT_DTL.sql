--------------------------------------------------------
--  DDL for Table SLS$TRNP$VHCL$SCHDL$RT$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$VHCL$SCHDL$RT$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DEPARTURE_PNT" VARCHAR2(20 BYTE), 
	"ARRIVAL_PNT" VARCHAR2(20 BYTE), 
	"SL_NO" NUMBER(5,0), 
	"DISTANCE" NUMBER(22,6), 
	"UOM_DIST" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"EO_ID" NUMBER(20,0), 
	"CURR_ID_SP" NUMBER(20,0), 
	"DEPARTURE_DATE" DATE, 
	"ARRIVAL_DATE" DATE, 
	"LR_DOC_ID" VARCHAR2(40 BYTE)
   ) ;
  GRANT UPDATE ON "SLS"."SLS$TRNP$VHCL$SCHDL$RT$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$VHCL$SCHDL$RT$DTL" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TRNP$VHCL$SCHDL$RT$DTL" TO PUBLIC;
