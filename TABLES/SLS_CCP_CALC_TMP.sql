--------------------------------------------------------
--  DDL for Table SLS$CCP$CALC$TMP
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$CCP$CALC$TMP" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"SR_NO" NUMBER(10,0), 
	"TRAN_TYPE" VARCHAR2(2 BYTE), 
	"CC_ID" VARCHAR2(45 BYTE)
   ) ;
  GRANT ALTER ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$CCP$CALC$TMP" TO PUBLIC;
