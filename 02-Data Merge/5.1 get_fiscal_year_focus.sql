-- Get fiscal year focus to annual_statement_data
SELECT DISTINCT accession_number_int, fiscal_year_focus
FROM company_submission
WHERE document_type = '10-K'