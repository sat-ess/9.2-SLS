--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$FLX
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$FLX" AFTER
  UPDATE OR
  DELETE ON SLS$SO$FLX REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$FLX_TRC
    (
      CLD_ID,
      DATA_LEN,
      DATA_TYPE,
      DOC_ID,
      FIELD_ID,
      FIELD_VAL,
      HO_ORG_ID,
      ORG_ID,
      REQD,
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
      :NEW.DATA_LEN,
      :NEW.DATA_TYPE,
      :NEW.DOC_ID,
      :NEW.FIELD_ID,
      :NEW.FIELD_VAL,
      :NEW.HO_ORG_ID,
      :NEW.ORG_ID,
      :NEW.REQD,
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
  INTO trc.SLS$SO$FLX_TRC
    (
      CLD_ID,
      DATA_LEN,
      DATA_TYPE,
      DOC_ID,
      FIELD_ID,
      FIELD_VAL,
      HO_ORG_ID,
      ORG_ID,
      REQD,
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
      :OLD.DATA_LEN,
      :OLD.DATA_TYPE,
      :OLD.DOC_ID,
      :OLD.FIELD_ID,
      :OLD.FIELD_VAL,
      :OLD.HO_ORG_ID,
      :OLD.ORG_ID,
      :OLD.REQD,
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
ALTER TRIGGER "SLS"."TRG_SLS$SO$FLX" ENABLE;
