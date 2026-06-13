import pandas as pd

scorecard_df = pd.read_csv("data/processed/fund_scorecard.csv")

scorecard_df['risk_grade'] = pd.qcut(
    scorecard_df['annual_volatility'],
    q=3,
    labels=['Low', 'Moderate', 'High']
)


def recommend_funds(risk_profile):

    risk_profile = risk_profile.capitalize()

    recommendations = (
        scorecard_df[
            scorecard_df['risk_grade'] == risk_profile
        ]
        .sort_values(
            by='sharpe_ratio',
            ascending=False
        )
        .head(3)
    )

    return recommendations[
        ['amfi_code', 'sharpe_ratio', 'risk_grade']
    ]

if __name__ == "__main__":

    risk = input(
        "Enter Risk Profile (Low/Moderate/High): "
    )

    print(
        recommend_funds(risk)
    )