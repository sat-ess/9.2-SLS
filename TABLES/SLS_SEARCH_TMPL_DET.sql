--------------------------------------------------------
--  DDL for Table SLS$SEARCH$TMPL$DET
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SEARCH$TMPL$DET" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"TEMPLATE_ID" NUMBER(20,0), 
	"TEMPLATE_PARA_ID" NUMBER(5,0), 
	"PARA_ID" VARCHAR2(50 BYTE), 
	"USR_CREATED_BY" NUMBER(4,0), 
	"USR_CREATED_ON" DATE, 
	"USR_MOD_BY" NUMBER(4,0), 
	"USR_MOD_ON" DATE
   ) ;
  GRANT UPDATE ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SEARCH$TMPL$DET" TO PUBLIC;
