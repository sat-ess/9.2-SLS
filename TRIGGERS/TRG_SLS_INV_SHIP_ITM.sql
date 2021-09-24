--------------------------------------------------------
--  DDL for Trigger TRG_SLS$INV$SHIP$ITM
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$INV$SHIP$ITM" AFTER
UPDATE OR
DELETE ON SLS$INV$SHIP$ITM REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
INSERT
INTO trc.SLS$INV$SHIP$ITM_TRC
  (
    AMC_FLG,
    ASBL_AMT_BS,
    ASBL_AMT_SP,
    CC_ID,
    CLD_ID,
    CNT_QTY,
    DOC_ID,
    EO_PART_NO,
    HO_ORG_ID,
    ITM_AMT_BS,
    ITM_AMT_GS_BS,
    ITM_AMT_GS_SP,
    ITM_AMT_SP,
    ITM_DISC_TYP,
    ITM_DISC_VAL,
    ITM_GRP_ID_CC,
    ITM_ID,
    ITM_RATE,
    ITM_SHIP_QTY,
    ITM_SLS_EXP_AMT,
    ITM_SR_NO,
    ITM_UOM,
    OLD_ITM_RATE,
    OLD_ITM_SHIP_QTY,
    ORG_ID,
    REMARKS,
    SCHM_FLG,
    SCH_ID,
    SHIP_ID,
    SLOC_ID,
    SO_ID,
    SUPPLI_ITM_RATE,
    TAX_RULE_FLG,
    TLRNC_QTY_TYPE,
    TLRNC_QTY_VAL,
    USR_ID_CREATE,
    USR_ID_CREATE_DT,
    USR_ID_MOD,
    USR_ID_MOD_DT,
    WTY_ID,
    row_add_dt,
    statmnt_type,
    user_nm,
    usr_ipaddr
  )
  VALUES
  (
    :NEW.AMC_FLG,
    :NEW.ASBL_AMT_BS,
    :NEW.ASBL_AMT_SP,
    :NEW.CC_ID,
    :NEW.CLD_ID,
    :NEW.CNT_QTY,
    :NEW.DOC_ID,
    :NEW.EO_PART_NO,
    :NEW.HO_ORG_ID,
    :NEW.ITM_AMT_BS,
    :NEW.ITM_AMT_GS_BS,
    :NEW.ITM_AMT_GS_SP,
    :NEW.ITM_AMT_SP,
    :NEW.ITM_DISC_TYP,
    :NEW.ITM_DISC_VAL,
    :NEW.ITM_GRP_ID_CC,
    :NEW.ITM_ID,
    :NEW.ITM_RATE,
    :NEW.ITM_SHIP_QTY,
    :NEW.ITM_SLS_EXP_AMT,
    :NEW.ITM_SR_NO,
    :NEW.ITM_UOM,
    :NEW.OLD_ITM_RATE,
    :NEW.OLD_ITM_SHIP_QTY,
    :NEW.ORG_ID,
    :NEW.REMARKS,
    :NEW.SCHM_FLG,
    :NEW.SCH_ID,
    :NEW.SHIP_ID,
    :NEW.SLOC_ID,
    :NEW.SO_ID,
    :NEW.SUPPLI_ITM_RATE,
    :NEW.TAX_RULE_FLG,
    :NEW.TLRNC_QTY_TYPE,
    :NEW.TLRNC_QTY_VAL,
    :NEW.USR_ID_CREATE,
    :NEW.USR_ID_CREATE_DT,
    :NEW.USR_ID_MOD,
    :NEW.USR_ID_MOD_DT,
    :NEW.WTY_ID,
    SYSTIMESTAMP,
    'U',
    'SLS',
    (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
    )
  );
END IF;
IF DELETING THEN
  INSERT
  INTO trc.SLS$INV$SHIP$ITM_TRC
    (
      AMC_FLG,
      ASBL_AMT_BS,
      ASBL_AMT_SP,
      CC_ID,
      CLD_ID,
      CNT_QTY,
      DOC_ID,
      EO_PART_NO,
      HO_ORG_ID,
      ITM_AMT_BS,
      ITM_AMT_GS_BS,
      ITM_AMT_GS_SP,
      ITM_AMT_SP,
      ITM_DISC_TYP,
      ITM_DISC_VAL,
      ITM_GRP_ID_CC,
      ITM_ID,
      ITM_RATE,
      ITM_SHIP_QTY,
      ITM_SLS_EXP_AMT,
      ITM_SR_NO,
      ITM_UOM,
      OLD_ITM_RATE,
      OLD_ITM_SHIP_QTY,
      ORG_ID,
      REMARKS,
      SCHM_FLG,
      SCH_ID,
      SHIP_ID,
      SLOC_ID,
      SO_ID,
      SUPPLI_ITM_RATE,
      TAX_RULE_FLG,
      TLRNC_QTY_TYPE,
      TLRNC_QTY_VAL,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      USR_ID_MOD,
      USR_ID_MOD_DT,
      WTY_ID,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :OLD.AMC_FLG,
      :OLD.ASBL_AMT_BS,
      :OLD.ASBL_AMT_SP,
      :OLD.CC_ID,
      :OLD.CLD_ID,
      :OLD.CNT_QTY,
      :OLD.DOC_ID,
      :OLD.EO_PART_NO,
      :OLD.HO_ORG_ID,
      :OLD.ITM_AMT_BS,
      :OLD.ITM_AMT_GS_BS,
      :OLD.ITM_AMT_GS_SP,
      :OLD.ITM_AMT_SP,
      :OLD.ITM_DISC_TYP,
      :OLD.ITM_DISC_VAL,
      :OLD.ITM_GRP_ID_CC,
      :OLD.ITM_ID,
      :OLD.ITM_RATE,
      :OLD.ITM_SHIP_QTY,
      :OLD.ITM_SLS_EXP_AMT,
      :OLD.ITM_SR_NO,
      :OLD.ITM_UOM,
      :OLD.OLD_ITM_RATE,
      :OLD.OLD_ITM_SHIP_QTY,
      :OLD.ORG_ID,
      :OLD.REMARKS,
      :OLD.SCHM_FLG,
      :OLD.SCH_ID,
      :OLD.SHIP_ID,
      :OLD.SLOC_ID,
      :OLD.SO_ID,
      :OLD.SUPPLI_ITM_RATE,
      :OLD.TAX_RULE_FLG,
      :OLD.TLRNC_QTY_TYPE,
      :OLD.TLRNC_QTY_VAL,
      :OLD.USR_ID_CREATE,
      :OLD.USR_ID_CREATE_DT,
      :OLD.USR_ID_MOD,
      :OLD.USR_ID_MOD_DT,
      :OLD.WTY_ID,
      SYSTIMESTAMP,
      'D',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
END;










/
ALTER TRIGGER "SLS"."TRG_SLS$INV$SHIP$ITM" ENABLE;
