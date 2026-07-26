# Lab 3 – Initialize Banking Data with Insert, Update & Delete Operations

## Tasks Completed
- Inserted the first customer, account, and related records into the schema built in Labs 1–2.
- Disabled MySQL's safe update mode to allow `UPDATE`/`DELETE` statements without a key-based `WHERE` restriction warning.
- Updated an existing customer's phone number and, separately, their email address.
- Verified updates using targeted `SELECT` statements filtered by `CustomerID`.
- Deleted a specific transaction record and a specific account record, confirming each deletion with a follow-up `SELECT`.
- Bulk-inserted additional records: 4 new customers, 4 new accounts, 5 new transactions, 5 new branches, and 5 new loans — populating the database with a realistic, connected dataset.

## SQL Functions / Concepts Used and Their Purpose
| Command | Purpose |
|---|---|
| `INSERT INTO ... VALUES` | Adds new rows to `Customers`, `Accounts`, `Transactions`, `Branches`, and `Loans`. |
| `SET SQL_SAFE_UPDATES = 0` | Disables MySQL's safe-update protection so `UPDATE`/`DELETE` statements can run during development/testing. |
| `UPDATE ... SET ... WHERE` | Modifies existing customer data (phone number, email) for a specific `CustomerID`. |
| `DELETE FROM ... WHERE` | Removes specific rows from `Transactions` and `Accounts` by their identifiers. |
| `SELECT ... WHERE` | Confirms the outcome of insert/update/delete operations by re-querying affected rows. |
| Multi-row `INSERT` | Efficiently loads several records into a table in a single statement. |

## Conclusion
This lab moved the schema from an empty structure to a populated, working dataset. It practiced the full CRUD cycle (Create, Read, Update, Delete) and demonstrated safe handling of update/delete operations, which is essential before any meaningful querying, reporting, or analysis can be performed in later labs.
