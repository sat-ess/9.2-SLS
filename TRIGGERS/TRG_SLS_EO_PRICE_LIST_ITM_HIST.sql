--------------------------------------------------------
--  DDL for Trigger TRG_SLS_EO_PRICE_LIST_ITM_HIST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS_EO_PRICE_LIST_ITM_HIST" 
BEFORE UPDATE OR DELETE ON SLS.SLS$CUST$PRIC$LIST$ITM
for each row
BEGIN
IF UPDATING AND (
 :OLD.CATG_ID <> :new.CATG_ID
OR :OLD.ITM_ID <> :new.ITM_ID
OR :OLD.PACK_SIZE <> :new.PACK_SIZE
OR :OLD.ITM_UOM_BS <> :new.ITM_UOM_BS
OR :OLD.ITM_UOM_SP <> :new.ITM_UOM_SP
OR :OLD.ITM_PRICE <> :new.ITM_PRICE
OR :OLD.EFFECTIVE_DT <> :new.EFFECTIVE_DT
OR :OLD.EXPRY_DT <> :new.EXPRY_DT
OR :OLD.PRIC_LIST_TYPE <> :NEW.PRIC_LIST_TYPE
) THEN

INSERT INTO SLS$CUST$PRIC$LIST$ITM_HIST
(CLD_ID,
SLOC_ID,
ORG_ID,
HO_ORG_ID,
CATG_ID,
ITM_ID,
PACK_SIZE,
ITM_UOM_BS,
ITM_UOM_SP,
ITM_PRICE,
ITM_PRICE_OLD,
EFFECTIVE_DT,
EXPRY_DT,
PRIC_LIST_TYPE,
HIST_DT,USR_ID_CREATE
)
VALUES
(:OLD.CLD_ID,
:OLD.SLOC_ID,
:OLD.ORG_ID,
:OLD.HO_ORG_ID,
:OLD.CATG_ID,
:OLD.ITM_ID,
:OLD.PACK_SIZE,
:OLD.ITM_UOM_BS,
:OLD.ITM_UOM_SP,
:OLD.ITM_PRICE,
:OLD.ITM_PRICE_OLD,
:OLD.EFFECTIVE_DT,
:OLD.EXPRY_DT,
:OLD.PRIC_LIST_TYPE,
SYSTIMESTAMP,:NEW.USR_ID_MOD
);

ELSIF deleting THEN

INSERT INTO SLS$CUST$PRIC$LIST$ITM_HIST
(CLD_ID,
SLOC_ID,
ORG_ID,
HO_ORG_ID,
CATG_ID,
ITM_ID,
PACK_SIZE,
ITM_UOM_BS,
ITM_UOM_SP,
ITM_PRICE,
ITM_PRICE_OLD,
EFFECTIVE_DT,
EXPRY_DT,
PRIC_LIST_TYPE,
HIST_DT,USR_ID_CREATE
)
VALUES
(:OLD.CLD_ID,
:OLD.SLOC_ID,
:OLD.ORG_ID,
:OLD.HO_ORG_ID,
:OLD.CATG_ID,
:OLD.ITM_ID,
:OLD.PACK_SIZE,
:OLD.ITM_UOM_BS,
:OLD.ITM_UOM_SP,
:OLD.ITM_PRICE,
:OLD.ITM_PRICE_OLD,
:OLD.EFFECTIVE_DT,
:OLD.EXPRY_DT,
:OLD.PRIC_LIST_TYPE,
SYSTIMESTAMP,:NEW.USR_ID_MOD
);

END IF;

END TRG_SLS_EO_PRICE_LIST_ITM_HIST;


/
ALTER TRIGGER "SLS"."TRG_SLS_EO_PRICE_LIST_ITM_HIST" ENABLE;