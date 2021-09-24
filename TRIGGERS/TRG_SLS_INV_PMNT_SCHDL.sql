--------------------------------------------------------
--  DDL for Trigger TRG_SLS$INV$PMNT$SCHDL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$INV$PMNT$SCHDL" AFTER
UPDATE OR
DELETE ON SLS$INV$PMNT$SCHDL REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
INSERT
INTO trc.SLS$INV$PMNT$SCHDL_TRC
  (
    ADV_FLG,
    CLD_ID,
    DOC_ID,
    HO_ORG_ID,
    ORG_ID,
    PAY_AMT,
    PAY_DT,
    PAY_MODE,
    PHONE_NO,
    SLOC_ID,
    TOT_AMT,
    USR_ID_CREATE,
    USR_ID_CREATE_DT,
    row_add_dt,
    statmnt_type,
    user_nm,
    usr_ipaddr
  )
  VALUES
  (
    :NEW.ADV_FLG,
    :NEW.CLD_ID,
    :NEW.DOC_ID,
    :NEW.HO_ORG_ID,
    :NEW.ORG_ID,
    :NEW.PAY_AMT,
    :NEW.PAY_DT,
    :NEW.PAY_MODE,
    :NEW.PHONE_NO,
    :NEW.SLOC_ID,
    :NEW.TOT_AMT,
    :NEW.USR_ID_CREATE,
    :NEW.USR_ID_CREATE_DT,
    SYSTIMESTAMP,
    'U',
    'SLS',
    (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
    )
  );
END IF;
IF DELETING THEN
  INSERT
  INTO trc.SLS$INV$PMNT$SCHDL_TRC
    (
      ADV_FLG,
      CLD_ID,
      DOC_ID,
      HO_ORG_ID,
      ORG_ID,
      PAY_AMT,
      PAY_DT,
      PAY_MODE,
      PHONE_NO,
      SLOC_ID,
      TOT_AMT,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :OLD.ADV_FLG,
      :OLD.CLD_ID,
      :OLD.DOC_ID,
      :OLD.HO_ORG_ID,
      :OLD.ORG_ID,
      :OLD.PAY_AMT,
      :OLD.PAY_DT,
      :OLD.PAY_MODE,
      :OLD.PHONE_NO,
      :OLD.SLOC_ID,
      :OLD.TOT_AMT,
      :OLD.USR_ID_CREATE,
      :OLD.USR_ID_CREATE_DT,
      SYSTIMESTAMP,
      'D',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
END;










/
ALTER TRIGGER "SLS"."TRG_SLS$INV$PMNT$SCHDL" ENABLE;
