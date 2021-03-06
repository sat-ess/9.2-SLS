--------------------------------------------------------
--  DDL for Table SLS$PACK$PRF$GRP$ITM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PACK$PRF$GRP$ITM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"PACK_ID" NUMBER(20,0), 
	"ITM_ID" VARCHAR2(50 BYTE), 
	"ITM_QTY" NUMBER(26,6), 
	"ITM_UOM" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"INNER_PACK" NUMBER(5,0) DEFAULT 0, 
	"OUTER_PACK" NUMBER(5,0) DEFAULT 0, 
	"ITM_SR_NO" NUMBER(10,0) DEFAULT 1, 
	"DFLT_INNER_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"DFLT_OUTER_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"INNER_QTY" NUMBER(26,6) DEFAULT 0
   ) ;
  GRANT INSERT ON "SLS"."SLS$PACK$PRF$GRP$ITM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PACK$PRF$GRP$ITM" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$PACK$PRF$GRP$ITM" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PACK$PRF$GRP$ITM" TO "MM";
  GRANT DELETE ON "SLS"."SLS$PACK$PRF$GRP$ITM" TO "MM";
  GRANT INDEX ON "SLS"."SLS$PACK$PRF$GRP$ITM" TO "MM";
  GRANT INSERT ON "SLS"."SLS$PACK$PRF$GRP$ITM" TO "MM";
  GRANT SELECT ON "SLS"."SLS$PACK$PRF$GRP$ITM" TO "MM";
  GRANT UPDATE ON "SLS"."SLS$PACK$PRF$GRP$ITM" TO "MM";
  GRANT REFERENCES ON "SLS"."SLS$PACK$PRF$GRP$ITM" TO "MM";
