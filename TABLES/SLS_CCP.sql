--------------------------------------------------------
--  DDL for Table SLS$CCP
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$CCP" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"CCP_ID" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"CCP_STAT" NUMBER(10,0), 
	"CCP_MODE" NUMBER(10,0), 
	"CURR_ID_SP" NUMBER(10,0), 
	"CURR_CONV_RATE" NUMBER(26,6), 
	"FY_ID" NUMBER(4,0), 
	"STRT_DT" DATE, 
	"END_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"CCP_VOU_ID" VARCHAR2(40 BYTE), 
	"EO_CATG_ID" NUMBER(10,0), 
	"CCP_RMRK" VARCHAR2(250 BYTE), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"PROJ_ID" VARCHAR2(40 BYTE) DEFAULT 'PROJ0000', 
	"RBT_TYPE" NUMBER(5,0), 
	"GL_VOU_ID" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$CCP"."CLD_ID" IS 'To store Cld Id';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."SLOC_ID" IS 'To store Sloc Id';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."ORG_ID" IS 'To Store Organisation Id';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."HO_ORG_ID" IS 'To store Ho Org Id';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."DOC_ID" IS 'To store document transaction hexa decimal Id';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."DOC_DT" IS 'To store document date';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."CCP_ID" IS 'To store the display Id of the document';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."EO_ID" IS 'To store the Entity name ';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."CCP_STAT" IS 'To store the status of the document';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."CCP_MODE" IS 'To store the workflow approval mode.';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."CURR_ID_SP" IS 'To store the curreny id of the transaction';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."CURR_CONV_RATE" IS 'To store the currency conversation rate';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."FY_ID" IS 'To store the financial year id in which the document is being made.';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."USR_ID_CREATE" IS 'To store the user Id wo have created the document';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."USR_ID_CREATE_DT" IS 'To store the document creation date.';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."CCP_VOU_ID" IS 'Column for Storing Voucher ID for credit note.';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."EO_CATG_ID" IS 'Column to store customer category';
   COMMENT ON COLUMN "SLS"."SLS$CCP"."CCP_RMRK" IS 'Column to store remarks';
   COMMENT ON TABLE "SLS"."SLS$CCP"  IS '1. Create Check Constraint for CCP_TYPE';
  GRANT ALTER ON "SLS"."SLS$CCP" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$CCP" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$CCP" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$CCP" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$CCP" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$CCP" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$CCP" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$CCP" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$CCP" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$CCP" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$CCP" TO PUBLIC;
