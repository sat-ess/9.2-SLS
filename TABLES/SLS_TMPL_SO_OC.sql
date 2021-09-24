--------------------------------------------------------
--  DDL for Table SLS$TMPL$SO$OC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TMPL$SO$OC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"COA_ID" NUMBER(20,0), 
	"AMT_SP" NUMBER(26,6), 
	"AMT_BS" NUMBER(26,6), 
	"OC_DESC" NUMBER(20,0), 
	"CURR_ID" NUMBER(10,0), 
	"CURR_RATE" NUMBER(26,6), 
	"AMD_NO" NUMBER(2,0), 
	"AMD_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TRAN_TYPE" VARCHAR2(2 BYTE), 
	"OC_ID" VARCHAR2(20 BYTE)
   ) ;
  GRANT ALTER ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$TMPL$SO$OC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TMPL$SO$OC" TO "APP";
