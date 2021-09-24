--------------------------------------------------------
--  DDL for Procedure PROC_SLS_GEN_SO_FRM_FLDMX
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SLS"."PROC_SLS_GEN_SO_FRM_FLDMX" (
		p_cld_id        VARCHAR2,
		p_sloc_id       NUMBER,
		p_org_id        VARCHAR2,
		p_ho_org_id     VARCHAR2,
		p_usr_id_create NUMBER DEFAULT 1 )
AS
	v_cnt_itm             NUMBER(5);
	V_TAX_TYPE            NUMBER(5);
	v_ftr                 NUMBER(5);
	v_cur_id              NUMBER(7);
	v_ALW_BACK_DT_ENTRY   VARCHAR2(2);
	VAR_UOM_CONV          NUMBER(5);
	V_CNT_TNC             NUMBER(5);
	v_rule_id             NUMBER(5);
	var_success           NUMBER (10) := 0;
	var_temV_EO_ID        NUMBER (10);
	var_temp_coa_id       NUMBER (10);
	var_temp_tax_amt      NUMBER (26, 6);
	var_temp_itm_tot_amt  NUMBER (26, 6);
	var_temp_tax_tot_amt  NUMBER (26, 6);
	var_temp_so_tot_amt   NUMBER (26, 6);
	var_ship_adds         VARCHAR2 (50);
	var_bill_adds         VARCHAR2 (50);
	var_itm_exist         VARCHAR2 (1) := 'N';
	var_itm_pick_ordr     NUMBER (10);
	var_tax_rule_id       NUMBER (10);
	var_doc_hex_id        VARCHAR2 (50);
	var_disp_doc_id       VARCHAR2 (50);
	var_curr_id           NUMBER (10);
	var_cc_conv_fctr      NUMBER (10) := 1;
	var_fy_id             NUMBER (1);
	var_itm_uom_sls       VARCHAR2 (20);
	var_itm_uom_bs        VARCHAR2 (20);
	var_itm_uom_conv_fctr VARCHAR2 (20);
	var_itm_id            VARCHAR2 (50);
	temp_var_cntry_id     NUMBER (10) DEFAULT 106;
	temp_var_lbl_id_ct    VARCHAR2 (100);
	temp_var_lbl_id_st    VARCHAR2 (100);
	temp_var_struct_id    VARCHAR (100);
	temp_var_fn_cal       NUMBER (10);
	v_cnt                 NUMBER       := 0;
	v_dupli               NUMBER       := 0;
	vcnt_adds             NUMBER       := 0;
	temp_cog_id           VARCHAR2(20) := 0;
	temp_eo_mst_id        NUMBER;
	vcnt_adds_def         NUMBER;
	v_round_amt           NUMBER;
	V_FTR_RESV            VARCHAR2(2);
	V_STK_RESV            NUMBER(26,6);
	V_TLRNC_QTY_SO        NUMBER(26,6);
	V_TLRNC_DAY_SO        NUMBER(26,6);
	V_TLRNC_ALW_SO        VARCHAR2(2);
	v_ftr_fld_mx              VARCHAR2(2);

	CURSOR CUR_TNC(V_EO_ID NUMBER)
	IS
		SELECT A.TNC_ID
		FROM APP.APP$EO$TNC A
		WHERE A.CLD_ID  = P_CLD_ID
		AND A.HO_ORG_ID = P_HO_ORG_ID
		AND A.SLOC_ID   = P_SLOC_ID
		AND A.EO_ID     = V_EO_ID;
	CURSOR c1 -- TO VALIDATE ROWS IN THE TABLE
	IS
		SELECT TRUNC(order_date) order_date, order_id             , billing_address_id  ,
			billing_city                      , billing_post_code    , billing_state       ,
			billing_country                   , billing_email        , billing_phone_no    ,
			billing_mobile_no                 , shipping_name        , SHIPPING_ADDRESS_ID ,
			shipping_city                     , shipping_postal_code , shipping_state      ,
			shipping_country                  , shipping_email       , telephone_no        ,
			shipping_mobile_no                , tracking_company_name, tracking_no         ,
			marketplace_type                  , marketplace_id       , product_code        ,
			quantity                          , product_price        , gross_total         ,
			discount_amount                   , net_product_amount   , excise_duty         ,
			shipping_cost_other_charges       , tax_amount           , tax_name            ,
			net_amount                        , vehicle_no           , sr_no               ,
			v_itm_amt_sp                      , V_EO_ID              , v_ship_adds         ,
			v_itm_id                          , v_itm_rate           , v_itm_qty           ,
			v_itm_disc_typ                    , v_itm_disc_val       , v_tax_rule_id       ,
			v_coa_id                          , v_itm_uom            , v_itm_uom_bs        ,
			v_uom_conv_fctr
		FROM SLS$SO$UPLD$DATA
		WHERE so_doc_txn_id IS NULL
		AND ORDER_GEN        = 'N';
	CURSOR c2 -- TO FIND OUT DISTINCT SALES ORDER HEADER
	IS
		SELECT DISTINCT TRUNC(order_date) order_date, order_id  , V_EO_ID    ,
			SHIPPING_ADDRESS_ID v_ship_adds            , vehicle_no, tracking_no,
			billing_address_id v_bill_adds             ,a.sr_no --,V_COA_ID
		FROM sls.SLS$SO$UPLD$DATA a
		WHERE so_doc_txn_id IS NULL
		AND NOT EXISTS
			(
				SELECT 1
				FROM sls.sls$so b
				WHERE b.EXT_DOC_NO=a.order_id
				AND B.CLD_ID      = P_CLD_ID
				AND B.SLOC_ID     = P_SLOC_ID
				AND B.ORG_ID      = P_ORG_ID
				AND B.HO_ORG_ID   = P_HO_ORG_ID
			)
	AND ORDER_GEN = 'N';
	CURSOR c3 ( V_EO_ID NUMBER, p_ship_adds VARCHAR2,p_sr_no NUMBER)
	IS
		SELECT a.v_itm_id , a.v_itm_rate    , a.v_itm_qty   ,
			a.v_itm_disc_typ , a.v_itm_disc_val, a.v_itm_amt_sp,
			a.v_tax_rule_id  , a.v_itm_uom     , a.v_itm_uom_bs,
			a.v_uom_conv_fctr,A.SR_NO
		FROM sls.SLS$SO$UPLD$DATA a
		WHERE V_EO_ID           = V_EO_ID
		AND SHIPPING_ADDRESS_ID = p_ship_adds
		AND so_doc_txn_id      IS NULL
		AND a.sr_no             = p_sr_no
		AND ORDER_GEN           = 'N';
BEGIN
	v_round_amt := app.fn_get_app_amt_digit(p_cld_id);
	v_ftr       :=app.app_get_org_feature(p_cld_id, p_sloc_id, p_ho_org_id, p_org_id, 'SLS.10173',
	'ID');
	V_TAX_TYPE:=app.app_get_org_feature(p_cld_id, p_sloc_id, p_ho_org_id, p_org_id, 'FIN.10115', 'ID')
	;
	V_FTR_RESV := App.app_get_org_feature(p_cld_id, p_sloc_id, p_ho_org_id, p_org_id, 'SLS.10079','ID'
	);
	V_TLRNC_ALW_SO := app.app_get_org_feature(p_cld_id, p_sloc_id, p_ho_org_id, p_org_id, 'SLS.10067',
	'ID');
	V_TLRNC_DAY_SO := app.app_get_org_feature(p_cld_id, p_sloc_id, p_ho_org_id, p_org_id, 'SLS.10069',
	'ID');
	V_TLRNC_QTY_SO := app.app_get_org_feature(p_cld_id, p_sloc_id, p_ho_org_id, p_org_id, 'SLS.10161',
	'ID');

	BEGIN
		sys.dbms_profiler.start_profiler;
	EXCEPTION
	WHEN OTHERS THEN
		NULL;
	END;
	BEGIN
		SELECT ALW_BACK_DT_ENTRY
		INTO v_ALW_BACK_DT_ENTRY
		FROM app.app$prf;
	EXCEPTION
	WHEN no_data_found THEN
		v_ALW_BACK_DT_ENTRY:= 'N';
	END;
	----------------------------section 1:-> validation part-------------------------------
	BEGIN
		FOR i IN c1 -- TO VALIDATE ROWS OF THE TABLE.
		LOOP
			--   BEGIN
			--    SELECT COUNT(1)
			--    INTO v_cnt_itm
			--    FROM app.app$itm$prf
			--    WHERE itm_id = i.v_itm_id;
			--   EXCEPTION
			--   WHEN OTHERS THEN
			--    v_cnt_itm:= 0;
			--   END;
			IF i.billing_address_id IS NULL THEN
				var_success            := 1;
				raise_application_error ( -20123,
				'Customer billing address for one of the rows is blank. Please provide proper billing address!'
				);
			elsif i.SHIPPING_ADDRESS_ID IS NULL THEN
				var_success                := 1;
				raise_application_error ( -20123,
				'Customer shipping address for one of the rows is blank. Please provide proper shipping address!'
				);
			elsif i.PRODUCT_CODE IS NULL --OR v_cnt_itm = 0
				THEN
				var_success := 1;
				raise_application_error ( -20123,
				'Product Code for one of the rows is blank. Please provide proper Product Code!');
			elsif i.quantity IS NULL OR i.quantity <= 0 THEN
				var_success     := 1;
				raise_application_error ( -20123,
				'Product Quantity for one of the rows is blank or zero. Please provide proper Product Quantity!'
				);
			elsif i.order_date > TRUNC(sysdate) THEN
				raise_application_error ( -20123, 'Order Date Exceeds the Current date.');
			END IF;
		END LOOP;
		--------------------------section 2 :-> master generation part--------------------------------
		BEGIN -- TO FETCH BASE CURRENCY OF THE ORGANISATION
			var_curr_id := app.get_org_def_curr_bs1 (p_cld_id, p_sloc_id, p_org_id);
		EXCEPTION
		WHEN OTHERS THEN
			raise_application_error ( -20123, 'There have been an error while fetching Currency Id.');
		END;
		BEGIN -- TO FETCH CURRENT  FINANICAL YEAR ID THE ORGANISATION
			var_fy_id := app.get_org_fy_id (p_cld_id, p_org_id, sysdate, 'FY');
		EXCEPTION
		WHEN OTHERS THEN
			raise_application_error ( -20123, 'There have been an error while fetching Financial Year Id.');
		END;
		BEGIN
			FOR i IN c1
			LOOP
				BEGIN
					SELECT UOM_SLS      ,UOM_BASIC
					INTO VAR_ITM_UOM_SLS,VAR_ITM_UOM_BS
					FROM app.app$itm$prf
					WHERE UPPER(ITM_ID) = UPPER(I.V_ITM_ID)
					AND HO_ORG_ID       = P_HO_ORG_ID;
				EXCEPTION
				WHEN OTHERS THEN
					VAR_ITM_UOM_SLS := NULL ;
					VAR_ITM_UOM_BS  := NULL;
				END;
				VAR_UOM_CONV:= APP.FN_GET_UOM_CONV_FCTR(p_sloc_id,p_cld_id,p_org_id,I.V_ITM_ID, VAR_ITM_UOM_SLS
				,VAR_ITM_UOM_BS);
				UPDATE SLS$SO$UPLD$DATA
				SET --v_itm_id     = I.PRODUCT_CODE,
					v_itm_uom  = VAR_ITM_UOM_SLS, v_itm_uom_bs = VAR_ITM_UOM_BS, v_uom_conv_fctr = VAR_UOM_CONV
				WHERE sr_no = i.sr_no;
				-------------HARD CODED FOR DURIAN
				SELECT DECODE(upper(trim(i.marketplace_type)),'AMAZON',959,'FLIPKART',960,961)
				INTO temp_eo_mst_id
				FROM dual;
				var_temV_EO_ID := I.V_EO_ID;
				--    fn_get_eo_id_frm_eo_nm (p_sloc_id, p_cld_id, p_org_id, p_ho_org_id, upper(
				--    i.customer_name), 68, p_usr_id_create,'Y','Y',temp_eo_mst_id);
				-- TO FIND THE COA_ID FOR THE GIVEN CUSTOMER
				var_temp_coa_id := fn_get_coa_id_frm_eo_id (p_sloc_id, p_cld_id, p_ho_org_id, p_org_id,
				var_temV_EO_ID);
				-- TO SET NEW EO_ID IN UPLOADED DATA
				UPDATE SLS$SO$UPLD$DATA
				SET v_coa_id = var_temp_coa_id--, V_EO_ID = var_temV_EO_ID
				WHERE sr_no  = i.sr_no;
				BEGIN
					v_cur_id:=FN_GET_CURR_ID_FRM_EO_ID(p_sloc_id,p_cld_id,p_ho_org_id,var_temV_EO_ID,p_org_id);
				END;
				v_rule_id:= app.FN_GET_TAX_RULE_ID(p_cld_id,p_sloc_id,i.billing_address_id,p_org_id,p_ho_org_id
				, i.PRODUCT_CODE,var_temV_EO_ID, 21503,NULL,V_TAX_TYPE);
				UPDATE SLS$SO$UPLD$DATA
				SET v_tax_rule_id = v_rule_id
				WHERE sr_no       =i.sr_no;
				UPDATE SLS$SO$UPLD$DATA
				SET v_itm_rate = FN_GET_EO_LATEST_PRICE(p_cld_id, p_sloc_id,p_org_id , p_ho_org_id,
					var_temV_EO_ID,--V_EO_ID,
					v_itm_id,sysdate,p_usr_id_create,sysdate,v_cur_id,FN_GET_CURR_RATE_FRM_CURR_ID(p_sloc_id,
					p_cld_id , p_ho_org_id,p_org_id,v_cur_id,NULL))                  , v_itm_qty = NVL (quantity, 0),
					v_itm_disc_typ                                              = 'A', v_itm_disc_val = NVL (
					discount_amount, 0)
				WHERE sr_no = i.sr_no;
				dbms_output.put_line ('PRODUCT CODE IS :' || i.product_code);
				UPDATE SLS$SO$UPLD$DATA
				SET gross_total = ( (v_itm_rate * v_itm_qty) - NVL(v_itm_disc_val,0)), v_itm_amt_sp = ( (
					v_itm_rate                     * v_itm_qty) - NVL(v_itm_disc_val,0))
				WHERE sr_no = i.sr_no;
				--- TO VALIDATE AND FETCH SHIPMENT ADDRESS
				BEGIN
					--     BEGIN
					--      SELECT ADDS_ID
					--      INTO VAR_SHIP_ADDS
					--      FROM APP.APP$ADDS$VW
					--      WHERE UPPER(REPLACE(REPLACE(ADDS,' ',''),CHR(10),'')) = UPPER(REPLACE(
					-- I.SHIPPING_ADDRESS_ID, ' '
					--       , ''))
					--      AND rownum = 1;
					--     EXCEPTION
					--     WHEN NO_DATA_FOUND THEN
					--      raise_application_error(-20415,'SHIPPING ADDRESS IS NOT CORRECT.');
					--     END;
					--     BEGIN
					--      SELECT ADDS_ID
					--      INTO VAR_BILL_ADDS
					--      FROM APP.APP$ADDS$VW
					--      WHERE UPPER(REPLACE(REPLACE(ADDS,' ',''),CHR(10),'')) = UPPER(REPLACE(
					-- i.billing_address_id, ' ',
					--       ''))
					--      AND rownum = 1;
					--     EXCEPTION
					--     WHEN NO_DATA_FOUND THEN
					--      raise_application_error(-20415,'BILLING ADDRESS IS NOT CORRECT.');
					--     END;
					VAR_SHIP_ADDS:=I.SHIPPING_ADDRESS_ID;
					VAR_BILL_ADDS:= i.billing_address_id;
					--v_ship_adds:=VAR_SHIP_ADDS;
					--v_bill_adds:=VAR_BILL_ADDS;
--					     UPDATE SLS$SO$UPLD$DATA
--					     SET v_ship_adds = var_ship_adds
--					     WHERE sr_no     = i.sr_no;
--					     UPDATE SLS$SO$UPLD$DATA
--					     SET v_bill_adds = var_bill_adds
--					     WHERE sr_no     = i.sr_no;
					--
				END;
			END LOOP;
		END;
		FOR i IN c2
		LOOP
			--return 1;
			var_doc_hex_id := app.get_txn_id (p_cld_id, p_sloc_id, p_org_id, p_usr_id_create, 21503, 308);
			dbms_output.put_line (var_doc_hex_id||' ,'||var_disp_doc_id||'aLOK');
			var_disp_doc_id := sls.gen_disp_doc_id (p_sloc_id, p_cld_id, p_org_id, 21503, var_doc_hex_id,
			308, 'SLS$SO', var_fy_id, 0,'A');
			INSERT
			INTO sls$so
				(
					cld_id      , sloc_id           , org_id           ,
					ho_org_id   , doc_id            , doc_dt           ,
					eo_id       , order_stat        , order_type       ,
					tax_rule_flg, curr_id_sp        , curr_conv_fctr   ,
					curr_id_bs  , usr_id_create     , usr_id_create_dt ,
					fy_id       , so_doc_typ_src    , so_doc_txn_id_src,
					tot_amt_sp  , tot_amt_bs        , amd_no           ,
					amd_dt      , tax_after_disc_flg, so_id            ,
					so_basis    , coa_id            , wh_id            ,
					so_mode     , ship_adds         , eo_price_plc     ,
					remarks     , tot_itm_amt_gs_sp , tot_itm_amt_gs_bs,
					trans_vh_no , so_sub_type       , prj_id           ,
					eo_catg_id  ,ins_amt            ,drft_so_id        ,
					ext_doc_no  , ext_doc_dt        , TRANS_GR_NO      ,
					BILL_ADDS   ,TLRNC_DAYS
				)
				VALUES
				(
					p_cld_id         , p_sloc_id      , p_org_id        ,
					p_ho_org_id      , var_doc_hex_id , sysdate         , --i.order_date    ,
					i.V_EO_ID        , 217            , 308             ,
					'I'              , var_curr_id    , var_cc_conv_fctr,
					var_curr_id      , p_usr_id_create, sysdate         ,
					var_fy_id        , 1024           , 0               ,
					0                , 0              , 0               ,
					NULL             , 'N'            , var_disp_doc_id ,
					391              , 0              , FN_GET_DFLT_ORG_WH(P_SLOC_ID,P_CLD_ID,P_HO_ORG_ID,P_ORG_ID,
					p_usr_id_create) , 313            , VAR_SHIP_ADDS,--i.v_ship_adds ,
					'N'              , 'FEILDMAX'     , 0            ,
					0                , i.vehicle_no   , 0            ,
					'PROJ0000'       , APP.FN_GET_EO_CATG_FRM_EO_ID(P_SLOC_ID,P_CLD_ID,P_HO_ORG_ID, i.V_EO_ID )--
					-- 223
					,0           , var_disp_doc_id , i.order_id  ,
					i.order_date , i.tracking_no   ,VAR_BILL_ADDS,--i.v_bill_adds ,
					CASE (V_TLRNC_ALW_SO)
						WHEN 'Y'
						THEN V_TLRNC_DAY_SO
						ELSE 0
					END
				);
			BEGIN
				SELECT COUNT(A.TNC_ID)
				INTO V_CNT_TNC
				FROM APP.APP$EO$TNC A
				WHERE A.CLD_ID  = P_CLD_ID
				AND A.HO_ORG_ID = P_HO_ORG_ID
				AND A.SLOC_ID   = P_SLOC_ID
				AND A.EO_ID     = I.V_EO_ID;
				BEGIN
					IF V_CNT_TNC > 0 THEN
						FOR Z IN CUR_TNC(I.V_EO_ID)
						LOOP
							INSERT
							INTO SLS.SLS$SO$TNC
								(
									CLD_ID    ,SLOC_ID      ,ORG_ID           ,
									HO_ORG_ID ,DOC_ID       ,TNC_ID           ,
									PRIORITY  ,USR_ID_CREATE,USR_ID_CREATE_DT ,
									USR_ID_MOD,USR_ID_MOD_DT
								)
								VALUES
								(
									P_CLD_ID       ,P_SLOC_ID      ,P_ORG_ID,
									P_HO_ORG_ID    ,var_doc_hex_id ,Z.TNC_ID,
									NULL           ,p_usr_id_create,SYSDATE ,
									p_usr_id_create,SYSDATE
								);
						END LOOP;
					END IF;
				END;
			END;
			-------------------------------- INSERT INTO PAYMNT SCHEDULE TABLE ----------------------------
			--   INSERT
			--   INTO SLS$SO$PMNT$SCHDL
			--    (
			--     CLD_ID    , SLOC_ID      , ORG_ID           ,
			--     HO_ORG_ID , DOC_ID       , PAY_DT           ,
			--     PAY_MODE  , TOT_AMT      , PAY_AMT          ,
			--     ADV_FLG   , USR_ID_CREATE, USR_ID_CREATE_DT ,
			--     USR_ID_MOD, USR_ID_MOD_DT, PHONE_NO
			--    )
			--    VALUES
			--    (
			--     p_cld_id       , p_sloc_id      , p_org_id ,
			--     p_ho_org_id    , var_doc_hex_id , sysdate  , --i.order_date    ,
			--     160            , 0              , 0        ,
			--     'N'            , p_usr_id_create, sysdate  ,
			--     p_usr_id_create, sysdate        ,NULL
			--    );
			--var_doc_hex_id  := 'aLOK1';
			FOR j IN c3 -- TO GENERATE SALES ORDER ITEM DETAILS
			(
				-- i.order_date,
				i.V_EO_ID, i.v_ship_adds,i.sr_no
			)
			LOOP
				BEGIN
					SELECT COUNT(1)
					INTO v_cnt
					FROM sls$so$itm
					WHERE doc_id = var_doc_hex_id
					AND itm_id   = j.v_itm_id;
				EXCEPTION
				WHEN no_data_found THEN
					v_cnt := 0;
				END;
				IF v_cnt  > 0 THEN
					v_dupli := 1;
				ELSE
					INSERT
					INTO sls$so$itm
						(
							cld_id          , sloc_id      , org_id       ,
							ho_org_id       , doc_id       , itm_sr_no    ,
							itm_id          , itm_rate     , itm_uom      ,
							itm_qty         , itm_disc_typ , itm_disc_val ,
							itm_amt_bs      , itm_amt_sp   , remarks      ,
							tlrnc_qty_type  , tlrnc_qty_val, usr_id_create,
							usr_id_create_dt, tax_rule_flg , bal_qty      ,
							itm_uom_bs      , uom_conv_fctr, itm_qty_bs   ,
							itm_amt_gs_sp   , itm_amt_gs_bs, temp_amt_sp  ,
							asbl_amt_bs     , asbl_amt_sp  , tmp_bal_qty  ,
							amc_flg         , itm_basis    , qc_reqd_flg  ,
							qc_override_flg
						)
						VALUES
						(
							p_cld_id       , p_sloc_id      , p_org_id          ,
							p_ho_org_id    , var_doc_hex_id , 1                 ,
							j.v_itm_id     , j.v_itm_rate   , j.v_itm_uom       ,
							j.v_itm_qty    , 'A'            , j. v_itm_disc_val ,
							j.v_itm_amt_sp , j.v_itm_amt_sp , NULL              ,
							CASE (V_TLRNC_ALW_SO)
								WHEN 'Y'
								THEN 'P'
								ELSE 'A'
							END ,
							CASE (V_TLRNC_ALW_SO)
								WHEN 'Y'
								THEN V_TLRNC_QTY_SO
								ELSE 0
							END                                                                                , p_usr_id_create                           , sysdate        ,
							DECODE (NVL (j.v_tax_rule_id, 0), 0, 'N', 'Y')                                     , j.v_itm_qty                               , j.v_itm_uom_bs ,
							j.v_uom_conv_fctr                                                                  , ROUND (j.v_itm_qty * j.v_uom_conv_fctr, 2),
							(j.v_itm_rate                                                       * j.v_itm_qty) , (
							j.v_itm_rate                                                        * j.v_itm_qty) ,
							j.v_itm_amt_sp                                                                     ,
							j.v_itm_amt_sp                                                                     ,
							j.v_itm_amt_sp                                                                     , 0 , 'N'
							,
							869 , 'N' , 'N'
						);

            		-- TO UPDATE UPLOADED DATA SHEEET.added by Nitesh Garg 14092018
            UPDATE sls.SLS$SO$UPLD$DATA
			SET so_doc_txn_id = var_doc_hex_id, so_disp_id = var_disp_doc_id
			WHERE order_date  = i.order_date
			AND V_EO_ID       = i.V_EO_ID
			AND nvl(SHIPPING_ADDRESS_ID,'-1')   = nvl(i.v_ship_adds,'-1')
			AND ORDER_ID      = I.ORDER_ID
      AND V_ITM_ID = j.v_itm_id
      AND V_ITM_UOM = j.v_itm_uom  ;

					------------------------------- delivery schedule insertion added by anuj 13-09-17
					--------------------------------------
					INSERT
					INTO SLS.SLS$SO$DLV$SCHDL
						(
							CLD_ID   , SLOC_ID, ORG_ID    ,
							HO_ORG_ID, DOC_ID , ITM_SR_NO ,
							ITM_ID   , DLV_DT , TOT_QTY
							--------------------------------------------------------------------
							,DLV_MODE    , DLV_QTY         , TLRNC_QTY_TYPE ,
							TLRNC_QTY_VAL, WH_ID           , DLV_ADDS_ID    ,
							USR_ID_CREATE, USR_ID_CREATE_DT, USR_ID_MOD
							-------------------------------------------------------------------------
							,USR_ID_MOD_DT, DLV_SCHDL_NO , AVL_QTY    ,
							ITM_UOM_BS    , UOM_CONV_FCTR, DLV_QTY_BS ,
							BAL_QTY       , ITM_UOM      , REMARKS
							---------------------------------------------------------------------
							,PLN_QTY, PRJ_ID  , TMP_BAL_QTY ,
							RSRV_QTY, CNT_QTY , DLV_TYPE    ,
							GTC_ID  , SHIP_FLG, ATC_ID
							------------------------------------------------------------------------
							,PO_DOC_ID, RETURN_QTY, PI_BAL_QTY
						)
						VALUES
						(
							p_cld_id    , p_sloc_id      , p_org_id    ,
							p_ho_org_id , var_doc_hex_id , 1           ,
							j.v_itm_id  , sysdate        , j.v_itm_qty ,
							----------------------------------------------------------------------------------------
							163 ,j.v_itm_qty ,
							CASE (V_TLRNC_ALW_SO)
								WHEN 'Y'
								THEN 'P'
								ELSE 'A'
							END ,
							CASE (V_TLRNC_ALW_SO)
								WHEN 'Y'
								THEN V_TLRNC_QTY_SO
								ELSE 0
							END           ,FN_GET_DFLT_ORG_WH(P_SLOC_ID,P_CLD_ID,P_HO_ORG_ID,P_ORG_ID,p_usr_id_create),
							i.v_ship_adds ,p_usr_id_create                                                            ,
							SYSDATE       ,p_usr_id_create
							-------------------------------------------------------------------------------------
							,SYSDATE       ,1                  , j.v_itm_qty                       ,
							j.v_itm_uom_bs , j.v_uom_conv_fctr ,(j.v_itm_qty * j.v_uom_conv_fctr ) ,
							j.v_itm_qty    ,j.v_itm_uom        , NULL                              ,
							-----------------------------------------------------------------------------------------------
							0    , 'PROJ0000', 0    ,
							0    ,0          , 1070 ,
							NULL , NULL      , NULL ,
							------------------------------------------------------------------------------------------------------
							NULL, 0, 0
						);
					--     IF (j.v_tax_rule_id IS NOT NULL AND j.v_tax_rule_id <> -1 ) THEN -- FOR TAX ENTRIES
					--      INSERT
					--      INTO sls$so$tr
					--       (
					--        sloc_id    , cld_id       , org_id          ,
					--        ho_org_id  , doc_id       , tax_rule_id     ,
					--        taxable_amt, usr_id_create, usr_id_create_dt,
					--        tax_amt_bs , itm_id       , sr_no           ,
					--        tax_amt_sp
					--       )
					--       VALUES
					--       (
					--        p_sloc_id     , p_cld_id       , p_org_id       ,
					--        p_ho_org_id   , var_doc_hex_id , j.v_tax_rule_id,
					--        j.v_itm_amt_sp, p_usr_id_create, sysdate        ,
					--        0             , j.v_itm_id     , 1              ,
					--        j.v_itm_amt_sp
					--       );
					--      var_temp_tax_amt := fn_ins_so_tr_lines (p_sloc_id, p_cld_id, p_ho_org_id, p_org_id,
					--      var_doc_hex_id, j.v_itm_id, j.v_tax_rule_id, p_usr_id_create, j.v_itm_amt_sp,
					-- j.v_itm_amt_sp
					--      , 1, 1,'N','0',0,NULL,NULL,NULL,0,'N',J.v_itm_qty);
					--      UPDATE sls$so$tr
					--      SET tax_amt_sp = var_temp_tax_amt, tax_amt_bs = var_temp_tax_amt
					--      WHERE cld_id   = p_cld_id
					--      AND sloc_id    = p_sloc_id
					--      AND ho_org_id  = p_ho_org_id
					--      AND org_id     = p_org_id
					--      AND doc_id     = var_doc_hex_id
					--      AND itm_id     = j.v_itm_id;
					--     END IF;
				END IF;
			END LOOP;
			-- TO CALCULATE THE SUM OF ITEM
			SELECT SUM (itm_amt_sp)
			INTO var_temp_itm_tot_amt
			FROM sls$so$itm a
			WHERE a.cld_id  = p_cld_id
			AND a.sloc_id   = p_sloc_id
			AND a.org_id    = p_org_id
			AND a.ho_org_id = p_ho_org_id
			AND a.doc_id    = var_doc_hex_id;
			-- TO CALCULATE THE SUM OF TAX
			SELECT SUM (a.tax_amt_sp)
			INTO var_temp_tax_tot_amt
			FROM sls$so$tr a
			WHERE a.cld_id  = p_cld_id
			AND a.sloc_id   = p_sloc_id
			AND a.org_id    = p_org_id
			AND a.ho_org_id = p_ho_org_id
			AND a.doc_id    = var_doc_hex_id;
			-- TO CALCULATE TOTAL SALES ORDER AMOUNT
			var_temp_so_tot_amt := NVL (var_temp_itm_tot_amt, 0) + NVL (var_temp_tax_tot_amt, 0);
			UPDATE sls$so
			SET tot_amt_sp                                          = var_temp_so_tot_amt, tot_amt_bs = var_temp_so_tot_amt, tot_itm_amt_gs_sp =
				var_temp_so_tot_amt                , tot_itm_amt_gs_bs = var_temp_so_tot_amt
			WHERE doc_id                                            = var_doc_hex_id;
			------------- update paymnt schedule amount
			UPDATE sls.sls$so$pmnt$schdl
			SET TOT_AMT  = var_temp_so_tot_amt , PAY_AMT = var_temp_so_tot_amt
			WHERE doc_id = var_doc_hex_id;

      /*code commented by  Nitesh Garg 14092018 and added item id and uom in where clause (see item wise cursor)
			-- TO UPDATE UPLOADED DATA SHEEET.
			UPDATE sls.SLS$SO$UPLD$DATA
			SET so_doc_txn_id = var_doc_hex_id, so_disp_id = var_disp_doc_id
			WHERE order_date  = i.order_date
			AND V_EO_ID       = i.V_EO_ID
			AND v_ship_adds   = i.v_ship_adds
			AND ORDER_ID      = I.ORDER_ID;
      */

			---added by anuj 11-09-17 because as per requirment apporved so need to be genrated.
			IF v_ftr_RESV = 'Y' THEN
				V_STK_RESV  := FN_STK_RESV_ON_SO(P_CLD_ID,P_SLOC_ID, P_ORG_ID, P_HO_ORG_ID,var_doc_hex_id,'R');
			END IF;
			dbms_lock.sleep(1);
		END LOOP;
		BEGIN
			UPDATE SLS$SO$UPLD$DATA
			SET order_date                                                                                 = trim (order_date)        , order_id = trim (order_id), billing_address_id = trim (
				billing_address_id)                                                         , billing_city    = trim (billing_city)                           ,
				billing_post_code                                                                             = trim (billing_post_code) , billing_state =
				trim (billing_state)                                                        , billing_country =
				trim (billing_country)                                                      , billing_email   =
				trim (billing_email)                                                        , billing_phone_no
				= trim (billing_phone_no)                                                   , billing_mobile_no
				= trim (billing_mobile_no)                                                  , shipping_name =
				trim (shipping_name)                                                        ,
				SHIPPING_ADDRESS_ID = trim (SHIPPING_ADDRESS_ID)                            , shipping_city =
				trim (shipping_city)                                                        ,
				shipping_postal_code = trim (shipping_postal_code)                          , shipping_state =
				trim (shipping_state)                                                       , shipping_country
				                                                                                           = trim (shipping_country)                                                   , shipping_email =
				trim (shipping_email)                                                       , telephone_no =
				trim (telephone_no)                                                         ,
				shipping_mobile_no    = trim (shipping_mobile_no)                              ,
				tracking_company_name = trim (tracking_company_name)                           , tracking_no =
				trim ( tracking_no)                                                            ,
				marketplace_type                                                                          = trim (marketplace_type)                                     , marketplace_id
				                                                                                          = trim (marketplace_id)                                       , product_code =
				trim (product_code)                                                            , quantity =
				trim (quantity)                                                                , product_price
				= trim (product_price)                                                         , gross_total =
				trim (gross_total)                                                             ,
				discount_amount             = trim (discount_amount)                                       ,
				net_product_amount          = trim (net_product_amount)                                    , excise_duty
				                            = trim (excise_duty)                                           ,
				shipping_cost_other_charges = trim (shipping_cost_other_charges)                           ,
				tax_amount                  = trim ( tax_amount)                                           ,
				tax_name                    = trim ( tax_name)                                             ,
				net_amount                  = trim ( net_amount)                                           ,
				vehicle_no                  = trim ( vehicle_no)                                           ,
				doc_txn_id                  = var_doc_hex_id                                               ,
				ORDER_GEN                   = 'Y';
		END;
	END;
	BEGIN
		sys.dbms_profiler.stop_profiler;
	EXCEPTION
	WHEN OTHERS THEN
		NULL;
	END;
END;

/
