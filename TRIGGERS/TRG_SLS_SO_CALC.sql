--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$CALC
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$CALC" AFTER
  UPDATE OR
  DELETE ON SLS$SO$CALC REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$CALC_TRC
    (
      AMT_BS,
      AMT_SP,
      CC_ID,
      CLD_ID,
      COA_ID,
      COA_NM,
      CURR_ID,
      CURR_RATE,
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
      :NEW.AMT_BS,
      :NEW.AMT_SP,
      :NEW.CC_ID,
      :NEW.CLD_ID,
      :NEW.COA_ID,
      :NEW.COA_NM,
      :NEW.CURR_ID,
      :NEW.CURR_RATE,
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
  INTO trc.SLS$SO$CALC_TRC
    (
      AMT_BS,
      AMT_SP,
      CC_ID,
      CLD_ID,
      COA_ID,
      COA_NM,
      CURR_ID,
      CURR_RATE,
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
      :OLD.AMT_BS,
      :OLD.AMT_SP,
      :OLD.CC_ID,
      :OLD.CLD_ID,
      :OLD.COA_ID,
      :OLD.COA_NM,
      :OLD.CURR_ID,
      :OLD.CURR_RATE,
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
ALTER TRIGGER "SLS"."TRG_SLS$SO$CALC" ENABLE;
