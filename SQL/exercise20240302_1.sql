CREATE TABLE IF NOT EXISTS invoices(
	InvoiceId SERIAL,
	CustomerId INT,
	InvoiceDate TIMESTAMP,
	BillingAddress VARCHAR,
	BillingCity VARCHAR,
	BillingState VARCHAR,
	BillingCountry VARCHAR,
	BillingPostalCode VARCHAR,
	Total real,
	PRIMARY KEY(InvoiceId)
);

DROP TABLE invoices;

SELECT * FROM invoices;