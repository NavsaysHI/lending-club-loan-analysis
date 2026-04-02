-- ============================================================
-- Lending Club Loan Performance Analysis
-- SQL Queries (SQLite / DB Browser)
-- Author: Navdeep Rao
-- Data: Lending Club 2007-2018 | 2,258,957 rows | 18 columns
-- ============================================================


-- Q1: Loan Volume & Value by Year
-- Purpose: Track loan growth trends over time

SELECT 
    SUBSTR(issue_d, 5, 4) AS issue_year,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amnt), 2) AS total_loan_value,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_size,
    ROUND(AVG(int_rate), 2) AS avg_interest_rate
FROM loans
WHERE SUBSTR(issue_d, 5, 4) != ''
GROUP BY issue_year
ORDER BY issue_year ASC;


-- Q2: Loan Volume by Grade & Year
-- Purpose: Analyse portfolio risk mix over time

SELECT 
    SUBSTR(issue_d, 5, 4) AS issue_year,
    grade,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amnt), 2) AS total_loan_value,
    ROUND(AVG(int_rate), 2) AS avg_interest_rate
FROM loans
WHERE SUBSTR(issue_d, 5, 4) != ''
GROUP BY issue_year, grade
ORDER BY issue_year ASC, grade ASC;


-- Q3: Loan Purpose Breakdown
-- Purpose: Identify what borrowers are using loans for

SELECT 
    purpose,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amnt), 2) AS total_loan_value,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_size,
    ROUND(AVG(int_rate), 2) AS avg_interest_rate
FROM loans
GROUP BY purpose
ORDER BY total_loans DESC;


-- Q4: Loan Status Distribution by Year
-- Purpose: Track portfolio health and default trends over time

SELECT 
    SUBSTR(issue_d, 5, 4) AS issue_year,
    loan_status,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amnt), 2) AS total_loan_value
FROM loans
WHERE SUBSTR(issue_d, 5, 4) != ''
GROUP BY issue_year, loan_status
ORDER BY issue_year ASC, total_loans DESC;


-- Q5: Loan Volume by State
-- Purpose: Geographic distribution of loan activity across the US

SELECT 
    addr_state,
    COUNT(*) AS total_loans,
    ROUND(SUM(loan_amnt), 2) AS total_loan_value,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_size,
    ROUND(AVG(int_rate), 2) AS avg_interest_rate
FROM loans
GROUP BY addr_state
ORDER BY total_loans DESC;


-- Q6: Borrower Profile by Employment Length
-- Purpose: Understand how employment stability relates to loan behaviour

SELECT 
    emp_length,
    COUNT(*) AS total_loans,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_size,
    ROUND(AVG(int_rate), 2) AS avg_interest_rate,
    ROUND(AVG(annual_inc), 2) AS avg_annual_income,
    ROUND(AVG(dti), 2) AS avg_dti
FROM loans
GROUP BY emp_length
ORDER BY total_loans DESC;