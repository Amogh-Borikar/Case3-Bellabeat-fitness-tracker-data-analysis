-- Drop table if exists
DROP TABLE IF EXISTS heartrate_seconds;

-- Create Table for heartrate per seconds by Id & Time order
CREATE TABLE heartrate_seconds
SELECT Id, Time, Value AS Heartrate 
FROM bellabeat.heartrate_seconds_merged
ORDER BY Id, Time;

-- check total instances
SELECT count(*)
FROM bellabeat.heartrate_seconds;
-- 2483658 total instances

-- Check heavy exercise instances
SELECT count(*)
FROM bellabeat.heartrate_seconds
WHERE Heartrate > 120;
-- 77735 instances more than 180 heartrate from 2483658 (3.1 %)

-- Export file as csv
SELECT 'Id' , 'Time' , 'Heartrate'
UNION ALL
SELECT Id, Time, Heartrate
FROM bellabeat.heartrate_seconds 
INTO OUTFILE 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/SQL/Processed_Data/heartrate_per_seconds.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';