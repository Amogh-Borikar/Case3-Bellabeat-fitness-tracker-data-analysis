SELECT count(*)
FROM hourlycalories_merged hc;

SELECT count(*)
FROM hourlyintensities_merged hi;

SELECT count(*)
FROM hourlysteps_merged hs;


SELECT *
FROM hourlycalories_merged hc
JOIN hourlyintensities_merged hi
	ON hc.Id = hi.Id 
	AND hc.ActivityHour = hi.ActivityHour
JOIN hourlysteps_merged hs
	ON hc.Id = hs.Id 
	AND hc.ActivityHour = hs.ActivityHour;
    
    
-- Export file as csv
SELECT 'Id',
'ActivityHour',
'Calories',
'Id',
'ActivityHour',
'TotalIntensity',
'AverageIntensity',
'Id',
'ActivityHour',
'StepTotal'
UNION ALL
SELECT *
FROM hourlycalories_merged hc
JOIN hourlyintensities_merged hi
	ON hc.Id = hi.Id 
	AND hc.ActivityHour = hi.ActivityHour
JOIN hourlysteps_merged hs
	ON hc.Id = hs.Id 
	AND hc.ActivityHour = hs.ActivityHour
INTO OUTFILE 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/SQL/Processed_Data/HourlyActivity.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';