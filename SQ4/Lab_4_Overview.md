# Lab 4 – Investigate Customer Transactions Using SQL Queries

## Tasks Completed
- Retrieved full customer records and selected specific columns (`FirstName`, `LastName`, `Email`, `Phone`).
- Filtered accounts by type (`Savings`) and by balance threshold (`> 25000`).
- Filtered transactions by an amount range using `BETWEEN`.
- Retrieved specific customers using a list of IDs with `IN`.
- Performed partial-text matching on customer first names using `LIKE`.
- Sorted customers alphabetically and accounts by balance descending.
- Retrieved distinct account types to see unique category values.
- Limited results to the top 3 highest-balance accounts and skipped initial transaction rows using `LIMIT`/`OFFSET`.
- Identified customers with missing vs. present phone numbers using `IS NULL` / `IS NOT NULL`.
- Categorized accounts into tiers (Premium/Standard/Basic) using `CASE`.
- Ranked accounts by balance using the `RANK()` window function.
- Calculated a running total of transaction amounts and an overall average transaction amount using window functions.

## SQL Functions / Concepts Used and Their Purpose
| Command | Purpose |
|---|---|
| `SELECT` (specific columns) | Retrieves only the needed fields instead of the whole row. |
| `WHERE` | Filters rows based on a condition (account type, balance). |
| `BETWEEN` | Filters transactions within an inclusive amount range. |
| `IN` | Matches rows against a list of specific customer IDs. |
| `LIKE` | Performs partial/pattern matching on text (names starting with "R"). |
| `ORDER BY ASC/DESC` | Sorts results alphabetically or by balance. |
| `DISTINCT` | Removes duplicate values to show only unique account types. |
| `LIMIT` / `OFFSET` | Restricts the number of rows returned and skips a given number of initial rows (pagination). |
| `IS NULL` / `IS NOT NULL` | Identifies missing vs. present values in a column. |
| `CASE WHEN ... THEN ... ELSE ... END` | Creates conditional, tiered categories (Premium/Standard/Basic) based on balance. |
| `RANK() OVER (ORDER BY ...)` | Assigns a rank to each account based on balance, with ties sharing the same rank. |
| `SUM(...) OVER (ORDER BY ...)` | Computes a running (cumulative) total across ordered rows. |
| `AVG(...) OVER ()` | Computes an aggregate average alongside individual row detail (no `GROUP BY` needed). |

## Conclusion
This lab is a broad tour of SQL's querying toolkit — filtering, pattern matching, sorting, pagination, null-handling, conditional logic, and an introduction to window functions. Together these techniques enable investigative, ad-hoc analysis of customer and transaction data, forming the query foundation used more deeply in later labs (Labs 7–9).
