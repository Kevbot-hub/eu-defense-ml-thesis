# Research Log

## 2025-05-24

- Set up GitHub repo and main folders.
- Added README with project overview.
- Listed key data sources for EU defense integration.
- Next: Start collecting U.S. policy event data (2009–2025).

## 2025-05-24

### Data Collection & Cleaning: EU Defense Spending

- Downloaded `defence-data-2023.xlsx` from the [European Defence Agency](https://eda.europa.eu/publications-and-data/defence-data).
    - Saved in: `/data/raw/defence-data-2023.xlsx`
- Inspected and explored the sheet `Billions` to confirm variables and column names.
- Created a new script `clean_defense_spending.R` (in `/scripts/`) to extract and clean core variables:
    - Country
    - Year
    - Total Defence Expenditure
    - Total Defence Expenditure as % of GDP
    - GDP (MRD)
- Renamed columns and removed missing values for key variables.
- Saved the cleaned data as `/data/processed/eda_defense_spending.csv`.
- Script used:
    - `scripts/r/clean_defense_spending.R`
- No major issues encountered after resolving column name matching.
- **Next steps:** Exploratory analysis, summary statistics, and visualization of defense spending trends.

