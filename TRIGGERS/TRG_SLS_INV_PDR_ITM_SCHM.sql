--------------------------------------------------------
--  DDL for Trigger TRG_SLS$INV$PDR$ITM$SCHM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$INV$PDR$ITM$SCHM" AFTER
UPDATE OR
DELETE ON SLS$INV$PDR$ITM$SCHM REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
INSERT
INTO trc.SLS$INV$PDR$ITM$SCHM_TRC
  (
    CLD_ID,
    DOC_ID,
    HO_ORG_ID,
    ITM_DISC_APPLIED_ON,
    ITM_DISC_VAL,
    ITM_ID,
    ITM_SR_NO,
    ITM_TOT_DISC_VAL,
    ORG_ID,
    SCHM_ID,
    SHIP_ID,
    SLOC_ID,
    SO_ID,
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
    :NEW.HO_ORG_ID,
    :NEW.ITM_DISC_APPLIED_ON,
    :NEW.ITM_DISC_VAL,
    :NEW.ITM_ID,
    :NEW.ITM_SR_NO,
    :NEW.ITM_TOT_DISC_VAL,
    :NEW.ORG_ID,
    :NEW.SCHM_ID,
    :NEW.SHIP_ID,
    :NEW.SLOC_ID,
    :NEW.SO_ID,
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
  INTO trc.SLS$INV$PDR$ITM$SCHM_TRC
    (
      CLD_ID,
      DOC_ID,
      HO_ORG_ID,
      ITM_DISC_APPLIED_ON,
      ITM_DISC_VAL,
      ITM_ID,
      ITM_SR_NO,
      ITM_TOT_DISC_VAL,
      ORG_ID,
      SCHM_ID,
      SHIP_ID,
      SLOC_ID,
      SO_ID,
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
      :OLD.HO_ORG_ID,
      :OLD.ITM_DISC_APPLIED_ON,
      :OLD.ITM_DISC_VAL,
      :OLD.ITM_ID,
      :OLD.ITM_SR_NO,
      :OLD.ITM_TOT_DISC_VAL,
      :OLD.ORG_ID,
      :OLD.SCHM_ID,
      :OLD.SHIP_ID,
      :OLD.SLOC_ID,
      :OLD.SO_ID,
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
ALTER TRIGGER "SLS"."TRG_SLS$INV$PDR$ITM$SCHM" ENABLE;
