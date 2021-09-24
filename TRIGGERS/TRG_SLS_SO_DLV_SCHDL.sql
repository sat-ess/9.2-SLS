--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$DLV$SCHDL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$DLV$SCHDL" AFTER
  UPDATE OR
  DELETE ON SLS$SO$DLV$SCHDL REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$DLV$SCHDL_TRC
    (
      AVL_QTY,
      BAL_QTY,
      CLD_ID,
      CNT_QTY,
      DLV_ADDS_ID,
      DLV_DT,
      DLV_MODE,
      DLV_QTY,
      DLV_QTY_BS,
      DLV_SCHDL_NO,
      DLV_TYPE,
      DOC_ID,
      HO_ORG_ID,
      ITM_ID,
      ITM_SR_NO,
      ITM_UOM,
      ITM_UOM_BS,
      ORG_ID,
      PLN_QTY,
      PRJ_ID,
      REMARKS,
      RSRV_QTY,
      SLOC_ID,
      TLRNC_QTY_TYPE,
      TLRNC_QTY_VAL,
      TMP_BAL_QTY,
      TOT_QTY,
      UOM_CONV_FCTR,
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
      :NEW.AVL_QTY,
      :NEW.BAL_QTY,
      :NEW.CLD_ID,
      :NEW.CNT_QTY,
      :NEW.DLV_ADDS_ID,
      :NEW.DLV_DT,
      :NEW.DLV_MODE,
      :NEW.DLV_QTY,
      :NEW.DLV_QTY_BS,
      :NEW.DLV_SCHDL_NO,
      :NEW.DLV_TYPE,
      :NEW.DOC_ID,
      :NEW.HO_ORG_ID,
      :NEW.ITM_ID,
      :NEW.ITM_SR_NO,
      :NEW.ITM_UOM,
      :NEW.ITM_UOM_BS,
      :NEW.ORG_ID,
      :NEW.PLN_QTY,
      :NEW.PRJ_ID,
      :NEW.REMARKS,
      :NEW.RSRV_QTY,
      :NEW.SLOC_ID,
      :NEW.TLRNC_QTY_TYPE,
      :NEW.TLRNC_QTY_VAL,
      :NEW.TMP_BAL_QTY,
      :NEW.TOT_QTY,
      :NEW.UOM_CONV_FCTR,
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
  INTO trc.SLS$SO$DLV$SCHDL_TRC
    (
      AVL_QTY,
      BAL_QTY,
      CLD_ID,
      CNT_QTY,
      DLV_ADDS_ID,
      DLV_DT,
      DLV_MODE,
      DLV_QTY,
      DLV_QTY_BS,
      DLV_SCHDL_NO,
      DLV_TYPE,
      DOC_ID,
      HO_ORG_ID,
      ITM_ID,
      ITM_SR_NO,
      ITM_UOM,
      ITM_UOM_BS,
      ORG_ID,
      PLN_QTY,
      PRJ_ID,
      REMARKS,
      RSRV_QTY,
      SLOC_ID,
      TLRNC_QTY_TYPE,
      TLRNC_QTY_VAL,
      TMP_BAL_QTY,
      TOT_QTY,
      UOM_CONV_FCTR,
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
      :OLD.AVL_QTY,
      :OLD.BAL_QTY,
      :OLD.CLD_ID,
      :OLD.CNT_QTY,
      :OLD.DLV_ADDS_ID,
      :OLD.DLV_DT,
      :OLD.DLV_MODE,
      :OLD.DLV_QTY,
      :OLD.DLV_QTY_BS,
      :OLD.DLV_SCHDL_NO,
      :OLD.DLV_TYPE,
      :OLD.DOC_ID,
      :OLD.HO_ORG_ID,
      :OLD.ITM_ID,
      :OLD.ITM_SR_NO,
      :OLD.ITM_UOM,
      :OLD.ITM_UOM_BS,
      :OLD.ORG_ID,
      :OLD.PLN_QTY,
      :OLD.PRJ_ID,
      :OLD.REMARKS,
      :OLD.RSRV_QTY,
      :OLD.SLOC_ID,
      :OLD.TLRNC_QTY_TYPE,
      :OLD.TLRNC_QTY_VAL,
      :OLD.TMP_BAL_QTY,
      :OLD.TOT_QTY,
      :OLD.UOM_CONV_FCTR,
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
ALTER TRIGGER "SLS"."TRG_SLS$SO$DLV$SCHDL" ENABLE;
