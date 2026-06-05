# Predicting Functional Movement Difficulty in U.S. Adults
### A Risk Identification Framework Using NHANES 2017–2018 Data

This project develops an interpretable predictive model to identify 
adults at higher risk of functional movement difficulty using 
demographic, lifestyle, and body composition data from NHANES 2017–2018.

**Tools:** Python, SQL, SQLite, Jupyter Notebook

**Status:** Still work in progress

---

## Research Question

Can demographic, lifestyle, and body composition data predict 
functional movement difficulty in working-age U.S. adults (20–65)?
This project develops an interpretable logistic regression model 
to identify individuals at higher risk of functional movement 
difficulty using publicly available NHANES survey data.

---

## Data Source

CDC National Health and Nutrition Examination Survey (NHANES)  
https://wwwn.cdc.gov/nchs/nhanes/

Downloaded five datasets from the 2017-2018 cycle: DEMO_J, BMX_J, PAQ_J, PFQ_J, MCQ_J. 
Chose 2017-2018 because it's the last complete cycle before COVID disrupted data collection.

---

## Project Structure

```
nhanes-health-analysis/
├── data/
├── mappings/
├── notebooks/
├── sql/
└── visualizations/
```

## Key Findings

- Arthritis was the strongest independent predictor of functional limitation (OR=4.88, p<0.001)
- BMI and daily sitting time were also statistically significant predictors
- A Functional Limitation Index (FLI) constructed from four mobility items (Cronbach's α=0.818) provided a more comprehensive outcome measure than single-item assessment
- Adding arthritis diagnosis improved model AUC from 0.621 to 0.731, demonstrating the value of chronic condition data integration
- Despite improved performance, AUC=0.731 suggests key clinical variables (muscle strength, ROM, pain) remain absent from population health datasets — a core challenge for Health Informatics

## Notebooks

| Notebook | Description |
|----------|-------------|
| 01_data_loading_and_merging | Load and merge five NHANES datasets |
| 02_data_cleaning | Clean data, construct FLI, define variables |
| 03_exploratory_analysis | Unadjusted associations and distribution analysis |
| 04_logistic_regression | Multivariable logistic regression and sensitivity analysis |
| 05_sql_analysis | SQLite database creation and SQL queries |
