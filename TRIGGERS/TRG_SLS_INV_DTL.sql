--------------------------------------------------------
--  DDL for Trigger TRG_SLS$INV$DTL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$INV$DTL" AFTER
UPDATE OR
DELETE ON SLS$INV$DTL REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
INSERT
INTO trc.SLS$INV$DTL_TRC
  (
    CLD_ID,
    DOC_DT,
    DOC_ID,
    HO_ORG_ID,
    ORG_ID,
    SHIP_AMT_BS,
    SHIP_AMT_SP,
    SHIP_DT,
    SHIP_ID,
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
    :NEW.DOC_DT,
    :NEW.DOC_ID,
    :NEW.HO_ORG_ID,
    :NEW.ORG_ID,
    :NEW.SHIP_AMT_BS,
    :NEW.SHIP_AMT_SP,
    :NEW.SHIP_DT,
    :NEW.SHIP_ID,
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
  INTO trc.SLS$INV$DTL_TRC
    (
      CLD_ID,
      DOC_DT,
      DOC_ID,
      HO_ORG_ID,
      ORG_ID,
      SHIP_AMT_BS,
      SHIP_AMT_SP,
      SHIP_DT,
      SHIP_ID,
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
      :OLD.DOC_DT,
      :OLD.DOC_ID,
      :OLD.HO_ORG_ID,
      :OLD.ORG_ID,
      :OLD.SHIP_AMT_BS,
      :OLD.SHIP_AMT_SP,
      :OLD.SHIP_DT,
      :OLD.SHIP_ID,
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
ALTER TRIGGER "SLS"."TRG_SLS$INV$DTL" ENABLE;
