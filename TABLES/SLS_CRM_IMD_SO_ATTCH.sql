--------------------------------------------------------
--  DDL for Table SLS$CRM$IMD$SO$ATTCH
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$CRM$IMD$SO$ATTCH" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"CRM_ORD_ID" NUMBER(10,0), 
	"SO_SR_NO" NUMBER(10,0) DEFAULT 0, 
	"ATCHMNT_URL" VARCHAR2(100 BYTE)
   ) ;
