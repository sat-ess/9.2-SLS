--------------------------------------------------------
--  DDL for Table SLS$DS$ATT
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$DS$ATT" 
   (	"ATT_ID" NUMBER(5,0), 
	"ATT_NM" VARCHAR2(50 BYTE), 
	"ATT_TYPE_ID" NUMBER(5,0), 
	"ATT_RESV" VARCHAR2(1 BYTE) DEFAULT 'Y', 
	"ATT_ACTV" VARCHAR2(1 BYTE) DEFAULT 'Y', 
	"ATT_MREF" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) ;
  GRANT INSERT ON "SLS"."SLS$DS$ATT" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$DS$ATT" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$DS$ATT" TO PUBLIC;
