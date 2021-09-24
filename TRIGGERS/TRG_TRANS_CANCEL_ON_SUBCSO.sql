--------------------------------------------------------
--  DDL for Trigger TRG_TRANS_CANCEL_ON_SUBCSO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_TRANS_CANCEL_ON_SUBCSO" 
AFTER delete on sls$subc$so
declare
 PRAGMA AUTONOMOUS_TRANSACTION;

begin
rollback;
end;


/
ALTER TRIGGER "SLS"."TRG_TRANS_CANCEL_ON_SUBCSO" ENABLE;
