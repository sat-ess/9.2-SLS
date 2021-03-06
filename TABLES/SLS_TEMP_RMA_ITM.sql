--------------------------------------------------------
--  DDL for Table SLS$TEMP$RMA$ITM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TEMP$RMA$ITM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"DOC_DT" DATE, 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"SHIPMNT_QTY" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"ITM_PRICE" NUMBER(20,6), 
	"ITM_AMT_SP" NUMBER(26,6), 
	"SO_ID" VARCHAR2(40 BYTE), 
	"SHIPMNT_ID" VARCHAR2(40 BYTE), 
	"SHIPMNT_DT" DATE, 
	"RETURN_TYP_ID" NUMBER(10,0), 
	"REASON" VARCHAR2(40 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"ITM_AMT_BS" NUMBER(26,6), 
	"REJ_QTY" NUMBER(26,6), 
	"SR_NO" NUMBER(5,0), 
	"TAX_REVS_FLG" VARCHAR2(1 BYTE), 
	"REMARKS" VARCHAR2(50 BYTE), 
	"CNT_QTY" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$TEMP$RMA$ITM" TO PUBLIC;
