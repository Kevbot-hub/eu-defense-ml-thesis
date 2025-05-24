# Load required packages
library(readxl)
library(dplyr)
install.packages(here)
library(here)

#1 read file from data/raw
data_path <- here::here("data/raw/defence-data-2023.xlsx")
df <- read_excel(data_path, sheet = "Billions")

#2 inspect columns
print(colnames(df))

#3 rename columns
df <- df %>%
  rename(
    Country = PMS,
    Defense_Expenditure_Billions = 'Total Defence Expenditure',
    Defense_Expenditure_Pct_GDP = 'Total Defence Expenditure as % of GDP',
    GDP_Billions = 'GDP (MRD)'
  )

#4 columns needed and filter out rows with missing Country or Year
df_clean <- df %>%
  select(Country, Year, Defense_Expenditure_Billions, Defense_Expenditure_Pct_GDP, GDP_Billions) %>%
  filter(!is.na(Country), !is.na(Year))

output_path <- here::here("data/processed/eda_defense_spending.csv")
write.csv(df_clean, output_path, row.names = FALSE)

print("✅ Data cleaned and saved to /data/processed/eda_defense_spending.csv")