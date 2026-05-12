# NHANES Health Data Analysis

I'm using Python and SQL to explore NHANES data, looking at whether 
prolonged sedentary behavior is associated with back pain and daily 
activity limitations in adults.

**Tools:** Python, SQL, SQLite, Jupyter Notebook

**Status:** Still work in progress

---

## Research Question

Is prolonged sedentary behavior associated with increased prevalence of 
low back pain and functional activity limitations in adults, after 
controlling for age, sex, and BMI?

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
