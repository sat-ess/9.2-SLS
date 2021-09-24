--------------------------------------------------------
--  DDL for Table SLS$HSS$OC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$HSS$OC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"OC_TYPE" NUMBER(20,0), 
	"CURR_ID_SP" NUMBER(10,0), 
	"CURR_CONV_RATE" NUMBER(26,6), 
	"TRAN_TYPE" VARCHAR2(2 BYTE), 
	"OC_ID" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."CLD_ID" IS 'To store Cld Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."SLOC_ID" IS 'To store Sloc Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."ORG_ID" IS 'To Store Organisation Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."HO_ORG_ID" IS 'To store Ho Org Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."DOC_ID" IS 'To store document transaction hexa decimal Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."COA_ID" IS 'To store the COA Id for the Expense, Thi maybe null in some case';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."AMT_SP" IS 'To store amount specific';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."AMT_BS" IS 'To store amount basic';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."OC_TYPE" IS 'To store other charges Type';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."CURR_ID_SP" IS 'To store the Currency Id Specific';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."CURR_CONV_RATE" IS 'To store the Currency Conversation Rate';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."TRAN_TYPE" IS 'To store the Transaction Type i.e. Dr Cr';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."OC_ID" IS 'To store the Other Charges Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."USR_ID_CREATE" IS 'To store the user Id wo have created the document';
   COMMENT ON COLUMN "SLS"."SLS$HSS$OC"."USR_ID_CREATE_DT" IS 'To store the document creation date.';
  GRANT INSERT ON "SLS"."SLS$HSS$OC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$HSS$OC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$HSS$OC" TO PUBLIC;
