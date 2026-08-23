# NHANES Functional Mobility Study: Risk Identification in U.S. Adults

## Overview

This project develops an interpretable logistic regression framework to identify factors associated with functional movement difficulty among working-age U.S. adults (20–65) using NHANES 2017–2018 data.

The study integrates demographic, lifestyle, body composition, and chronic condition variables to examine how population health factors relate to functional limitations.

**Tools:** Python, Pandas, SQL, SQLite, Jupyter Notebook

---

## Research Question

Can demographic, lifestyle, and body composition characteristics help identify individuals at higher risk of functional movement difficulty?

This project uses NHANES public health survey data to build an interpretable statistical model and evaluate potential predictors of mobility limitations in working-age adults.

---

## Data Source

**CDC National Health and Nutrition Examination Survey (NHANES) 2017–2018**

Five NHANES datasets were integrated:

* DEMO_J — Demographics
* BMX_J — Body measurements
* PAQ_J — Physical activity
* PFQ_J — Physical functioning
* MCQ_J — Medical conditions

Datasets were merged using NHANES participant identifiers (SEQN).

---

## Analysis Workflow

1. **Data Integration**

   * Combined multiple NHANES modules into a unified analytical dataset.

2. **Data Cleaning & Variable Construction**

   * Processed missing values and survey skip patterns.
   * Constructed a Functional Limitation Index (FLI) based on mobility-related questionnaire items.

3. **Exploratory Analysis**

   * Examined relationships between mobility limitations and demographic, lifestyle, and health characteristics.

4. **Statistical Modeling**

   * Developed multivariable logistic regression models.
   * Evaluated predictor significance and model performance.

5. **SQL Analysis**

   * Created SQLite database structures and performed healthcare data queries.

---

## Key Findings

* Arthritis showed the strongest association with functional limitation (OR = 4.88, p < 0.001).
* Higher BMI and greater daily sitting time were significantly associated with increased functional difficulty.
* The Functional Limitation Index demonstrated good internal consistency (Cronbach’s α = 0.818).
* Including chronic condition information improved model discrimination (AUC increased from 0.621 to 0.731).

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

---

## Notebooks

| Notebook                    | Description                                                 |
| --------------------------- | ----------------------------------------------------------- |
| 01_data_loading_and_merging | Load and merge NHANES datasets                              |
| 02_data_cleaning            | Clean data and construct analytical variables               |
| 03_exploratory_analysis     | Explore distributions and associations                      |
| 04_logistic_regression      | Develop logistic regression models and evaluate performance |
| 05_sql_analysis             | Create SQLite database and perform SQL queries              |
