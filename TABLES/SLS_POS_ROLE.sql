--------------------------------------------------------
--  DDL for Table SLS$POS$ROLE
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$POS$ROLE" 
   (	"ROLE_ID" NUMBER(26,0), 
	"ROLE_NAME" VARCHAR2(40 BYTE), 
	"LANG_ID" NUMBER(5,0) DEFAULT 0
   ) ;
  GRANT INSERT ON "SLS"."SLS$POS$ROLE" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$POS$ROLE" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$POS$ROLE" TO PUBLIC;
