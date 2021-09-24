--------------------------------------------------------
--  DDL for Trigger TRG_SLS$SRVC$INV$TDS$LINES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_SLS$SRVC$INV$TDS$LINES" AFTER
  UPDATE OR
  DELETE ON SLS.SLS$SRVC$INV$TDS$LINES REFERENCING OLD AS OLD NEW AS NEW FOR EACH ROW DECLARE NEW_ID NUMBER;
  BEGIN
    SELECT TRC.SLS$SRVC$INV$TDS$LINES$SEQ.NEXTVAL INTO NEW_ID FROM DUAL;
    IF UPDATING THEN
      INSERT
      INTO TRC.SLS$SRVC$INV$TDS$LINES_TRC
        (
          ID ,
          CLD_ID ,
          SLOC_ID ,
          ORG_ID ,
          DOC_ID ,
          DOC_ID_SO ,
          ITM_ID ,
          ITM_UOM ,
          TDS_RULE_ID ,
          TDS_RULE_FLG ,
          TDS_TYPE ,
          TDS_COA_ID ,
          TDS_AMT_SP ,
          TDS_AMT_BS ,
          TRC_TIME_STAMP ,
          MOD_ROW_ID ,
          TRAN_MODE ,
          HO_ORG_ID
        )
        VALUES
        (
          NEW_ID ,
          :NEW.CLD_ID ,
          :NEW.SLOC_ID ,
          :NEW.ORG_ID ,
          :NEW.DOC_ID ,
          :NEW.DOC_ID_SO ,
          :NEW.ITM_ID ,
          :NEW.ITM_UOM ,
          :NEW.TDS_RULE_ID ,
          :NEW.TDS_RULE_FLG ,
          :NEW.TDS_TYPE ,
          :NEW.TDS_COA_ID ,
          :NEW.TDS_AMT_SP ,
          :NEW.TDS_AMT_BS ,
          SYSDATE ,
          :OLD.ROWID ,
          'U' ,
          :NEW.HO_ORG_ID
        );
    ELSIF DELETING THEN
      INSERT
      INTO TRC.SLS$SRVC$INV$TDS$LINES_TRC
        (
          ID ,
          CLD_ID ,
          SLOC_ID ,
          ORG_ID ,
          DOC_ID ,
          DOC_ID_SO ,
          ITM_ID ,
          ITM_UOM ,
          TDS_RULE_ID ,
          TDS_RULE_FLG ,
          TDS_TYPE ,
          TDS_COA_ID ,
          TDS_AMT_SP ,
          TDS_AMT_BS ,
          TRC_TIME_STAMP ,
          MOD_ROW_ID ,
          TRAN_MODE ,
          HO_ORG_ID
        )
        VALUES
        (
          NEW_ID ,
          :OLD.CLD_ID ,
          :OLD.SLOC_ID ,
          :OLD.ORG_ID ,
          :OLD.DOC_ID ,
          :OLD.DOC_ID_SO ,
          :OLD.ITM_ID ,
          :OLD.ITM_UOM ,
          :OLD.TDS_RULE_ID ,
          :OLD.TDS_RULE_FLG ,
          :OLD.TDS_TYPE ,
          :OLD.TDS_COA_ID ,
          :OLD.TDS_AMT_SP ,
          :OLD.TDS_AMT_BS ,
          SYSDATE ,
          :OLD.ROWID ,
          'D' ,
          :OLD.HO_ORG_ID
        );
    END IF;
  END;
/
ALTER TRIGGER "SLS"."TRG_SLS$SRVC$INV$TDS$LINES" ENABLE;
