--------------------------------------------------------
--  DDL for Table SLS$SUBC$INV$CALC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SUBC$INV$CALC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"CURR_ID" NUMBER(10,0), 
	"CURR_RATE" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TRAN_TYPE" VARCHAR2(2 BYTE), 
	"SR_NO" NUMBER(10,0), 
	"COA_NM" VARCHAR2(250 BYTE), 
	"TAXABL_VAL" NUMBER(26,6), 
	"CC_ID" VARCHAR2(45 BYTE)
   ) ;
  GRANT ALTER ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$SUBC$INV$CALC" TO PUBLIC;
