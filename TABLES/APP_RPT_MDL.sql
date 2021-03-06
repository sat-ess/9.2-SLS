--------------------------------------------------------
--  DDL for Table APP$RPT$MDL
--------------------------------------------------------

  CREATE TABLE "SLS"."APP$RPT$MDL" 
   (	"MDL_CLD_ID" VARCHAR2(4 BYTE), 
	"MDL_SLOC_ID" NUMBER(2,0), 
	"MDL_ORG_ID" VARCHAR2(2 BYTE), 
	"MDL_APPLI_STRUCT" VARCHAR2(20 BYTE), 
	"MDL_ID" NUMBER(10,0), 
	"MDL_ALIAS" VARCHAR2(50 BYTE), 
	"MDL_DESC" VARCHAR2(250 BYTE), 
	"MDL_TYP" VARCHAR2(10 BYTE), 
	"USR_ID_CREATE" NUMBER(10,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_MOD_ID" NUMBER(10,0), 
	"USR_MOD_DATE" DATE
   ) ;
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "HCM";
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "FIN";
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "SVC";
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "MNF";
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "MM";
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "MM" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "SVC" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO PUBLIC;
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "FIN" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."APP$RPT$MDL" TO "APP" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."APP$RPT$MDL" TO "MNF" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."APP$RPT$MDL" TO "HCM" WITH GRANT OPTION;
