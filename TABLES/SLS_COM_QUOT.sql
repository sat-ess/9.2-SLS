--------------------------------------------------------
--  DDL for Table SLS$COM$QUOT
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$COM$QUOT" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"EO_ID" NUMBER(20,0), 
	"COM_QUOT_STAT" NUMBER(10,0), 
	"VALID_TO_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"COM_QUOT_ID" VARCHAR2(20 BYTE), 
	"FY_ID" NUMBER(5,0), 
	"COM_QUOT_MODE" NUMBER(10,0), 
	"ASSIGNED_TO" NUMBER(10,0), 
	"REMARKS" VARCHAR2(1000 BYTE), 
	"CURR_ID_BS" NUMBER(10,0), 
	"AMD_NO" VARCHAR2(40 BYTE), 
	"AMD_DT" DATE, 
	"SUP_CURR_ID_SP" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$COM$QUOT"."SUP_CURR_ID_SP" IS 'Tentative supplier currency, to be used as common currency for each item.';
  GRANT UPDATE ON "SLS"."SLS$COM$QUOT" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$COM$QUOT" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$COM$QUOT" TO PUBLIC;
