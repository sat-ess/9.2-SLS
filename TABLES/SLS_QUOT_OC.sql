--------------------------------------------------------
--  DDL for Table SLS$QUOT$OC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$QUOT$OC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"OC_DESC" NUMBER(20,0), 
	"AMD_NO" NUMBER(2,0) DEFAULT 0, 
	"AMD_DT" DATE, 
	"CURR_ID" NUMBER(10,0), 
	"CURR_RATE" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TRAN_TYPE" VARCHAR2(2 BYTE), 
	"OC_ID" VARCHAR2(20 BYTE), 
	"TAX_AMT_SP" NUMBER(26,6), 
	"TAX_AMT_BS" NUMBER(26,6), 
	"OC_CALC_TYPE" VARCHAR2(1 BYTE), 
	"OC_CALC_VAL" NUMBER(26,6), 
	"SUP_ID" NUMBER(10,0)
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$QUOT$OC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$QUOT$OC" TO "APP";
