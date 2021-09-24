--------------------------------------------------------
--  DDL for Table SLS$PICK$EDIT$TMP
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PICK$EDIT$TMP" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"SO_ID" VARCHAR2(40 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$PICK$EDIT$TMP" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$PICK$EDIT$TMP" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$PICK$EDIT$TMP" TO PUBLIC;
