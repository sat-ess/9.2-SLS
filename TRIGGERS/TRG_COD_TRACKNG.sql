--------------------------------------------------------
--  DDL for Trigger TRG_COD$TRACKNG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_COD$TRACKNG" AFTER--or replace
UPDATE OR DELETE ON SLS$COD$TRACKNG
  REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW

BEGIN

IF UPDATING THEN
  UPDATE SLS.SLS$SO
  SET USR_ID_MOD_DT=SYSDATE
  WHERE DOC_ID IN (SELECT SO_ID FROM SLS.SLS$INV$SHIP$ITM
WHERE DOC_ID =:OLD.INV_DOC_ID);
END IF;
END;
/
ALTER TRIGGER "SLS"."TRG_COD$TRACKNG" ENABLE;
