CREATE DATABASE airpure_pmf;

USE airpure_pmf;

SELECT *
FROM clean_air_quality
LIMIT 10;

SHOW TABLES;

SELECT COUNT(*)
FROM clean_air_quality;

SELECT COUNT(*)
FROM clean_air_quality;

select count(distinct city)
from clean_air_quality

/*
Date Range
*/
SELECT
MIN(Date) AS Start_Date,
MAX(Date) AS End_Date
FROM clean_air_quality;
 
#### Average AQI

SELECT ROUND(AVG(AQI),2) AS Avg_AQI
FROM clean_air_quality;

-- ### Top 10 
SELECT
City,
ROUND(AVG(AQI),2) AS Avg_AQI
FROM clean_air_quality
GROUP BY City
ORDER BY Avg_AQI DESC
LIMIT 10;

-- AQI Category Analysis

SELECT
AQI_Bucket,
COUNT(*) AS Total_Days
FROM clean_air_quality
GROUP BY AQI_Bucket
ORDER BY Total_Days DESC;

-- Top 10 Polluted Cities

SELECT
City,
ROUND(AVG(AQI),2) AS Avg_AQI
FROM clean_air_quality
GROUP BY City
ORDER BY Avg_AQI DESC
LIMIT 10;

-- Top 10 Cleanest Cities

SELECT
City,
ROUND(AVG(AQI),2) AS Avg_AQI
FROM clean_air_quality
GROUP BY City
ORDER BY Avg_AQI ASC
LIMIT 10;

-- Year-wise AQI Trend

SELECT
Year,
ROUND(AVG(AQI),2) AS Avg_AQI
FROM clean_air_quality
GROUP BY Year
ORDER BY Year;

-- Monthly AQI Trend

SELECT
Month_Name,
ROUND(AVG(AQI),2) AS Avg_AQI
FROM clean_air_quality
GROUP BY Month_Name;

-- Which Pollutant is Highest?

SELECT
ROUND(AVG(`PM2.5`),2) AS PM25,
ROUND(AVG(PM10),2) AS PM10,
ROUND(AVG(NO2),2) AS NO2,
ROUND(AVG(SO2),2) AS SO2,
ROUND(AVG(CO),2) AS CO,
ROUND(AVG(O3),2) AS O3
FROM clean_air_quality;

-- Cities with Severe AQI Days

SELECT
City,
COUNT(*) AS Severe_Days
FROM clean_air_quality
WHERE AQI_Bucket = 'Severe'
GROUP BY City
ORDER BY Severe_Days DESC;

