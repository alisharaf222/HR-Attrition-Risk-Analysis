USE hr;
GO

SELECT distinct( employeestatus)
FROM dbo.HR_Data;

SELECT distinct( division)
FROM dbo.HR_Data;


SELECT *
FROM dbo.HR_Data;

///===================== DepartmentType  =================================================

select DepartmentType,
count(case when employeestatus = 'Active' then 1 end) as active_employees,
count(case when employeestatus = 'Terminated' then 1 end) as Terminatd_employees
from hr_data
group by DepartmentType
;


select DepartmentType ,    
cast(100 * count (case when employeestatus ='Active' then 1 end) 
/count(employeestatus)AS DECIMAL(5,2))as persentage_of_active_employees,
cast(100 * count (case when employeestatus ='Terminated' then 1 end)
/count(employeestatus)AS DECIMAL(5,2))as persentage_of_Terminatd_employees
from HR_Data
group by DepartmentType
order by DepartmentType desc;



select DepartmentType,
count(case when employeestatus ='Active' then 1 end) as active_employees
from HR_Data
group by DepartmentType
order by active_employees desc;

select DepartmentType,
count(case when employeestatus ='Terminated' then 1 end) as active_employees
from HR_Data
group by DepartmentType
order by active_employees desc;



///===================== division  =================================================

select division,
count(case when employeestatus = 'Active' then 1 end) as division_active_employees,
count(case when employeestatus = 'Terminated' then 1 end) as division_Terminatd_employees
from hr_data
group by division
;


select division ,    
cast(100 * count (case when employeestatus ='Active' then 1 end) 
/count(employeestatus)AS DECIMAL(5,2))as persentage_of_division_active_employees,
cast(100 * count (case when employeestatus ='Terminated' then 1 end)
/count(employeestatus)AS DECIMAL(5,2))as persentage_of_division_Terminatd_employees
from HR_Data
group by division
order by division desc;



select division,
count(case when employeestatus ='Active' then 1 end) as MaxOf_division_active_employees
from HR_Data
group by division
order by MaxOf_division_active_employees desc;


select division,
count(case when employeestatus ='Terminated' then 1 end) as MaxOf_division_active_employees
from HR_Data
group by division
order by MaxOf_division_active_employees desc;


///===================== Tenure-Based Attrition Analysis (Stability Risk)  =================================================


SELECT
    Tenure_Bucket,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN EmployeeStatus = 'Terminated' THEN 1 ELSE 0 END) AS Terminated_Employees,
    CAST(
        100.0 * SUM(CASE WHEN EmployeeStatus = 'Terminated' THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS Attrition_Rate
FROM (
    SELECT
        EmployeeStatus,
        CASE
            WHEN DATEDIFF(day, StartDate, GETDATE()) < 365 THEN 'Less than 1 year'
            WHEN DATEDIFF(day, StartDate, GETDATE()) < 365 * 3 THEN '1 to 3 years'
            ELSE '3+ years'
        END AS Tenure_Bucket
    FROM dbo.HR_Data
    WHERE StartDate IS NOT NULL
) t
GROUP BY Tenure_Bucket
ORDER BY Attrition_Rate DESC;

