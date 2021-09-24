--------------------------------------------------------
--  DDL for Table SLS$TRNP$ROUTE$LOC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$ROUTE$LOC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"LOC_ID" NUMBER(5,0), 
	"LOC_NM" VARCHAR2(200 BYTE), 
	"ACTV" VARCHAR2(1 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT QUERY REWRITE ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT REFERENCES ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT UPDATE ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT SELECT ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT INSERT ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT INDEX ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT DELETE ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT ALTER ON "SLS"."SLS$TRNP$ROUTE$LOC" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$TRNP$ROUTE$LOC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$ROUTE$LOC" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TRNP$ROUTE$LOC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$ROUTE$LOC" TO PUBLIC;