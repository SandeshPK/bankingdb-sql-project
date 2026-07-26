use bankingdb;

SELECT * FROM Customers;

SELECT FirstName, LastName, Email, Phone
FROM Customers;

# Retrieve Customers with Savings Accounts
SELECT *
FROM Accounts
WHERE AccountType = 'Savings';

# Retrieve Accounts with Balance Greater Than 25000
SELECT *
FROM Accounts
WHERE Balance > 25000;

# Retrieve Transactions Between Specific Amounts
SELECT *
FROM Transactions
WHERE Amount BETWEEN 5000 AND 20000;

# Retrieve Records for Selected Customers
SELECT *
FROM Customers
WHERE CustomerID IN (101,102,103);

# Search Customers Using Partial Name Matching
SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';

# Retrieve all current account records
# Find accounts with balance less than 15000
# Display transactions between 1000 and 10000
# Retrieve customer records for CustomerID 104 and 105
# Display customers whose last name starts with S

# Display Customers in Alphabetical Order
SELECT *
FROM Customers
ORDER BY FirstName ASC;

# Display Accounts with Highest Balance First
SELECT *
FROM Accounts
ORDER BY Balance DESC;

# Retrieve Unique Account Types
SELECT DISTINCT AccountType
FROM Accounts;

# Display Top 3 Highest Balance Accounts
SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 3;

# Skip Initial Records While Viewing Transactions
SELECT *
FROM Transactions
LIMIT 5 OFFSET 2;

# Find Customers Without Phone Numbers
SELECT *
FROM Customers
WHERE Phone IS NULL;

# Find Customers Having Email Addresses
SELECT *
FROM Customers
WHERE Email IS NOT NULL;

# Categorize Accounts Using Balance
SELECT AccountID,
       Balance,
       CASE
           WHEN Balance >= 50000 THEN 'Premium Account'
           WHEN Balance >= 25000 THEN 'Standard Account'
           ELSE 'Basic Account'
       END AS AccountCategory
FROM Accounts;

# Assign Rank Based on Account Balance
SELECT AccountID,
       Balance,
       RANK() OVER (ORDER BY Balance DESC) AS BalanceRank
FROM Accounts;

# Calculate Running Total of Transactions
SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
FROM Transactions;

# Display Average Transaction Amount
SELECT TransactionID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;

# Rank customers based on account balance
# Generate running total for account balances
# Display maximum transaction amount using a window function