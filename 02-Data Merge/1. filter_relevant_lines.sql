-- Get relevant line items each statement in 10K
-- (an intermediate step to link section and data points)

-- Join table report_presentation_line_item and statement_section_ids_and_other_info
-- on accession_number_int and section_sequence_id

SELECT *
FROM sec_financial_statements.report_presentation_line_item li
INNER JOIN sec_financial_statements.statement_section_ids_and_other_info sec
    ON li.accession_number_int = sec.accession_number_int
        AND li.section_sequence_id = sec.section_sequence_id 