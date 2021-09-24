--------------------------------------------------------
--  DDL for Trigger TRG_INS_SLS$SO$PAYMNT_ADT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SLS"."TRG_INS_SLS$SO$PAYMNT_ADT" 
AFTER UPDATE ON SLS.SLS$SO$PAYMNT
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN
INSERT INTO APP.AUDITTRAIL ( AUDITRECID, USERID , CLIENTID, SCHEMANAME,TABLENAME,
                                      KEYVALUE, KEYFIELDS, OSUSER,MACHINE,TERMINAL, PROGRAM, DATETIME )
                                      SELECT APP.AUDIT_SEQ.NEXTVAL ,  0, USER,'SLS','SLS$SO$PAYMNT',
                                      NULL,NULL,   OSUSER, MACHINE, TERMINAL, PROGRAM, TO_CHAR(SYSDATE,'DD/MM/YY-HH:MI') FROM SYS.V_$SESSION
                                      WHERE AUDSID = (SELECT USERENV('SESSIONID')  FROM DUAL) ;
 IF UPDATING  ('ACC_ID') THEN
IF :old.ACC_ID <> :NEW.ACC_ID THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'ACC_ID',:OLD.ACC_ID, :New.ACC_ID);
        END IF ; END IF ;
IF UPDATING  ('ACT_RECVD_AMT') THEN
IF :old.ACT_RECVD_AMT <> :NEW.ACT_RECVD_AMT THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'ACT_RECVD_AMT',:OLD.ACT_RECVD_AMT, :New.ACT_RECVD_AMT);
        END IF ; END IF ;
IF UPDATING  ('ADDS_ID') THEN
IF :old.ADDS_ID <> :NEW.ADDS_ID THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'ADDS_ID',:OLD.ADDS_ID, :New.ADDS_ID);
        END IF ; END IF ;
IF UPDATING  ('AMD_DT') THEN
IF :old.AMD_DT <> :NEW.AMD_DT THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'AMD_DT',:OLD.AMD_DT, :New.AMD_DT);
        END IF ; END IF ;
IF UPDATING  ('AMD_NO') THEN
IF :old.AMD_NO <> :NEW.AMD_NO THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'AMD_NO',:OLD.AMD_NO, :New.AMD_NO);
        END IF ; END IF ;
IF UPDATING  ('BANK_AC_NO') THEN
IF :old.BANK_AC_NO <> :NEW.BANK_AC_NO THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'BANK_AC_NO',:OLD.BANK_AC_NO, :New.BANK_AC_NO);
        END IF ; END IF ;
IF UPDATING  ('BANK_NM') THEN
IF :old.BANK_NM <> :NEW.BANK_NM THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'BANK_NM',:OLD.BANK_NM, :New.BANK_NM);
        END IF ; END IF ;
IF UPDATING  ('CLD_ID') THEN
IF :old.CLD_ID <> :NEW.CLD_ID THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'CLD_ID',:OLD.CLD_ID, :New.CLD_ID);
        END IF ; END IF ;
IF UPDATING  ('CURR_CONV_FCTR') THEN
IF :old.CURR_CONV_FCTR <> :NEW.CURR_CONV_FCTR THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'CURR_CONV_FCTR',:OLD.CURR_CONV_FCTR, :New.CURR_CONV_FCTR);
        END IF ; END IF ;
IF UPDATING  ('CURR_ID_BS') THEN
IF :old.CURR_ID_BS <> :NEW.CURR_ID_BS THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'CURR_ID_BS',:OLD.CURR_ID_BS, :New.CURR_ID_BS);
        END IF ; END IF ;
IF UPDATING  ('CURR_ID_SP') THEN
IF :old.CURR_ID_SP <> :NEW.CURR_ID_SP THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'CURR_ID_SP',:OLD.CURR_ID_SP, :New.CURR_ID_SP);
        END IF ; END IF ;
IF UPDATING  ('DOC_ID') THEN
IF :old.DOC_ID <> :NEW.DOC_ID THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'DOC_ID',:OLD.DOC_ID, :New.DOC_ID);
        END IF ; END IF ;
IF UPDATING  ('HO_ORG_ID') THEN
IF :old.HO_ORG_ID <> :NEW.HO_ORG_ID THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'HO_ORG_ID',:OLD.HO_ORG_ID, :New.HO_ORG_ID);
        END IF ; END IF ;
IF UPDATING  ('INSTRUMENT_NO') THEN
IF :old.INSTRU_NO <> :NEW.INSTRU_NO THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'INSTRUMENT_NO',:OLD.INSTRU_NO, :New.INSTRU_NO);
        END IF ; END IF ;
IF UPDATING  ('MACHINE_ID') THEN
IF :old.MACHINE_ID <> :NEW.MACHINE_ID THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'MACHINE_ID',:OLD.MACHINE_ID, :New.MACHINE_ID);
        END IF ; END IF ;
IF UPDATING  ('ORG_ID') THEN
IF :old.ORG_ID <> :NEW.ORG_ID THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'ORG_ID',:OLD.ORG_ID, :New.ORG_ID);
        END IF ; END IF ;
IF UPDATING  ('PAY_MODE') THEN
IF :old.PAY_MODE <> :NEW.PAY_MODE THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'PAY_MODE',:OLD.PAY_MODE, :New.PAY_MODE);
        END IF ; END IF ;
IF UPDATING  ('PAY_TYPE_DT') THEN
IF :old.PAY_TYPE_DT <> :NEW.PAY_TYPE_DT THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'PAY_TYPE_DT',:OLD.PAY_TYPE_DT, :New.PAY_TYPE_DT);
        END IF ; END IF ;
IF UPDATING  ('PAY_TYPE_NO') THEN
IF :old.PAY_TYPE_NO <> :NEW.PAY_TYPE_NO THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'PAY_TYPE_NO',:OLD.PAY_TYPE_NO, :New.PAY_TYPE_NO);
        END IF ; END IF ;
IF UPDATING  ('PHONE_NO') THEN
IF :old.PHONE_NO <> :NEW.PHONE_NO THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'PHONE_NO',:OLD.PHONE_NO, :New.PHONE_NO);
        END IF ; END IF ;
IF UPDATING  ('REMARKS') THEN
IF :old.REMARKS <> :NEW.REMARKS THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'REMARKS',:OLD.REMARKS, :New.REMARKS);
        END IF ; END IF ;
IF UPDATING  ('SLOC_ID') THEN
IF :old.SLOC_ID <> :NEW.SLOC_ID THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'SLOC_ID',:OLD.SLOC_ID, :New.SLOC_ID);
        END IF ; END IF ;
IF UPDATING  ('SR_NO') THEN
IF :old.SR_NO <> :NEW.SR_NO THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'SR_NO',:OLD.SR_NO, :New.SR_NO);
        END IF ; END IF ;
IF UPDATING  ('TOT_AMT_BS') THEN
IF :old.TOT_AMT_BS <> :NEW.TOT_AMT_BS THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'TOT_AMT_BS',:OLD.TOT_AMT_BS, :New.TOT_AMT_BS);
        END IF ; END IF ;
IF UPDATING  ('TOT_AMT_SP') THEN
IF :old.TOT_AMT_SP <> :NEW.TOT_AMT_SP THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'TOT_AMT_SP',:OLD.TOT_AMT_SP, :New.TOT_AMT_SP);
        END IF ; END IF ;
IF UPDATING  ('USR_ID_CREATE') THEN
IF :old.USR_ID_CREATE <> :NEW.USR_ID_CREATE THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'USR_ID_CREATE',:OLD.USR_ID_CREATE, :New.USR_ID_CREATE);
        END IF ; END IF ;
IF UPDATING  ('USR_ID_CREATE_DT') THEN
IF :old.USR_ID_CREATE_DT <> :NEW.USR_ID_CREATE_DT THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'USR_ID_CREATE_DT',:OLD.USR_ID_CREATE_DT, :New.USR_ID_CREATE_DT);
        END IF ; END IF ;
IF UPDATING  ('USR_ID_MOD') THEN
IF :old.USR_ID_MOD <> :NEW.USR_ID_MOD THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'USR_ID_MOD',:OLD.USR_ID_MOD, :New.USR_ID_MOD);
        END IF ; END IF ;
IF UPDATING  ('USR_ID_MOD_DT') THEN
IF :old.USR_ID_MOD_DT <> :NEW.USR_ID_MOD_DT THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'USR_ID_MOD_DT',:OLD.USR_ID_MOD_DT, :New.USR_ID_MOD_DT);
        END IF ; END IF ;
IF UPDATING  ('VOU_GENRTD') THEN
IF :old.VOU_GENRTD <> :NEW.VOU_GENRTD THEN
        INSERT INTO APP.AUDITTRAILDETAIL( AUDITRECID, COLUMNNAME, ORIGINALVALUE, CHANGEDVALUE ) VALUES (  APP.AUDIT_SEQ.CURRVAL ,'VOU_GENRTD',:OLD.VOU_GENRTD, :New.VOU_GENRTD);
        END IF ; END IF ;
end;
/
ALTER TRIGGER "SLS"."TRG_INS_SLS$SO$PAYMNT_ADT" ENABLE;