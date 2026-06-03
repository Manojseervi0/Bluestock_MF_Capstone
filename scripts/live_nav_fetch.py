import requests
import pandas as pd

scheme_code = 125497

url = f"https://api.mfapi.in/mf/{scheme_code}"

response = requests.get(url)

print("Status Code:", response.status_code)

if response.status_code == 200:
    data = response.json()

    print("Scheme Name:")
    print(data["meta"]["scheme_name"])

    nav_df = pd.DataFrame(data["data"])

    print("\nRows fetched:", len(nav_df))

    nav_df.to_csv(
        "data/raw/live_nav_125497.csv",
        index=False
    )

    print("CSV saved successfully")

else:
    print("API request failed")