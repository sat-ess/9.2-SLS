--------------------------------------------------------
--  DDL for Table SLS$MRKT$QUOT
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$MRKT$QUOT" 
   (	"CLD_ID" VARCHAR2(5 BYTE), 
	"SLOC_ID" NUMBER(5,0), 
	"ORG_ID" VARCHAR2(5 BYTE), 
	"HO_ORG_ID" VARCHAR2(5 BYTE), 
	"DOC_ID" VARCHAR2(50 BYTE), 
	"DOC_DT" DATE, 
	"MRKT_QUOT_ID" VARCHAR2(50 BYTE), 
	"USR_ID_CREATE" NUMBER(10,0), 
	"USR_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(10,0), 
	"USR_MOD_DT" DATE, 
	"QUOT_STAT" NUMBER(5,0), 
	"QUOT_MODE" NUMBER(5,0), 
	"PROJ_ID" VARCHAR2(50 BYTE), 
	"EO_ID" NUMBER(6,0), 
	"CURR_ID_SP" NUMBER(6,0), 
	"CATG_ID" NUMBER(6,0), 
	"GLBL_MENU_ID" NUMBER(10,0), 
	"FY_ID" NUMBER(5,0), 
	"REMARKS" VARCHAR2(255 BYTE), 
	"MRKT_QUOT_TYP" NUMBER(6,0), 
	"QUOT_TYPE" NUMBER(5,0), 
	"QUOT_BASIS" NUMBER(5,0), 
	"OPP_DOC_ID" VARCHAR2(40 BYTE), 
	"CURR_RATE" NUMBER(26,6), 
	"CURR_ID_BS" NUMBER(5,0), 
	"SLS_QUOT_ID" VARCHAR2(50 BYTE)
   ) ;
  GRANT FLASHBACK ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
  GRANT INSERT ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$MRKT$QUOT" TO PUBLIC;
