--------------------------------------------------------
--  DDL for Type SLS$PND$DOC$TYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "SLS"."SLS$PND$DOC$TYPE" AS OBJECT (
                                        CLD_ID VARCHAR2(4),
                                        SLOC_ID NUMBER(2),
                                        ORG_ID VARCHAR2(2),
                                        WH_ID VARCHAR2(20),
                                        FY_ID NUMBER(5),
                                        DOC_ID VARCHAR2(40),
                                        DOC_NO VARCHAR2(20),
                                        DOC_DT DATE,
                                        GLBL_DOC_ID NUMBER(10),
                                        GLBL_DOC_TYPE_ID NUMBER(5),
                                        GLBL_DOC_NM VARCHAR2(100),
                                        GLBL_DOC_TYPE_NM VARCHAR2(100),
                                        SRC_ID NUMBER(20),
                                        SRC_DTL VARCHAR2(100),
                                        AMOUNT NUMBER(15),
                                        CURR_ID NUMBER(10),
                                        CURR_VAL VARCHAR2(50),
                                        WF_ID VARCHAR2(25),
                                        REMARKS VARCHAR2(500),
                                        USR_ID_CREATE NUMBER(5),
                                        USR_ID_CREATE_NM VARCHAR2(100),
                                        CREATE_DT DATE,
                                        USR_ID NUMBER(5),
                                        OP_TYPE VARCHAR2(1)
                                        );

/

  GRANT EXECUTE ON "SLS"."SLS$PND$DOC$TYPE" TO "MNF";
