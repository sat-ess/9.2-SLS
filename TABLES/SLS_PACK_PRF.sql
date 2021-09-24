--------------------------------------------------------
--  DDL for Table SLS$PACK$PRF
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PACK$PRF" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"PACK_ID" NUMBER(20,0), 
	"PACK_NM" VARCHAR2(100 BYTE), 
	"PACK_WIDTH" NUMBER(26,6), 
	"PACK_LENGTH" NUMBER(26,6), 
	"PACK_HEIGHT" NUMBER(26,6), 
	"DIMEN_UNIT" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"EMPTY_PACK_NET_WT" NUMBER(26,6), 
	"MULTI_FCTR" NUMBER(26,6), 
	"PACK_SR_NO" NUMBER(10,0), 
	"CUBIC_SIZE" NUMBER(26,6) DEFAULT 0, 
	"PACK_NOS" NUMBER(26,6) DEFAULT 0, 
	"EMPTY_PACK_GROSS_WT" NUMBER(26,6), 
	"DFLT_PACK_FLG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PACK_ID_PARENT" NUMBER(20,0) DEFAULT 0, 
	"PACK_TYPE" NUMBER(5,0) DEFAULT 1401, 
	"PACK_NATURE" NUMBER(5,0) DEFAULT 0
   ) ;
  GRANT SELECT ON "SLS"."SLS$PACK$PRF" TO "MM";
  GRANT FLASHBACK ON "SLS"."SLS$PACK$PRF" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$PACK$PRF" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$PACK$PRF" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$PACK$PRF" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$PACK$PRF" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$PACK$PRF" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PACK$PRF" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$PACK$PRF" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$PACK$PRF" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$PACK$PRF" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PACK$PRF" TO PUBLIC;