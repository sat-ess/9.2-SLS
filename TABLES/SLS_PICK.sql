--------------------------------------------------------
--  DDL for Table SLS$PICK
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PICK" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"DOC_TIME" VARCHAR2(8 BYTE), 
	"WH_ID" VARCHAR2(20 BYTE), 
	"CLOSE_FLG" VARCHAR2(1 BYTE) DEFAULT 'Y', 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"PICK_ID" VARCHAR2(20 BYTE), 
	"EO_ID" NUMBER(20,0), 
	"DLV_ADDS_ID" VARCHAR2(20 BYTE), 
	"CURR_CONV_FCTR" NUMBER(26,6), 
	"CURR_ID_SP" NUMBER(10,0), 
	"FY_ID" NUMBER(5,0), 
	"PICK_STAT" NUMBER(10,0), 
	"REMARKS" VARCHAR2(1000 BYTE), 
	"PICK_MODE" NUMBER(5,0) DEFAULT 313, 
	"FREEZE" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRJ_ID" VARCHAR2(40 BYTE) DEFAULT 'PROJ0000', 
	"GLBL_DOC_ID_SRC" NUMBER(10,0), 
	"DOC_TXN_ID_SRC" VARCHAR2(40 BYTE), 
	"DLV_TYPE" NUMBER(20,0) DEFAULT 1070, 
	"GTC_ID" VARCHAR2(40 BYTE), 
	"DOC_TXN_SCH_ID_SRC" VARCHAR2(40 BYTE), 
	"BUSNES_PATNR_ID" NUMBER(20,0), 
	"INV_RE_UPDTED" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ORD_SEQ" NUMBER(26,6), 
	"PALT_DOC_ID" VARCHAR2(40 BYTE), 
	"EXT_DOC_NO" VARCHAR2(40 BYTE), 
	"EO_TPT_NO" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$PICK"."GLBL_DOC_ID_SRC" IS 'To store the source document id from which pick is beng made';
   COMMENT ON COLUMN "SLS"."SLS$PICK"."DOC_TXN_ID_SRC" IS 'To store the source document transaction id from which pick is being made';
   COMMENT ON COLUMN "SLS"."SLS$PICK"."GTC_ID" IS 'Good to Collect Id';
   COMMENT ON COLUMN "SLS"."SLS$PICK"."BUSNES_PATNR_ID" IS 'Business Partner EO ID';
   COMMENT ON COLUMN "SLS"."SLS$PICK"."INV_RE_UPDTED" IS 'Flag for ammended invoice.';
  GRANT INSERT ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$PICK" TO "MM";
  GRANT UPDATE ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PICK" TO "PMS";
  GRANT DELETE ON "SLS"."SLS$PICK" TO "PMS";
  GRANT INDEX ON "SLS"."SLS$PICK" TO "PMS";
  GRANT INSERT ON "SLS"."SLS$PICK" TO "PMS";
  GRANT SELECT ON "SLS"."SLS$PICK" TO "PMS";
  GRANT UPDATE ON "SLS"."SLS$PICK" TO "PMS";
  GRANT REFERENCES ON "SLS"."SLS$PICK" TO "PMS";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PICK" TO "PMS";
  GRANT QUERY REWRITE ON "SLS"."SLS$PICK" TO "PMS";
  GRANT DEBUG ON "SLS"."SLS$PICK" TO "PMS";
  GRANT FLASHBACK ON "SLS"."SLS$PICK" TO "PMS";
  GRANT DELETE ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PICK" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PICK" TO "MM";
  GRANT DEBUG ON "SLS"."SLS$PICK" TO "MM";
  GRANT DELETE ON "SLS"."SLS$PICK" TO "MM";
  GRANT FLASHBACK ON "SLS"."SLS$PICK" TO "MM";
  GRANT INDEX ON "SLS"."SLS$PICK" TO "MM";
  GRANT INSERT ON "SLS"."SLS$PICK" TO "MM";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PICK" TO "MM";
  GRANT QUERY REWRITE ON "SLS"."SLS$PICK" TO "MM";
  GRANT REFERENCES ON "SLS"."SLS$PICK" TO "MM";
  GRANT SELECT ON "SLS"."SLS$PICK" TO "MM";
  GRANT ALTER ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."SLS$PICK" TO "MNF" WITH GRANT OPTION;
