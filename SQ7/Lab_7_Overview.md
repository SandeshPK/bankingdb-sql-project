# Lab 7 – Analyze Loan Risk Using Window Functions

## Tasks Completed
- Ranked all customer loans by loan amount (highest first) using `RANK()`.
- Re-ranked the same loans using `DENSE_RANK()` to compare how tied values are handled differently.
- Assigned a unique sequential number to every loan record using `ROW_NUMBER()`.
- Used `PARTITION BY` to restart loan ranking separately for each customer, rather than across the whole table.
- Calculated a running total of the loan portfolio as loans are processed in descending order of amount.
- Compared each loan against the previous loan's amount using `LAG()`.
- Compared each loan against the next loan's amount using `LEAD()`.

## SQL Functions / Concepts Used and Their Purpose
| Command | Purpose |
|---|---|
| `RANK() OVER (ORDER BY ...)` | Assigns a rank to each loan by amount; tied values share a rank, and the next rank is skipped accordingly. |
| `DENSE_RANK() OVER (ORDER BY ...)` | Similar to `RANK()`, but does not skip rank numbers after a tie. |
| `ROW_NUMBER() OVER (ORDER BY ...)` | Assigns a strictly unique, sequential number to each row regardless of ties. |
| `PARTITION BY` | Restarts a window function's calculation for each group (e.g., each `CustomerID`) instead of the entire result set. |
| `SUM(...) OVER (ORDER BY ...)` | Produces a running/cumulative total of loan amounts as rows are processed in order. |
| `LAG(column) OVER (ORDER BY ...)` | Retrieves the value from the previous row in the ordered result set (e.g., the prior loan's amount). |
| `LEAD(column) OVER (ORDER BY ...)` | Retrieves the value from the next row in the ordered result set (e.g., the following loan's amount). |

## Conclusion
This lab focused exclusively on window functions, which allow row-by-row calculations (ranking, running totals, and row-to-row comparisons) without collapsing the result set the way `GROUP BY` does. These techniques are especially valuable for risk analysis — identifying the largest loans, comparing a customer's loans against each other, and tracking cumulative portfolio exposure — which are core needs in loan risk assessment.
