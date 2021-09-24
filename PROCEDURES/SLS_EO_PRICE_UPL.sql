--------------------------------------------------------
--  DDL for Procedure SLS_EO_PRICE_UPL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SLS"."SLS_EO_PRICE_UPL" 
AS
  CURSOR C1 IS
  	SELECT A.EE_SUB_TYPE_ID ATT_ID, A.EE_SUB_TYPE ATT_NM
		   FROM  APP.APP$EE$PRF$SUB$TYPE A
  	WHERE  A.EE_SUB_TYPE_ACTV = 'Y' AND A.EE_TYPE_ID = 68;

  CURSOR C2(CP_CATG_ID NUMBER) IS
    SELECT DISTINCT B.EO_CLD_ID CLD_ID, B.EO_SLOC_ID SLOC_ID, B.EO_ORG_ID ORG_ID, B.EO_HO_ORG_ID HO_ORG_ID,
           B.EO_ID, B.CATG_ID CATG_ID, A.EFFECTIVE_DT, A.ITM_ID, A.ITM_UOM, A.MRP_RATE,
           A.MRP_TYP,  A.MRP_PRICE, A.MIN_PRICE, 1 USR_ID_CREATE, SYSDATE USR_ID_CREATE_DT,
           A.BASE_PRICE,  A.EXPIRY_DT, 'C' EO_PRICE_TYPE, A.TOT_MRP_RATE, A.MRP_ADD_SUB,
           A.ADD_MRP_ADD_SUB, A.ADD_MRP_RATE, A.ADD_MRP_TYP, A.ADD_TOT_MRP_RATE,A.ADD_MRP_PRICE
      FROM SLS.APP$GLBL$UPL$EO$PRICE A, APP.APP$EO B
    WHERE B.CATG_ID = CP_CATG_ID AND B.EO_TYPE = 68
      AND B.EO_HO_ORG_ID = (SELECT DISTINCT B.HO_ORG FROM SLS.APP$GLBL$UPL$EO$PRICE B)
      AND B.EO_ORG_ID = (SELECT DISTINCT B.ORG FROM SLS.APP$GLBL$UPL$EO$PRICE B);

CNT_PSFL NUMBER := 1;


BEGIN


    SLS_EO_PRICE_VALIDATE; --VALIDATE RECORDS



     BEGIN
      SELECT COUNT(1) INTO CNT_PSFL
        FROM SLS.APP$GLBL$UPL$EO$PRICE
       WHERE NVL (PSFL_STATUS, 'Y') = 'N';
     EXCEPTION
       WHEN OTHERS THEN
         RAISE_APPLICATION_ERROR ('-20101', 'ERROR WHILE CHECKING NUMBER OF INVALID RECORDS');
     END;


    IF CNT_PSFL = 0 THEN
           BEGIN
              FOR J IN C1 LOOP
                  FOR I IN C2(J.ATT_ID) LOOP
                        INSERT
                        INTO SLS$EO$PRICE A
                          (
                            CLD_ID,           SLOC_ID,              ORG_ID,           HO_ORG_ID,
                            EO_ID,            CATG_ID,              EFFECTIVE_DT,     ITM_ID,
                            ITM_UOM,          MRP_RATE,             MRP_TYP,          MRP_PRICE,
                            MIN_PRICE,        USR_ID_CREATE,        USR_ID_CREATE_DT, BASE_PRICE,
                            EXPIRY_DT,        EO_PRICE_TYPE,        TOT_MRP_RATE,     MRP_ADD_SUB,
                            ADD_MRP_ADD_SUB,  ADD_MRP_RATE,         ADD_MRP_TYP,      ADD_TOT_MRP_RATE,
                            ADD_MRP_PRICE
                          )
                          VALUES
                          (
                            I.CLD_ID,         I.SLOC_ID,            I.ORG_ID,         I.HO_ORG_ID,
                            I.EO_ID,          I.CATG_ID,            I.EFFECTIVE_DT,   I.ITM_ID,
                            I.ITM_UOM,        I.MRP_RATE,           I.MRP_TYP,        I.MRP_PRICE,
                            I.MIN_PRICE,      I.USR_ID_CREATE,      SYSDATE,          I.BASE_PRICE,
                            I.EXPIRY_DT,      I.EO_PRICE_TYPE,      I.TOT_MRP_RATE,    I.MRP_ADD_SUB,
                            I.ADD_MRP_ADD_SUB,I.ADD_MRP_RATE,       I.ADD_MRP_TYP,     I.ADD_TOT_MRP_RATE,
                            I.ADD_MRP_PRICE
                          );

                  END LOOP;
              END LOOP;

           EXCEPTION
              WHEN OTHERS THEN
                RAISE_APPLICATION_ERROR(-20001,'ERROR WHILE ISERTING SALES PRICE '||SQLERRM);

           END;

    END IF;

COMMIT;

END SLS_EO_PRICE_UPL;

/

  GRANT EXECUTE ON "SLS"."SLS_EO_PRICE_UPL" TO PUBLIC;
  GRANT EXECUTE ON "SLS"."SLS_EO_PRICE_UPL" TO "APP";
