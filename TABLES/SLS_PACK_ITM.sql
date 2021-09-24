--------------------------------------------------------
--  DDL for Table SLS$PACK$ITM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PACK$ITM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"PICK_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"PICK_QTY" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"PACK_QTY" NUMBER(26,6), 
	"BAL_QTY" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"PACK_NO" VARCHAR2(50 BYTE), 
	"PACK_WT" NUMBER(26,6), 
	"TOT_NO_OF_PCKTS" NUMBER(26,6), 
	"PACK_NET_WT" NUMBER(26,6), 
	"TMP_BAL_QTY" NUMBER(26,6), 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"PACK_SR_NO" NUMBER(10,0), 
	"PACK_DIMEN_LEN" NUMBER(26,6), 
	"PACK_DIMEN_WID" NUMBER(26,6), 
	"PACK_DIMEN_HIG" NUMBER(26,6), 
	"DIMEN_UNIT" VARCHAR2(20 BYTE), 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0, 
	"PACK_TYP_ID" NUMBER(20,0) DEFAULT 0, 
	"PACK_PRNT_SR_NO" NUMBER(10,0), 
	"PRNT_PACK_NO" VARCHAR2(50 BYTE), 
	"SR_NO" NUMBER(10,0) DEFAULT 0, 
	"PACK_CBM_VAL" NUMBER(26,6), 
	"CHILD_PACK_NO" VARCHAR2(50 BYTE), 
	"REF_NO" VARCHAR2(40 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$PACK$ITM"."PACK_NO" IS 'PACK NUMBER';
   COMMENT ON COLUMN "SLS"."SLS$PACK$ITM"."PACK_WT" IS 'Pack Gross Weight';
   COMMENT ON COLUMN "SLS"."SLS$PACK$ITM"."PACK_NET_WT" IS 'Pack Net Weight';
   COMMENT ON COLUMN "SLS"."SLS$PACK$ITM"."TMP_BAL_QTY" IS 'Temp Balance qty for pick item';
   COMMENT ON COLUMN "SLS"."SLS$PACK$ITM"."PACK_PRNT_SR_NO" IS 'Pack parent SrNo';
   COMMENT ON COLUMN "SLS"."SLS$PACK$ITM"."PRNT_PACK_NO" IS 'Parent Pack No';
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT QUERY REWRITE ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT UPDATE ON "SLS"."SLS$PACK$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$PACK$ITM" TO PUBLIC;
