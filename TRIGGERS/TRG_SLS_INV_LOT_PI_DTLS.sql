--------------------------------------------------------
--  DDL for Trigger TRG_SLS$INV$LOT$PI$DTLS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$INV$LOT$PI$DTLS" AFTER
UPDATE OR
DELETE ON SLS$INV$LOT$PI$DTLS REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
INSERT
INTO TRC.SLS$INV$LOT$PI$DTLS_TRC
  (
    CLD_ID,
    SLOC_ID,
    ORG_ID,
    HO_ORG_ID,
    DOC_ID,
    SR_NO,
    PI_DOC_ID,
    PI_DISP_ID,
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
    :NEW.SR_NO,
    :NEW.PI_DOC_ID,
    :NEW.PI_DISP_ID,
    SYSTIMESTAMP,
    'U',
    'SLS',
    (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
    )
  );
END IF;
IF DELETING THEN
  INSERT
  INTO TRC.SLS$INV$LOT$PI$DTLS_TRC
    (
      CLD_ID,
      SLOC_ID,
      ORG_ID,
      HO_ORG_ID,
      DOC_ID,
      SR_NO,
      PI_DOC_ID,
      PI_DISP_ID,
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
      :OLD.SR_NO,
      :OLD.PI_DOC_ID,
      :OLD.PI_DISP_ID,
      SYSTIMESTAMP,
      'D',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
END;











/
ALTER TRIGGER "SLS"."TRG_SLS$INV$LOT$PI$DTLS" ENABLE;
