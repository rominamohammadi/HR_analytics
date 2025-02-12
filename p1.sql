SELECT 
    Attrition, 
    COUNT(*) AS EmployeeCount,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr_analytic), 2) AS AttritionRate
FROM hr_analytic
GROUP BY Attrition;

SELECT 
    Department,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS AttritionCount,
    COUNT(*) AS TotalEmployees,
    ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM hr_analytic
GROUP BY Department
ORDER BY AttritionRate DESC;

SELECT 
    JobRole, 
    YearsAtCompany, 
    ROUND(AVG(MonthlyIncome), 0) AS AvgSalary
FROM hr_analytic
GROUP BY JobRole, YearsAtCompany
ORDER BY JobRole, YearsAtCompany;


SELECT 
    Department,
    CASE 
        WHEN TotalWorkingYears <= 2 THEN '0-2 Years'
        WHEN TotalWorkingYears BETWEEN 3 AND 5 THEN '3-5 Years'
        WHEN TotalWorkingYears BETWEEN 6 AND 10 THEN '6-10 Years'
        ELSE '10+ Years' 
    END AS ExperienceLevel,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS AttritionCount,
    COUNT(*) AS TotalEmployees,
    ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS AttritionRate
FROM hr_analytic
GROUP BY 
    Department,
    CASE 
        WHEN TotalWorkingYears <= 2 THEN '0-2 Years'
        WHEN TotalWorkingYears BETWEEN 3 AND 5 THEN '3-5 Years'
        WHEN TotalWorkingYears BETWEEN 6 AND 10 THEN '6-10 Years'
        ELSE '10+ Years' 
    END
ORDER BY Department, AttritionRate DESC;


