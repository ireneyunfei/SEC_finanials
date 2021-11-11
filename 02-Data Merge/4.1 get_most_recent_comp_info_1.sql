-- Get the cik, name and sic of each company for their most recent filing
SELECT DISTINCT t1.cik, t1.company_name, t1.assigned_sic
FROM sec_financial_statements.company_submission t1
INNER JOIN
(SELECT cik, max(filing_date) AS filing_date
FROM sec_financial_statements.company_submission
GROUP BY cik) AS temp
ON t1.cik = temp.cik AND t1.filing_date = temp.filing_date -- get the most recent record