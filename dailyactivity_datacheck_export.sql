-- Drop table if exists
DROP TABLE IF EXISTS dailyactivity;

-- create table by order
CREATE TABLE dailyactivity
SELECT * 
FROM bellabeat.dailyactivity_merged
ORDER BY Id, ActivityDate;

-- Check total count of entries
SELECT count(*) 
FROM bellabeat.dailyactivity;
-- 940 entries

-- Check if there is any zero distance
SELECT count(*) 
FROM bellabeat.dailyactivity
WHERE TotalDistance = 0;
-- There is no distance tracking info for 10.85 percent of the data (102 out of 940)

-- Check if device was not used on any day
SELECT Count(*) 
FROM bellabeat.dailyactivity
WHERE SedentaryMinutes > 1430;
-- There is no usage for 9.36 percent of the data (88 out of 940, acceptable)

-- Check instances with over 15000 total steps
SELECT count(*) 
FROM bellabeat.dailyactivity
WHERE TotalSteps > 15000;
-- 67 out of 940 instances with over 15000 total steps

-- Check total distance travel more than 10 kms
SELECT count(*) 
FROM bellabeat.dailyactivity
WHERE TotalDistance > 10;
-- 75 out of 940 instances with more than 10 kms distance travel

-- Check Calories more than 3500
SELECT count(*)  
FROM bellabeat.dailyactivity
WHERE Calories > 3500;
-- 63 out of 940 instances with more than 3500 Calories

-- Check number of people/devices analysed
SELECT count(DISTINCT Id) 
FROM bellabeat.dailyactivity
ORDER BY Id, ActivityDate;
-- 8 people/devices analysed

-- Export file as csv
SELECT 'Id',
'ActivityDate',
'TotalSteps',
'TotalDistance',
'TrackerDistance',
'LoggedActivitiesDistance',
'VeryActiveDistance',
'ModeratelyActiveDistance',
'LightActiveDistance',
'SedentaryActiveDistance',
'VeryActiveMinutes',
'FairlyActiveMinutes',
'LightlyActiveMinutes',
'SedentaryMinutes',
'Calories'
UNION ALL
SELECT *
FROM bellabeat.dailyactivity 
INTO OUTFILE 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/SQL/Processed_Data/dailyactivity.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';