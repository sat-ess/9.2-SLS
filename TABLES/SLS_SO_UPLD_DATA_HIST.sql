--------------------------------------------------------
--  DDL for Table SLS$SO$UPLD$DATA_HIST
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$SO$UPLD$DATA_HIST" 
   (	"ORDER_DATE" DATE, 
	"ORDER_ID" VARCHAR2(50 BYTE), 
	"CUSTOMER_NAME" VARCHAR2(250 BYTE), 
	"BILLING_ADDRESS" VARCHAR2(250 BYTE), 
	"BILLING_CITY" VARCHAR2(250 BYTE), 
	"BILLING_POST_CODE" VARCHAR2(250 BYTE), 
	"BILLING_STATE" VARCHAR2(250 BYTE), 
	"BILLING_COUNTRY" VARCHAR2(250 BYTE), 
	"BILLING_EMAIL" VARCHAR2(250 BYTE), 
	"BILLING_PHONE_NO" VARCHAR2(250 BYTE), 
	"BILLING_MOBILE_NO" VARCHAR2(250 BYTE), 
	"SHIPPING_NAME" VARCHAR2(250 BYTE), 
	"SHIPPING_ADDRESS" VARCHAR2(250 BYTE), 
	"SHIPPING_CITY" VARCHAR2(250 BYTE), 
	"SHIPPING_POSTAL_CODE" VARCHAR2(250 BYTE), 
	"SHIPPING_STATE" VARCHAR2(250 BYTE), 
	"SHIPPING_COUNTRY" VARCHAR2(250 BYTE), 
	"SHIPPING_EMAIL" VARCHAR2(250 BYTE), 
	"TELEPHONE_NO" VARCHAR2(15 BYTE), 
	"SHIPPING_MOBILE_NO" VARCHAR2(250 BYTE), 
	"TRACKING_COMPANY_NAME" VARCHAR2(250 BYTE), 
	"TRACKING_NO" VARCHAR2(250 BYTE), 
	"MARKETPLACE_ID" VARCHAR2(250 BYTE), 
	"PRODUCT_CODE" VARCHAR2(50 BYTE), 
	"QUANTITY" NUMBER(26,6), 
	"PRODUCT_PRICE" NUMBER(26,6), 
	"GROSS_TOTAL" NUMBER(26,6), 
	"DISCOUNT_AMOUNT" NUMBER(26,6), 
	"NET_PRODUCT_AMOUNT" NUMBER(26,6), 
	"EXCISE_DUTY" NUMBER(26,6), 
	"SHIPPING_COST_OTHER_CHARGES" NUMBER(26,6), 
	"TAX_AMOUNT" NUMBER(26,6), 
	"TAX_NAME" VARCHAR2(250 BYTE), 
	"NET_AMOUNT" NUMBER(26,6), 
	"VEHICLE_NO" VARCHAR2(250 BYTE), 
	"SR_NO" NUMBER(10,0), 
	"V_EO_ID" NUMBER(10,0), 
	"V_SHIP_ADDS" VARCHAR2(50 BYTE), 
	"V_ITM_ID" VARCHAR2(50 BYTE), 
	"V_ITM_RATE" NUMBER(26,6), 
	"V_ITM_QTY" NUMBER(26,6), 
	"V_ITM_DISC_TYP" VARCHAR2(1 BYTE), 
	"V_ITM_DISC_VAL" NUMBER(26,6), 
	"V_ITM_AMT_SP" NUMBER(26,6), 
	"V_TAX_RULE_ID" NUMBER(10,0), 
	"V_COA_ID" NUMBER(10,0), 
	"V_ITM_UOM" VARCHAR2(20 BYTE), 
	"V_ITM_UOM_BS" VARCHAR2(20 BYTE), 
	"V_UOM_CONV_FCTR" NUMBER(26,6), 
	"DOC_TXN_ID" VARCHAR2(50 BYTE), 
	"SO_DOC_TXN_ID" VARCHAR2(50 BYTE), 
	"SO_DISP_ID" VARCHAR2(20 BYTE)
   ) ;
  GRANT INSERT ON "SLS"."SLS$SO$UPLD$DATA_HIST" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$SO$UPLD$DATA_HIST" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$SO$UPLD$DATA_HIST" TO PUBLIC;
