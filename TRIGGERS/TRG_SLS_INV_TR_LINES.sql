--------------------------------------------------------
--  DDL for Trigger TRG_SLS$INV$TR$LINES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$INV$TR$LINES" AFTER
UPDATE OR
DELETE ON SLS$INV$TR$LINES REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
INSERT
INTO trc.SLS$INV$TR$LINES_TRC
  (
    CLD_ID,
    DOC_ID,
    HO_ORG_ID,
    ITM_ID,
    ITM_SR_NO,
    ORG_ID,
    SHIP_ID,
    SLOC_ID,
    SO_ID,
    SR_NO,
    TAXABLE_AMT_BS,
    TAXABLE_AMT_BS_E,
    TAXABLE_AMT_SP,
    TAXABLE_AMT_SP_E,
    TAX_AMT_BS,
    TAX_AMT_SP,
    TAX_COA_ID,
    TAX_ID,
    TAX_RULE_ID,
    TAX_TYPE_MAN,
    USR_ID_CREATE,
    USR_ID_CREATE_DT,
    USR_ID_MOD,
    USR_ID_MOD_DT,
    row_add_dt,
    statmnt_type,
    user_nm,
    usr_ipaddr,
	TAX_AMT_RAW
  )
  VALUES
  (
    :NEW.CLD_ID,
    :NEW.DOC_ID,
    :NEW.HO_ORG_ID,
    :NEW.ITM_ID,
    :NEW.ITM_SR_NO,
    :NEW.ORG_ID,
    :NEW.SHIP_ID,
    :NEW.SLOC_ID,
    :NEW.SO_ID,
    :NEW.SR_NO,
    :NEW.TAXABLE_AMT_BS,
    :NEW.TAXABLE_AMT_BS_E,
    :NEW.TAXABLE_AMT_SP,
    :NEW.TAXABLE_AMT_SP_E,
    :NEW.TAX_AMT_BS,
    :NEW.TAX_AMT_SP,
    :NEW.TAX_COA_ID,
    :NEW.TAX_ID,
    :NEW.TAX_RULE_ID,
    :NEW.TAX_TYPE_MAN,
    :NEW.USR_ID_CREATE,
    :NEW.USR_ID_CREATE_DT,
    :NEW.USR_ID_MOD,
    :NEW.USR_ID_MOD_DT,
    SYSTIMESTAMP,
    'U',
    'SLS',
    (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
    ),
	:NEW.TAX_AMT_RAW
  );
END IF;
IF DELETING THEN
  INSERT
  INTO trc.SLS$INV$TR$LINES_TRC
    (
      CLD_ID,
      DOC_ID,
      HO_ORG_ID,
      ITM_ID,
      ITM_SR_NO,
      ORG_ID,
      SHIP_ID,
      SLOC_ID,
      SO_ID,
      SR_NO,
      TAXABLE_AMT_BS,
      TAXABLE_AMT_BS_E,
      TAXABLE_AMT_SP,
      TAXABLE_AMT_SP_E,
      TAX_AMT_BS,
      TAX_AMT_SP,
      TAX_COA_ID,
      TAX_ID,
      TAX_RULE_ID,
      TAX_TYPE_MAN,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      USR_ID_MOD,
      USR_ID_MOD_DT,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr,
	  TAX_AMT_RAW
    )
    VALUES
    (
      :OLD.CLD_ID,
      :OLD.DOC_ID,
      :OLD.HO_ORG_ID,
      :OLD.ITM_ID,
      :OLD.ITM_SR_NO,
      :OLD.ORG_ID,
      :OLD.SHIP_ID,
      :OLD.SLOC_ID,
      :OLD.SO_ID,
      :OLD.SR_NO,
      :OLD.TAXABLE_AMT_BS,
      :OLD.TAXABLE_AMT_BS_E,
      :OLD.TAXABLE_AMT_SP,
      :OLD.TAXABLE_AMT_SP_E,
      :OLD.TAX_AMT_BS,
      :OLD.TAX_AMT_SP,
      :OLD.TAX_COA_ID,
      :OLD.TAX_ID,
      :OLD.TAX_RULE_ID,
      :OLD.TAX_TYPE_MAN,
      :OLD.USR_ID_CREATE,
      :OLD.USR_ID_CREATE_DT,
      :OLD.USR_ID_MOD,
      :OLD.USR_ID_MOD_DT,
      SYSTIMESTAMP,
      'D',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      ),
	  :OLD.TAX_AMT_RAW
    );
END IF;
END;










/
ALTER TRIGGER "SLS"."TRG_SLS$INV$TR$LINES" ENABLE;
