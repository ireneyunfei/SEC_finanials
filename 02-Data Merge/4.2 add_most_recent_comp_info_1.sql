-- Add most recent comp info to annual statement data
SELECT t1.*, t2.company_name, t2.assigned_sic
FROM sec_financial_statements.annual_statement_data t1
LEFT JOIN sec_financial_statements.most_recent_comp_info t2
ON t1.cik = t2.cik