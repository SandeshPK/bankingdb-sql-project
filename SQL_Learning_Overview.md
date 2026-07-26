# Banking Database Project – SQL Learning Overview

Across 10 labs, a complete banking database (`BankingDB`) was designed, built, populated, secured, queried, and reported on — covering the full breadth of core SQL skills.

## Concepts Learned

**1. Database & Schema Design**
Created a database and core tables (`Customers`, `Accounts`, `Transactions`, `Branches`, `Loans`), then evolved the schema using `ALTER TABLE` to add/modify columns and enforce business rules with `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `NOT NULL`, and `CHECK` constraints.

**2. Data Manipulation (CRUD)**
Practiced `INSERT`, `UPDATE`, and `DELETE` to populate and maintain data, including bulk inserts and safe update handling.

**3. Filtering & Sorting**
Used `WHERE`, `LIKE`, `IN`, `BETWEEN`, `IS NULL`/`IS NOT NULL`, `ORDER BY`, and `LIMIT`/`OFFSET` to build filtered, sorted, paginated queries — the basis of a customer search system.

**4. String, Numeric & Date Functions**
Applied `UPPER`, `LOWER`, `LENGTH`, `LEFT`, `CONCAT`, `ROUND`, `CEIL`, `FLOOR`, `ABS`, `MOD`, `CURDATE`, `NOW`, `YEAR`, `MONTH`, `DATEDIFF`, `IF`, `IFNULL`, `GREATEST`, `LEAST`, and `NULLIF` for data transformation and null-handling.

**5. Aggregation & Grouping**
Used `SUM`, `AVG`, `MAX`, `MIN`, `COUNT` with `GROUP BY` and `HAVING` to generate summary reports (e.g., total balance per account type).

**6. Window Functions**
Applied `RANK`, `DENSE_RANK`, `ROW_NUMBER`, `PARTITION BY`, running totals with `SUM() OVER()`, and row comparisons with `LAG`/`LEAD` for ranking and trend analysis without collapsing rows — used for balance ranking and loan risk analysis.

**7. Joins**
Combined related tables using `INNER JOIN` (matches only) and `LEFT JOIN` (all rows preserved) to build transaction reports spanning accounts and transactions.

**8. Subqueries**
Used scalar and multi-row subqueries (with `IN`, `AVG()`, `MAX()`) to filter data against dynamically calculated benchmarks, such as above-average balances or accounts with deposits.

**9. Views**
Created and updated reusable `VIEW` objects (`CREATE VIEW`, `CREATE OR REPLACE VIEW`) to encapsulate filtering and join logic into a clean, reusable reporting layer.

## Conclusion
This project traced the full lifecycle of a relational database — from schema design and constraint enforcement, through data population, to progressively advanced querying: filtering and sorting, transformation functions, aggregation, window functions, joins, subqueries, and finally views. Together, these labs reflect a practical, end-to-end command of SQL as used in real-world data analysis and reporting, specifically applied to a banking domain (customers, accounts, transactions, branches, and loans).
