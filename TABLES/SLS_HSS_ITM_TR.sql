--------------------------------------------------------
--  DDL for Table SLS$HSS$ITM$TR
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$HSS$ITM$TR" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(10,0), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"TAX_RULE_ID" NUMBER(10,0), 
	"TAX_AMT_SP" NUMBER(26,6), 
	"TAX_AMT_BS" NUMBER(26,6), 
	"EXMPT_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"TAXABLE_AMT_SP" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TAXABLE_AMT_BS" NUMBER(26,6), 
	"EO_ADDS" VARCHAR2(40 BYTE), 
	"EO_CURR_ID_SP" NUMBER(10,0), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."CLD_ID" IS 'To store Cld Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."SLOC_ID" IS 'To store Sloc Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."ORG_ID" IS 'To Store Organisation Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."HO_ORG_ID" IS 'To store Ho Org Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."DOC_ID" IS 'To store document transaction hexa decimal Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."EO_ID" IS 'To store the Entity name for the Item ';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."ITM_ID" IS 'To store the Item Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."TAX_RULE_ID" IS 'To store the tax Rule Id';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."TAX_AMT_SP" IS 'To store the Tax Amount Specific';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."TAX_AMT_BS" IS 'To store the Tax Amount Basic';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."EXMPT_FLG" IS 'To store the Exempted flag';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."TAXABLE_AMT_SP" IS 'To store taxable amount Specific';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."USR_ID_CREATE" IS 'To store the user Id wo have created the document';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."USR_ID_CREATE_DT" IS 'To store the document creation date.';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."TAXABLE_AMT_BS" IS 'To store Taxable Amount Basic';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."EO_ADDS" IS 'To store the Entity Address';
   COMMENT ON COLUMN "SLS"."SLS$HSS$ITM$TR"."EO_CURR_ID_SP" IS 'To store the currency Id of the Eo';
  GRANT INSERT ON "SLS"."SLS$HSS$ITM$TR" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$HSS$ITM$TR" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$HSS$ITM$TR" TO PUBLIC;
