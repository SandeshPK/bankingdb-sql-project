use bankingdb;

# Search Customers Whose First Name Starts with “A”
SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';

# Search Customers Whose Email Contains “gmail”
SELECT *
FROM Customers
WHERE Email LIKE '%gmail%';

# Search Customers Whose Last Name Ends with “kar”
SELECT *
FROM Customers
WHERE LastName LIKE '%kar';

# Display customers whose first name starts with R
# Find customers whose email contains yahoo
# Display customers whose last name starts with P
# Search customers whose phone number ends with 99

# Retrieve Records for Selected Account Types
SELECT *
FROM Accounts
WHERE AccountType IN ('Savings', 'Current');

# Retrieve Transactions for Selected Transaction Types
SELECT *
FROM Transactions
WHERE TransactionType IN ('Deposit', 'Withdrawal');

# Retrieve Records for Selected Customers
SELECT *
FROM Customers
WHERE CustomerID IN (101,102,105);

# Display accounts belonging to Salary and Savings account types
# Retrieve transactions for Payment and Deposit categories
# Display customer records for CustomerID 103 and 104
# Retrieve selected account records using AccountID values

# Display Customers in Ascending Order of Last Name
SELECT *
FROM Customers
ORDER BY LastName ASC;

# Display Accounts with Highest Balance First
SELECT *
FROM Accounts
ORDER BY Balance DESC;

# Display Transactions Sorted by Transaction Date
SELECT *
FROM Transactions
ORDER BY TransactionDate DESC;

# Display customers sorted by FirstName
# Display accounts sorted by AccountType
# Display transactions sorted by Amount in descending order
# Display customers sorted by DateOfBirth

# Display Only Top 5 Highest Balance Accounts
SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 5;

# Display First 3 Customer Records
SELECT *
FROM Customers
LIMIT 3;

# Skip Initial Transaction Records While Viewing Data
SELECT *
FROM Transactions
LIMIT 5 OFFSET 3;

# Display top 3 transactions with highest amount
# Retrieve only 4 customer records
# Skip first 2 account records and display next 3 records
# Display top 5 latest transactions

# Display Savings Account Customers Sorted by Balance
SELECT *
FROM Accounts
WHERE AccountType = 'Savings'
ORDER BY Balance DESC;

# Search Customers Using Partial Name and Limit Results
SELECT *
FROM Customers
WHERE FirstName LIKE 'S%'
LIMIT 5;

# Display Selected Transactions in Sorted Order
SELECT *
FROM Transactions
WHERE TransactionType IN ('Deposit','Withdrawal')
ORDER BY TransactionDate DESC;