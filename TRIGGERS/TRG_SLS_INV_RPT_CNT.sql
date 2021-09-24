--------------------------------------------------------
--  DDL for Trigger TRG_SLS$INV$RPT$CNT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$INV$RPT$CNT" AFTER
  UPDATE OR
  DELETE ON SLS$INV$RPT$CNT REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
  INSERT
  INTO TRC.SLS$INV$RPT$CNT_TRC
    (
      CLD_ID,
      SLOC_ID,
      ORG_ID,
      HO_ORG_ID,
      DOC_ID,
      RPT_CNT,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      RPT_NM,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :NEW.CLD_ID,
      :NEW.SLOC_ID,
      :NEW.ORG_ID,
      :NEW.HO_ORG_ID,
      :NEW.DOC_ID,
      :NEW.RPT_CNT,
      :NEW.USR_ID_CREATE,
      :NEW.USR_ID_CREATE_DT,
      :NEW.RPT_NM,
      SYSTIMESTAMP,
      'U',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
IF DELETING THEN
  INSERT
  INTO TRC.SLS$INV$RPT$CNT_TRC
    (
      CLD_ID,
      SLOC_ID,
      ORG_ID,
      HO_ORG_ID,
      DOC_ID,
      RPT_CNT,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      RPT_NM,
      ROW_ADD_DT,
      STATMNT_TYPE,
      USER_NM,
      USR_IPADDR
    )
    VALUES
    (
      :OLD.CLD_ID,
      :OLD.SLOC_ID,
      :OLD.ORG_ID,
      :OLD.HO_ORG_ID,
      :OLD.DOC_ID,
      :OLD.RPT_CNT,
      :OLD.USR_ID_CREATE,
      :OLD.USR_ID_CREATE_DT,
      :OLD.RPT_NM,
      SYSTIMESTAMP,
      'D',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
END;










/
ALTER TRIGGER "SLS"."TRG_SLS$INV$RPT$CNT" ENABLE;
