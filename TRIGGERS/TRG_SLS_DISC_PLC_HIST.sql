--------------------------------------------------------
--  DDL for Trigger TRG_SLS_DISC_PLC_HIST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS_DISC_PLC_HIST" AFTER
  INSERT OR
  UPDATE OR
  DELETE ON SLS.SLS$DISC$PLC FOR EACH row
BEGIN
  IF updating THEN
  INSERT
  INTO SLS.SLS$DISC$PLC$HIST
    (
      CLD_ID ,      SLOC_ID ,         HO_ORG_ID ,
      ORG_ID ,      DISC_BASIS ,      ITM_ID ,
      EO_ID ,       SLS_EXEC ,        LBL_ID ,
      DISC_TYPE ,   DISC_VAL ,        EFFECTIVE_DT ,
      EXPIRY_DT ,   ON_HOLD ,         GRP_ID ,
      CATG_ID,      USR_ID_CREATE   ,USR_ID_CREATE_DT,
      USR_ID_MOD     , USR_ID_MOD_DT ,hist_dt
    )
    VALUES
    (
      :OLD.CLD_ID ,      :OLD.SLOC_ID ,         :OLD.HO_ORG_ID ,
      :OLD.ORG_ID ,      :OLD.DISC_BASIS ,      :OLD.ITM_ID ,
      :OLD.EO_ID ,       :OLD.SLS_EXEC ,        :OLD.LBL_ID ,
      :OLD.DISC_TYPE ,   :OLD.DISC_VAL ,        :OLD.EFFECTIVE_DT ,
      :OLD.EXPIRY_DT ,   :OLD.ON_HOLD ,         :OLD.GRP_ID ,
      :OLD.CATG_ID,      :old.USR_ID_CREATE   ,  :old.USR_ID_CREATE_DT,
      :old.USR_ID_MOD     , :old.USR_ID_MOD_DT ,sysdate
    );
elsif deleting THEN
  INSERT
  INTO SLS.SLS$DISC$PLC$HIST
    (
      CLD_ID ,      SLOC_ID ,         HO_ORG_ID ,
      ORG_ID ,      DISC_BASIS ,      ITM_ID ,
      EO_ID ,       SLS_EXEC ,        LBL_ID ,
      DISC_TYPE ,   DISC_VAL ,        EFFECTIVE_DT ,
      EXPIRY_DT ,   ON_HOLD ,         GRP_ID ,
      CATG_ID,      USR_ID_CREATE   ,USR_ID_CREATE_DT,
      USR_ID_MOD     , USR_ID_MOD_DT ,hist_dt
    )
    VALUES
    (
      :OLD.CLD_ID ,      :OLD.SLOC_ID ,         :OLD.HO_ORG_ID ,
      :OLD.ORG_ID ,      :OLD.DISC_BASIS ,      :OLD.ITM_ID ,
      :OLD.EO_ID ,       :OLD.SLS_EXEC ,        :OLD.LBL_ID ,
      :OLD.DISC_TYPE ,   :OLD.DISC_VAL ,        :OLD.EFFECTIVE_DT ,
      :OLD.EXPIRY_DT ,   :OLD.ON_HOLD ,         :OLD.GRP_ID ,
      :OLD.CATG_ID,      :old.USR_ID_CREATE   ,  :old.USR_ID_CREATE_DT,
      :old.USR_ID_MOD     , :old.USR_ID_MOD_DT ,sysdate
    );
END IF;
END TRG_SLS_DISC_PLC_HIST;




















/
ALTER TRIGGER "SLS"."TRG_SLS_DISC_PLC_HIST" ENABLE;
