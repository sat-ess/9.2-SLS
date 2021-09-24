--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$ITM$TRF
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$ITM$TRF" AFTER
  UPDATE OR
  DELETE ON SLS$SO$ITM$TRF REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$ITM$TRF_TRC
    (
      AVL_QTY,
      CLD_ID,
      CNT_QTY,
      DLV_DT,
      DLV_SCHDL_NO,
      DOC_ID,
      FY_ID,
      HO_ORG_ID,
      ITM_ID,
      ITM_SR_NO,
      ITM_TRF_QTY,
      ITM_TRF_QTY_BS,
      ITM_UOM,
      ITM_UOM_BS,
      ORG_ID,
      ORG_ID_DEST,
      ORG_ID_SRC,
      SLOC_ID,
      TRF_STAT,
      UOM_CONV_FCTR,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      USR_ID_MOD,
      USR_ID_MOD_DT,
      WH_ID_DEST,
      WH_ID_SRC,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :NEW.AVL_QTY,
      :NEW.CLD_ID,
      :NEW.CNT_QTY,
      :NEW.DLV_DT,
      :NEW.DLV_SCHDL_NO,
      :NEW.DOC_ID,
      :NEW.FY_ID,
      :NEW.HO_ORG_ID,
      :NEW.ITM_ID,
      :NEW.ITM_SR_NO,
      :NEW.ITM_TRF_QTY,
      :NEW.ITM_TRF_QTY_BS,
      :NEW.ITM_UOM,
      :NEW.ITM_UOM_BS,
      :NEW.ORG_ID,
      :NEW.ORG_ID_DEST,
      :NEW.ORG_ID_SRC,
      :NEW.SLOC_ID,
      :NEW.TRF_STAT,
      :NEW.UOM_CONV_FCTR,
      :NEW.USR_ID_CREATE,
      :NEW.USR_ID_CREATE_DT,
      :NEW.USR_ID_MOD,
      :NEW.USR_ID_MOD_DT,
      :NEW.WH_ID_DEST,
      :NEW.WH_ID_SRC,
      SYSTIMESTAMP,
      'U',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
IF DELETING THEN
  INSERT
  INTO trc.SLS$SO$ITM$TRF_TRC
    (
      AVL_QTY,
      CLD_ID,
      CNT_QTY,
      DLV_DT,
      DLV_SCHDL_NO,
      DOC_ID,
      FY_ID,
      HO_ORG_ID,
      ITM_ID,
      ITM_SR_NO,
      ITM_TRF_QTY,
      ITM_TRF_QTY_BS,
      ITM_UOM,
      ITM_UOM_BS,
      ORG_ID,
      ORG_ID_DEST,
      ORG_ID_SRC,
      SLOC_ID,
      TRF_STAT,
      UOM_CONV_FCTR,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      USR_ID_MOD,
      USR_ID_MOD_DT,
      WH_ID_DEST,
      WH_ID_SRC,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :OLD.AVL_QTY,
      :OLD.CLD_ID,
      :OLD.CNT_QTY,
      :OLD.DLV_DT,
      :OLD.DLV_SCHDL_NO,
      :OLD.DOC_ID,
      :OLD.FY_ID,
      :OLD.HO_ORG_ID,
      :OLD.ITM_ID,
      :OLD.ITM_SR_NO,
      :OLD.ITM_TRF_QTY,
      :OLD.ITM_TRF_QTY_BS,
      :OLD.ITM_UOM,
      :OLD.ITM_UOM_BS,
      :OLD.ORG_ID,
      :OLD.ORG_ID_DEST,
      :OLD.ORG_ID_SRC,
      :OLD.SLOC_ID,
      :OLD.TRF_STAT,
      :OLD.UOM_CONV_FCTR,
      :OLD.USR_ID_CREATE,
      :OLD.USR_ID_CREATE_DT,
      :OLD.USR_ID_MOD,
      :OLD.USR_ID_MOD_DT,
      :OLD.WH_ID_DEST,
      :OLD.WH_ID_SRC,
      SYSTIMESTAMP,
      'D',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
END;










/
ALTER TRIGGER "SLS"."TRG_SLS$SO$ITM$TRF" ENABLE;
