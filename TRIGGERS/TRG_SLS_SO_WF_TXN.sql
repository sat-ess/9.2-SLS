--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SO$WF$TXN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SO$WF$TXN" AFTER
  UPDATE OR
  DELETE ON SLS$SO$WF$TXN REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO trc.SLS$SO$WF$TXN_TRC
    (
      ACTN_DT,
      AUTH_DT,
      CLD_ID,
      DOC_ID,
      DOC_MOD_FLG,
      DOC_TYPE_ID,
      LVL_SKIPPED,
      ORG_ID,
      SLOC_ID,
      TXN_DOC_ID,
      TXN_DT,
      TXN_ID,
      USR_ID_BY,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      USR_ID_MOD,
      USR_ID_MOD_DT,
      USR_ID_TO,
      WARN_DT,
      WF_ACTN_SEQ,
      WF_ID,
      WF_LINE_STATUS,
      WF_LVL_FM,
      WF_LVL_TO,
      WF_REMARK,
      WF_STATUS_ID,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr,
	  PRJ_ID
    )
    VALUES
    (
      :NEW.ACTN_DT,
      :NEW.AUTH_DT,
      :NEW.CLD_ID,
      :NEW.DOC_ID,
      :NEW.DOC_MOD_FLG,
      :NEW.DOC_TYPE_ID,
      :NEW.LVL_SKIPPED,
      :NEW.ORG_ID,
      :NEW.SLOC_ID,
      :NEW.TXN_DOC_ID,
      :NEW.TXN_DT,
      :NEW.TXN_ID,
      :NEW.USR_ID_BY,
      :NEW.USR_ID_CREATE,
      :NEW.USR_ID_CREATE_DT,
      :NEW.USR_ID_MOD,
      :NEW.USR_ID_MOD_DT,
      :NEW.USR_ID_TO,
      :NEW.WARN_DT,
      :NEW.WF_ACTN_SEQ,
      :NEW.WF_ID,
      :NEW.WF_LINE_STATUS,
      :NEW.WF_LVL_FM,
      :NEW.WF_LVL_TO,
      :NEW.WF_REMARK,
      :NEW.WF_STATUS_ID,
      SYSTIMESTAMP,
      'U',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      ),
	  :NEW.PRJ_ID
    );
END IF;
IF DELETING THEN
  INSERT
  INTO trc.SLS$SO$WF$TXN_TRC
    (
      ACTN_DT,
      AUTH_DT,
      CLD_ID,
      DOC_ID,
      DOC_MOD_FLG,
      DOC_TYPE_ID,
      LVL_SKIPPED,
      ORG_ID,
      SLOC_ID,
      TXN_DOC_ID,
      TXN_DT,
      TXN_ID,
      USR_ID_BY,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      USR_ID_MOD,
      USR_ID_MOD_DT,
      USR_ID_TO,
      WARN_DT,
      WF_ACTN_SEQ,
      WF_ID,
      WF_LINE_STATUS,
      WF_LVL_FM,
      WF_LVL_TO,
      WF_REMARK,
      WF_STATUS_ID,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr,
	  PRJ_ID
    )
    VALUES
    (
      :OLD.ACTN_DT,
      :OLD.AUTH_DT,
      :OLD.CLD_ID,
      :OLD.DOC_ID,
      :OLD.DOC_MOD_FLG,
      :OLD.DOC_TYPE_ID,
      :OLD.LVL_SKIPPED,
      :OLD.ORG_ID,
      :OLD.SLOC_ID,
      :OLD.TXN_DOC_ID,
      :OLD.TXN_DT,
      :OLD.TXN_ID,
      :OLD.USR_ID_BY,
      :OLD.USR_ID_CREATE,
      :OLD.USR_ID_CREATE_DT,
      :OLD.USR_ID_MOD,
      :OLD.USR_ID_MOD_DT,
      :OLD.USR_ID_TO,
      :OLD.WARN_DT,
      :OLD.WF_ACTN_SEQ,
      :OLD.WF_ID,
      :OLD.WF_LINE_STATUS,
      :OLD.WF_LVL_FM,
      :OLD.WF_LVL_TO,
      :OLD.WF_REMARK,
      :OLD.WF_STATUS_ID,
      SYSTIMESTAMP,
      'D',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      ),
	  :OLD.PRJ_ID
    );
END IF;
END;










/
ALTER TRIGGER "SLS"."TRG_SLS$SO$WF$TXN" ENABLE;
