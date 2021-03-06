--------------------------------------------------------
--  DDL for Table SLS$TRNP$LO
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$TRNP$LO" 
   (	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"DOC_ID" VARCHAR2(40 BYTE), 
	"LO_ID" VARCHAR2(20 BYTE), 
	"LO_DT" DATE, 
	"LR_ID" VARCHAR2(40 BYTE), 
	"CURR_ID_SP" NUMBER(20,0), 
	"REQ_TYP" VARCHAR2(1 BYTE), 
	"TRNSP_ID" NUMBER(20,0), 
	"ROUTE_ID" VARCHAR2(40 BYTE), 
	"VEHICLE_TYP" NUMBER(20,0), 
	"VEHICLE_NO" VARCHAR2(40 BYTE), 
	"TRAILOR_NO" VARCHAR2(40 BYTE), 
	"TRAILOR_TYPE" VARCHAR2(50 BYTE), 
	"FUEL_QTY" NUMBER(26,6), 
	"FUEL_UOM" VARCHAR2(20 BYTE), 
	"DRIVER_EO_ID" NUMBER, 
	"MULTIPLE_CUST_FLG" VARCHAR2(1 BYTE), 
	"RATE_BASIS" VARCHAR2(1 BYTE), 
	"RATE_FCTR" VARCHAR2(1 BYTE), 
	"USR_ID_CREATE" NUMBER(4,0), 
	"USR_ID_CREATE_DT" DATE, 
	"USR_ID_MOD" NUMBER(4,0), 
	"USR_ID_MOD_DT" DATE, 
	"CURR_CONV_FCTR" NUMBER(26,6), 
	"LO_STATUS" NUMBER(5,0), 
	"LO_BASIS" NUMBER(5,0), 
	"LO_SRC_BASIS" NUMBER(5,0), 
	"VHCL_ITM_ID" VARCHAR2(20 BYTE) DEFAULT NULL, 
	"DRIVER_NM" VARCHAR2(250 BYTE), 
	"TOT_WT" NUMBER(26,6), 
	"ADHOC_FLG" VARCHAR2(2 BYTE), 
	"DOC_TYP_ID" NUMBER(20,0), 
	"FY_ID" NUMBER(10,0), 
	"DEPT_ID" VARCHAR2(20 BYTE), 
	"TURN_BOY" VARCHAR2(250 BYTE), 
	"TURN_BOY_EMP" NUMBER(20,0), 
	"WEGHT_SLIP_NO" VARCHAR2(40 BYTE), 
	"REMARKS" VARCHAR2(200 BYTE)
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$TRNP$LO"."REQ_TYP" IS 'I	 - Inhouse, T 	- Transporter';
   COMMENT ON COLUMN "SLS"."SLS$TRNP$LO"."MULTIPLE_CUST_FLG" IS 'N	 - No, Y - 	Yes';
   COMMENT ON COLUMN "SLS"."SLS$TRNP$LO"."RATE_BASIS" IS 'F	 - Flat Rate, P - 	Product Wise';
   COMMENT ON COLUMN "SLS"."SLS$TRNP$LO"."RATE_FCTR" IS 'D	 - Distance, W - 	Weight';
   COMMENT ON COLUMN "SLS"."SLS$TRNP$LO"."DRIVER_NM" IS 'This will store Driver Name in case of Transporter';
   COMMENT ON COLUMN "SLS"."SLS$TRNP$LO"."TOT_WT" IS 'This will store total weight of the order';
   COMMENT ON COLUMN "SLS"."SLS$TRNP$LO"."ADHOC_FLG" IS 'Use Loading Order as AdHoc (Custom) document.';
   COMMENT ON COLUMN "SLS"."SLS$TRNP$LO"."TURN_BOY_EMP" IS 'To Store Turn boy as Employee.';
  GRANT FLASHBACK ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT REFERENCES ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT UPDATE ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT SELECT ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT INSERT ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT INDEX ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT DELETE ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT ALTER ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT UPDATE ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
  GRANT DEBUG ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT QUERY REWRITE ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT REFERENCES ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT UPDATE ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT SELECT ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT INSERT ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT INDEX ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT DELETE ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT DEBUG ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT QUERY REWRITE ON "SLS"."SLS$TRNP$LO" TO "FIN";
  GRANT ALTER ON "SLS"."SLS$TRNP$LO" TO "APP";
  GRANT INSERT ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
  GRANT ALTER ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
  GRANT DELETE ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
  GRANT INDEX ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
  GRANT REFERENCES ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
  GRANT ON COMMIT REFRESH ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
  GRANT QUERY REWRITE ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
  GRANT FLASHBACK ON "SLS"."SLS$TRNP$LO" TO PUBLIC;
