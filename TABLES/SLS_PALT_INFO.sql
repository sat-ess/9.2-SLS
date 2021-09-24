--------------------------------------------------------
--  DDL for Table SLS$PALT$INFO
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$PALT$INFO" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"PALT_NO" VARCHAR2(40 BYTE), 
	"EO_ID" NUMBER(5,0), 
	"MNF_PACK_TXN_ID" VARCHAR2(40 BYTE) DEFAULT '0', 
	"PICK_TXN_ID" VARCHAR2(40 BYTE)
   ) ;
