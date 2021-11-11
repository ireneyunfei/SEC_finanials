-- Get all data points related to three primary statements in 10K
-- Join table statement_line_items and table data_point on datapoint_id
SELECT dp.*,
         li.parent_datapoint_name,
         li.datapoint_label,
         li.statement_type,
         li.report_section_description
FROM sec_financial_statements.statement_line_items li
INNER JOIN sec_financial_statements.data_point dp
    ON li.datapoint_id = dp.datapoint_id
ORDER BY  cik, accession_number_int, line_item_sequence ASC ,end_date DESC