--------------------------------------------------------
--  DDL for Trigger TRG_SLS_EO_PRICE_HIST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS_EO_PRICE_HIST" 
after insert or update or delete ON SLS.SLS$EO$PRICE
for each row
begin
           if updating  and (
                     :OLD.MRP_RATE            <>  :NEW.MRP_RATE
                 or :OLD.MRP_TYP             <>  :NEW.MRP_TYP
                 or :OLD.MRP_PRICE           <>  :NEW.MRP_PRICE
                 or :OLD.MIN_PRICE           <>  :NEW.MIN_PRICE
                 or :OLD.BASE_PRICE          <>  :NEW.BASE_PRICE
                 or :OLD.expiry_dt           <>  :NEW.expiry_dt
                 or :OLD.UPD_BASE_PRICE_TYPE <>  :NEW.UPD_BASE_PRICE_TYPE
                 or :OLD.UPD_BASE_PRICE_RATE <>  :NEW.UPD_BASE_PRICE_RATE
                 or :OLD.TOT_MRP_RATE        <>  :NEW.TOT_MRP_RATE
                 or :OLD.PYMNT_TRMS_ID       <>  :NEW.PYMNT_TRMS_ID
                 or :OLD.ITM_DISPTCH_LOC     <>  :NEW.ITM_DISPTCH_LOC
                 OR :OLD.MRP_RATE            <>  :NEW.MRP_RATE
                 OR :OLD.ITM_UOM             <>  :NEW.ITM_UOM
                 or :old.ADD_MRP_PRICE       <>  :new.ADD_MRP_PRICE
                 or :old.ADD_MRP_RATE        <>  :new.ADD_MRP_RATE
             ) then
              INSERT INTO SLS.SLS$EO$PRICE_HIST(
                  CLD_ID,                SLOC_ID,                   ORG_ID,
                  HO_ORG_ID,             EO_ID,                     CATG_ID,
                  EFFECTIVE_DT,          ITM_ID,                    ITM_UOM,
                  MRP_RATE,              MRP_TYP,                   MRP_PRICE,
                  MIN_PRICE,             PRICE_APPLY,               USR_ID_CREATE,
                  USR_ID_CREATE_DT,      USR_ID_MOD,                USR_ID_MOD_DT,
                  BASE_PRICE,            expiry_dt,                 eo_price_type,
                  EO_PART_NO,            UPD_BASE_PRICE_TYPE,       UPD_BASE_PRICE_RATE  ,
                  TOT_MRP_RATE,          PYMNT_TRMS_ID,             ITM_DISPTCH_LOC,
                  ADD_MRP_PRICE,         ADD_MRP_RATE,              HIST_DT
                )
                VALUES
                (
                  :old.CLD_ID,                :old.SLOC_ID,                           :OLD.ORG_ID,
                  :OLD.HO_ORG_ID,        :OLD.EO_ID,                             :OLD.CATG_ID,
                  :OLD.EFFECTIVE_DT,   :OLD.ITM_ID,                            :OLD.ITM_UOM,
                  :OLD.MRP_RATE,         :OLD.MRP_TYP,                         :OLD.MRP_PRICE,
                  :OLD.MIN_PRICE,         'N',                                           :OLD.USR_ID_CREATE,
                  :OLD.USR_ID_CREATE_DT, :OLD.USR_ID_MOD,             :OLD.USR_ID_MOD_DT,
                  :OLD.BASE_PRICE,         :old.expiry_dt,                        :new.eo_price_type,
                  :old.EO_PART_NO,         :old.UPD_BASE_PRICE_TYPE,  :old.UPD_BASE_PRICE_RATE  ,
                  :old.TOT_MRP_RATE ,    :OLD.PYMNT_TRMS_ID,          :OLD.ITM_DISPTCH_LOC,
                  :old.ADD_MRP_PRICE,    :OLD.ADD_MRP_RATE  ,           SYSTIMESTAMP
                );

            elsif deleting then
               INSERT INTO SLS.SLS$EO$PRICE_HIST(
                  CLD_ID,                SLOC_ID,                   ORG_ID,
                  HO_ORG_ID,             EO_ID,                     CATG_ID,
                  EFFECTIVE_DT,          ITM_ID,                    ITM_UOM,
                  MRP_RATE,              MRP_TYP,                   MRP_PRICE,
                  MIN_PRICE,             PRICE_APPLY,               USR_ID_CREATE,
                  USR_ID_CREATE_DT,      USR_ID_MOD,                USR_ID_MOD_DT,
                  BASE_PRICE,            expiry_dt,                 eo_price_type,
                  EO_PART_NO,            UPD_BASE_PRICE_TYPE,       UPD_BASE_PRICE_RATE  ,
                  TOT_MRP_RATE,          PYMNT_TRMS_ID,             ITM_DISPTCH_LOC,
                  ADD_MRP_PRICE ,        ADD_MRP_RATE,              HIST_DT
                ) values
               (
                  :old.CLD_ID,           :old.SLOC_ID,              :OLD.ORG_ID,
                  :OLD.HO_ORG_ID,        :OLD.EO_ID,                :OLD.CATG_ID,
                  :OLD.EFFECTIVE_DT,               :OLD.ITM_ID,               :OLD.ITM_UOM,
                  :OLD.MRP_RATE,         :OLD.MRP_TYP,              :OLD.MRP_PRICE,
                  :OLD.MIN_PRICE,        'N',                       :OLD.USR_ID_CREATE,
                  :OLD.USR_ID_CREATE_DT, :OLD.USR_ID_MOD,           :OLD.USR_ID_MOD_DT,
                  :OLD.BASE_PRICE,       :old.expiry_dt,            :old.eo_price_type,
                  :OLD.EO_PART_NO,       :OLD.UPD_BASE_PRICE_TYPE,  :OLD.UPD_BASE_PRICE_RATE  ,
                  :OLD.TOT_MRP_RATE,     :OLD.PYMNT_TRMS_ID,        :OLD.ITM_DISPTCH_LOC,
                  :old.ADD_MRP_PRICE,    :OLD.ADD_MRP_RATE,             SYSTIMESTAMP
                );

           END IF;

END TRG_SLS_EO_PRICE_HIST;


/
ALTER TRIGGER "SLS"."TRG_SLS_EO_PRICE_HIST" ENABLE;
