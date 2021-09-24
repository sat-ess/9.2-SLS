--------------------------------------------------------
--  DDL for Procedure PROC_GET_REPORT_QUERY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SLS"."PROC_GET_REPORT_QUERY" (P_CLD_ID IN VARCHAR2,P_SLOC_ID IN NUMBER,P_ORG_ID IN VARCHAR2,P_HO_ORG_ID IN VARCHAR2,P_DOC_ID IN VARCHAR2,
P_EO_ID IN NUMBER,P_CURR_ID_SP IN  NUMBER,P_EOCATG_ID IN NUMBER,P_ASSIGNED_TO IN NUMBER,P_ITM_ID IN VARCHAR2,P_GRP_ID IN VARCHAR2,
P_STATUS IN NUMBER,P_TO_DATE IN VARCHAR2,P_FROM_DATE IN VARCHAR2,P_INV_TYPE IN NUMBER,P_REP_TYPE IN VARCHAR2,REP_QUERY OUT SYS_REFCURSOR )
IS BEGIN

if P_REP_TYPE in ('SICD','SIPD','SIGD','SISD') then

OPEN REP_QUERY For

SELECT
  DISTINCT
  A.CLD_ID,
  A.EO_CATG,
  A.SLOC_ID,
  A.ORG_ID,
  A.HO_ORG_ID,
  A.INVOICE_DOC_ID,
  SUBSTR(A.INVOICE_ID,3) INVOICE_ID,
  to_char( A.INVOICE_DOC_DT,'dd-mm-yyyy') INVOICE_DOC_DT,
  a.inv_type,
  a.inv_typ_nm,
  A.CURR_ID_SP,
  A.CURR_RATE,
  A.EO_ID,
  A.BILL_ADD,
  A.EO_NM,
  A.ITM_ID,
  B.ITM_DESC ITM_DESC,
  sum(A.ITM_AMT_BS)/sum(A.ITM_SHIP_QTY) itm_rate,
  A.ITM_UOM,
  E.UOM_NM UOM_NM ,
  sum(A.ITM_SHIP_QTY) ITM_SHIP_QTY,
  sum(nvl(decode(A.ITM_DISC_TYP,'A',A.ITM_DISC_VAL,'P',((nvl(A.ITM_SHIP_QTY,0)*nvl(itm_rate,0))*nvl(A.ITM_DISC_VAL,0)/100)),0)) Discount,
  sum(nvl(A.ITM_SHIP_QTY,0)*nvl(itm_rate,0)) itm_amt_gs,
  sum(A.ITM_AMT_BS) ITM_AMT_BS,
  sum(A.ITM_AMT_SP) ITM_AMT_SP,
  sum(A.TOT_AMT_SP) TOT_AMT_SP,
  sum(A.TOT_AMT_BS) TOT_AMT_BS,
  sum(A.ITM_COST) ITM_COST,
  M.ATT_NM INV_WF_STAT_DESC,
  F.ORG_DESC,
    nvl(L.EO_NM,'Un Assigned') ASSIGNED_TO,
  M.ATT_NM INV_MODE,
  r.adds ADDS,
  sum(nvl(n.tax_amt_sp,0)) tax_amt_sp,
  sum(nvl(n.tax_amt_bs,0)) tax_amt_bs,
  a.grp_nm,
  o.curr_notation_alias
FROM
  SLS$INVOICE$DTL_VW A,
  APP.APP$SLS$ITM_VW B,
  SLS.SLS$SO C,
  APP.APP$UOM$CONV$STD E,
  APP.ORG F,
  (SELECT eo_cld_id,
      x.eo_sloc_id,
      x.eo_ho_org_id,
      x.eo_id,
      x.eo_nm
    FROM app.app$eo x
    WHERE x.eo_cld_id = nvl(P_CLD_ID ,x.eo_cld_id)
    AND x.eo_sloc_id  = nvl( P_SLOC_ID,x.eo_sloc_id)
    AND x.eo_type     = '80'
    ) l,
    (SELECT y.att_nm, y.att_id FROM app.app$ds$att y WHERE att_type_id = 69
    ) m,
    (select att_id,att_nm from app.app$ds$att where att_type_id=74) z,
    sls.sls$inv$tr n,
app.app$curr_vw o,
APP.APP$ADDS$VW r
WHERE
   A.SLOC_ID = B.SLOC_ID AND
  A.ITM_ID = B.ITM_ID AND
  A.ORG_ID = B.ORG_ID AND
  A.CLD_ID = B.CLD_ID AND
  A.HO_ORG_ID = B.HO_ORG_ID AND
  A.SLOC_ID = C.SLOC_ID AND
  A.ORG_ID = C.ORG_ID AND
  A.CLD_ID = C.CLD_ID AND
  A.HO_ORG_ID = C.HO_ORG_ID AND
  A.SO_ID = C.SO_ID AND
  A.SLOC_ID = E.SLOC_ID AND
  A.CLD_ID = E.CLD_ID AND
  A.ITM_UOM = E.UOM_ID AND
  A.CLD_ID = F.ORG_CLD_ID AND
  A.ORG_ID = F.ORG_ID AND
  C.CLD_ID=L.EO_CLD_ID(+) AND
  C.SLOC_ID=L.EO_SLOC_ID(+)AND
  C.HO_ORG_ID=L.EO_HO_ORG_ID(+) AND
  C.ASSIGNED_TO=L.EO_ID(+) AND
  A.INV_MODE=M.ATT_ID AND
A.EO_Catg = z.Att_Id AND
  a.cld_id=n.cld_id(+) and
  a.sloc_id=n.sloc_id(+) and
  a.ho_org_id=n.ho_org_id(+) and
  a.invoice_doc_id=n.doc_id(+) and
  r.ADDS_ID(+) = A.BILL_ADD and
  a.curr_id_sp=o.curr_id and
  A.CLD_ID = nvl(P_CLD_ID ,a.cld_id) AND
  A.SLOC_ID = nvl(P_SLOC_ID ,a.sloc_id) AND
  A.ORG_ID = nvl( P_ORG_ID,a.org_id) AND
  A.HO_ORG_ID = nvl(P_HO_ORG_ID ,a.ho_org_id) AND
  A.INVOICE_DOC_ID = nvl(P_DOC_ID ,A.INVOICE_DOC_ID) AND
  A.ITM_ID=nvl( P_ITM_ID,a.itm_id) and
  a.grp_id =nvl(P_GRP_ID ,a.grp_id) and
  NVL (C.order_stat, 217)   = NVL ( P_STATUS, NVL (C.order_stat, 217))and
A.EO_CATG=NVL( P_EOCATG_ID,A.EO_CATG) and
  A.CURR_ID_SP=nvl( P_CURR_ID_SP,a.curr_id_sp) and
  a.inv_type=nvl(P_INV_TYPE ,a.inv_type) and
  nvl(C.ASSIGNED_TO,0) = nvl(P_ASSIGNED_TO,nvl(C.ASSIGNED_TO,0)) And
 A.eo_id = nvl(P_EO_ID,a.eo_id) and
  trunc(a.invoice_doc_dt) >= nvl (to_date ( P_FROM_DATE, 'yyyy-MM-dd'), a.invoice_doc_dt) and
  trunc(a.invoice_doc_dt) <= nvl (to_date (P_TO_DATE , 'yyyy-MM-dd'), a.invoice_doc_dt)
group by A.CLD_ID,
  A.EO_CATG,
  A.SLOC_ID,
  A.ORG_ID,
  A.HO_ORG_ID,
  A.INVOICE_DOC_ID,
  SUBSTR(A.INVOICE_ID,3) ,
  to_char( A.INVOICE_DOC_DT,'dd-mm-yyyy') ,
  a.inv_type,
  a.inv_typ_nm,
  A.CURR_ID_SP,
  A.CURR_RATE,
  A.EO_ID,
  A.BILL_ADD,
  A.EO_NM,
  A.ITM_ID,
  B.ITM_DESC ,
  A.ITM_UOM,
  E.UOM_NM ,
  M.ATT_NM ,
  F.ORG_DESC,
  nvl(L.EO_NM,'Un Assigned') ,
  M.ATT_NM ,
  r.adds ,
  a.grp_nm,
  o.curr_notation_alias;



else
OPEN REP_QUERY For
SELECT org_desc,
  itm_Desc,curr_notation_alias,
itm_id,
  SUM(tax_amt_bs) tax_amt_bs,
  SUM(tax_amt_sp) tax_amt_sp,
  SUM(itm_amt_gs) itm_amt_gs,
  SUM(discount) discount,
  SUM(itm_amt_sp) itm_amt_sp,
  SUM(itm_amt_bs) itm_amt_bs
FROM
  (
SELECT
  DISTINCT SUBSTR(A.SHIPMNT_ID,3) SHIPMNT_ID,
  A.CLD_ID,
A.EO_CATG,
  A.SLOC_ID,
  A.ORG_ID,
  A.HO_ORG_ID,
  A.INVOICE_DOC_ID,
  SUBSTR(A.INVOICE_ID,3) INVOICE_ID,
 to_char( A.INVOICE_DOC_DT,'dd-mm-yyyy') INVOICE_DOC_DT,
  a.inv_type,
  a.inv_typ_nm,
  A.CURR_ID_SP,
  A.CURR_RATE,
  A.EO_ID,
  A.BILL_ADD,
  A.EO_NM,
  A.SHIPMNT_DT,
  A.SO_ID,
  C.DOC_DT SO_DT,
  A.ITM_ID,
  B.ITM_DESC ITM_DESC,
  A.SHIP_AMT_SP,
  A.SHIP_AMT_BS,
  A.ITM_RATE,
  A.ITM_UOM,
  E.UOM_NM UOM_NM ,
  A.ITM_SHIP_QTY, nvl(decode(A.ITM_DISC_TYP,'A',A.ITM_DISC_VAL,'P',((nvl(A.ITM_SHIP_QTY,0)*nvl(itm_rate,0))*nvl(A.ITM_DISC_VAL,0)/100)),0) Discount,
  nvl(A.ITM_SHIP_QTY,0)*nvl(itm_rate,0) itm_amt_gs,
  A.ITM_AMT_BS,
  A.ITM_AMT_SP,
  A.TOT_AMT_SP,
  A.TOT_AMT_BS,
  A.ITM_COST,
  M.ATT_NM INV_WF_STAT_DESC,
  F.ORG_DESC,
    nvl(L.EO_NM,'Un Assigned') ASSIGNED_TO,
  M.ATT_NM INV_MODE,
  (SELECT ADDS FROM APP.APP$ADDS$VW WHERE APP.APP$ADDS$VW.ADDS_ID = A.BILL_ADD) ADDS,
  nvl(n.tax_amt_sp,0) tax_amt_sp,
  nvl(n.tax_amt_bs,0) tax_amt_bs,
a.grp_nm,
  o.curr_notation_alias
FROM
  SLS$INVOICE$DTL_VW A,
  APP.APP$SLS$ITM_VW B,
  SLS.SLS$SO C,
  APP.APP$UOM$CONV$STD E,
   APP.ORG F,
  (SELECT eo_cld_id,
      x.eo_sloc_id,
      x.eo_ho_org_id,
      x.eo_id,
      x.eo_nm
    FROM app.app$eo x
    WHERE x.eo_cld_id = nvl(P_CLD_ID ,x.eo_cld_id)
    AND x.eo_sloc_id  = nvl( P_SLOC_ID,x.eo_sloc_id)
    AND x.eo_type     = '80'
    ) l,
    (SELECT y.att_nm, y.att_id FROM app.app$ds$att y WHERE att_type_id = 69
    ) m,(select att_id,att_nm from app.app$ds$att where att_type_id=74) z,
    sls.sls$inv$tr n,
app.app$curr_vw o
WHERE
   A.SLOC_ID = B.SLOC_ID AND
  A.ITM_ID = B.ITM_ID AND
  A.ORG_ID = B.ORG_ID AND
  A.CLD_ID = B.CLD_ID AND
  A.HO_ORG_ID = B.HO_ORG_ID AND
  A.SLOC_ID = C.SLOC_ID AND
  A.ORG_ID = C.ORG_ID AND
  A.CLD_ID = C.CLD_ID AND
  A.HO_ORG_ID = C.HO_ORG_ID AND
  A.SO_ID = C.SO_ID AND
  A.SLOC_ID = E.SLOC_ID AND
  A.CLD_ID = E.CLD_ID AND
  A.ITM_UOM = E.UOM_ID AND
  A.CLD_ID = F.ORG_CLD_ID AND
  A.ORG_ID = F.ORG_ID AND
  C.CLD_ID=L.EO_CLD_ID(+) AND
  C.SLOC_ID=L.EO_SLOC_ID(+)AND
  C.HO_ORG_ID=L.EO_HO_ORG_ID(+) AND
  C.ASSIGNED_TO=L.EO_ID(+) AND
  A.INV_MODE=M.ATT_ID AND
A.EO_Catg = z.Att_Id AND
  a.cld_id=n.cld_id(+) and
  a.sloc_id=n.sloc_id(+) and
  a.ho_org_id=n.ho_org_id(+) and
  a.invoice_doc_id=n.doc_id(+) and
 a.curr_id_sp=o.curr_id and
  A.CLD_ID = nvl(P_CLD_ID ,a.cld_id) AND
  A.SLOC_ID = nvl(P_SLOC_ID ,a.sloc_id) AND
  A.ORG_ID = nvl( P_ORG_ID,a.org_id) AND
  A.HO_ORG_ID = nvl(P_HO_ORG_ID ,a.ho_org_id) AND
  A.INVOICE_DOC_ID = nvl(P_DOC_ID ,A.INVOICE_DOC_ID) AND
  A.ITM_ID=nvl( P_ITM_ID,a.itm_id) and
  a.grp_id =nvl(P_GRP_ID ,a.grp_id) and
  NVL (C.order_stat, 217)   = NVL ( P_STATUS, NVL (C.order_stat, 217))and
A.EO_CATG=NVL( P_EOCATG_ID,A.EO_CATG) and
  A.CURR_ID_SP=nvl( P_CURR_ID_SP,a.curr_id_sp) and
  a.inv_type=nvl(P_INV_TYPE ,a.inv_type) and
  nvl(C.ASSIGNED_TO,0) = nvl(P_ASSIGNED_TO,nvl(C.ASSIGNED_TO,0)) And
 A.eo_id = nvl(P_EO_ID,a.eo_id) and
  trunc(a.invoice_doc_dt) >= nvl (to_date ( P_FROM_DATE, 'yyyy-MM-dd'), a.invoice_doc_dt) and
  trunc(a.invoice_doc_dt) <= nvl (to_date (P_TO_DATE , 'yyyy-MM-dd'), a.invoice_doc_dt))
  GROUP BY org_desc,
  itm_desc,
itm_id,curr_notation_alias
 ;
 end if;

END;

/

  GRANT EXECUTE ON "SLS"."PROC_GET_REPORT_QUERY" TO PUBLIC;
