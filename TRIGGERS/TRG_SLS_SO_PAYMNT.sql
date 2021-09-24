--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$PAYMNT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$PAYMNT" AFTER
  UPDATE OR
  DELETE ON SLS$SO$PAYMNT REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$PAYMNT_TRC
    (
      ADDS_ID,
      AMD_DT,
      AMD_NO,
      BANK_AC_NO,
      BANK_NM,
      CLD_ID,
      CURR_CONV_FCTR,
      CURR_ID_BS,
      CURR_ID_SP,
      DOC_ID,
      HO_ORG_ID,
      ORG_ID,
      PAY_MODE,
      PAY_TYPE_DT,
      PAY_TYPE_NO,
      PHONE_NO,
      REMARKS,
      SLOC_ID,
      SR_NO,
      TOT_AMT_BS,
      TOT_AMT_SP,
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
      :NEW.ADDS_ID,
      :NEW.AMD_DT,
      :NEW.AMD_NO,
      :NEW.BANK_AC_NO,
      :NEW.BANK_NM,
      :NEW.CLD_ID,
      :NEW.CURR_CONV_FCTR,
      :NEW.CURR_ID_BS,
      :NEW.CURR_ID_SP,
      :NEW.DOC_ID,
      :NEW.HO_ORG_ID,
      :NEW.ORG_ID,
      :NEW.PAY_MODE,
      :NEW.PAY_TYPE_DT,
      :NEW.PAY_TYPE_NO,
      :NEW.PHONE_NO,
      :NEW.REMARKS,
      :NEW.SLOC_ID,
      :NEW.SR_NO,
      :NEW.TOT_AMT_BS,
      :NEW.TOT_AMT_SP,
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
  INTO trc.SLS$SO$PAYMNT_TRC
    (
      ADDS_ID,
      AMD_DT,
      AMD_NO,
      BANK_AC_NO,
      BANK_NM,
      CLD_ID,
      CURR_CONV_FCTR,
      CURR_ID_BS,
      CURR_ID_SP,
      DOC_ID,
      HO_ORG_ID,
      ORG_ID,
      PAY_MODE,
      PAY_TYPE_DT,
      PAY_TYPE_NO,
      PHONE_NO,
      REMARKS,
      SLOC_ID,
      SR_NO,
      TOT_AMT_BS,
      TOT_AMT_SP,
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
      :OLD.ADDS_ID,
      :OLD.AMD_DT,
      :OLD.AMD_NO,
      :OLD.BANK_AC_NO,
      :OLD.BANK_NM,
      :OLD.CLD_ID,
      :OLD.CURR_CONV_FCTR,
      :OLD.CURR_ID_BS,
      :OLD.CURR_ID_SP,
      :OLD.DOC_ID,
      :OLD.HO_ORG_ID,
      :OLD.ORG_ID,
      :OLD.PAY_MODE,
      :OLD.PAY_TYPE_DT,
      :OLD.PAY_TYPE_NO,
      :OLD.PHONE_NO,
      :OLD.REMARKS,
      :OLD.SLOC_ID,
      :OLD.SR_NO,
      :OLD.TOT_AMT_BS,
      :OLD.TOT_AMT_SP,
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
ALTER TRIGGER "SLS"."TRG_SLS$SO$PAYMNT" ENABLE;
