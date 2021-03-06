--------------------------------------------------------
--  DDL for Table SLS$INV$SHIP$ITM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$INV$SHIP$ITM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SHIP_ID" VARCHAR2(40 BYTE), 
	"SO_ID" VARCHAR2(40 BYTE), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_RATE" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"ITM_SHIP_QTY" NUMBER(26,6), 
	"ITM_DISC_TYP" VARCHAR2(1 BYTE), 
	"ITM_DISC_VAL" NUMBER(26,6), 
	"ITM_AMT_BS" NUMBER(26,6), 
	"ITM_AMT_SP" NUMBER(26,6), 
	"REMARKS" VARCHAR2(1000 BYTE), 
	"TLRNC_QTY_TYPE" VARCHAR2(1 BYTE), 
	"TLRNC_QTY_VAL" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"TAX_RULE_FLG" VARCHAR2(1 BYTE), 
	"SCH_ID" VARCHAR2(40 BYTE), 
	"SUPPLI_ITM_RATE" NUMBER, 
	"OLD_ITM_RATE" NUMBER(26,6), 
	"ITM_AMT_GS_SP" NUMBER(26,6), 
	"ITM_AMT_GS_BS" NUMBER(26,6), 
	"SCHM_FLG" VARCHAR2(1 BYTE), 
	"WTY_ID" VARCHAR2(20 BYTE), 
	"ASBL_AMT_BS" NUMBER(26,6), 
	"ASBL_AMT_SP" NUMBER(26,6), 
	"OLD_ITM_SHIP_QTY" NUMBER(26,6), 
	"CC_ID" VARCHAR2(45 BYTE), 
	"EO_PART_NO" VARCHAR2(250 BYTE), 
	"AMC_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ITM_SLS_EXP_AMT" NUMBER(26,6) DEFAULT 0, 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"ITM_GRP_ID_CC" VARCHAR2(20 BYTE), 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0, 
	"OC_AMT_SP" NUMBER(26,6) DEFAULT 0, 
	"OC_AMT_BS" NUMBER(26,6) DEFAULT 0, 
	"INCL_TX" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"BAR_CODE_NO" VARCHAR2(40 BYTE), 
	"BAR_CODE_DESC" VARCHAR2(40 BYTE), 
	"OC_TAX_AMT_SP" NUMBER(26,6), 
	"OC_TAX_AMT_BS" NUMBER(26,6)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$INV$SHIP$ITM"."ITM_GRP_ID_CC" IS 'To store the Item group id for cc';
   COMMENT ON COLUMN "SLS"."SLS$INV$SHIP$ITM"."INCL_TX" IS 'In Case Of Gst Tax Is Inclusive Or Not';
  GRANT UPDATE ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
  GRANT REFERENCES ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
  GRANT QUERY REWRITE ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
  GRANT DEBUG ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
  GRANT FLASHBACK ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
  GRANT QUERY REWRITE ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT INSERT ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT INDEX ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT DELETE ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT FLASHBACK ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT DEBUG ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT QUERY REWRITE ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT REFERENCES ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT UPDATE ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT SELECT ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT INSERT ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT INDEX ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT DELETE ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT ALTER ON "SLS"."SLS$INV$SHIP$ITM" TO "FIN";
  GRANT ALTER ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT DEBUG ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT DELETE ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT FLASHBACK ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT INDEX ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT INSERT ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT QUERY REWRITE ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT REFERENCES ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT SELECT ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT UPDATE ON "SLS"."SLS$INV$SHIP$ITM" TO "MM";
  GRANT ALTER ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT DELETE ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT FLASHBACK ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT INDEX ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT QUERY REWRITE ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT INSERT ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT REFERENCES ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT SELECT ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT UPDATE ON "SLS"."SLS$INV$SHIP$ITM" TO "APP";
  GRANT ALTER ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$INV$SHIP$ITM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$INV$SHIP$ITM" TO "SVC";
  GRANT UPDATE ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT SELECT ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT REFERENCES ON "SLS"."SLS$INV$SHIP$ITM" TO "MNF" WITH GRANT OPTION;
  GRANT ALTER ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
  GRANT DELETE ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
  GRANT INDEX ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
  GRANT INSERT ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
  GRANT SELECT ON "SLS"."SLS$INV$SHIP$ITM" TO "PMS";
