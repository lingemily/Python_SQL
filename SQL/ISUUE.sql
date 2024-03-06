CREATE TABLE IF NOT EXISTS invoices(
	Invoice_Id SERIAL PRIMARY KEY,
	CustomerId INT,
	date DATE,
	BillingAddress VARCHAR(50),
	BillingCity VARCHAR(30),
	InvoiceDate VARCHAR(30),
	BillingState VARCHAR(30),
	BillingCountry VARCHAR(30),
	BillingPostalCode INT,
	Total REAL
);

DROP TABLE invoices;

SELECT *
FROM invoices;