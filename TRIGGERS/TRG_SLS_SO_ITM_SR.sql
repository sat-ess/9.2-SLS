--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$ITM$SR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$ITM$SR" AFTER
  UPDATE OR
  DELETE ON SLS$SO$ITM$SR REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$ITM$SR_TRC
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
      SR_NO,
      SR_NO1,
      SR_NO2,
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
      :NEW.SR_NO,
      :NEW.SR_NO1,
      :NEW.SR_NO2,
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
  INTO trc.SLS$SO$ITM$SR_TRC
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
      SR_NO,
      SR_NO1,
      SR_NO2,
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
      :OLD.SR_NO,
      :OLD.SR_NO1,
      :OLD.SR_NO2,
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
ALTER TRIGGER "SLS"."TRG_SLS$SO$ITM$SR" ENABLE;
