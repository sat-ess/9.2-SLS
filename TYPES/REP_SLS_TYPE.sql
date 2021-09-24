--------------------------------------------------------
--  DDL for Type REP_SLS_TYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "SLS"."REP_SLS_TYPE" AS OBJECT( CLD_ID       VARCHAR2(4),
                                                 HO_ORG_ID    VARCHAR2(2),
                                                 ORG_ID       VARCHAR2(2),
                                                 ORG_DESC     VARCHAR2(250),
                                                 ITM_DESC     VARCHAR2(250),
                                                 INVC_AMT     NUMBER(26,6),
                                                 INVC_AMT_SP  NUMBER(26,6),
                                                 ITM_SHIP_QTY NUMBER(26,6),
                                                 QTY_BS       NUMBER(26,6),
                                                 GRP_ITM      VARCHAR2(250),
                                                 WEK_NO       NUMBER(5),
                                                 WEEK         VARCHAR2(50),
                                                 MNTH_WEEK    VARCHAR2(50),
                                                 MNTH         VARCHAR2(50),
                                                 MNTH_NO      NUMBER(2),
                                                 QUARTER      NUMBER(1),
                                                 QUARTER_NM   VARCHAR2(50),
                                                 HALF_YEAR    NUMBER(1),
                                                 HALF_YEAR_NM VARCHAR2(50),
                                                 YR           NUMBER(4),
                                                 CURR_ID_SP   NUMBER(4),
                                                 CURR_ID_BS   NUMBER(4),
                                                 inv_doc_id   varchar2(50)
                                                );

/
