show variables like 'local_infile';
set global local_infile=1;

DROP DATABASE IF EXISTS `bellabeat`;
create database `bellabeat`;
use `bellabeat`;

create table dailyActivity_merged(
Id integer,
ActivityDate VARCHAR(100),
TotalSteps integer,
TotalDistance decimal,
TrackerDistance decimal,
LoggedActivitiesDistance decimal,
VeryActiveDistance decimal,
ModeratelyActiveDistance decimal,
LightActiveDistance decimal,
SedentaryActiveDistance decimal,
VeryActiveMinutes integer,
FairlyActiveMinutes integer,
LightlyActiveMinutes integer,
SedentaryMinutes integer,
Calories integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/dailyActivity_merged.csv'
into table dailyActivity_merged
fields terminated by ','
ignore 1 rows;

create table dailyCalories_merged (
Id integer,
ActivityDay VARCHAR(100),
Calories integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/dailyCalories_merged.csv'
into table dailyCalories_merged
fields terminated by ','
ignore 1 rows;

create table dailyIntensities_merged (
Id integer,
ActivityDay VARCHAR(100),
SedentaryMinutes integer,
LightlyActiveMinutes integer,
FairlyActiveMinutes integer,
VeryActiveMinutes integer,
SedentaryActiveDistance decimal,
LightActiveDistance decimal,
ModeratelyActiveDistance decimal,
VeryActiveDistance decimal
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/dailyIntensities_merged.csv'
into table dailyIntensities_merged
fields terminated by ','
ignore 1 rows;

create table dailySteps_merged (
Id integer,
ActivityDay VARCHAR(100),
StepTotal integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/dailySteps_merged.csv'
into table dailySteps_merged
fields terminated by ','
ignore 1 rows;

create table heartrate_seconds_merged (
Id integer,
Time VARCHAR(100),
Value integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/heartrate_seconds_merged.csv'
into table heartrate_seconds_merged
fields terminated by ','
ignore 1 rows;

create table hourlyCalories_merged (
Id integer,
ActivityHour VARCHAR(100),
Calories integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/hourlyCalories_merged.csv'
into table hourlyCalories_merged
fields terminated by ','
ignore 1 rows;

create table hourlyIntensities_merged (
Id integer,
ActivityHour VARCHAR(100),
TotalIntensity integer,
AverageIntensity decimal
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/hourlyIntensities_merged.csv'
into table hourlyIntensities_merged
fields terminated by ','
ignore 1 rows;

create table hourlySteps_merged (
Id integer,
ActivityHour VARCHAR(100),
StepTotal integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/hourlySteps_merged.csv'
into table hourlySteps_merged
fields terminated by ','
ignore 1 rows;

create table minuteCaloriesNarrow_merged (
Id integer,
ActivityMinute VARCHAR(100),
Calories decimal
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/minuteCaloriesNarrow_merged.csv'
into table minuteCaloriesNarrow_merged
fields terminated by ','
ignore 1 rows;

create table minuteIntensitiesNarrow_merged (
Id integer,
ActivityMinute VARCHAR(100),
Intensity integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/minuteIntensitiesNarrow_merged.csv'
into table minuteIntensitiesNarrow_merged
fields terminated by ','
ignore 1 rows;

create table minuteMETsNarrow_merged (
Id integer,
ActivityMinute VARCHAR(100),
METs integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/minuteMETsNarrow_merged.csv'
into table minuteMETsNarrow_merged
fields terminated by ','
ignore 1 rows;

create table minuteSleep_merged (
Id integer,
date VARCHAR(100),
value integer,
logId integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/minuteSleep_merged.csv'
into table minuteSleep_merged
fields terminated by ','
ignore 1 rows;

create table minuteStepsNarrow_merged (
Id integer,
ActivityMinute VARCHAR(100),
Steps integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/minuteStepsNarrow_merged.csv'
into table minuteStepsNarrow_merged
fields terminated by ','
ignore 1 rows;

create table sleepDay_merged (
Id integer,
SleepDay VARCHAR(100),
TotalSleepRecords integer,
TotalMinutesAsleep integer,
TotalTimeInBed integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv'
into table sleepDay_merged
fields terminated by ','
ignore 1 rows;

create table weightLogInfo_merged (
Id integer,
Date VARCHAR(100),
WeightKg decimal,
WeightPounds decimal,
Fat integer,
BMI decimal,
IsManualReport VARCHAR(10),
LogId integer
);
load data local infile 'D:/Data_Analytics_Projects/Case3_Bellabeat_Wellness_Tech/Input/Data/archive/Fitabase Data 4.12.16-5.12.16/weightLogInfo_merged.csv'
into table weightLogInfo_merged
fields terminated by ','
ignore 1 rows;