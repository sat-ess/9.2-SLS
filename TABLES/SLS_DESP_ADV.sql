--------------------------------------------------------
--  DDL for Table SLS$DESP$ADV
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$DESP$ADV" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"SO_ID" VARCHAR2(40 BYTE), 
	"SO_DT" DATE, 
	"EO_ID" NUMBER(20,0), 
	"EO_LOC_ID" VARCHAR2(30 BYTE), 
	"DESP_STAT_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"WH_ID" VARCHAR2(20 BYTE), 
	"REMARKS" VARCHAR2(200 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT SELECT ON "SLS"."SLS$DESP$ADV" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$DESP$ADV" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$DESP$ADV" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$DESP$ADV" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$DESP$ADV" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$DESP$ADV" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$DESP$ADV" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$DESP$ADV" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$DESP$ADV" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$DESP$ADV" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$DESP$ADV" TO PUBLIC;