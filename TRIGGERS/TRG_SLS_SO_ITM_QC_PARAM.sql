--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$ITM$QC$PARAM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$ITM$QC$PARAM" AFTER
  UPDATE OR
  DELETE ON SLS$SO$ITM$QC$PARAM REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$ITM$QC$PARAM_TRC
    (
      CLD_ID,
      DOC_ID,
      FAIL_ACTN,
      HO_ORG_ID,
      ITM_ID,
      ITM_SR_NO,
      LOWER_LIMIT,
      ORG_ID,
      PARAM_ID,
      PARAM_SPEC,
      PARAM_TYPE,
      SLOC_ID,
      STD_VAL,
      TLRNC_LOWER,
      TLRNC_TYPE,
      TLRNC_UPPER,
      UPPER_LIMIT,
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
      :NEW.FAIL_ACTN,
      :NEW.HO_ORG_ID,
      :NEW.ITM_ID,
      :NEW.ITM_SR_NO,
      :NEW.LOWER_LIMIT,
      :NEW.ORG_ID,
      :NEW.PARAM_ID,
      :NEW.PARAM_SPEC,
      :NEW.PARAM_TYPE,
      :NEW.SLOC_ID,
      :NEW.STD_VAL,
      :NEW.TLRNC_LOWER,
      :NEW.TLRNC_TYPE,
      :NEW.TLRNC_UPPER,
      :NEW.UPPER_LIMIT,
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
  INTO trc.SLS$SO$ITM$QC$PARAM_TRC
    (
      CLD_ID,
      DOC_ID,
      FAIL_ACTN,
      HO_ORG_ID,
      ITM_ID,
      ITM_SR_NO,
      LOWER_LIMIT,
      ORG_ID,
      PARAM_ID,
      PARAM_SPEC,
      PARAM_TYPE,
      SLOC_ID,
      STD_VAL,
      TLRNC_LOWER,
      TLRNC_TYPE,
      TLRNC_UPPER,
      UPPER_LIMIT,
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
      :OLD.FAIL_ACTN,
      :OLD.HO_ORG_ID,
      :OLD.ITM_ID,
      :OLD.ITM_SR_NO,
      :OLD.LOWER_LIMIT,
      :OLD.ORG_ID,
      :OLD.PARAM_ID,
      :OLD.PARAM_SPEC,
      :OLD.PARAM_TYPE,
      :OLD.SLOC_ID,
      :OLD.STD_VAL,
      :OLD.TLRNC_LOWER,
      :OLD.TLRNC_TYPE,
      :OLD.TLRNC_UPPER,
      :OLD.UPPER_LIMIT,
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
ALTER TRIGGER "SLS"."TRG_SLS$SO$ITM$QC$PARAM" ENABLE;
