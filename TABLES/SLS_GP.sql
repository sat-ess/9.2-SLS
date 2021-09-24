--------------------------------------------------------
--  DDL for Table SLS$GP
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$GP" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"GATEPASS_ID" VARCHAR2(20 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$GP" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$GP" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$GP" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$GP" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$GP" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$GP" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$GP" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$GP" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$GP" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$GP" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$GP" TO PUBLIC;
