--------------------------------------------------------
--  DDL for Table SLS$COD$TRACKNG$ATTCH
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$COD$TRACKNG$ATTCH" 
   (	"CLD_ID" VARCHAR2(5 BYTE), 
	"SLOC_ID" NUMBER(5,0), 
	"ORG_ID" VARCHAR2(5 BYTE), 
	"HO_ORG_ID" VARCHAR2(5 BYTE), 
	"DOC_ID" VARCHAR2(50 BYTE), 
	"DOC_DT" DATE, 
	"EO_ID" NUMBER(5,0), 
	"USR_ID_CREATE" NUMBER(5,0), 
	"USR_CREATE_DT" DATE, 
	"ATTCH_FL_NM" VARCHAR2(50 BYTE), 
	"ATTCH_FL_EXTN" VARCHAR2(200 BYTE), 
	"ATTCH_FL_PATH" VARCHAR2(2000 BYTE), 
	"ATTACH_SR_NO" NUMBER, 
	"POD_ATTCHMENT" VARCHAR2(100 BYTE)
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
  GRANT QUERY REWRITE ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
  GRANT REFERENCES ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
  GRANT UPDATE ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
  GRANT SELECT ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
  GRANT INSERT ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
  GRANT INDEX ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
  GRANT DELETE ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
  GRANT ALTER ON "SLS"."SLS$COD$TRACKNG$ATTCH" TO "APP";
