--------------------------------------------------------
--  DDL for Table SLS$TRNP$VHCL$REG$DTL$WT$UOM
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$VHCL$REG$DTL$WT$UOM" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"ITM_SR_NO" VARCHAR2(20 BYTE), 
	"CAP_VAL" NUMBER(26,6), 
	"CAP_UOM" VARCHAR2(20 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE
   ) ;
  GRANT INSERT ON "SLS"."SLS$TRNP$VHCL$REG$DTL$WT$UOM" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$VHCL$REG$DTL$WT$UOM" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$TRNP$VHCL$REG$DTL$WT$UOM" TO PUBLIC;
