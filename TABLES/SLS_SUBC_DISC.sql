--------------------------------------------------------
--  DDL for Table SLS$SUBC$DISC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SUBC$DISC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(1,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"CATG_ID" NUMBER(10,0), 
	"ITM_ID" VARCHAR2(40 BYTE), 
	"MIN_AMT_FR_DISC" NUMBER(26,6), 
	"MAX_AMT_FR_DISC" NUMBER(26,6), 
	"DISC_TYPE" VARCHAR2(1 BYTE), 
	"DISC_VAL" NUMBER(26,6), 
	"INCR_APPL_AMT" NUMBER(26,6), 
	"INCRMNTL_DISC" NUMBER(26,6), 
	"MAX_INCRMNTL_DISC" NUMBER(26,6), 
	"DISC_APPLCBL_ON_AMT" NUMBER(26,6), 
	"DOC_ID" VARCHAR2(40 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$SUBC$DISC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SUBC$DISC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SUBC$DISC" TO PUBLIC;