--------------------------------------------------------
--  DDL for Table SLS$EXP$INVC$COST$CENTER
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$EXP$INVC$COST$CENTER" 
   (	"CC_CLD_ID" VARCHAR2(4 BYTE), 
	"CC_SLOC_ID" NUMBER(5,0) DEFAULT 1, 
	"CC_HO_ORG_ID" VARCHAR2(2 BYTE), 
	"CC_ORG_ID" VARCHAR2(2 BYTE), 
	"CC_TXN_ID" VARCHAR2(40 BYTE), 
	"CC_APPL_INST_ID" NUMBER(1,0), 
	"CC_DOC_SL_NO" NUMBER(5,0), 
	"CC_SL_NO" NUMBER(5,0), 
	"CC_SRC" VARCHAR2(1 BYTE), 
	"CC_CCID_LVL1" VARCHAR2(255 BYTE), 
	"CC_CCID_LVL2" VARCHAR2(255 BYTE), 
	"CC_CCID_LVL3" VARCHAR2(255 BYTE), 
	"CC_CCID_LVL4" VARCHAR2(255 BYTE), 
	"CC_CCID_LVL5" VARCHAR2(255 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"CC_AMT_SP" NUMBER(26,6), 
	"CC_AMT_TYPE" VARCHAR2(1 BYTE), 
	"CC_ID" VARCHAR2(40 BYTE), 
	"CC_AMT_BS" NUMBER(26,6)
   ) ;
  GRANT UPDATE ON "SLS"."SLS$EXP$INVC$COST$CENTER" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$EXP$INVC$COST$CENTER" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$EXP$INVC$COST$CENTER" TO PUBLIC;
