--------------------------------------------------------
--  DDL for Procedure PROC_GET_WH_DTL_MAX_STK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SLS"."PROC_GET_WH_DTL_MAX_STK" (
		P_CLD_ID    IN VARCHAR2,
		P_SLOC_ID   IN NUMBER,
		P_HO_ORG_ID IN VARCHAR2,
		P_ORG_ID    IN VARCHAR2,
		P_ITM_ID    IN VARCHAR2,
		P_USR_ID    IN VARCHAR2,
    P_PROJ_ID   IN VARCHAR2,
		P_WH_ID OUT VARCHAR2,
		P_WH_NM OUT VARCHAR2,
		P_AVAIL_STK OUT NUMBER )
AS
	VAR_DEFAULT_WH VARCHAR2(50);
BEGIN
	SELECT  WH_ID , WH_NM  ,AVAIL_STK
		INTO P_WH_ID ,P_WH_NM ,P_AVAIL_STK
		FROM
			(
				SELECT DISTINCT A.CLD_ID, A.SLOC_ID                                                                                              ,A.ORG_ID          ,
						A.HO_ORG_ID           , A.WH_ID                                                                                                ,a.WH_NM           ,
						P_ITM_ID ITEM_ID      , FN_MM_GET_AVAIL_STK(A.CLD_ID, A.SLOC_ID, A.ORG_ID, b.itm_id, A.WH_ID, sysdate, 1, NULL, 'Q') AVAIL_STK , B.UOM_SLS UOM_PUR,
						B.UOM_BASIC UOM_BASIC ,b.itm_id
					FROM APP.APP$WH$ORG A  , APP.APP$SLS$ITM_VW B
					WHERE A.CLD_ID  = P_CLD_ID
					AND A.SLOC_ID   = P_SLOC_ID
					AND A.HO_ORG_ID = P_HO_ORG_ID
					AND A.ACTV      = 'Y'
					AND B.ITM_ID    = P_ITM_ID
					AND B.CLD_ID    = P_CLD_ID
					AND B.SLOC_ID   = P_SLOC_ID
					AND B.HO_ORG_ID = P_HO_ORG_ID
          AND A.WH_ID = SLS.FN_GET_DFLT_ORG_WH(P_SLOC_ID,P_CLD_ID,P_HO_ORG_ID,P_ORG_ID,P_USR_ID,P_PROJ_ID)
					ORDER BY AVAIL_STK DESC
			)
		WHERE ROWNUM    = 1;
	IF P_AVAIL_STK   = 0 THEN
		VAR_DEFAULT_WH := SLS.FN_GET_DFLT_ORG_WH(P_SLOC_ID,P_CLD_ID,P_HO_ORG_ID,P_ORG_ID,P_USR_ID,P_PROJ_ID);
		SELECT  A.WH_NM
			INTO P_WH_NM
			FROM APP.APP$WH$ORG A
			WHERE A.CLD_ID  = P_CLD_ID
			AND A.SLOC_ID   = P_SLOC_ID
			AND A.HO_ORG_ID = P_HO_ORG_ID
			AND A.ORG_ID    = P_ORG_ID
			AND A.WH_ID     =VAR_DEFAULT_WH;
	END IF;
EXCEPTION
WHEN OTHERS THEN
	P_WH_ID     := NULL ;
	P_WH_NM     := NULL;
	P_AVAIL_STK := NULL;
END;

/

  GRANT EXECUTE ON "SLS"."PROC_GET_WH_DTL_MAX_STK" TO PUBLIC;
