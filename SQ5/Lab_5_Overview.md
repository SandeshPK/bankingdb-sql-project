# Lab 5 – Build Customer Search System with Filtering & Sorting

## Tasks Completed
- Searched customers whose first name starts with a given letter and whose email contains a keyword (e.g., "gmail") using `LIKE` with wildcards at different positions.
- Searched customers whose last name ends with a specific substring ("kar").
- Filtered accounts and transactions against a list of acceptable values using `IN` (e.g., account types, transaction types, specific customer/account IDs).
- Sorted customers by last name ascending, accounts by balance descending, and transactions by date descending.
- Combined filtering with sorting (e.g., Savings accounts sorted by balance).
- Limited result sets to the top N rows (top 5 accounts by balance, first 3 customers).
- Paginated transaction results by skipping initial rows with `LIMIT ... OFFSET`.
- Combined a `LIKE` filter with a `LIMIT` to build a bounded search feature.
- Combined an `IN` filter with `ORDER BY` to build a sorted, filtered transaction view.

## SQL Functions / Concepts Used and Their Purpose
| Command | Purpose |
|---|---|
| `LIKE 'A%'` | Matches values that start with a given prefix (e.g., first names starting with "A"). |
| `LIKE '%gmail%'` | Matches values containing a substring anywhere (e.g., emails containing "gmail"). |
| `LIKE '%kar'` | Matches values ending with a given suffix (e.g., last names ending in "kar"). |
| `IN (...)` | Filters rows against a fixed list of acceptable values, replacing multiple `OR` conditions. |
| `ORDER BY ... ASC/DESC` | Sorts result sets by one or more columns in ascending or descending order. |
| `LIMIT` | Caps the number of rows returned, useful for "top N" style results. |
| `LIMIT ... OFFSET` | Skips a specified number of rows before returning results, enabling pagination. |
| Combined `WHERE` + `ORDER BY` + `LIMIT` | Builds a realistic filtered, sorted, and paginated search system — the core pattern behind most application search features. |

## Conclusion
This lab focused on building a practical, user-facing "search system" pattern by combining pattern matching, list-based filtering, sorting, and pagination in different combinations. These are the exact building blocks used in real banking applications (e.g., customer search bars, transaction history pages) where users need to filter, sort, and page through large datasets efficiently.
