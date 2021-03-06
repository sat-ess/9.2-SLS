--------------------------------------------------------
--  DDL for Table SLS$DC$STAGE
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$DC$STAGE" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"STAGE_ID" NUMBER(5,0), 
	"STAGE_NM" VARCHAR2(50 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"STG_PERC" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT SELECT ON "SLS"."SLS$DC$STAGE" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$DC$STAGE" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$DC$STAGE" TO PUBLIC;
