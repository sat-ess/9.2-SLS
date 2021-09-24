--------------------------------------------------------
--  DDL for Table SLS$TRNP$VHCL$SCHDL$WF$TXN
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" 
   (	"SLOC_ID" NUMBER(2,0), 
	"CLD_ID" VARCHAR2(4 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"TXN_ID" VARCHAR2(40 BYTE), 
	"TXN_DT" DATE, 
	"WF_ID" VARCHAR2(4 BYTE), 
	"WF_LVL_FM" NUMBER(2,0), 
	"WF_LVL_TO" NUMBER(2,0), 
	"DOC_ID" NUMBER(10,0), 
	"TXN_DOC_ID" VARCHAR2(40 BYTE), 
	"USR_ID_BY" NUMBER(4,0), 
	"USR_ID_TO" NUMBER(4,0), 
	"ACTN_DT" DATE, 
	"AUTH_DT" DATE, 
	"WARN_DT" DATE, 
	"LVL_SKIPPED" VARCHAR2(1 BYTE), 
	"WF_STATUS_ID" VARCHAR2(1 BYTE), 
	"WF_ACTN_SEQ" NUMBER(3,0), 
	"DOC_MOD_FLG" VARCHAR2(1 BYTE), 
	"WF_REMARK" VARCHAR2(2000 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"WF_LINE_STATUS" VARCHAR2(1 BYTE), 
	"DOC_TYPE_ID" NUMBER(10,0), 
	"PRJ_ID" VARCHAR2(40 BYTE) DEFAULT 'PROJ0000'
   ) ;
  GRANT REFERENCES ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
  GRANT QUERY REWRITE ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
  GRANT FLASHBACK ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
  GRANT SELECT ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
  GRANT DELETE ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
  GRANT INDEX ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
  GRANT INSERT ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
  GRANT SELECT ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
  GRANT UPDATE ON "SLS"."SLS$TRNP$VHCL$SCHDL$WF$TXN" TO "APP";
