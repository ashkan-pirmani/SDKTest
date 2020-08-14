import pandas as pd


data = pd.read_csv("./Input/msda_data.csv")

country = data.groupby("covid19_country").count()["secret_name"]

csvData = country.to_csv("./Output/result.csv")