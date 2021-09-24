--------------------------------------------------------
--  DDL for Table SLS$SEI
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SEI" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"SEI_TYPE" NUMBER(10,0), 
	"SEI_ID" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"SEI_STAT" NUMBER(10,0) DEFAULT NULL, 
	"SEI_MODE" NUMBER(10,0), 
	"CURR_ID_SP" NUMBER(10,0), 
	"CURR_CONV_RATE" NUMBER(26,6), 
	"FY_ID" NUMBER(4,0), 
	"STRT_DT" DATE, 
	"END_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"SEI_VOU_ID" VARCHAR2(40 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"EO_CATG_ID" NUMBER(10,0), 
	"SEI_RMRK" VARCHAR2(250 BYTE), 
	"SHIP_ADDS" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$SEI"."CLD_ID" IS 'To store Cld Id';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."SLOC_ID" IS 'To store Sloc Id';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."ORG_ID" IS 'To Store Organisation Id';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."HO_ORG_ID" IS 'To store Ho Org Id';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."DOC_ID" IS 'To store document transaction hexa decimal Id';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."DOC_DT" IS 'To store document date';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."SEI_TYPE" IS 'To store the High Sea Sale Type';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."SEI_ID" IS 'To store the display Id of the document';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."EO_ID" IS 'To store the Entity name ';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."SEI_STAT" IS 'To store the status of the document';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."SEI_MODE" IS 'To store the workflow approval mode.';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."CURR_ID_SP" IS 'To store the curreny id of the transaction';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."CURR_CONV_RATE" IS 'To store the currency conversation rate';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."FY_ID" IS 'To store the financial year id in which the document is being made.';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."USR_ID_CREATE" IS 'To store the user Id wo have created the document';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."USR_ID_CREATE_DT" IS 'To store the document creation date.';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."SEI_VOU_ID" IS 'Column for Storing Voucher ID for credit note.';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."COA_ID" IS 'Column for Storing COA ID for the customer.';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."EO_CATG_ID" IS 'Column to store customer category';
   COMMENT ON COLUMN "SLS"."SLS$SEI"."SEI_RMRK" IS 'Column to store remarks';
   COMMENT ON TABLE "SLS"."SLS$SEI"  IS '1. Create Check Constraint for SEI_TYPE';
  GRANT INSERT ON "SLS"."SLS$SEI" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SEI" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SEI" TO PUBLIC;
