--------------------------------------------------------
--  DDL for Trigger TRG_SLS_EO_PRICE_TARGET_HIST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS_EO_PRICE_TARGET_HIST" 
after insert or update or delete ON SLS.SLS$EO$PRICE$TARGET
for each row
begin
           if updating  and (
                     :OLD.TARGET_QTY            <>  :NEW.TARGET_QTY

             ) then
              INSERT INTO SLS.SLS$EO$PRICE$TARGET$HIST(
                  CLD_ID,SLOC_ID,ORG_ID,HO_ORG_ID,GRP_ID,TARGET_DATE,TARGET_QTY,USR_ID_CREATE,USR_ID_CREATE_DT,
                  USR_ID_MOD,              HIST_DT
                )
                VALUES
                (
                  :OLD.CLD_ID,:OLD.SLOC_ID,:OLD.ORG_ID,:OLD.HO_ORG_ID,:OLD.GRP_ID,:OLD.TARGET_DATE,:OLD.TARGET_QTY,:OLD.USR_ID_CREATE,:OLD.USR_ID_CREATE_DT
                  ,:OLD.USR_ID_MOD,           SYSTIMESTAMP
                );

            elsif deleting then
               INSERT INTO SLS.SLS$EO$PRICE$TARGET$HIST(
                  CLD_ID,SLOC_ID,ORG_ID,HO_ORG_ID,GRP_ID,TARGET_DATE,TARGET_QTY,USR_ID_CREATE,USR_ID_CREATE_DT,
                  USR_ID_MOD,              HIST_DT
                ) values
               (
                  :OLD.CLD_ID,:OLD.SLOC_ID,:OLD.ORG_ID,:OLD.HO_ORG_ID,:OLD.GRP_ID,:OLD.TARGET_DATE,:OLD.TARGET_QTY,:OLD.USR_ID_CREATE,:OLD.USR_ID_CREATE_DT,
                  :OLD.USR_ID_MOD,           SYSTIMESTAMP
                );

           END IF;

END TRG_SLS_EO_PRICE_TARGET_HIST;










/
ALTER TRIGGER "SLS"."TRG_SLS_EO_PRICE_TARGET_HIST" ENABLE;
