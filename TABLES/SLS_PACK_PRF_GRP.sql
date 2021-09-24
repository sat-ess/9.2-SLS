--------------------------------------------------------
--  DDL for Table SLS$PACK$PRF$GRP
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PACK$PRF$GRP" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"PACK_ID" NUMBER(20,0), 
	"PACK_NM" VARCHAR2(100 BYTE), 
	"PACK_NOS" NUMBER(26,6), 
	"PACK_NET_WT" NUMBER(26,6), 
	"PACK_GROSS_WT" NUMBER(26,6), 
	"PACK_TYPE" NUMBER(5,0), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE DEFAULT SYSDATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT INSERT ON "SLS"."SLS$PACK$PRF$GRP" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PACK$PRF$GRP" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$PACK$PRF$GRP" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$PACK$PRF$GRP" TO "MM";
  GRANT DELETE ON "SLS"."SLS$PACK$PRF$GRP" TO "MM";
  GRANT INDEX ON "SLS"."SLS$PACK$PRF$GRP" TO "MM";
  GRANT INSERT ON "SLS"."SLS$PACK$PRF$GRP" TO "MM";
  GRANT SELECT ON "SLS"."SLS$PACK$PRF$GRP" TO "MM";
  GRANT UPDATE ON "SLS"."SLS$PACK$PRF$GRP" TO "MM";
  GRANT REFERENCES ON "SLS"."SLS$PACK$PRF$GRP" TO "MM";