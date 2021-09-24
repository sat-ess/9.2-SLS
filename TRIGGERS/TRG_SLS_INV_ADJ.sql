--------------------------------------------------------
--  DDL for Trigger TRG_SLS$INV$ADJ
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$INV$ADJ" AFTER
UPDATE OR
DELETE ON SLS$INV$ADJ REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW BEGIN IF UPDATING THEN
INSERT
INTO trc.SLS$INV$ADJ_TRC
  (
    AR_GL_SL_NO,
    AR_SL_NO,
    CLD_ID,
    COA_ID,
    CURR_CONV_FCTR,
    CURR_CONV_FCTR_OLD,
    CURR_ID_BS,
    CURR_ID_SP,
    CURR_ID_SP_OLD,
    DOC_ID,
    GL_AMT_BS,
    GL_AMT_SP,
    GL_VOU_DT,
    GL_VOU_ID,
    HO_ORG_ID,
    INV_ADJ_AMT_THIS,
    INV_AMT_ADJ,
    INV_AMT_OT,
    ORG_ID,
    REMARKS,
    SLOC_ID,
    SR_NO,
    TRAN_TYPE,
    USR_ID_CREATE,
    USR_ID_CREATE_DT,
    USR_ID_MOD,
    USR_ID_MOD_DT,
    VOU_ID_DISP,
    row_add_dt,
    statmnt_type,
    user_nm,
    usr_ipaddr
  )
  VALUES
  (
    :NEW.AR_GL_SL_NO,
    :NEW.AR_SL_NO,
    :NEW.CLD_ID,
    :NEW.COA_ID,
    :NEW.CURR_CONV_FCTR,
    :NEW.CURR_CONV_FCTR_OLD,
    :NEW.CURR_ID_BS,
    :NEW.CURR_ID_SP,
    :NEW.CURR_ID_SP_OLD,
    :NEW.DOC_ID,
    :NEW.GL_AMT_BS,
    :NEW.GL_AMT_SP,
    :NEW.GL_VOU_DT,
    :NEW.GL_VOU_ID,
    :NEW.HO_ORG_ID,
    :NEW.INV_ADJ_AMT_THIS,
    :NEW.INV_AMT_ADJ,
    :NEW.INV_AMT_OT,
    :NEW.ORG_ID,
    :NEW.REMARKS,
    :NEW.SLOC_ID,
    :NEW.SR_NO,
    :NEW.TRAN_TYPE,
    :NEW.USR_ID_CREATE,
    :NEW.USR_ID_CREATE_DT,
    :NEW.USR_ID_MOD,
    :NEW.USR_ID_MOD_DT,
    :NEW.VOU_ID_DISP,
    SYSTIMESTAMP,
    'U',
    'SLS',
    (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
    )
  );
END IF;
IF DELETING THEN
  INSERT
  INTO trc.SLS$INV$ADJ_TRC
    (
      AR_GL_SL_NO,
      AR_SL_NO,
      CLD_ID,
      COA_ID,
      CURR_CONV_FCTR,
      CURR_CONV_FCTR_OLD,
      CURR_ID_BS,
      CURR_ID_SP,
      CURR_ID_SP_OLD,
      DOC_ID,
      GL_AMT_BS,
      GL_AMT_SP,
      GL_VOU_DT,
      GL_VOU_ID,
      HO_ORG_ID,
      INV_ADJ_AMT_THIS,
      INV_AMT_ADJ,
      INV_AMT_OT,
      ORG_ID,
      REMARKS,
      SLOC_ID,
      SR_NO,
      TRAN_TYPE,
      USR_ID_CREATE,
      USR_ID_CREATE_DT,
      USR_ID_MOD,
      USR_ID_MOD_DT,
      VOU_ID_DISP,
      row_add_dt,
      statmnt_type,
      user_nm,
      usr_ipaddr
    )
    VALUES
    (
      :OLD.AR_GL_SL_NO,
      :OLD.AR_SL_NO,
      :OLD.CLD_ID,
      :OLD.COA_ID,
      :OLD.CURR_CONV_FCTR,
      :OLD.CURR_CONV_FCTR_OLD,
      :OLD.CURR_ID_BS,
      :OLD.CURR_ID_SP,
      :OLD.CURR_ID_SP_OLD,
      :OLD.DOC_ID,
      :OLD.GL_AMT_BS,
      :OLD.GL_AMT_SP,
      :OLD.GL_VOU_DT,
      :OLD.GL_VOU_ID,
      :OLD.HO_ORG_ID,
      :OLD.INV_ADJ_AMT_THIS,
      :OLD.INV_AMT_ADJ,
      :OLD.INV_AMT_OT,
      :OLD.ORG_ID,
      :OLD.REMARKS,
      :OLD.SLOC_ID,
      :OLD.SR_NO,
      :OLD.TRAN_TYPE,
      :OLD.USR_ID_CREATE,
      :OLD.USR_ID_CREATE_DT,
      :OLD.USR_ID_MOD,
      :OLD.USR_ID_MOD_DT,
      :OLD.VOU_ID_DISP,
      SYSTIMESTAMP,
      'D',
      'SLS',
      (SELECT SYS_CONTEXT('USERENV','IP_ADDRESS') FROM DUAL
      )
    );
END IF;
END;










/
ALTER TRIGGER "SLS"."TRG_SLS$INV$ADJ" ENABLE;
