--------------------------------------------------------
--  DDL for Trigger TRG_SLS_QUOT_STAT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS_QUOT_STAT" 
AFTER UPDATE ON SLS$QUOT 
REFERENCING OLD AS OLD NEW AS NEW 
FOR EACH ROW
BEGIN
IF (:NEW.QUOT_STAT IN (319, 1651) OR :OLD.QUOT_STAT IN (319, 1651)) AND :NEW.QUOT_MODE IN (313,317) THEN
RAISE_APPLICATION_ERROR(-20111,'Quotation is already approved. Cancel the operation');
END IF;
END;
/
ALTER TRIGGER "SLS"."TRG_SLS_QUOT_STAT" ENABLE;
