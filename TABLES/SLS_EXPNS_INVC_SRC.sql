--------------------------------------------------------
--  DDL for Table SLS$EXPNS$INVC$SRC
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$EXPNS$INVC$SRC" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_TYPE_SRC" NUMBER(5,0), 
	"DOC_ID_SRC" VARCHAR2(40 BYTE), 
	"DOC_DT_SRC" TIMESTAMP (8), 
	"FILE_NO" VARCHAR2(40 BYTE)
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$EXPNS$INVC$SRC" TO PUBLIC;
