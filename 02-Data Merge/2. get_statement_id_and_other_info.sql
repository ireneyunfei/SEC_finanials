-- Get all section sequence ids of three financial statements in each 10K report
-- 1. Join table report_presentation_section and company_submissin
-- 2. Filter by statement_type  = ¡®I¡¯, ¡®B¡¯, ¡®C¡¯ and document_type = ¡®10-K¡¯ reports ids from the previous step to filter section_sequence_id of each statement

SELECT *
FROM sec_financial_statements.report_presentation_section rep_sec
WHERE statement_type = 'C'
        OR statement_type = 'I'
        OR statement_type = 'B'
        AND accession_number_int IN 
    (SELECT accession_number_int
    FROM sec_financial_statements.company_submission
    WHERE document_type = '10-K') -- ALL 10k reports id