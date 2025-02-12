import pandas as pd

df = pd.read_csv(r"C:\Users\ROMINA\Desktop\project\HR_Analytics.csv", delimiter=",")



# Fill missing values for numerical columns with median
df["MonthlyRate"] = df["MonthlyRate"].fillna(df["MonthlyRate"].median())

# Fill missing categorical columns with mode
df["Department"] = df["Department"].fillna(df["Department"].mode()[0])

# Drop rows if too many values are missing
df.dropna(thresh=len(df.columns) * 0.7)  # Drop if more than 30% of the row is missing


df.drop_duplicates(inplace=True)

# Convert categorical columns to category type
df["Department"] = df["Department"].astype("category")
df["Attrition"] = df["Attrition"].astype("category")



def remove_outliers(df, column):
    Q1 = df[column].quantile(0.25)
    Q3 = df[column].quantile(0.75)
    IQR = Q3 - Q1
    lower_bound = Q1 - 1.5 * IQR
    upper_bound = Q3 + 1.5 * IQR
    return df[(df[column] >= lower_bound) & (df[column] <= upper_bound)]

df = remove_outliers(df, "MonthlyRate")
df = remove_outliers(df, "Age")

df["EmpID"] = df["EmpID"].astype(str).str.strip()  
df.drop_duplicates(subset=["EmpID"], inplace=True)

df.drop_duplicates()
df.to_csv(r"C:\Users\ROMINA\Desktop\project\HR_Analytics_Cleaned.csv", index=False)
print("Dataset cleaned and saved successfully!")


