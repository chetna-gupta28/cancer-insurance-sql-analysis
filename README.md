# Cancer Insurance Claims Analysis Using SQL

## Project Overview

This project analyses a simulated cancer insurance dataset using MySQL to understand patterns in insurance claims, policy coverage, treatment costs, claim outcomes, and hospital-related data.

The project demonstrates practical SQL skills by working with multiple related tables and using SQL queries to answer business-oriented questions.

## Project Objective

The main objective is to analyse cancer insurance claims and identify patterns related to:

* Claim approvals and rejections
* Cancer types and stages
* Treatment types and claim amounts
* Policy types and claim amounts
* Insurance coverage
* Policyholder demographics
* Hospitals and locations
* Changes in claim volume over time

## Database

The project uses five related tables:

1. `policyholders` — contains information about policyholders.
2. `policies` — contains insurance policy details.
3. `policy_coverage` — contains information about treatments and services covered by each policy.
4. `cancer_claims` — contains cancer claim details, including cancer type, stage, treatment, claim amount, status, and date.
5. `hospitals` — contains hospital name, city, and hospital type.

## Project Files

| File                      | Description                                             |
| ------------------------- | ------------------------------------------------------- |
| `01_database_setup.sql`   | Creates and selects the database                        |
| `02_create_tables.sql`    | Creates the database tables and relationships           |
| `03_insert_data.sql`      | Inserts the project data                                |
| `04_analysis.sql`         | Contains SQL queries used for analysis                  |
| `05_analysis_results.sql` | Contains the results and observations from the analysis |

## Key Business Questions

The analysis answers questions such as:

* How many cancer insurance claims are present?
* How many claims are approved or rejected?
* Which cancer type has the highest number of claims?
* Which treatment has the highest average claim amount?
* What are the reasons for rejected claims?
* Which cancer stage has the highest number of claims?
* Which policy type has the highest total claim amount?
* How many policies cover chemotherapy, hospitalization, daycare, and surgery?
* How have the number of claims changed over time?
* Which hospital types and cities have the highest number of claims?

## Key Findings

The analysis of the dataset produced several notable findings:

* The dataset contains **75 cancer insurance claims**.
* **53 claims were approved and 22 were rejected**.
* **Breast cancer had the highest number of claims**, with 23 claims.
* **Lung cancer had the highest total claim amount**, at ₹14.31 million.
* **Immunotherapy had the highest average claim amount**, at approximately ₹1.08 million.
* All 22 rejected claims had **"Treatment not covered"** recorded as the rejection reason.
* **Premium policies had the highest total claim amount**, at ₹20.52 million.
* All 100 policies provided hospitalization coverage.
* Claims increased from **15 in 2021 to 34 in 2023**.
* Private hospitals were associated with **54 of the 75 claims** in the dataset.
* Delhi, Mumbai, and Bengaluru each had 15 claims, the highest among the cities in the dataset.
* Although breast cancer had the highest number of claims, lung cancer had the highest total claim amount, showing that the number of claims does not necessarily correspond to the total financial impact.

## SQL Concepts Used

The project uses:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* Aggregate functions such as `COUNT()`, `SUM()`, and `AVG()`
* `JOIN`
* Date functions such as `YEAR()`
* Filtering and grouping data
* Multi-table analysis

## Conclusion

This project demonstrates how SQL can be used to transform structured insurance data into meaningful business insights. The analysis focuses on claim patterns, financial amounts, policy coverage, treatment types, and hospital characteristics.
