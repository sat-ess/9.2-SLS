--------------------------------------------------------
--  DDL for Table SLS$TMPL$SO$PMNT$SCHDL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TMPL$SO$PMNT$SCHDL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"PAY_DT" DATE, 
	"PAY_MODE" NUMBER(20,0), 
	"TOT_AMT" NUMBER(26,6), 
	"PAY_AMT" NUMBER(26,6), 
	"ADV_FLG" VARCHAR2(1 BYTE), 
	"AMD_NO" NUMBER(2,0), 
	"AMD_DT" DATE, 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"PHONE_NO" VARCHAR2(50 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TMPL$SO$PMNT$SCHDL" TO PUBLIC;
