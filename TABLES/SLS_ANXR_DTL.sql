--------------------------------------------------------
--  DDL for Table SLS$ANXR$DTL
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$ANXR$DTL" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"CNTNR_NMBR" VARCHAR2(20 BYTE), 
	"SHPNG_BIL_NMBR" VARCHAR2(40 BYTE), 
	"SHPNG_BIL_DT" DATE, 
	"CNTNR_SIZE" VARCHAR2(40 BYTE), 
	"CNTNR_DT" DATE, 
	"SEAL_NMBR" VARCHAR2(50 BYTE), 
	"NMBR_OF_PKGS" NUMBER(5,0), 
	"CNTNR_SR_NO" NUMBER(4,0), 
	"PACK_DOC_ID" VARCHAR2(50 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"CNTNR_SIZE_1" VARCHAR2(40 BYTE), 
	"DTL_ID" VARCHAR2(100 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$ANXR$DTL" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$ANXR$DTL" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$ANXR$DTL" TO PUBLIC;
