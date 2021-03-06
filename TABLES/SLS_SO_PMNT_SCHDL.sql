--------------------------------------------------------
--  DDL for Table SLS$SO$PMNT$SCHDL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$PMNT$SCHDL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"PAY_DT" DATE, 
	"PAY_MODE" NUMBER(20,0), 
	"TOT_AMT" NUMBER(26,6), 
	"PAY_AMT" NUMBER(26,6), 
	"ADV_FLG" VARCHAR2(1 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"PHONE_NO" VARCHAR2(50 BYTE), 
	"DLV_TYPE" NUMBER(20,0), 
	"MILESTN_SL_NO" NUMBER(5,0), 
	"MILESTN_ID" VARCHAR2(20 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$SO$PMNT$SCHDL"."PHONE_NO" IS 'FIELD TO STORE PHONE NO. IN CASE PAYMENT MODE IS MPESA.';
   COMMENT ON COLUMN "SLS"."SLS$SO$PMNT$SCHDL"."DLV_TYPE" IS 'DELIVERY TYPE if 1070:To Deliver and  if 1071 : To Collect';
  GRANT DEBUG ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT DEBUG ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT REFERENCES ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT UPDATE ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT SELECT ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT INSERT ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT INDEX ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT DELETE ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT ALTER ON "SLS"."SLS$SO$PMNT$SCHDL" TO "PMS";
  GRANT FLASHBACK ON "SLS"."SLS$SO$PMNT$SCHDL" TO PUBLIC;
