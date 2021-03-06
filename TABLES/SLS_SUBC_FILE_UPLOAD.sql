--------------------------------------------------------
--  DDL for Table SLS$SUBC$FILE$UPLOAD
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SUBC$FILE$UPLOAD" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(5,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ATTCH_FL_NM" VARCHAR2(50 BYTE), 
	"ATTCH_FL_EXTN" VARCHAR2(200 BYTE), 
	"ATTCH_FL_PATH" VARCHAR2(2000 BYTE), 
	"ATTACH_FL" BFILE, 
	"DISP_FL_NM" VARCHAR2(400 BYTE), 
	"USR_ID_CREATE" NUMBER(10,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(10,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$SUBC$FILE$UPLOAD" TO PUBLIC;
