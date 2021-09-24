--------------------------------------------------------
--  DDL for Procedure ADD_REP_MODULE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SLS"."ADD_REP_MODULE" (p_cld_id varchar2,p_sloc_id number,p_org_id varchar2,p_obj_nm varchar2,p_obj_desc varchar2,p_obj_alias varchar2,p_tab_owner varchar2,retVal out NUMBER) as
cursor  c1 is
select column_id sno, column_name, data_length,data_type from all_tab_columns where table_name =p_obj_nm order by column_id;
cursor c2 is
select mdl_desc,mdl_alias,mdl_cld_id,mdl_sloc_id,mdl_org_id from app$rpt$mdl;

v_mdl_id number;
v_tab_id number;
V_count number;
V_Width number;
v_insert varchar(20);

begin
v_insert:='Y';
for k in c2 loop
IF p_obj_desc = k.mdl_desc and p_obj_alias = k.mdl_alias and p_cld_id = k.mdl_cld_id and p_sloc_id=k.mdl_sloc_id and p_org_id=k.mdl_org_id then
v_insert:='N';
END IF;
END LOOP;
IF v_insert='Y' THEN
Begin
select nvl(max(mdl_id),0)+1 into v_mdl_id
 from SLS.APP$RPT$MDL
where mdl_cld_id=p_cld_id
and   mdl_sloc_id=p_sloc_id;
--and   mdl_org_id =p_org_id;
Exception when others then
v_mdl_id:=1;
End;

Begin
select nvl(max(TO_NUMBER(mdl_tab_id)),0)+1 into V_count
 from SLS.APP$RPT$MDL$COL$PARA
where mdl_cld_id=p_cld_id
and   mdl_sloc_id=p_sloc_id;
--and   mdl_org_id =p_org_id;
Exception when others then
v_tab_id:=1;
End;

Begin
select nvl(max(tab_id),0)+1 into v_tab_id
 from SLS.APP$RPT$TAB
where tab_cld_id=p_cld_id
and   tab_sloc_id=p_sloc_id;
Exception when others then
v_tab_id:=1;
End;


Insert into SLS.APP$RPT$MDL
   (MDL_CLD_ID, MDL_SLOC_ID, MDL_ORG_ID, MDL_APPLI_STRUCT, MDL_ID,
    MDL_ALIAS, MDL_DESC, MDL_TYP, USR_ID_CREATE, USR_ID_CREATE_DT,
    USR_MOD_ID, USR_MOD_DATE)
 Values
   (p_cld_id, p_sloc_id, p_org_id ,'0', v_mdl_id,
    p_obj_alias, p_obj_desc, '1', 1, sysdate,
    1, sysdate);


Insert into SLS.APP$RPT$MDL$TAB
   (MDL_CLD_ID, MDL_SLOC_ID, MDL_ORG_ID, MDL_ID, MDL_TAB_ID,
    USR_ID_CREATE, USR_ID_CREATE_DT, USR_MOD_ID, USR_MOD_DATE)
 Values
   (p_cld_id, p_sloc_id, p_org_id ,v_mdl_id, v_tab_id,
    1, sysdate, 1, sysdate);


Insert into SLS.APP$RPT$TAB
   (TAB_CLD_ID, TAB_SLOC_ID, TAB_ID, TAB_NM, USR_ID_CREATE,
    USR_ID_CREATE_DT, USR_MOD_ID, USR_MOD_DATE,TAB_OWNER)
 Values
   (p_cld_id, p_sloc_id, v_tab_id, p_obj_nm, 1,
    sysdate, 1, sysdate,p_tab_owner);

for i in c1 loop
V_count:=V_count+1;
V_Width:=100;
IF V_Width<60 THEN
V_Width:=100;
END IF;
Insert into SLS.APP$RPT$MDL$COL$PARA
   (MDL_CLD_ID, MDL_SLOC_ID, MDL_ORG_ID, MDL_ID, MDL_TAB_ID,
    MDL_COL_NM, MDL_COL_VSBL, MDL_COL_SNO, MDL_COL_HEIGHT, MDL_COL_WIDTH,
    USR_ID_CREATE, USR_ID_CREATE_DT, USR_MOD_ID, USR_MOD_DATE, MDL_COL_DESC,
    MDL_COL_SUMM, MDL_GRP_BY, MDL_GRP_SNO,MDL_COL_SUM_FLG)
 Values
   (p_cld_id, p_sloc_id, p_org_id, v_mdl_id, V_count,
    i.column_name, 'N',i.sno, 50, V_Width,
    1, sysdate, 1, sysdate, i.column_name,
    NULL, NULL, NULL,decode(i.data_type,'NUMBER','Y','N'));
    DBMS_OUTPUT.put_line (i.column_name);

end loop;
END IF;
end;

/

  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "FIN";
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "SVC";
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "MNF";
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "MM";
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "HCM";
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "FIN";
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO PUBLIC;
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO PUBLIC;
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "MM";
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "HCM";
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "SVC";
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "MNF";
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO PUBLIC;
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO PUBLIC;
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "FIN" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "FIN" WITH GRANT OPTION;
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "HCM" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "HCM" WITH GRANT OPTION;
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "MNF" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "MNF" WITH GRANT OPTION;
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "APP" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "APP" WITH GRANT OPTION;
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "MM" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "SVC" WITH GRANT OPTION;
  GRANT DEBUG ON "SLS"."ADD_REP_MODULE" TO "MM" WITH GRANT OPTION;
  GRANT EXECUTE ON "SLS"."ADD_REP_MODULE" TO "SVC" WITH GRANT OPTION;
