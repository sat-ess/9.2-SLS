--------------------------------------------------------
--  DDL for Table SLS$HSS$ITM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$HSS$ITM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(10,0), 
	"EO_CURR_ID_SP" NUMBER(10,0), 
	"EO_CURR_CONV_RATE" NUMBER(26,6), 
	"EO_ADDS" VARCHAR2(20 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_QTY" NUMBER(26,6), 
	"ITM_RATE" NUMBER(26,6), 
	"ITM_QTY_BS" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"ITM_UOM_CONV_FCTR" NUMBER(26,6), 
	"DISC_TYPE" VARCHAR2(1 BYTE) DEFAULT 'A', 
	"DISC_VAL" NUMBER(26,6) DEFAULT 0, 
	"TOT_ITM_AMT_SP" NUMBER(26,6), 
	"TOT_ITM_AMT_BS" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."CLD_ID" IS 'To store Cld Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."SLOC_ID" IS 'To store Sloc Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."ORG_ID" IS 'To Store Organisation Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."HO_ORG_ID" IS 'To store Ho Org Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."DOC_ID" IS 'To store document transaction hexa decimal Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."DOC_ID_SRC" IS 'To store the Document Transation Id of the source';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."EO_ID" IS 'To store the Entity name for the Item ';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."EO_CURR_ID_SP" IS 'To store the Currency of the Entity selected for the Item';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."EO_CURR_CONV_RATE" IS 'To store the currency conversation rate';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."EO_ADDS" IS 'To store the entity address';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."ITM_ID" IS 'To store the Item Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."ITM_QTY" IS 'To store the Item Quantity';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."ITM_RATE" IS 'To store the Item Rate';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."ITM_QTY_BS" IS 'To store the Item Quantity in Base';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."ITM_UOM" IS 'To store the Item UOM';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."ITM_UOM_BS" IS 'To store the Item UOM in Base';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."ITM_UOM_CONV_FCTR" IS 'To store the value of UOM Comversation Factor';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."DISC_TYPE" IS 'To store the Discount Type';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."DISC_VAL" IS 'To store the Discount Amount';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."TOT_ITM_AMT_SP" IS 'To store the the Total Item Amount in specific Currency';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."TOT_ITM_AMT_BS" IS 'To store the the Total Item Amount in Base Currency';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."USR_ID_CREATE" IS 'To store the user Id wo have created the document';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM"."USR_ID_CREATE_DT" IS 'To store the document creation date.';
  GRANT UPDATE ON "SLS"."SLS$HSS$ITM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$HSS$ITM" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$HSS$ITM" TO PUBLIC;
