--------------------------------------------------------
--  DDL for Procedure PROC_SLS_DD_DBOB_COL_AUTO_INS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SLS"."PROC_SLS_DD_DBOB_COL_AUTO_INS" AS
 CURSOR c_data
   IS
SELECT DBOB_COL_ID,
       DBOB_COL_NM,
       DBOB_ID,
       DBOB_COL_SCH_ID,
       DBOB_COL_USE_FR_REF,
       DBOB_COL_DESC,
       DBOB_COL_DT,
       DBOB_COL_DT_LEN,
       DBOB_COL_DT_PRC,
       USR_ID_CREATE,
       USR_ID_CREATE_DT,
       USR_ID_MOD,
       USR_ID_MOD_DT,
       LAST_ANALYZED,
       USR_IP_ADDR,
       DBOB_COL_DT_SCAL
        from (
        SELECT COLUMN_ID DBOB_COL_ID,
                  COLUMN_NAME DBOB_COL_NM,
                  obj.DBOB_ID DBOB_ID,
                  DBOB_SCH_ID DBOB_COL_SCH_ID,
                  NULL DBOB_COL_USE_FR_REF,
                  NULL DBOB_COL_DESC,
                  DECODE (data_type,
                          'BFILE', 'BFILE',
                          'BLOB', 'BLOB',
                          'CHAR', 'CH',
                          'CLOB', 'CLOB',
                          'DATE', 'DT',
                          'LONG', 'L',
                          'NUMBER', 'NM',
                          'NVARCHAR2', 'NVC',
                          'TIMESTAMP(6)', 'TS6',
                          'TIMESTAMP(8)', 'TS8',
                          'UNDEFINED', 'U',
                          'VARCHAR2', 'VC')
                     DBOB_COL_DT,
                  DATA_LENGTH DBOB_COL_DT_LEN,
                  NVL (DATA_PRECISION, 0) DBOB_COL_DT_PRC,
                  '1' USR_ID_CREATE,
                  SYSDATE USR_ID_CREATE_DT,
                  NULL USR_ID_MOD,
                  SYSDATE USR_ID_MOD_DT,
                  SYSDATE LAST_ANALYZED,
                  NULL USR_IP_ADDR,
                  DATA_SCALE    DBOB_COL_DT_SCAL
             FROM user_TAB_COLUMNS a, APP$DD$DBOB obj
            WHERE a.table_name = obj.DBOB_NM
                  AND COLUMN_ID || DBOB_ID || DBOB_SCH_ID NOT IN
                           (SELECT DBOB_COL_ID || DBOB_ID || DBOB_COL_SCH_ID
                              FROM APP$DD$DBOB$COL)
         ORDER BY 4);
         CURSOR COL_NM
             IS
             SELECT LISTAGG(COLUMN_NAME ,',')  WITHIN GROUP (ORDER BY COLUMN_ID) COLUMN_NAME  from SYS.DBA_TAB_COLUMNS where TABLE_NAME='APP$DD$DBOB$COL';
   v_file    UTL_FILE.FILE_TYPE;
   RECORDS   NUMBER;
   str varchar2(9999);
BEGIN
   BEGIN
      SELECT COUNT (1)
        INTO RECORDS
        FROM (  SELECT COLUMN_ID DBOB_COL_ID,
                  COLUMN_NAME DBOB_COL_NM,
                  obj.DBOB_ID DBOB_ID,
                  DBOB_SCH_ID DBOB_COL_SCH_ID,
                  NULL DBOB_COL_USE_FR_REF,
                  NULL DBOB_COL_DESC,
                  DECODE (data_type,
                          'BFILE', 'BFILE',
                          'BLOB', 'BLOB',
                          'CHAR', 'CH',
                          'CLOB', 'CLOB',
                          'DATE', 'DT',
                          'LONG', 'L',
                          'NUMBER', 'NM',
                          'NVARCHAR2', 'NVC',
                          'TIMESTAMP(6)', 'TS6',
                          'TIMESTAMP(8)', 'TS8',
                          'UNDEFINED', 'U',
                          'VARCHAR2', 'VC')
                     DBOB_COL_DT,
                  DATA_LENGTH DBOB_COL_DT_LEN,
                  NVL (DATA_PRECISION, 0) DBOB_COL_DT_PRC,
                  '1' USR_ID_CREATE,
                  SYSDATE USR_ID_CREATE_DT,
                  NULL USR_ID_MOD,
                  SYSDATE USR_ID_MOD_DT,
                  SYSDATE LAST_ANALYZED,
                  NULL USR_IP_ADDR,
                  DATA_SCALE    DBOB_COL_DT_SCAL
             FROM user_TAB_COLUMNS a, APP$DD$DBOB obj
            WHERE a.table_name = obj.DBOB_NM
                  AND COLUMN_ID || DBOB_ID || DBOB_SCH_ID NOT IN
                           (SELECT DBOB_COL_ID || DBOB_ID || DBOB_COL_SCH_ID
                              FROM APP$DD$DBOB$COL)
         ORDER BY 4);
        IF RECORDS > 0
        THEN
         BEGIN
                    INSERT INTO DBOB_HIST
                    VALUES ('PROC_SLS_DD_DBOB_COL_AUTO_INS', RECORDS, SYSDATE);
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
                                              str:=   'INSERT INTO APP.APP$DD$DBOB$COL ('|| COL.COLUMN_NAME||') VALUES (';
                    end loop;

            FOR cur_rec IN c_data
            LOOP
               UTL_FILE.PUT_LINE (
                  v_file,
                   -- 'INSERT INTO APP.APP$DD$DBOB$COL VALUES ('
                   str
                  || cur_rec.DBOB_COL_ID
                  || ','''
                  || cur_rec.DBOB_COL_NM
                  || ''','''
                  || cur_rec.DBOB_ID
                  || ''','''
                  || cur_rec.DBOB_COL_SCH_ID
                  ||  ''','''
                  || cur_rec.DBOB_COL_USE_FR_REF
                  ||  ''','''
                  || cur_rec.DBOB_COL_DESC
                  || ''','''
                  || cur_rec.DBOB_COL_DT
                  ||  ''','''
                  || cur_rec.DBOB_COL_DT_LEN
                  ||''','''
                  || cur_rec.DBOB_COL_DT_PRC
                  || ''','''
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
                  || ''','''
                  || cur_rec.DBOB_COL_DT_SCAL
                  || ''');');

                   END LOOP;
                           UTL_FILE.PUT_LINE(v_file,'COMMIT;');
               UTL_FILE.PUT_LINE(v_file,'SPOOl OFF;');
                           UTL_FILE.FCLOSE(v_file);
                END;
        END IF;


      INSERT INTO APP$DD$DBOB$COL (DBOB_COL_ID, DBOB_COL_NM, DBOB_ID, DBOB_COL_SCH_ID, DBOB_COL_USE_FR_REF, DBOB_COL_DESC, DBOB_COL_DT, DBOB_COL_DT_LEN, DBOB_COL_DT_PRC, USR_ID_CREATE, USR_ID_CREATE_DT, USR_ID_MOD, USR_ID_MOD_DT, LAST_ANALYZED, USR_IP_ADDR, DBOB_COL_DT_SCAL)
           SELECT COLUMN_ID DBOB_COL_ID,
                  COLUMN_NAME DBOB_COL_NM,
                  obj.DBOB_ID DBOB_ID,
                  DBOB_SCH_ID DBOB_COL_SCH_ID,
                  NULL DBOB_COL_USE_FR_REF,
                  NULL DBOB_COL_DESC,
                  DECODE (data_type,
                          'BFILE', 'BFILE',
                          'BLOB', 'BLOB',
                          'CHAR', 'CH',
                          'CLOB', 'CLOB',
                          'DATE', 'DT',
                          'LONG', 'L',
                          'NUMBER', 'NM',
                          'NVARCHAR2', 'NVC',
                          'TIMESTAMP(6)', 'TS6',
                          'TIMESTAMP(8)', 'TS8',
                          'UNDEFINED', 'U',
                          'VARCHAR2', 'VC')
                     DBOB_COL_DT,
                  DATA_LENGTH DBOB_COL_DT_LEN,
                  NVL (DATA_PRECISION, 0) DBOB_COL_DT_PRC,
                  '1' USR_ID_CREATE,
                  SYSDATE USR_ID_CREATE_DT,
                  NULL USR_ID_MOD,
                  SYSDATE USR_ID_MOD_DT,
                  SYSDATE LAST_ANALYZED,
                  NULL USR_IP_ADDR,
                  DATA_SCALE    DBOB_COL_DT_SCAL
             FROM user_TAB_COLUMNS a, APP$DD$DBOB obj
            WHERE a.table_name = obj.DBOB_NM
                  AND COLUMN_ID || DBOB_ID || DBOB_SCH_ID NOT IN
                           (SELECT DBOB_COL_ID || DBOB_ID || DBOB_COL_SCH_ID
                              FROM APP$DD$DBOB$COL)
         ORDER BY 4;
          COMMIT;

   EXCEPTION
      WHEN OTHERS
      THEN
         raise_application_error(-20011,'Error in SLS-APP$DD$DBOB$COL script creation for DBOB. Contact ESS !' ||SQLCODE || SQLERRM);
   END;
 END;

/

  GRANT EXECUTE ON "SLS"."PROC_SLS_DD_DBOB_COL_AUTO_INS" TO PUBLIC;
