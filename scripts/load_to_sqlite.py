from sqlalchemy import create_engine
import pandas as pd

engine = create_engine("sqlite:///db/bluestock_mf.db")

datasets = {
    "nav_history_clean":
        "data/processed/02_nav_history_clean.csv",

    "investor_transactions_clean":
        "data/processed/08_investor_transactions_clean.csv",

    "scheme_performance_clean":
        "data/processed/07_scheme_performance_clean.csv"
}

for table_name, file_path in datasets.items():

    df = pd.read_csv(file_path)

    df.to_sql(
        table_name,
        engine,
        if_exists="replace",
        index=False
    )

    print(f"{table_name} loaded: {len(df)} rows")

print("\nAll cleaned datasets loaded successfully")

print("\nVerification:")

for table_name in datasets.keys():

    count = pd.read_sql(
        f"SELECT COUNT(*) AS total_rows FROM {table_name}",
        engine
    )

    print(f"\n{table_name}")
    print(count)