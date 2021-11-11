-- Add fiscal year focus to annual_statement_data
SELECT t1.cik,
         t1.company_name,
         t1.assigned_sic,
         t1.accession_number_int,
         t1.filing_date,
         t2.document_fiscal_year_focus,
         t1.datapoint_id,
         t1.datapoint_name,
         t1.datapoint_label,
         t1.start_date,
         t1.end_date,
         t1.period_month,
         t1.string_value,
         t1.numeric_value,
         t1.decimals,
         t1.unit,
         t1.parent_datapoint_name,
         t1.statement_type,
         t1.report_section_description,
         t1.version,
         t1.segment_label,
         t1.segment_hash,
         t1.footnotes
FROM sec_financial_statements.statement_data_with_comp_info AS t1
LEFT JOIN fiscal_year_focus AS t2
    ON t1.accession_number_int = t2.accession_number_int