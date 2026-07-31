import pandas as pd
import matplotlib.pyplot as plt

df=pd.read_excel("Dataset for Data Analytics _Project2.xlsx")

print("Shape:",df.shape)
print(df.info())
print(df.describe(include="all"))

print("\nMissing Values")
print(df.isnull().sum())

num=df.select_dtypes(include="number")
print("\nCorrelation")
print(num.corr())

num.hist(figsize=(12,8))
plt.tight_layout()
plt.savefig("numeric_histograms.png")

for c in ["Product","PaymentMethod","OrderStatus","ReferralSource"]:
    if c in df.columns:
        plt.figure(figsize=(6,4))
        df[c].value_counts().plot(kind="bar")
        plt.tight_layout()
        plt.savefig(f"{c}.png")

print("EDA Complete")
