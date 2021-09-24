--------------------------------------------------------
--  DDL for Table SLS$PDR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PDR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"PDR_TYPE" NUMBER(10,0), 
	"PDR_ID" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"PDR_STAT" NUMBER(10,0) DEFAULT NULL, 
	"PDR_MODE" NUMBER(10,0), 
	"CURR_ID_SP" NUMBER(10,0), 
	"CURR_CONV_RATE" NUMBER(26,6), 
	"FY_ID" NUMBER(4,0), 
	"STRT_DT" DATE, 
	"END_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"PDR_VOU_ID" VARCHAR2(40 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"EO_CATG_ID" NUMBER(10,0), 
	"PDR_RMRK" VARCHAR2(250 BYTE), 
	"SHIP_ADDS" VARCHAR2(20 BYTE), 
	"WH_ID" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$PDR"."CLD_ID" IS 'To store Cld Id';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."SLOC_ID" IS 'To store Sloc Id';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."ORG_ID" IS 'To Store Organisation Id';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."HO_ORG_ID" IS 'To store Ho Org Id';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."DOC_ID" IS 'To store document transaction hexa decimal Id';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."DOC_DT" IS 'To store document date';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."PDR_TYPE" IS 'To store the High Sea Sale Type';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."PDR_ID" IS 'To store the display Id of the document';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."EO_ID" IS 'To store the Entity name ';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."PDR_STAT" IS 'To store the status of the document';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."PDR_MODE" IS 'To store the workflow approval mode.';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."CURR_ID_SP" IS 'To store the curreny id of the transaction';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."CURR_CONV_RATE" IS 'To store the currency conversation rate';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."FY_ID" IS 'To store the financial year id in which the document is being made.';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."USR_ID_CREATE" IS 'To store the user Id wo have created the document';
   COMMENT ON COLUMN "SLS"."SLS$PDR"."USR_ID_CREATE_DT" IS 'To store the document creation date.';
   COMMENT ON TABLE "SLS"."SLS$PDR"  IS '1. Create Check Constraint for PDR_TYPE
';
  GRANT UPDATE ON "SLS"."SLS$PDR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PDR" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$PDR" TO PUBLIC;
