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

Downloaded four datasets from the 2017-2018 cycle: DEMO_J, BMX_J, 
PAQ_J, PFQ_J. Chose 2017-2018 because it's the last complete cycle 
before COVID disrupted data collection.

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
