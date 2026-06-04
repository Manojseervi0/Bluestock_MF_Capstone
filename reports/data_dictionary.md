# Data Dictionary

## 01_fund_master.csv

| Column | Data Type | Description |
|----------|----------|----------|
| amfi_code | Integer | Unique AMFI scheme code |
| fund_house | Text | Mutual fund company |
| scheme_name | Text | Name of the mutual fund scheme |
| category | Text | Fund category (Equity, Debt, etc.) |
| sub_category | Text | Detailed category classification |
| plan | Text | Growth/Direct/Regular plan |
| launch_date | Date | Scheme launch date |
| benchmark | Text | Benchmark index |
| expense_ratio_pct | Float | Expense ratio percentage |
| exit_load_pct | Float | Exit load percentage |
| min_sip_amount | Integer | Minimum SIP amount |
| min_lumpsum_amount | Integer | Minimum lumpsum investment |
| fund_manager | Text | Fund manager name |
| risk_category | Text | Risk classification |
| sebi_category_code | Text | SEBI category code |

## 02_nav_history.csv

| Column | Data Type | Description |
|----------|----------|----------|
| amfi_code | Integer | AMFI scheme code |
| date | Date | NAV date |
| nav | Float | Net Asset Value of the scheme |

## 07_scheme_performance.csv

| Column | Data Type | Description |
|----------|----------|----------|
| amfi_code | Integer | AMFI scheme code |
| scheme_name | Text | Scheme name |
| fund_house | Text | Fund house |
| category | Text | Fund category |
| plan | Text | Fund plan type |
| return_1yr_pct | Float | 1-year return percentage |
| return_3yr_pct | Float | 3-year return percentage |
| return_5yr_pct | Float | 5-year return percentage |
| benchmark_3yr_pct | Float | Benchmark return percentage |
| alpha | Float | Alpha metric |
| beta | Float | Beta metric |
| sharpe_ratio | Float | Sharpe ratio |
| sortino_ratio | Float | Sortino ratio |
| std_dev_ann_pct | Float | Annualized standard deviation |
| max_drawdown_pct | Float | Maximum drawdown percentage |
| aum_crore | Float | Assets under management |
| expense_ratio_pct | Float | Expense ratio percentage |
| morningstar_rating | Integer | Morningstar rating |
| risk_grade | Text | Risk grade |

## 08_investor_transactions.csv

| Column | Data Type | Description |
|----------|----------|----------|
| investor_id | Text | Unique investor identifier |
| transaction_date | Date | Transaction date |
| amfi_code | Integer | AMFI scheme code |
| transaction_type | Text | SIP, Lumpsum, or Redemption |
| amount_inr | Float | Transaction amount in INR |
| state | Text | Investor state |
| city | Text | Investor city |
| city_tier | Text | City classification |
| age_group | Text | Investor age group |
| gender | Text | Investor gender |
| annual_income_lakh | Float | Annual income in lakhs |
| payment_mode | Text | Payment method |
| kyc_status | Text | KYC verification status |