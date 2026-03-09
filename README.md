# HR-Dashboard_Project-MySQL-PowerBI
<img width="1181" height="630" alt="Screenshot 2026-03-09 210825" src="https://github.com/user-attachments/assets/a1f9b1b2-1e7e-46c4-b348-cd50d005a8a5" />
<img width="1159" height="632" alt="Screenshot 2026-03-09 223248" src="https://github.com/user-attachments/assets/6773a732-a2d5-4759-8445-aed0a6483d3d" />

## Data Used
**Data** - HR Data with over 22000 rows from the year 2000 to 2026.<br>
**Data Cleaning & Analysis** - MySQL Workbench<br>
**Data Visualization** - PowerBI 
## Questions
01. What is the gender breakdown of employees in the company?
02. What is the race/ethnicity breakdown of employees in the company?
03. What is the age distribution of employees in the company?
04. How many employees work at headquarters versus remote locations
05. What is the average length of employment for employees who have been terminated?
06. How does the gender distribution vary across departments and job titles?
07. What is the distribution of job titles across the company?
08. Which department has the highest turnover rate?
09. What is the distribution of employees across locations by state?
10. How has the company's employee count changed over time based on hire and term dates?
11. What is the tenure distribution for each department?
## Summary of Findings
• There are more male employees.  
• White race is the most dominant while Native Hawaiian and Native Hawaiian or Other Pacific Islander are the least dominant.  
• The youngest employee is 23 years old and the oldest is 60 years old
• 5 age groups were created (18-24, 25-34, 35-44, 45-54, 55-64). A large number of employees were between 35-44 followed by 25-34 while the smallest group was 18-24.  
• A large number of employees work at the headquarters instead of remotely.  
• The average length of employment for terminated employees is around 8 years.  
• The gender distribution across departments is fairly balanced but there are generally more male than female employees.  
• A large number of employees come from the state of Ohio.  
• The net change in employees has increased over the years.  
• The average tenure for each department is about 8 years with Legal and Auditing having the highest and Services, Sales and Marketing having the lowest.

## Limitations
• Some records had negative ages and these were excluded during querying. Ages used were 18 years and above.  
• Some termdates were far into the future and were not included in the analysis. The only term dates used were those less than or equal to the current date.
