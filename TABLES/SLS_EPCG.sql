--------------------------------------------------------
--  DDL for Table SLS$EPCG
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$EPCG" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"LICENSE_NO" VARCHAR2(40 BYTE), 
	"EFFECTIVE_DT" DATE, 
	"EXPIRY_DT" DATE, 
	"PO_NO" VARCHAR2(20 BYTE), 
	"REMARKS" VARCHAR2(1000 BYTE), 
	"USR_ID_CREATE" NUMBER(5,0), 
	"USR_ID_MOD" NUMBER(5,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD_DT" DATE, 
	"DISP_DOC_ID" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"CURR_ID_SP" NUMBER(20,0), 
	"CURR_RATE" NUMBER(26,6), 
	"PO_AMT_SP" NUMBER(26,6), 
	"PO_AMT_BS" NUMBER(26,6), 
	"PO_DATE" DATE, 
	"FILE_NO" VARCHAR2(20 BYTE), 
	"STAT" NUMBER(10,0), 
	"LICENSE_DT" DATE, 
	"SLS_AMT_SP" NUMBER(26,6), 
	"SLS_AMT_BS" NUMBER(26,6)
   ) ;
  GRANT SELECT ON "SLS"."SLS$EPCG" TO "APP";
  GRANT FLASHBACK ON "SLS"."SLS$EPCG" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$EPCG" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$EPCG" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$EPCG" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$EPCG" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$EPCG" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$EPCG" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$EPCG" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$EPCG" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$EPCG" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$EPCG" TO PUBLIC;
