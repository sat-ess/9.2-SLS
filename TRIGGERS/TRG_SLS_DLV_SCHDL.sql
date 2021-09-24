--------------------------------------------------------
--  DDL for Trigger TRG_SLS_DLV_SCHDL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS_DLV_SCHDL" 
  BEFORE INSERT OR UPDATE OR DELETE ON SLS$SO$DLV$SCHDL
  FOR EACH ROW
BEGIN

  IF INSERTING OR UPDATING  THEN
    :NEW.DLV_DT:=TRUNC(:NEW.DLV_DT);
  END IF;

END TRG_SLS_DLV_SCHDL;




























































/
ALTER TRIGGER "SLS"."TRG_SLS_DLV_SCHDL" DISABLE;
