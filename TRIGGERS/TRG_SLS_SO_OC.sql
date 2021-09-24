--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$OC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$OC" AFTER
  UPDATE OR
  DELETE ON SLS$SO$OC REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$OC_TRC
    (
      AMT_BS,
      AMT_SP,
      CLD_ID,
      COA_ID,
      CURR_ID,
      CURR_RATE,
      DOC_ID,
      HO_ORG_ID,
      OC_DESC,
      OC_ID,
      ORG_ID,
      SLOC_ID,
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
      :NEW.AMT_BS,
      :NEW.AMT_SP,
      :NEW.CLD_ID,
      :NEW.COA_ID,
      :NEW.CURR_ID,
      :NEW.CURR_RATE,
      :NEW.DOC_ID,
      :NEW.HO_ORG_ID,
      :NEW.OC_DESC,
      :NEW.OC_ID,
      :NEW.ORG_ID,
      :NEW.SLOC_ID,
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
  INTO trc.SLS$SO$OC_TRC
    (
      AMT_BS,
      AMT_SP,
      CLD_ID,
      COA_ID,
      CURR_ID,
      CURR_RATE,
      DOC_ID,
      HO_ORG_ID,
      OC_DESC,
      OC_ID,
      ORG_ID,
      SLOC_ID,
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
      :OLD.AMT_BS,
      :OLD.AMT_SP,
      :OLD.CLD_ID,
      :OLD.COA_ID,
      :OLD.CURR_ID,
      :OLD.CURR_RATE,
      :OLD.DOC_ID,
      :OLD.HO_ORG_ID,
      :OLD.OC_DESC,
      :OLD.OC_ID,
      :OLD.ORG_ID,
      :OLD.SLOC_ID,
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
ALTER TRIGGER "SLS"."TRG_SLS$SO$OC" ENABLE;
