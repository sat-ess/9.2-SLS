--------------------------------------------------------
--  DDL for Table SLS$HSS$TNC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$HSS$TNC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"TNC_ID" NUMBER(10,0), 
	"PRIORITY" NUMBER(2,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$HSS$TNC"."CLD_ID" IS 'To store Cld Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$TNC"."SLOC_ID" IS 'To store Sloc Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$TNC"."ORG_ID" IS 'To Store Organisation Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$TNC"."HO_ORG_ID" IS 'To store Ho Org Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$TNC"."DOC_ID" IS 'To store document transaction hexa decimal Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$TNC"."TNC_ID" IS 'To store TnC Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$TNC"."PRIORITY" IS 'To store TnC Priority';
   COMMENT ON COLUMN "SLS"."SLS$HSS$TNC"."USR_ID_CREATE" IS 'To store the user Id wo have created the document';
   COMMENT ON COLUMN "SLS"."SLS$HSS$TNC"."USR_ID_CREATE_DT" IS 'To store the document creation date.';
  GRANT INSERT ON "SLS"."SLS$HSS$TNC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$HSS$TNC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$HSS$TNC" TO PUBLIC;
