--------------------------------------------------------
--  DDL for Trigger TRG_SLS$INV$COST$CENTER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$INV$COST$CENTER" AFTER
UPDATE OR
DELETE ON SLS$INV$COST$CENTER REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
INSERT
INTO trc.SLS$INV$COST$CENTER_TRC
  (
    CC_AMT_BS,
    CC_AMT_SP,
    CC_AMT_TYPE,
    CC_APPL_INST_ID,
    CC_CCID_LVL1,
    CC_CCID_LVL2,
    CC_CCID_LVL3,
    CC_CCID_LVL4,
    CC_CCID_LVL5,
    CC_CLD_ID,
    CC_DOC_SL_NO,
    CC_HO_ORG_ID,
    CC_ID,
    CC_ORG_ID,
    CC_SLOC_ID,
    CC_SL_NO,
    CC_SRC,
    CC_TXN_ID,
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
    :NEW.CC_AMT_BS,
    :NEW.CC_AMT_SP,
    :NEW.CC_AMT_TYPE,
    :NEW.CC_APPL_INST_ID,
    :NEW.CC_CCID_LVL1,
    :NEW.CC_CCID_LVL2,
    :NEW.CC_CCID_LVL3,
    :NEW.CC_CCID_LVL4,
    :NEW.CC_CCID_LVL5,
    :NEW.CC_CLD_ID,
    :NEW.CC_DOC_SL_NO,
    :NEW.CC_HO_ORG_ID,
    :NEW.CC_ID,
    :NEW.CC_ORG_ID,
    :NEW.CC_SLOC_ID,
    :NEW.CC_SL_NO,
    :NEW.CC_SRC,
    :NEW.CC_TXN_ID,
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
  INTO trc.SLS$INV$COST$CENTER_TRC
    (
      CC_AMT_BS,
      CC_AMT_SP,
      CC_AMT_TYPE,
      CC_APPL_INST_ID,
      CC_CCID_LVL1,
      CC_CCID_LVL2,
      CC_CCID_LVL3,
      CC_CCID_LVL4,
      CC_CCID_LVL5,
      CC_CLD_ID,
      CC_DOC_SL_NO,
      CC_HO_ORG_ID,
      CC_ID,
      CC_ORG_ID,
      CC_SLOC_ID,
      CC_SL_NO,
      CC_SRC,
      CC_TXN_ID,
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
      :OLD.CC_AMT_BS,
      :OLD.CC_AMT_SP,
      :OLD.CC_AMT_TYPE,
      :OLD.CC_APPL_INST_ID,
      :OLD.CC_CCID_LVL1,
      :OLD.CC_CCID_LVL2,
      :OLD.CC_CCID_LVL3,
      :OLD.CC_CCID_LVL4,
      :OLD.CC_CCID_LVL5,
      :OLD.CC_CLD_ID,
      :OLD.CC_DOC_SL_NO,
      :OLD.CC_HO_ORG_ID,
      :OLD.CC_ID,
      :OLD.CC_ORG_ID,
      :OLD.CC_SLOC_ID,
      :OLD.CC_SL_NO,
      :OLD.CC_SRC,
      :OLD.CC_TXN_ID,
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
ALTER TRIGGER "SLS"."TRG_SLS$INV$COST$CENTER" ENABLE;
