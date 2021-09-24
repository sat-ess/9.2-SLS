--------------------------------------------------------
--  DDL for Table SLS$TRNP$TB$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$TB$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"LI_ID" VARCHAR2(40 BYTE), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"LI_DT" DATE, 
	"VHCL_ITM_ID" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"VHCL_NO" VARCHAR2(20 BYTE) DEFAULT NULL
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$TRNP$TB$DTL"."LI_ID" IS 'This will Store OLId';
   COMMENT ON COLUMN "SLS"."SLS$TRNP$TB$DTL"."LI_DT" IS 'This will store OL Date';
  GRANT SELECT ON "SLS"."SLS$TRNP$TB$DTL" TO "APP";
  GRANT SELECT ON "SLS"."SLS$TRNP$TB$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$TB$DTL" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TRNP$TB$DTL" TO PUBLIC;