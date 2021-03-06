--------------------------------------------------------
--  DDL for Table SLS$TRNP$VHCL$SCHDL$DRFT
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$VHCL$SCHDL$DRFT" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(4 BYTE), 
	"HO_ORG_ID" VARCHAR2(4 BYTE), 
	"TXN_DOC_ID" VARCHAR2(40 BYTE), 
	"STATUS" NUMBER(5,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"FY_ID" NUMBER(10,0)
   ) ;
  GRANT INSERT ON "SLS"."SLS$TRNP$VHCL$SCHDL$DRFT" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$VHCL$SCHDL$DRFT" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$VHCL$SCHDL$DRFT" TO PUBLIC;
