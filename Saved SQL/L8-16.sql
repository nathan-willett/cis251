use ap;
SELECT invoice_number, invoice_total, invoice_date, invoice_due_date,
CASE
WHEN DATEDIFF("2018-09-20", invoice_due_date) < 30
THEN 'Current'
WHEN DATEDIFF("2018-09-20", invoice_due_date) > 30
THEN 'Over 30 days past due'
WHEN DATEDIFF("2014-09-20", invoice_due_date) > 1461
THEN 'Over 4 years past due'
END AS invoice_status
FROM invoices