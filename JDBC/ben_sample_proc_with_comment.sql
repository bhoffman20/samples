/****** object: StoredProcedure [dbo]-[sp_Commissions_Indiv_MA] Script Date: 1/15/2025 9:01:38 AM ******/


-- ==========================================================================
--      Author              :
--      Description         :
--      Date                :           02/05/2025
--      Version             :           2.0
-- ==========================================================================


CREATE or UPDATE procedure ben_sample_proc_with_comment AS
/*
-create tblReportIndiv, the basis of the Indiv commiss. stmt
-if it is the current month save the id commission to tblindivrelations
exec sp_Commissions_Indiv_MA ' 2015-11-01', 1
-No GA commissions (they get an annual commission based on BOB, first paid Jan 2015)
*/
BEGIN
    SELECT 1 FROM DUAL;
END ben_sample_proc_with_comment;