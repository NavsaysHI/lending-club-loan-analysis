# Lending Club Loan Performance Analysis

## Overview
Analysis of 2.26 million Lending Club loans issued between 2007 and 2018, exploring loan volume growth, portfolio risk composition, borrower profiles, and geographic distribution across the United States.

## Dashboard
https://public.tableau.com/views/LendingClubLoanPerformanceAnalysis/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## Tools & Technologies
- **Python (Google Colab)** — data extraction, column selection, and null handling on 2.26M row dataset
- **SQLite (DB Browser)** — aggregation queries across loan volume, grade mix, purpose, status, geography, and borrower profile
- **Excel** — data validation and structured output preparation
- **Tableau Public** — interactive multi-chart dashboard

## Dataset
- **Source:** Lending Club via Kaggle
- **Raw size:** 2,260,701 rows × 151 columns
- **Cleaned size:** 2,258,957 rows × 18 columns
- **Period:** 2007–2018

## Data Preparation (Python)
- Loaded raw 1.5GB CSV into Google Colab via Google Drive
- Selected 18 relevant columns from 151
- Removed 33 junk rows and 1,744 rows with null DTI values
- Filled 146,940 missing employment length values with 'Unknown'
- Exported clean CSV for SQL analysis

## SQL Analysis (6 Queries)
| Query | Description |
|-------|-------------|
| Q1 | Loan volume and value by year |
| Q2 | Loan volume by grade and year |
| Q3 | Loan purpose breakdown |
| Q4 | Loan status distribution by year |
| Q5 | Loan volume by state |
| Q6 | Borrower profile by employment length |

## Key Findings
- Loan volume grew from 603 loans in 2007 to 494,110 in 2018 — an 819x increase
- Total loan value reached $7.9B in 2018 alone
- Debt consolidation accounts for 56% of all loans (1.27M loans, $20.3B)
- California, New York, and Texas are the highest volume states
- Borrowers with 10+ years employment take the largest average loans ($16,243)

## Dashboard Views
- Loan volume growth trend (2007–2018)
- Loan purpose breakdown treemap
- Portfolio grade mix by year (stacked bar)
- Geographic distribution by US state (filled map)
- Borrower profile by employment length

## Repository Structure
```
├── python/
│   └── lending_club_cleaning.ipynb
├── sql/
│   └── lending_club_queries.sql
├── data/
│   └── lending_club_trimmed.csv
└── README.md
```

## Author
Navdeep Rao — [LinkedIn](https://linkedin.com/in/navdeep-rao-58504311a) | [Tableau Public](https://public.tableau.com/views/LendingClubLoanPerformanceAnalysis/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
