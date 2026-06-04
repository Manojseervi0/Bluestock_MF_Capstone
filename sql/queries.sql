-- Query 1: Top 5 Funds by AUM

SELECT
    scheme_name,
    fund_house,
    aum_crore
FROM scheme_performance_clean
ORDER BY aum_crore DESC
LIMIT 5;

-- Query 2: Average NAV Per Fund

SELECT
    amfi_code,
    AVG(nav) AS average_nav
FROM nav_history_clean
GROUP BY amfi_code
ORDER BY average_nav DESC;

-- Query 3: Transaction Summary by Type

SELECT
    transaction_type,
    COUNT(*) AS total_transactions,
    SUM(amount_inr) AS total_amount
FROM investor_transactions_clean
GROUP BY transaction_type
ORDER BY total_amount DESC;

-- Query 4: Transactions by State

SELECT
    state,
    COUNT(*) AS total_transactions,
    SUM(amount_inr) AS total_amount
FROM investor_transactions_clean
GROUP BY state
ORDER BY total_amount DESC;

-- Query 5: Funds with Expense Ratio Below 1%

SELECT
    scheme_name,
    fund_house,
    expense_ratio_pct
FROM scheme_performance_clean
WHERE expense_ratio_pct < 1
ORDER BY expense_ratio_pct;

-- Query 6: Top 10 Funds by 5-Year Return

SELECT
    scheme_name,
    fund_house,
    return_5yr_pct
FROM scheme_performance_clean
ORDER BY return_5yr_pct DESC
LIMIT 10;

-- Query 7: Average Expense Ratio by Fund House

SELECT
    fund_house,
    ROUND(AVG(expense_ratio_pct), 2) AS avg_expense_ratio
FROM scheme_performance_clean
GROUP BY fund_house
ORDER BY avg_expense_ratio;

-- Query 8: Average Return by Category

SELECT
    category,
    ROUND(AVG(return_1yr_pct), 2) AS avg_1yr_return,
    ROUND(AVG(return_3yr_pct), 2) AS avg_3yr_return,
    ROUND(AVG(return_5yr_pct), 2) AS avg_5yr_return
FROM scheme_performance_clean
GROUP BY category;

-- Query 9: Fund Count by Risk Category

SELECT
    risk_grade,
    COUNT(*) AS fund_count
FROM scheme_performance_clean
GROUP BY risk_grade
ORDER BY fund_count DESC;

-- Query 10: Top 10 Investors by Investment Amount

SELECT
    investor_id,
    SUM(amount_inr) AS total_investment
FROM investor_transactions_clean
GROUP BY investor_id
ORDER BY total_investment DESC
LIMIT 10;