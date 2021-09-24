--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$ITM$BIN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$ITM$BIN" AFTER
  UPDATE OR
  DELETE ON SLS$SO$ITM$BIN REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$ITM$BIN_TRC
    (
      BIN_ID,
      CLD_ID,
      CNT_QTY,
      DOC_DT,
      DOC_ID,
      HO_ORG_ID,
      ITM_ID,
      ITM_QTY,
      ITM_QTY_BS,
      ITM_SR_NO,
      ITM_UOM,
      LOT_ID,
      ORG_ID,
      SLOC_ID,
      WH_ID,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :NEW.BIN_ID,
      :NEW.CLD_ID,
      :NEW.CNT_QTY,
      :NEW.DOC_DT,
      :NEW.DOC_ID,
      :NEW.HO_ORG_ID,
      :NEW.ITM_ID,
      :NEW.ITM_QTY,
      :NEW.ITM_QTY_BS,
      :NEW.ITM_SR_NO,
      :NEW.ITM_UOM,
      :NEW.LOT_ID,
      :NEW.ORG_ID,
      :NEW.SLOC_ID,
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
  INTO trc.SLS$SO$ITM$BIN_TRC
    (
      BIN_ID,
      CLD_ID,
      CNT_QTY,
      DOC_DT,
      DOC_ID,
      HO_ORG_ID,
      ITM_ID,
      ITM_QTY,
      ITM_QTY_BS,
      ITM_SR_NO,
      ITM_UOM,
      LOT_ID,
      ORG_ID,
      SLOC_ID,
      WH_ID,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :OLD.BIN_ID,
      :OLD.CLD_ID,
      :OLD.CNT_QTY,
      :OLD.DOC_DT,
      :OLD.DOC_ID,
      :OLD.HO_ORG_ID,
      :OLD.ITM_ID,
      :OLD.ITM_QTY,
      :OLD.ITM_QTY_BS,
      :OLD.ITM_SR_NO,
      :OLD.ITM_UOM,
      :OLD.LOT_ID,
      :OLD.ORG_ID,
      :OLD.SLOC_ID,
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
ALTER TRIGGER "SLS"."TRG_SLS$SO$ITM$BIN" ENABLE;
