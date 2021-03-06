--------------------------------------------------------
--  DDL for Table SLS$SO$CMSSN
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$CMSSN" 
   (	"CLD_ID" VARCHAR2(4 BYTE) DEFAULT 'no', 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"BROKER_ID" NUMBER(20,0), 
	"SRVC_ITM_ID" VARCHAR2(40 BYTE), 
	"CMSSN_VAL" NUMBER(26,6), 
	"USR_ID_CREATE" NUMBER(5,0), 
	"USR_ID_CREATE_DT" DATE, 
	"CMSSN_TYPE" NUMBER(5,0)
   ) ;
  GRANT ALTER ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$SO$CMSSN" TO PUBLIC;
