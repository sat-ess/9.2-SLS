--------------------------------------------------------
--  DDL for Type SLS$PND$DOC$ITM$TYPE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TYPE "SLS"."SLS$PND$DOC$ITM$TYPE" AS OBJECT (
                                        ITM_ID VARCHAR2(50),
                                        ITM_NAME VARCHAR2(100),
                                        ITM_UOM VARCHAR2(50),
                                        QTY NUMBER(10),
                                        PRICE NUMBER(20),
                                        AMOUNT NUMBER(20)
                                        );

/
