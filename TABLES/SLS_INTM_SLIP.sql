--------------------------------------------------------
--  DDL for Table SLS$INTM$SLIP
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INTM$SLIP" 
   (	"CLD_ID" VARCHAR2(4 BYTE) DEFAULT 1, 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"DISP_DOC_ID" VARCHAR2(20 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"FY_ID" NUMBER(5,0) DEFAULT 1, 
	"INTM_MODE" NUMBER(10,0), 
	"INTM_STAT" NUMBER(10,0), 
	"REMARKS" VARCHAR2(250 BYTE), 
	"SO_DOC_ID" VARCHAR2(40 BYTE), 
	"CURR_ID_SP" NUMBER(10,0) DEFAULT 0, 
	"BUSNES_PATNR_ID" NUMBER(20,0)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$INTM$SLIP"."BUSNES_PATNR_ID" IS 'Business Partner EO ID';
  GRANT DEBUG ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$INTM$SLIP" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$INTM$SLIP" TO "MNF" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."SLS$INTM$SLIP" TO "SVC";