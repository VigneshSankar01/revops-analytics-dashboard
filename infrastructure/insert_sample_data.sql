USE DATABASE SAGE_REVOPS;
USE SCHEMA RAW;

INSERT INTO FCT_SALES (SALE_ID, PRODUCT, REGION, AMOUNT, STAGE, CUSTOMER_NAME, SALE_DATE, STATUS) VALUES
(1, 'Sage Intacct', 'North', 85000, 'Closed Won', 'Acme Corp', '2025-01-15', 'Closed'),
(2, 'Sage Intacct', 'South', 92000, 'Proposal', 'Beta Industries', '2025-01-20', 'Open'),
(3, 'Sage 50', 'East', 15000, 'Closed Won', 'Gamma LLC', '2025-01-10', 'Closed'),
(4, 'Sage Payroll', 'West', 45000, 'Negotiation', 'Delta Co', '2025-01-25', 'Open'),
(5, 'Sage HR', 'North', 38000, 'Closed Won', 'Epsilon Inc', '2025-02-01', 'Closed'),
(6, 'Sage Intacct', 'South', 110000, 'Closed Won', 'Zeta Group', '2025-02-05', 'Closed'),
(7, 'Sage 50', 'East', 12000, 'Prospecting', 'Theta Labs', '2025-02-10', 'Open'),
(8, 'Sage Payroll', 'West', 52000, 'Closed Won', 'Iota Services', '2025-01-18', 'Closed'),
(9, 'Sage Intacct', 'North', 78000, 'Proposal', 'Kappa Corp', '2025-02-15', 'Open'),
(10, 'Sage HR', 'South', 41000, 'Closed Won', 'Lambda Ltd', '2025-01-28', 'Closed'),
(11, 'Sage Intacct', 'East', 95000, 'Negotiation', 'Gamma LLC', '2025-02-08', 'Open'),
(12, 'Sage 50', 'West', 18000, 'Closed Won', 'Delta Co', '2025-01-05', 'Closed'),
(13, 'Sage Payroll', 'North', 47000, 'Closed Won', 'Acme Corp', '2025-02-12', 'Closed'),
(14, 'Sage HR', 'East', 35000, 'Proposal', 'Theta Labs', '2025-01-22', 'Open'),
(15, 'Sage Intacct', 'West', 105000, 'Closed Won', 'Iota Services', '2025-02-18', 'Closed'),
(16, 'Sage 50', 'North', 14000, 'Prospecting', 'Epsilon Inc', '2025-02-20', 'Open'),
(17, 'Sage Intacct', 'South', 88000, 'Closed Won', 'Beta Industries', '2025-01-30', 'Closed'),
(18, 'Sage Payroll', 'East', 43000, 'Negotiation', 'Gamma LLC', '2025-02-22', 'Open'),
(19, 'Sage HR', 'West', 39000, 'Closed Won', 'Delta Co', '2025-01-12', 'Closed'),
(20, 'Sage Intacct', 'North', 120000, 'Closed Won', 'Kappa Corp', '2025-02-25', 'Closed');

INSERT INTO DIM_PRODUCTS (PRODUCT_ID, PRODUCT_NAME, CATEGORY, PRICE_TIER) VALUES
(1, 'Sage Intacct', 'Cloud Accounting', 'Enterprise'),
(2, 'Sage 50', 'Desktop Accounting', 'SMB'),
(3, 'Sage Payroll', 'Payroll', 'Mid-Market'),
(4, 'Sage HR', 'Human Resources', 'Mid-Market');

INSERT INTO DIM_CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, INDUSTRY, COMPANY_SIZE, REGION) VALUES
(1, 'Acme Corp', 'Manufacturing', 'Large', 'North'),
(2, 'Beta Industries', 'Technology', 'Medium', 'South'),
(3, 'Gamma LLC', 'Healthcare', 'Small', 'East'),
(4, 'Delta Co', 'Retail', 'Large', 'West'),
(5, 'Epsilon Inc', 'Finance', 'Medium', 'North'),
(6, 'Zeta Group', 'Education', 'Small', 'South'),
(7, 'Theta Labs', 'Technology', 'Large', 'East'),
(8, 'Iota Services', 'Healthcare', 'Medium', 'West'),
(9, 'Kappa Corp', 'Manufacturing', 'Small', 'North'),
(10, 'Lambda Ltd', 'Retail', 'Large', 'South');