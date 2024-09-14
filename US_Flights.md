# US Flight Delays
By Jose Angel Gonzalez

## Business Task
### Objective:
- The goal is to understand how Cyclistic's annual members and casual riders use bikes differently. Insights from this analyusis will inform a marketing strategy aimed at converting casual riders into annual members.

### Key Questions:
1. How do annual members and casual riders use cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

## Data Sources
### Description:
- The data used in this analysis comes from Cyclistic's historical bike trip data. This dataset includes fields such as trip duration, start time, end time, start station name, end station name, user type, and more. 			        		

## Data Cleaning and Preparation
- BigQuery was used for all data cleaning and preparation tasks
### Steps:
#### 1. Data Import:
- The dataset was imported 
#### 2. Filtering:
- Trips with null values in critical fileds like 'end station name' were filtered out to ensure data integrity.
#### 3. Date Parsing:
- a calculated field was created to extract the day of the week from the 'start time', facilitating the analysis of weekly ride patterns.
#### 4. Outlier Removal:
- Trips with a duration exceeding 24 hours were identified as outliers and excluded to maintain a realistic view of ride behaviors.
#### 5. User Type Classification:
- Data was segmented into 'Casual Riders' and 'Members' based on the 'user type' field for comparative analysis.
#### ![Execution Graph](https://github.com/Grandpa-3/Cyclistic/blob/401916d6feddfd60cf90ba3a868f119e50368b8b/RideDuration_UsageDaily.png)

## Analysis Summary
### Key Findings:

**Ride Duration:**
- Casual riders tend to have longer ride durations compared to annual members, indicating that casual riders might use bikes more for leisure rather than communting.
#### ![Execution Graph](https://github.com/Grandpa-3/Cyclistic/blob/401916d6feddfd60cf90ba3a868f119e50368b8b/RideDuration_UsageDaily.png)0

**Usage by Day of the Week:**
- Annual members show consistent usage througout the workweek, while casual riders predominantly use bikes on weekends, sugesting a leisure-oriented pattern.

**Station Usage:**
- Casual riders frequently start and en teir trips at stations near tourist attractions and parks, while annual members are more likely to use stations near business districts and residential areas.
#### [Station Usage](Images/StationUsage.png)

### [Cyclistic Dashboard](https://public.tableau.com/app/profile/jose.gonzalez.ramirez/viz/Cyclistic_17262131192190/CyclisticNY)


## Recommendatons:

### Based on the analysis, the following strategies are recommended:
Based on the analysis, several recommendations can be made to airlines and airport authorities to improve performance and reduce delays:

### 1. Targeted Operational Improvements on High-Delay Days:
Focus on optimizing operations on Thursdays, such as scheduling more resources or implementing stricter time management to address delays. Ground crews and gate agents should be better equipped to handle peak times.

### 2. Improvement of Turnaround Times:
Given the pattern of longer departure delays, airlines should review their ground handling procedures, such as refueling, boarding, and luggage handling, to improve turnaround times and reduce delays before takeoff.

### 3. Flight Schedule Optimization:
Airlines could consider adjusting their schedules to reduce flight congestion on specific days like Thursdays. Shifting some flights to days with lower traffic, like Sundays or Fridays, may ease operational pressure.

### 4. Digital Communication and Passenger Alerts:
Implement better communication systems to alert passengers of potential delays early, thus reducing stress and improving customer satisfaction.

### 5. Data-Driven Decision Making:
Airlines and airport authorities should regularly analyze delay data and monitor patterns using dashboards to make data-driven decisions. This could be extended beyond annual reviews to quarterly or even monthly assessments.

By implementing these recommendations, airlines could improve both operational efficiency and customer experience, potentially reducing costs associated with flight delays and increasing overall satisfaction.

## Conclusion
- The analysis of flight delays across different airlines and days of the week reveals important operational patterns. Notably, Thursdays experience the highest delays, both for departures and arrivals, indicating potential congestion or inefficiencies in flight management during mid-week. In contrast, Sundays and Fridays generally exhibit the least delays, suggesting better performance on these days. The comparison of average delays also highlighted that departure delays tend to be more significant than arrival delays, pointing towards issues with turnaround processes or pre-flight procedures.
- These insights underscore the importance of optimizing operations on high-delay days and improving ground handling efficiency to minimize departure delays. Overall, the data provides a clear view of where airlines and airports can focus efforts to improve punctuality and enhance the passenger experience.

## [Go back to my Webpage](https://grandpa-3.github.io/Jose_AGonzalez.github.io/)

