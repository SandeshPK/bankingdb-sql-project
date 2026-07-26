# Lab 6 – Generate Banking Summary Reports Using Aggregations

## Tasks Completed
- Transformed customer first names to uppercase and lowercase, and measured their character length.
- Extracted the first three characters of a first name and concatenated first and last names into a full name.
- Practiced numeric functions: rounding, ceiling, floor, absolute value, and modulo (remainder).
- Retrieved the current system date and current date/time.
- Extracted the birth year and birth month from `DateOfBirth`, and calculated age in days using `DATEDIFF`.
- Categorized customers as "Adult" or "Young" based on birth year using conditional logic.
- Displayed a fallback value ("Not Available") for customers with a missing phone number.
- Found the latest and earliest birth dates among a set of date values.
- Compared a column value against a specific string, returning `NULL` on a match.
- Calculated bank-wide summary statistics: total balance, average balance, highest balance, lowest balance, and total number of accounts.
- Grouped accounts by type to find total balance per account type, and filtered those groups to show only types exceeding a deposit threshold.

## SQL Functions / Concepts Used and Their Purpose
| Command | Purpose |
|---|---|
| `UPPER()` / `LOWER()` | Converts text to uppercase/lowercase for display or standardization. |
| `LENGTH()` | Returns the number of characters in a string. |
| `LEFT(str, n)` | Extracts the first `n` characters of a string (e.g., initials). |
| `CONCAT()` | Joins multiple strings/columns into one (e.g., full name). |
| `ROUND()`, `CEIL()`, `FLOOR()`, `ABS()`, `MOD()` | Perform common numeric rounding, absolute value, and remainder calculations. |
| `CURDATE()` / `NOW()` | Returns the current date, or current date and time. |
| `YEAR()` / `MONTH()` | Extracts the year or month component from a date. |
| `DATEDIFF()` | Calculates the number of days between two dates (e.g., age in days). |
| `IF(condition, true_value, false_value)` | Returns one of two values based on a condition (Adult/Young categorization). |
| `IFNULL(value, default)` | Substitutes a default value when a column is `NULL` (e.g., missing phone numbers). |
| `GREATEST()` / `LEAST()` | Returns the maximum/minimum value among a set of given values (e.g., latest/earliest birth date). |
| `NULLIF(a, b)` | Returns `NULL` if two values are equal, otherwise returns the first value — useful for comparisons. |
| `SUM()`, `AVG()`, `MAX()`, `MIN()`, `COUNT()` | Core aggregate functions computing totals, averages, extremes, and row counts across all accounts. |
| `GROUP BY` | Groups rows (e.g., by `AccountType`) so aggregates are calculated per group rather than across the whole table. |
| `HAVING` | Filters grouped/aggregated results (unlike `WHERE`, which filters rows before aggregation). |

## Conclusion
This lab covered SQL's string, numeric, date, and conditional/null-handling functions, then tied them together with aggregate functions and `GROUP BY`/`HAVING` to produce genuine summary reports (e.g., total deposits by account type). It represents the shift from row-level querying (Labs 4–5) to report-style, aggregated banking insights.
