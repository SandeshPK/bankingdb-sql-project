# Lab 2 – Secure Banking Data Model Implementation & Banking Business Rules Enforcement

## Tasks Completed
- Created four additional core tables: `Accounts`, `Transactions`, `Branches`, and `Loans`.
- Created and later dropped a junction-style table, `AccountBranches`, as part of schema exploration.
- Modified the `Customers` table by adding a `DateOfBirth` column and widening the `Phone` column.
- Enforced a business rule requiring every account balance to be at least 1000 using a `CHECK` constraint.
- Added `CustomerID` as the primary key on `Customers` after the fact, and made `FirstName` mandatory (`NOT NULL`).
- Enforced email uniqueness across customers with a `UNIQUE` constraint.
- Added primary keys to `Accounts`, `Branches`, `Loans`, and `Transactions`.
- Linked the schema together with foreign keys: `Accounts → Customers`, `Accounts → Branches`, `Loans → Customers`, and `Transactions → Accounts`.

## SQL Functions / Concepts Used and Their Purpose
| Command | Purpose |
|---|---|
| `CREATE TABLE` | Defines the `Accounts`, `Transactions`, `Branches`, and `Loans` entities. |
| `ALTER TABLE ... ADD` | Adds new columns (`DateOfBirth`, `CustomerID`, `BranchID`) to existing tables without recreating them. |
| `ALTER TABLE ... MODIFY` | Changes a column's data type/size (e.g., widening `Phone` to `VARCHAR(20)`). |
| `ALTER TABLE ... ADD CONSTRAINT ... CHECK` | Enforces a business rule that account balances cannot fall below 1000. |
| `ALTER TABLE ... ADD CONSTRAINT ... UNIQUE` | Prevents duplicate customer email addresses. |
| `ALTER TABLE ... ADD PRIMARY KEY` | Designates unique identifying columns for each table after creation. |
| `ALTER TABLE ... ADD CONSTRAINT ... FOREIGN KEY ... REFERENCES` | Establishes referential integrity between related tables (e.g., an account must belong to a valid customer and branch). |
| `DROP TABLE` | Removes a table (`AccountBranches`) that was no longer needed. |

## Conclusion
This lab transformed a single standalone table into a fully connected relational schema. By layering constraints (`PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `UNIQUE`, `NOT NULL`) onto the tables, the database now enforces real banking business rules — such as minimum balances, unique emails, and valid relationships between customers, accounts, branches, and loans — directly at the database level rather than relying solely on application logic.
