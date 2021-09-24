--------------------------------------------------------
--  DDL for Procedure AN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SLS"."AN" AS 
A VARCHAR2(40);
BEGIN
--A := APP.FN_SET_EO_ID(1,'0000','01','01','MANOJTYAGI','68',11) ;
-- A:=  APP.FN_GET_PARENT_ORG('1','01')  ;
--A:= APP.PKG_aPP.get_txn_id(11,'01',1, 21503,'0000') ;
--A:= GEN_DISP_DOC_ID(1,'0000','01',21504,'000B.01.01.5400.0000.2CB30D7C9E0D752',NULL ,'SLS$INV' );
--A:= GEN_DISP_DOC_ID_TST(1,'0000','01',21504);
A := SLS.FN_ins_price_hist(1,'0000','01','ITM 350','339',11);
--A := sls.fn_ins_despatch(1,'0000','01','000B.01.01.53FF.0000.2CB318D6B5D448,4',11);
 dbms_output.put_line(a);  
END;
--GEN_DISP_DOC_ID(P_SLOC_ID NUMBER,P_CLD_ID VARCHAR2,P_ORG_ID VARCHAR2,p_doc_id number, P_DOC_hex_ID varchar2, P_DOC_TYPE_ID NUMBER default null,p_TableName VARCHAR2) 
--select pkg_app_gen.generate_itm_id(p_grpShortCode IN VARCHAR2);
--(P_SLOC_ID NUMBER,P_CLD_ID VARCHAR2,P_ORG_ID VARCHAR2, P_DOC_ID VARCHAR2,P_USR NUMBER);

/

  GRANT EXECUTE ON "SLS"."AN" TO PUBLIC;
