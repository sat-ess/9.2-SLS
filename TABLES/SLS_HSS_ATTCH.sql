--------------------------------------------------------
--  DDL for Table SLS$HSS$ATTCH
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$HSS$ATTCH" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ATTCH_FL_ID" VARCHAR2(50 BYTE), 
	"ATTCH_FL_EXTN" VARCHAR2(200 BYTE), 
	"ATTCH_FL_PATH" VARCHAR2(2000 BYTE), 
	"ATTCH_DISP_FL_NM" VARCHAR2(50 BYTE), 
	"USR_ID_CREATE" NUMBER(10,0), 
	"USR_ID_CREATE_DT" DATE
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."CLD_ID" IS 'To store Cld Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."SLOC_ID" IS 'To store Sloc Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."HO_ORG_ID" IS 'To store Ho Org Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."ORG_ID" IS 'To Store Organisation Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."DOC_ID" IS 'To store document transaction hexa decimal Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."ATTCH_FL_ID" IS 'To store the id of the file generated on runtime.';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."ATTCH_FL_EXTN" IS 'To store the extension of the file';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."ATTCH_FL_PATH" IS 'To store the file path';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."ATTCH_DISP_FL_NM" IS 'To store file display name';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."USR_ID_CREATE" IS 'To store the user Id wo have created the document';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ATTCH"."USR_ID_CREATE_DT" IS 'To store the document creation date.';
  GRANT UPDATE ON "SLS"."SLS$HSS$ATTCH" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$HSS$ATTCH" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$HSS$ATTCH" TO PUBLIC;
