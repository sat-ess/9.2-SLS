--------------------------------------------------------
--  DDL for Table SLS$HSS$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$HSS$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(10,0), 
	"EO_CURR_ID_SP" NUMBER(10,0), 
	"DOC_ID_DEST" VARCHAR2(40 BYTE), 
	"DISP_ID_DEST" VARCHAR2(40 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"EO_ADDS" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."CLD_ID" IS 'To store Cld Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."SLOC_ID" IS 'To store Sloc Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."ORG_ID" IS 'To Store Organisation Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."HO_ORG_ID" IS 'To store Ho Org Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."DOC_ID" IS 'To store document transaction hexa decimal Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."DOC_ID_SRC" IS 'To store the Document Transation Id of the source';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."EO_ID" IS 'To store the Entity name for the Item ';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."EO_CURR_ID_SP" IS 'To store the currency Id of the Dest';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."DOC_ID_DEST" IS 'To store the generated document txn id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."DISP_ID_DEST" IS 'To store the generated document display id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."USR_ID_CREATE" IS 'To store the user Id wo have created the document';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."USR_ID_CREATE_DT" IS 'To store the document creation date.';
   COMMENT ON COLUMN "SLS"."SLS$HSS$DTL"."EO_ADDS" IS 'To store the Eo Address id';
  GRANT UPDATE ON "SLS"."SLS$HSS$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$HSS$DTL" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$HSS$DTL" TO PUBLIC;
