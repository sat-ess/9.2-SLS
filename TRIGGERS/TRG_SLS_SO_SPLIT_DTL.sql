--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$SPLIT$DTL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$SPLIT$DTL" AFTER
UPDATE OR
DELETE ON SLS$SO$SPLIT$DTL REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
INSERT
INTO trc.SLS$SO$SPLIT$DTL_TRC
  (
    CLD_ID,
    DOC_ID,
    EO_ID,
    HO_ORG_ID,
    ITM_ID,
    ITM_QTY,
    ITM_SR_NO,
    ORG_ID,
    SLOC_ID,
    USR_ID_CREATE,
    USR_ID_CREATE_DT,
    USR_ID_MOD,
    USR_ID_MOD_DT,
    row_add_dt,
    statmnt_type,
    user_nm,
    usr_ipaddr
  )
  VALUES
  (
    :NEW.CLD_ID,
    :NEW.DOC_ID,
    :NEW.EO_ID,
    :NEW.HO_ORG_ID,
    :NEW.ITM_ID,
    :NEW.ITM_QTY,
    :NEW.ITM_SR_NO,
    :NEW.ORG_ID,
    :NEW.SLOC_ID,
    :NEW.USR_ID_CREATE,
    :NEW.USR_ID_CREATE_DT,
    :NEW.USR_ID_MOD,
    :NEW.USR_ID_MOD_DT,
    SYSTIMESTAMP,
    'U',
    'SLS',
    (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
    )
  );
END IF;
IF DELETING THEN
  INSERT
  INTO trc.SLS$SO$SPLIT$DTL_TRC
    (
      CLD_ID,
      DOC_ID,
      EO_ID,
      HO_ORG_ID,
      ITM_ID,
      ITM_QTY,
      ITM_SR_NO,
      ORG_ID,
      SLOC_ID,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      USR_ID_MOD,
      USR_ID_MOD_DT,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :OLD.CLD_ID,
      :OLD.DOC_ID,
      :OLD.EO_ID,
      :OLD.HO_ORG_ID,
      :OLD.ITM_ID,
      :OLD.ITM_QTY,
      :OLD.ITM_SR_NO,
      :OLD.ORG_ID,
      :OLD.SLOC_ID,
      :OLD.USR_ID_CREATE,
      :OLD.USR_ID_CREATE_DT,
      :OLD.USR_ID_MOD,
      :OLD.USR_ID_MOD_DT,
      SYSTIMESTAMP,
      'D',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
END;










/
ALTER TRIGGER "SLS"."TRG_SLS$SO$SPLIT$DTL" ENABLE;
