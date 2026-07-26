# Lab 1 – Set Up Banking Database & Explore Table Structure

## Tasks Completed
- Created a new database, `BankingDB`, to serve as the foundation for the entire banking project.
- Switched context to the new database using `USE`.
- Created the `Customers` table with core columns: `CustomerID`, `FirstName`, `LastName`, `Email`, `Phone`, and `AccountCreationDate`.
- Defined `CustomerID` as the `PRIMARY KEY` for the table.
- Queried the table to confirm its structure and confirm it was empty and ready for data.

## SQL Functions / Concepts Used and Their Purpose
| Command | Purpose |
|---|---|
| `CREATE DATABASE` | Initializes a new, isolated database to hold all banking-related tables. |
| `USE` | Sets the active database context so subsequent statements run against `BankingDB`. |
| `CREATE TABLE` | Defines a new table along with its columns and data types. |
| `PRIMARY KEY` | Enforces uniqueness on `CustomerID` and enables it to be referenced by other tables later. |
| `SELECT *` | Retrieves all columns and rows to verify the table was created correctly. |

## Conclusion
This lab established the foundational database and the first core entity table, `Customers`. It set the stage for a relational banking schema by defining a clear primary key, which later labs build upon through foreign key relationships with `Accounts`, `Loans`, and other tables.
