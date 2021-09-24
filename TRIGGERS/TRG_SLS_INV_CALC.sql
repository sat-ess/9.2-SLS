--------------------------------------------------------
--  DDL for Trigger TRG_SLS$INV$CALC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$INV$CALC" AFTER
UPDATE OR
DELETE ON SLS$INV$CALC REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
INSERT
INTO trc.SLS$INV$CALC_TRC
  (
    AMD_DT,
    AMD_NO,
    AMT_BS,
    AMT_SP,
    CC_ID,
    CLD_ID,
    COA_ID,
    COA_NM,
    CURR_CONV_RATE,
    CURR_ID_BS,
    CURR_ID_SP,
    DOC_ID,
    HO_ORG_ID,
    ORG_ID,
    SLOC_ID,
    SR_NO,
    TAXABL_VAL,
    TRAN_TYPE,
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
    :NEW.AMD_DT,
    :NEW.AMD_NO,
    :NEW.AMT_BS,
    :NEW.AMT_SP,
    :NEW.CC_ID,
    :NEW.CLD_ID,
    :NEW.COA_ID,
    :NEW.COA_NM,
    :NEW.CURR_CONV_RATE,
    :NEW.CURR_ID_BS,
    :NEW.CURR_ID_SP,
    :NEW.DOC_ID,
    :NEW.HO_ORG_ID,
    :NEW.ORG_ID,
    :NEW.SLOC_ID,
    :NEW.SR_NO,
    :NEW.TAXABL_VAL,
    :NEW.TRAN_TYPE,
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
  INTO trc.SLS$INV$CALC_TRC
    (
      AMD_DT,
      AMD_NO,
      AMT_BS,
      AMT_SP,
      CC_ID,
      CLD_ID,
      COA_ID,
      COA_NM,
      CURR_CONV_RATE,
      CURR_ID_BS,
      CURR_ID_SP,
      DOC_ID,
      HO_ORG_ID,
      ORG_ID,
      SLOC_ID,
      SR_NO,
      TAXABL_VAL,
      TRAN_TYPE,
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
      :OLD.AMD_DT,
      :OLD.AMD_NO,
      :OLD.AMT_BS,
      :OLD.AMT_SP,
      :OLD.CC_ID,
      :OLD.CLD_ID,
      :OLD.COA_ID,
      :OLD.COA_NM,
      :OLD.CURR_CONV_RATE,
      :OLD.CURR_ID_BS,
      :OLD.CURR_ID_SP,
      :OLD.DOC_ID,
      :OLD.HO_ORG_ID,
      :OLD.ORG_ID,
      :OLD.SLOC_ID,
      :OLD.SR_NO,
      :OLD.TAXABL_VAL,
      :OLD.TRAN_TYPE,
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
ALTER TRIGGER "SLS"."TRG_SLS$INV$CALC" ENABLE;
