CREATE TABLE IF NOT EXISTS invoices(
	InvoiceId SERIAL,
	CustomerId INT,
	InvoiceDate TIMESTAMP,
	BillingAddress VARCHAR(50),
	BillingCity VARCHAR(30),
	BillingState VARCHAR(20),
	BillingCountry VARCHAR(30),
	BillingPostalCode INT,
	Total FLOAT,
	PRIMARY KEY(InvoiceId )
);

SELECT * FROM public.invoices