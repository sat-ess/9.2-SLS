--------------------------------------------------------
--  DDL for Procedure PROC_SLS_DBOB_OBJ_AUTO_INS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SLS"."PROC_SLS_DBOB_OBJ_AUTO_INS" AS
CURSOR c_data
   IS
    SELECT DBOB_ID,
               DBOB_NM,
               DB_DESC,
               DBOB_TYPE,
               DBOB_TB_ID,
               DBOB_SCH_ID,
               DBOB_ACTIVE_FLG,
               USR_ID_CREATE,
               USR_ID_CREATE_DT,
               USR_ID_MOD,
               USR_ID_MOD_DT,
               LAST_ANALYZED,
               USR_IP_ADDR
          FROM (SELECT OBJECT_ID DBOB_ID,
                          OBJECT_NAME DBOB_NM,
                          NULL DB_DESC,
                          DECODE (object_type,
                                  'FUNCTION', 'F',
                                  'PACKAGE', 'PK',
                                  'PACKAGE BODY', 'PB',
                                  'PROCEDURE', 'PR',
                                  'SEQUENCE', 'SQ',
                                  'SYNONYM', 'SY',
                                  'TABLE', 'T',
                                  'TRIGGER', 'TR',
                                  'VIEW', 'V')
                             DBOB_TYPE,
                          SCH_TB_ID DBOB_TB_ID,
                          SCH_ID DBOB_SCH_ID,
                          DECODE (status, 'VALID', 'Y', 'N')
                             AS "DBOB_ACTIVE_FLG",
                          '1' USR_ID_CREATE,
                          SYSDATE USR_ID_CREATE_DT,
                          NULL USR_ID_MOD,
                          SYSDATE USR_ID_MOD_DT,
                          SYSDATE LAST_ANALYZED,
                          NULL USR_IP_ADDR
                     FROM user_objects a, APP$DD$SCH b
                    WHERE SCH_NM =
                             (SELECT DISTINCT USERNAME FROM USER_SYS_PRIVS where USERNAME <>'PUBLIC')
                          AND a.object_type IN
                                   ('FUNCTION',
                                    'PACKAGE',
                                    'PACKAGE BODY',
                                    'PROCEDURE',
                                    'SEQUENCE',
                                    'SYNONYM',
                                    'TABLE',
                                    'TRIGGER',
                                    'VIEW')
            AND
             NOT EXISTS
                           (SELECT 1
                              FROM APP.APP$DD$DBOB p
                             WHERE a.OBJECT_NAME = p.DBOB_NM
                                --   AND a.OBJECT_ID = p.DBOB_ID
                and b.SCH_ID=p.DBOB_SCH_ID))
      ORDER BY 1;
        CURSOR COL_NM
             IS
             SELECT LISTAGG(COLUMN_NAME ,',')  WITHIN GROUP (ORDER BY COLUMN_ID) COLUMN_NAME  from SYS.DBA_TAB_COLUMNS where TABLE_NAME='APP$DD$DBOB';

   v_file    UTL_FILE.FILE_TYPE;
   RECORDS   NUMBER;
   counter   NUMBER;
   str varchar2(9999);
BEGIN
   BEGIN
      SELECT COUNT (1)
        INTO RECORDS
        FROM (  SELECT *
                  FROM (SELECT OBJECT_ID DBOB_ID,
                          OBJECT_NAME DBOB_NM,
                          NULL DB_DESC,
                          DECODE (object_type,
                                  'FUNCTION', 'F',
                                  'PACKAGE', 'PK',
                                  'PACKAGE BODY', 'PB',
                                  'PROCEDURE', 'PR',
                                  'SEQUENCE', 'SQ',
                                  'SYNONYM', 'SY',
                                  'TABLE', 'T',
                                  'TRIGGER', 'TR',
                                  'VIEW', 'V')
                             DBOB_TYPE,
                          SCH_TB_ID DBOB_TB_ID,
                          SCH_ID DBOB_SCH_ID,
                          DECODE (status, 'VALID', 'Y', 'N')
                             AS "DBOB_ACTIVE_FLG",
                          '1' USR_ID_CREATE,
                          SYSDATE USR_ID_CREATE_DT,
                          NULL USR_ID_MOD,
                          SYSDATE USR_ID_MOD_DT,
                          SYSDATE LAST_ANALYZED,
                          NULL USR_IP_ADDR
                     FROM user_objects a, APP$DD$SCH b
                    WHERE SCH_NM =
                             (SELECT DISTINCT USERNAME FROM USER_SYS_PRIVS where USERNAME <>'PUBLIC')
                          AND a.object_type IN
                                   ('FUNCTION',
                                    'PACKAGE',
                                    'PACKAGE BODY',
                                    'PROCEDURE',
                                    'SEQUENCE',
                                    'SYNONYM',
                                    'TABLE',
                                    'TRIGGER',
                                    'VIEW')
            AND
             NOT EXISTS
                           (SELECT 1
                              FROM APP.APP$DD$DBOB p
                             WHERE a.OBJECT_NAME = p.DBOB_NM
                                  -- AND a.OBJECT_ID = p.DBOB_ID
                    and b.SCH_ID=p.DBOB_SCH_ID))
              ORDER BY 1);


    IF RECORDS > 0
        THEN
         BEGIN
                    INSERT INTO DBOB_HIST
                    VALUES ('PROC_SLS_DBOB_OBJ_AUTO_INS', RECORDS, SYSDATE);
                    COMMIT;
            v_file :=
               UTL_FILE.FOPEN (
                  location       => 'DBOBPATCH',
                  filename       => 'DBOBPATCH_' || TO_CHAR (systimestamp, 'DD-MM-YYYY-HH24-MI-SSSSS-FF') || '.txt',
                  open_mode      => 'w',
                  max_linesize   => 32767);
                   UTL_FILE.PUT_LINE(v_file,'SPOOL C:\DBOBPATCH_' || TO_CHAR (systimestamp, 'DD-MM-YYYY-HH24-MI-SSSSS-FF') || '.log');
                   UTL_FILE.PUT_LINE(v_file,'CONN APP/EBIZAPP;');
                    FOR COL IN COL_NM
                    loop
                                              str:=   'INSERT INTO APP.APP$DD$DBOB ('|| COL.COLUMN_NAME||') VALUES (';
                    end loop;

            FOR cur_rec IN c_data
            LOOP
               UTL_FILE.PUT_LINE (
                  v_file,
                     --'INSERT INTO APP.APP$DD$DBOB VALUES ('
                  str
                  || cur_rec.DBOB_ID
                  || ','''
                  || cur_rec.DBOB_NM
                  || ''','''
                  || cur_rec.DB_DESC
                  || ''','''
                  || cur_rec.DBOB_TYPE
                  ||  ''','''
                  || cur_rec.DBOB_TB_ID
                  ||  ''','''
                  || cur_rec.DBOB_SCH_ID
                  || ''','''
                  || cur_rec.DBOB_ACTIVE_FLG
                  ||  ''','''
                  || cur_rec.USR_ID_CREATE
                  ||''','
                  || 'TO_DATE('
                  || ''''
                  || cur_rec.USR_ID_CREATE_DT
                  || ''',''DD-MM-YYYY'')'
                  || ','''
                  || cur_rec.USR_ID_MOD
                  || ''','
                  || 'TO_DATE('
                  || ''''
                  || cur_rec.USR_ID_MOD_DT
                  || ''',''DD-MM-YYYY'')'
                  || ','
                  || 'TO_DATE('
                  || ''''
                  || cur_rec.LAST_ANALYZED
                  || ''',''DD-MM-YYYY'')'
                  || ','''
                  || cur_rec.USR_IP_ADDR
                  || ''');');

                   END LOOP;
                           UTL_FILE.PUT_LINE(v_file,'COMMIT;');
               UTL_FILE.PUT_LINE(v_file,'SPOOL OFF;');
                           UTL_FILE.FCLOSE(v_file);
                END;
        END IF;

      INSERT INTO APP$DD$DBOB (DBOB_ID, DBOB_NM, DBOB_DESC, DBOB_TYPE, DBOB_TB_ID, DBOB_SCH_ID, DBOB_ACTIVE_FLG, USR_ID_CREATE, USR_ID_CREATE_DT, USR_ID_MOD, USR_ID_MOD_DT, LAST_ANALYZED, USR_IP_ADDR)
           SELECT *
             FROM (SELECT OBJECT_ID DBOB_ID,
                          OBJECT_NAME DBOB_NM,
                          NULL DB_DESC,
                          DECODE (object_type,
                                  'FUNCTION', 'F',
                                  'PACKAGE', 'PK',
                                  'PACKAGE BODY', 'PB',
                                  'PROCEDURE', 'PR',
                                  'SEQUENCE', 'SQ',
                                  'SYNONYM', 'SY',
                                  'TABLE', 'T',
                                  'TRIGGER', 'TR',
                                  'VIEW', 'V')
                             DBOB_TYPE,
                          SCH_TB_ID DBOB_TB_ID,
                          SCH_ID DBOB_SCH_ID,
                          DECODE (status, 'VALID', 'Y', 'N')
                             AS "DBOB_ACTIVE_FLG",
                          '1' USR_ID_CREATE,
                          SYSDATE USR_ID_CREATE_DT,
                          NULL USR_ID_MOD,
                          SYSDATE USR_ID_MOD_DT,
                          SYSDATE LAST_ANALYZED,
                          NULL USR_IP_ADDR
                     FROM user_objects a, APP$DD$SCH b
                    WHERE SCH_NM =
                             (SELECT DISTINCT USERNAME FROM USER_SYS_PRIVS where USERNAME <>'PUBLIC')
                          AND a.object_type IN
                                   ('FUNCTION',
                                    'PACKAGE',
                                    'PACKAGE BODY',
                                    'PROCEDURE',
                                    'SEQUENCE',
                                    'SYNONYM',
                                    'TABLE',
                                    'TRIGGER',
                                    'VIEW')
            AND
             NOT EXISTS
                           (SELECT 1
                              FROM APP.APP$DD$DBOB p
                             WHERE a.OBJECT_NAME = p.DBOB_NM
                                  -- AND a.OBJECT_ID = p.DBOB_ID
                    and b.SCH_ID=p.DBOB_SCH_ID))
                     ORDER BY 1;
      COMMIT;

   EXCEPTION
      WHEN OTHERS
      THEN
         raise_application_error(-20011,'Error in SLS-APP$DD$DBOB script creation for DBOB. Contact ESS !' ||SQLCODE || SQLERRM);
   END;
END;

/

  GRANT EXECUTE ON "SLS"."PROC_SLS_DBOB_OBJ_AUTO_INS" TO PUBLIC;
