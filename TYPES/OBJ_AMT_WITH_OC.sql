--------------------------------------------------------
--  DDL for Type OBJ_AMT_WITH_OC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "SLS"."OBJ_AMT_WITH_OC" AS OBJECT
(
  v_dummy NUMBER(26,6),
  v_sub_dummy NUMBER(26,6),
  v_oc_id VARCHAR2(20),
  v_amt_sp NUMBER(26,6),
  v_oc_calc_on_src_id VARCHAR2(20),
  v_oc_summ_flag VARCHAR2(1),
  v_oc_summ NUMBER(26,6),
  v_oc_summ_desc VARCHAR2(200),
  v_oc_nm VARCHAR2(200),
  v_oc_calc_val NUMBER(26,6)
);

/
