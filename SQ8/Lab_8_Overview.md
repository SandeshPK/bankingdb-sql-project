# Lab 8 – Create Transaction Reports Using Table Joins

## Tasks Completed
- Generated a report joining every account with its matching transaction details using an `INNER JOIN`.
- Generated a report showing all accounts, including those with no transactions, using a `LEFT JOIN`.
- Filtered the joined report to show only deposit-type transactions.
- Filtered the joined report to show only high-balance accounts (balance > 30000), sorted by balance descending.

## SQL Functions / Concepts Used and Their Purpose
| Command | Purpose |
|---|---|
| `INNER JOIN ... ON` | Combines rows from `Accounts` and `Transactions` where a matching `AccountID` exists in both tables — accounts without transactions are excluded. |
| `LEFT JOIN ... ON` | Combines rows from `Accounts` with matching `Transactions`, but keeps *all* accounts even if there is no matching transaction (unmatched transaction columns appear as `NULL`). |
| `WHERE` (post-join filter) | Narrows the joined result further, e.g., to only `Deposit` transactions or accounts above a balance threshold. |
| `ORDER BY ... DESC` | Sorts the final joined report by balance, highest first. |

## Conclusion
This lab introduced table joins as the mechanism for combining related data spread across multiple tables into a single, meaningful report. It specifically contrasted `INNER JOIN` (matches only) with `LEFT JOIN` (all left-side rows preserved), a distinction critical for accurate reporting — for example, ensuring accounts with zero transactions are not silently dropped from a bank-wide transaction report.
