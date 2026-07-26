# Lab 10 – Develop Reporting Layer Using SQL Views

## Tasks Completed
- Created a `High_Balance_Accounts` view showing accounts with a balance greater than 30,000.
- Queried the view directly, just like a regular table, to retrieve high-balance account data.
- Modified the view using `CREATE OR REPLACE VIEW` to enrich it with joined transaction details (transaction ID, date, type, and amount) instead of just account-level data.
- Generated a final banking report by querying the enhanced view and sorting results by balance descending.

## SQL Functions / Concepts Used and Their Purpose
| Command | Purpose |
|---|---|
| `CREATE VIEW ... AS SELECT ...` | Saves a query as a reusable, named virtual table (`High_Balance_Accounts`) so it can be queried repeatedly without rewriting the underlying logic. |
| `SELECT * FROM <view>` | Queries a view exactly like a regular table, abstracting away the underlying filtering logic. |
| `CREATE OR REPLACE VIEW` | Updates an existing view's definition in place (adding a join to `Transactions`) without needing to drop and recreate it manually. |
| `INNER JOIN` (inside a view) | Enriches the view's output by combining account data with related transaction details. |
| `ORDER BY ... DESC` (on the view) | Sorts the final report generated from the view by balance, highest first. |

## Conclusion
This lab introduced views as a reporting layer on top of the raw banking schema. By encapsulating filtering and join logic inside a named view, repeated reporting needs (like "show me high-balance accounts and their transactions") become a simple, reusable `SELECT` rather than a complex query rewritten each time. This lab ties together concepts from earlier labs — filtering (Lab 4), joins (Lab 8), and sorting (Labs 4–5) — into a clean, maintainable reporting layer, completing the progression from raw schema design to a query-ready banking database.
