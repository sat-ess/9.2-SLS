--------------------------------------------------------
--  DDL for Table SLS$SO$FLX
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$FLX" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"FIELD_ID" VARCHAR2(20 BYTE), 
	"FIELD_VAL" VARCHAR2(500 BYTE), 
	"DATA_TYPE" NUMBER(5,0), 
	"DATA_LEN" NUMBER(5,0), 
	"REQD" VARCHAR2(1 BYTE), 
	"USR_ID_CREATE" NUMBER(10,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(10,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$FLX" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$SO$FLX" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$SO$FLX" TO "APP";
  GRANT QUERY REWRITE ON "SLS"."SLS$SO$FLX" TO "APP";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$SO$FLX" TO "APP";
  GRANT REFERENCES ON "SLS"."SLS$SO$FLX" TO "APP";
  GRANT UPDATE ON "SLS"."SLS$SO$FLX" TO "APP";
  GRANT SELECT ON "SLS"."SLS$SO$FLX" TO "APP";
  GRANT INSERT ON "SLS"."SLS$SO$FLX" TO "APP";
  GRANT INDEX ON "SLS"."SLS$SO$FLX" TO "APP";
  GRANT DELETE ON "SLS"."SLS$SO$FLX" TO "APP";
  GRANT ALTER ON "SLS"."SLS$SO$FLX" TO "APP";
