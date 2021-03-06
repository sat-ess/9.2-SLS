--------------------------------------------------------
--  DDL for Table SLS$POS$USR$RIGHT
--------------------------------------------------------

  CREATE TABLE "SLS"."SLS$POS$USR$RIGHT" 
   (	"USR_ID" NUMBER, 
	"CLD_ID" VARCHAR2(4 BYTE), 
	"SLOC_ID" NUMBER(2,0), 
	"ORG_ID" VARCHAR2(2 BYTE), 
	"HO_ORG_ID" VARCHAR2(2 BYTE), 
	"PROJ_ID" VARCHAR2(40 BYTE), 
	"ACTV_RIGHT" VARCHAR2(1 BYTE) DEFAULT 'Y', 
	"ITEM_PRICE_CHECK" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CREDIT_LIMIT_CHECK" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"OVERDUE_AMT_CHECK" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CC_EDIT_RGHT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRICE_HIST_RGHT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"SO_DISC_RGHT_HEAD" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"SO_DISC_RGHT_ITM" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRFT_RGHT_ORDER" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRFT_RGHT_ITM" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ITM_VAL_RGHT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ITM_PRICE_CHNG_RGHT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ITM_QTY_CHNG_RGHT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ITM_UOM_CHNG_RGHT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ADV_COLCT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CUST_INF_UPDT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"QUOT_GEN" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"WH_CHNG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"SALE_EXCT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"OTHR_CHARG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"DLV_SCHDL" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"REL_GTC" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"GL_VIEW" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"VIEW_SO" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"VIEW_PDC" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"VIEW_QUOT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRINT_SI" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRINT_SO" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRINT_QUOT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"EXPORT_ALL_SO" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRINT_CASHUP" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRINT_CUST_STMNT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRINT_GTC" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRINT_SALE_REG" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRINT_SALE_HIST" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CASH_PAY" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"NEFT_PAY" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CHECK_PAY" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"RTGS_PAY" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CREDIT_CARD_PAY" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PDC_PAY" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ADD_SCHEM" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"GEN_LPO" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"GEN_IBT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"SO_RTRN" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CANCL_SO" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"GEN_TF" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"VIEW_AEGING" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"VIEW_SO_CALC" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"TRNP_DTL_ADD_EDIT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"ITM_CUST_HIST" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"VRTUAL_WH" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CHANG_PAY_TERM" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"MAIL_SEND" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CASH_CUST_ALLW" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CREDIT_CUST_ALLW" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CRDT_WTHOUT_PAY" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PRINT_SALE_PROFIT" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"CREATE_ID_SRCH" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) ;

   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."USR_ID" IS 'Id of the User';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PROJ_ID" IS 'This the Project id';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."ACTV_RIGHT" IS 'To Active / Deactive right';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."ITEM_PRICE_CHECK" IS 'Check Minimum sale price if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CREDIT_LIMIT_CHECK" IS 'Check Credit limit of Customer if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."OVERDUE_AMT_CHECK" IS 'Check Over due amount of customer if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CC_EDIT_RGHT" IS 'Currency change right of sales order if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRICE_HIST_RGHT" IS 'To View Price History of item if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."SO_DISC_RGHT_HEAD" IS 'To give discount at order level if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."SO_DISC_RGHT_ITM" IS 'To give discount at item level if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRFT_RGHT_ORDER" IS 'To view profit at sales order if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRFT_RGHT_ITM" IS 'To view profit of item if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."ITM_VAL_RGHT" IS 'To evaluation right of item if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."ITM_PRICE_CHNG_RGHT" IS 'To change the item price at add/edit if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."ITM_QTY_CHNG_RGHT" IS 'To change the item quantity at add/edit if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."ITM_UOM_CHNG_RGHT" IS 'To change the item UOM if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."ADV_COLCT" IS 'User can collect advance if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CUST_INF_UPDT" IS 'User can update the information of existing customer if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."QUOT_GEN" IS 'Quotation generate from POS if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."WH_CHNG" IS 'User can change the warehouse if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."SALE_EXCT" IS 'User can add or remove sales executive if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."OTHR_CHARG" IS 'User can add other charges if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."DLV_SCHDL" IS 'User can view/edit delivery schedule if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."REL_GTC" IS 'User can release GTC if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."GL_VIEW" IS 'User can view GL if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."VIEW_SO" IS 'User can search existing SO if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."VIEW_PDC" IS 'User can view PDC details if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."VIEW_QUOT" IS 'User can view existing Quotation if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRINT_SI" IS 'User can print sales invoice if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRINT_SO" IS 'User can print sales order if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRINT_QUOT" IS 'user can print sales quotation if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."EXPORT_ALL_SO" IS 'User can export all search SO if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRINT_CASHUP" IS 'User can print cash up report if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRINT_CUST_STMNT" IS 'User can print Customer Statement report if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRINT_GTC" IS 'User can print GTC report if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRINT_SALE_REG" IS 'User can print the sales register report if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRINT_SALE_HIST" IS 'User can print the sales history report if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CASH_PAY" IS 'User can make a payment through cash if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."NEFT_PAY" IS 'User can make a payment through NEFT if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CHECK_PAY" IS 'User can make a payment through CHECK if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."RTGS_PAY" IS 'User can make a payment through RTGS if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CREDIT_CARD_PAY" IS 'User can make a payment through Credit Card if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PDC_PAY" IS 'User can make a payment through future dated check if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."ADD_SCHEM" IS 'User can add or remove scheme manually if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."GEN_LPO" IS 'User can generate LOP if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."GEN_IBT" IS 'User can generate IBT if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."SO_RTRN" IS 'User can generate sales return if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CANCL_SO" IS 'User can cancel the so if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."GEN_TF" IS 'User can generate the Transfer order if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."VIEW_AEGING" IS 'User can view the ageing information if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."VIEW_SO_CALC" IS 'User can view order calculation details if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."TRNP_DTL_ADD_EDIT" IS 'User can add/edit/delete transportation history id Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."ITM_CUST_HIST" IS 'User can search customer and item history if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."VRTUAL_WH" IS 'User can access the virtual warehouse if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CHANG_PAY_TERM" IS 'User can add/edit/remove the payment terms if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."MAIL_SEND" IS 'User can send mail after approval of so if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CASH_CUST_ALLW" IS 'User can make SO for cash customer if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CREDIT_CUST_ALLW" IS 'User can make SO for credit customer if Y';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."CRDT_WTHOUT_PAY" IS 'User can proceed without payment for Credit Customer if Y.';
   COMMENT ON COLUMN "SLS"."SLS$POS$USR$RIGHT"."PRINT_SALE_PROFIT" IS 'User can print the sales order wise profit report if Y';
  GRANT INSERT ON "SLS"."SLS$POS$USR$RIGHT" TO PUBLIC;
  GRANT SELECT ON "SLS"."SLS$POS$USR$RIGHT" TO PUBLIC;
  GRANT UPDATE ON "SLS"."SLS$POS$USR$RIGHT" TO PUBLIC;
