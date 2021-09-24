--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$ITM$LOT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$ITM$LOT" AFTER
  UPDATE OR
  DELETE ON SLS$SO$ITM$LOT REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$ITM$LOT_TRC
    (
      CLD_ID,
      CNT_QTY,
      DOC_DT,
      DOC_ID,
      HO_ORG_ID,
      ITM_ID,
      ITM_LOT_COST,
      ITM_QTY,
      ITM_QTY_BS,
      ITM_SR_NO,
      ITM_UOM,
      LOT_ID,
      ORG_ID,
      SLOC_ID,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      USR_ID_MOD,
      USR_ID_MOD_DT,
      WH_ID,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :NEW.CLD_ID,
      :NEW.CNT_QTY,
      :NEW.DOC_DT,
      :NEW.DOC_ID,
      :NEW.HO_ORG_ID,
      :NEW.ITM_ID,
      :NEW.ITM_LOT_COST,
      :NEW.ITM_QTY,
      :NEW.ITM_QTY_BS,
      :NEW.ITM_SR_NO,
      :NEW.ITM_UOM,
      :NEW.LOT_ID,
      :NEW.ORG_ID,
      :NEW.SLOC_ID,
      :NEW.USR_ID_CREATE,
      :NEW.USR_ID_CREATE_DT,
      :NEW.USR_ID_MOD,
      :NEW.USR_ID_MOD_DT,
      :NEW.WH_ID,
      SYSTIMESTAMP,
      'U',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
IF DELETING THEN
  INSERT
  INTO trc.SLS$SO$ITM$LOT_TRC
    (
      CLD_ID,
      CNT_QTY,
      DOC_DT,
      DOC_ID,
      HO_ORG_ID,
      ITM_ID,
      ITM_LOT_COST,
      ITM_QTY,
      ITM_QTY_BS,
      ITM_SR_NO,
      ITM_UOM,
      LOT_ID,
      ORG_ID,
      SLOC_ID,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      USR_ID_MOD,
      USR_ID_MOD_DT,
      WH_ID,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :OLD.CLD_ID,
      :OLD.CNT_QTY,
      :OLD.DOC_DT,
      :OLD.DOC_ID,
      :OLD.HO_ORG_ID,
      :OLD.ITM_ID,
      :OLD.ITM_LOT_COST,
      :OLD.ITM_QTY,
      :OLD.ITM_QTY_BS,
      :OLD.ITM_SR_NO,
      :OLD.ITM_UOM,
      :OLD.LOT_ID,
      :OLD.ORG_ID,
      :OLD.SLOC_ID,
      :OLD.USR_ID_CREATE,
      :OLD.USR_ID_CREATE_DT,
      :OLD.USR_ID_MOD,
      :OLD.USR_ID_MOD_DT,
      :OLD.WH_ID,
      SYSTIMESTAMP,
      'D',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
END;











/
ALTER TRIGGER "SLS"."TRG_SLS$SO$ITM$LOT" ENABLE;
