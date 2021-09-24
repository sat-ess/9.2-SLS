--------------------------------------------------------
--  DDL for Trigger TRG_SLS_UPD_CRM_STAT_FRM_SO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS_UPD_CRM_STAT_FRM_SO" before update
of order_stat on sls$so
for each row
declare
  PRAGMA AUTONOMOUS_TRANSACTION;
begin

update SLS$CRM$IMD$SO$DTL
set so_stat=:new.order_stat,
Stat_Nm =(Select a.Att_Nm From App.App$ds$att a Where :new.order_stat = a.att_id )
where cld_id = :old.cld_id and sloc_id = :old.sloc_id and org_id = :old.org_id and ho_org_id = :old.ho_org_id
and SO_DOC_TXN_ID=:old.doc_id;
commit;
end;


/
ALTER TRIGGER "SLS"."TRG_SLS_UPD_CRM_STAT_FRM_SO" ENABLE;
