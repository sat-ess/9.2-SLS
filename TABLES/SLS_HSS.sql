--------------------------------------------------------
--  DDL for Table SLS$HSS
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$HSS" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"EO_ID" NUMBER(20,0), 
	"HSS_ID" VARCHAR2(40 BYTE), 
	"HSS_STAT" NUMBER(10,0) DEFAULT NULL, 
	"CURR_ID_SP" NUMBER(10,0), 
	"CURR_CONV_RATE" NUMBER(26,6), 
	"FY_ID" NUMBER(4,0), 
	"HSS_MODE" NUMBER(10,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"HSS_TYPE" NUMBER(10,0), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$HSS"."CLD_ID" IS 'To store Cld Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."SLOC_ID" IS 'To store Sloc Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."ORG_ID" IS 'To Store Organisation Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."HO_ORG_ID" IS 'To store Ho Org Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."DOC_ID" IS 'To store document transaction hexa decimal Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."DOC_DT" IS 'To store document date';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."EO_ID" IS 'To store the Entity name ';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."HSS_ID" IS 'To store the display Id of the document';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."HSS_STAT" IS 'To store the status of the document';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."CURR_ID_SP" IS 'To store the curreny id of the transaction';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."CURR_CONV_RATE" IS 'To store the currency conversation rate';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."FY_ID" IS 'To store the financial year id in which the document is being made.';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."HSS_MODE" IS 'To store the workflow approval mode.';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."USR_ID_CREATE" IS 'To store the user Id wo have created the document';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."USR_ID_CREATE_DT" IS 'To store the document creation date.';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."HSS_TYPE" IS 'To store the High Sea Sale Type';
   COMMENT ON COLUMN "SLS"."SLS$HSS"."DOC_ID_SRC" IS 'To store the source document Transaction Id';
   COMMENT ON TABLE "SLS"."SLS$HSS"  IS '1. Create Check Constraint for HSS_TYPE
';
  GRANT INSERT ON "SLS"."SLS$HSS" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$HSS" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$HSS" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."SLS$HSS" TO "MM" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."SLS$HSS" TO "APP";
  GRANT FLASHBACK ON "SLS"."SLS$HSS" TO "APP";
  GRANT INDEX ON "SLS"."SLS$HSS" TO "APP";
  GRANT INSERT ON "SLS"."SLS$HSS" TO "APP";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$HSS" TO "APP";
  GRANT QUERY REWRITE ON "SLS"."SLS$HSS" TO "APP";
  GRANT REFERENCES ON "SLS"."SLS$HSS" TO "APP";
  GRANT SELECT ON "SLS"."SLS$HSS" TO "APP";
  GRANT UPDATE ON "SLS"."SLS$HSS" TO "APP";
  GRANT ALTER ON "SLS"."SLS$HSS" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$HSS" TO "APP";