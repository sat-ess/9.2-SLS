--------------------------------------------------------
--  DDL for Table SLS$QUOT$CALC$AMD
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$QUOT$CALC$AMD" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"AMD_NO" VARCHAR2(40 BYTE), 
	"AMD_DT" DATE, 
	"COA_ID" NUMBER(20,0), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"CURR_ID" NUMBER(10,0), 
	"CURR_RATE" NUMBER(10,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT sysdate, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TAXABL_VAL" NUMBER(20,6), 
	"TRAN_TYPE" VARCHAR2(2 BYTE), 
	"COA_NM" VARCHAR2(50 BYTE), 
	"SR_NO" NUMBER(10,0)
   ) ;
  GRANT ALTER ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$QUOT$CALC$AMD" TO PUBLIC;
