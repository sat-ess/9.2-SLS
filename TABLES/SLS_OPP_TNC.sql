--------------------------------------------------------
--  DDL for Table SLS$OPP$TNC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$OPP$TNC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"TNC_ID" NUMBER(10,0), 
	"PRIORITY" NUMBER(2,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT INSERT ON "SLS"."SLS$OPP$TNC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$OPP$TNC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$OPP$TNC" TO PUBLIC;
