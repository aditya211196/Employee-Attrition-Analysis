select *
from [Attrition data];

/* Average Attrition Rate*/
select 100*avg(cast(Attrition as float))
from [Attrition data];

/* Average % Hike*/
select cast(avg(PercentSalaryHike)as decimal(5,2))
from [Attrition data]

/* Average Attrition Rate v/s Years Since Last Promotion*/
with cte as(
select *,case when YearsSinceLastPromotion<1 then 'Less than 1 year'
when YearsSinceLastPromotion<2 then 'More than 1 but less than 2 years'
else 'More Than 3 Years' end as LastPromoCat
from [Attrition data]
)
SELECT 
  LastPromoCat,
  100.0 * AVG(CAST(Attrition AS FLOAT)) AS AvgAttritionRate
FROM cte
GROUP BY LastPromoCat;

/* Average Attrition Rate v/s Hike class*/
with cte as(
select *,case when PercentSalaryHike<15 then '10% to 14%'
when PercentSalaryHike<20 then '15% to 19%'
else '>20%' end as Hike_Class
from [Attrition data]
)
SELECT 
  Hike_Class,
  100.0 * AVG(CAST(Attrition AS FLOAT)) AS AvgAttritionRate
FROM cte
GROUP BY Hike_Class

/* Analysing Gender Diversity*/
select 100*sum(case when Gender='Female' then 1 else 0 end)/count(*)as fem_count
from [Attrition data];

/*Avg Number Of Companies Worked*/
select round(avg(cast(NumCompaniesWorked as float)),2)
from [Attrition data];

/* Average Attrition Rate v/s Yeras At Company*/
SELECT 
  YearsAtCompany,
  100.0 * AVG(CAST(Attrition AS FLOAT)) AS AvgAttritionRate
FROM [Attrition data]
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;

/* Average Attrition Rate v/s Age*/
SELECT 
  Age,
  100.0 * AVG(CAST(Attrition AS FLOAT)) AS AvgAttritionRate
FROM [Attrition data]
GROUP BY Age
ORDER BY Age;

/* Average Attrition Rate v/s Performance_Rating*/
SELECT 
  PerformanceRating,
  100.0 * AVG(CAST(Attrition AS FLOAT)) AS AvgAttritionRate
FROM [Attrition data]
GROUP BY PerformanceRating;

/* Average Attrition Rate v/s Marital Status*/
SELECT 
  MaritalStatus,
  100.0 * AVG(CAST(Attrition AS FLOAT)) AS AvgAttritionRate
FROM [Attrition data]
GROUP BY MaritalStatus

/* Average Attrition Rate v/s Department*/
SELECT 
  Department,
  100.0 * AVG(CAST(Attrition AS FLOAT)) AS AvgAttritionRate
FROM [Attrition data]
GROUP BY Department





