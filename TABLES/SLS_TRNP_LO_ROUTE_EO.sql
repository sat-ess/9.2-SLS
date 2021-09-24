--------------------------------------------------------
--  DDL for Table SLS$TRNP$LO$ROUTE$EO
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$LO$ROUTE$EO" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DEPARTURE_PNT" VARCHAR2(20 BYTE), 
	"ARRIVAL_PNT" VARCHAR2(20 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"RATE" NUMBER(26,6)
   ) ;
  GRANT UPDATE ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";
  GRANT SELECT ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";
  GRANT ALTER ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";
  GRANT DELETE ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";
  GRANT FLASHBACK ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";
  GRANT INDEX ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";
  GRANT QUERY REWRITE ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";
  GRANT REFERENCES ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";
  GRANT UPDATE ON "SLS"."SLS$TRNP$LO$ROUTE$EO" TO "APP";