# Lab 9 – Perform Branch Performance Analysis Using Subqueries

## Tasks Completed
- Calculated the average transaction amount, then identified all transactions above that average using a single-value (scalar) subquery.
- Identified all accounts with a balance above the bank-wide average balance, sorted highest first.
- Identified all accounts that have had at least one deposit transaction, using a multi-row subquery with `IN`.
- Identified the account(s) holding the single highest balance in the bank using a scalar subquery with `MAX()`.

## SQL Functions / Concepts Used and Their Purpose
| Command | Purpose |
|---|---|
| Scalar subquery (`WHERE Amount > (SELECT AVG(Amount) FROM Transactions)`) | Uses a single computed value (the average) from an inner query as a comparison threshold in the outer query. |
| `AVG()` inside a subquery | Computes the average value used as the filtering benchmark. |
| Scalar subquery for balances | Same pattern applied to accounts, comparing each balance against the bank-wide average. |
| Multi-row subquery with `IN` (`WHERE AccountID IN (SELECT AccountID FROM Transactions WHERE ...)`) | Filters accounts based on a *set* of matching IDs returned by an inner query (accounts that had deposits). |
| `MAX()` inside a subquery (`WHERE Balance = (SELECT MAX(Balance) FROM Accounts)`) | Finds the row(s) matching the single highest value returned by the inner query. |
| `ORDER BY ... DESC` | Sorts the above-average balance accounts from highest to lowest. |

## Conclusion
This lab introduced subqueries — nested queries used inside the `WHERE` clause of an outer query — as a way to filter data based on dynamically calculated values (averages, maximums) or dynamically generated lists (accounts with deposits), rather than hardcoded values. This is foundational for performance and comparative analysis, such as identifying above-average accounts/transactions or top performers, without first running a separate query to find the benchmark manually.
