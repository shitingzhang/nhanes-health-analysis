-- Query 1: Descriptive statistics by functional limitation status
SELECT 
    functional_limitation,
    COUNT(*) as n,
    ROUND(AVG(BMXBMI), 2) as mean_bmi,
    ROUND(AVG(sitting_hours), 2) as mean_sitting_hours,
    ROUND(AVG(RIDAGEYR), 2) as mean_age
FROM nhanes_clean
GROUP BY functional_limitation;

-- Query 2: Functional limitation rate by age group
SELECT 
    CASE 
        WHEN RIDAGEYR BETWEEN 20 AND 35 THEN '20-35'
        WHEN RIDAGEYR BETWEEN 36 AND 50 THEN '36-50'
        WHEN RIDAGEYR BETWEEN 51 AND 65 THEN '51-65'
    END as age_group,
    COUNT(*) as n,
    ROUND(AVG(functional_limitation) * 100, 1) as limitation_rate_pct
FROM nhanes_clean
GROUP BY age_group
ORDER BY age_group;

-- Query 3: BMI category and sedentary level risk profile
SELECT 
    CASE 
        WHEN BMXBMI < 25 THEN 'Normal'
        WHEN BMXBMI BETWEEN 25 AND 30 THEN 'Overweight'
        ELSE 'Obese'
    END as bmi_category,
    CASE
        WHEN sitting_hours < 4 THEN 'Low'
        WHEN sitting_hours BETWEEN 4 AND 8 THEN 'Moderate'
        ELSE 'High'
    END as sedentary_level,
    COUNT(*) as n,
    ROUND(AVG(functional_limitation) * 100, 1) as limitation_rate_pct
FROM nhanes_clean
GROUP BY bmi_category, sedentary_level
ORDER BY bmi_category, sedentary_level;

-- Query 4: Functional limitation rate by arthritis status
SELECT 
    arthritis,
    COUNT(*) as n,
    ROUND(AVG(functional_limitation) * 100, 1) as limitation_rate_pct,
    ROUND(AVG(BMXBMI), 2) as mean_bmi,
    ROUND(AVG(sitting_hours), 2) as mean_sitting_hours
FROM nhanes_clean
GROUP BY arthritis;