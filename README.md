# Crowdfunding-ETL

## Overview of Project
Pewlett Hackard is a large company with several thousand employees.  The company has been around for a long time and with so many baby boomers as employees there is a very high likelihood that retirement will begin to occur at a high rate.  Because of this likelihood the company is planning for the future by offering a retirement package for those who meet certain criteria and strategizing about which positions will need to filled as there will be thousands of job openings due to the retirements.

I have been tasked to work with a HR analyst to perform employee research.  Analysis and answers are needed to provide to management for the following questions:  Who will be retiring in the next few years? And how many positions will Pewlett Hackard need to fill?  The employee data is only available in the form of six CSV files because the company has been mainly using Excel and VBA to work with the data.  But a decision has been made to update methods to use SQL which will create considerable efficiencies and reporting capabilities for the large HR dataset.  The task is to build an employee database with SQL by applying data modeling, engineering, and analysis skills.  After sucessfully building the employee database with SQL the initial information and analysis ask was received postively by management.  Realizing the reporting capabilities using SQL from their initial requests, management is requesting additional information and analysis to assist their decsion making for future HR needs.

### Purpose
The purpose of this project is management has given two more assignments: determine the number of retiring employees per title (employees born between 1/1/1952-12/31/1955), and identify employees who are eligible to participate in a mentorship program (employees born between 1/1/1965-12/31/1965). After retrieving the data using SQL in pgAdmin and creating .csv files for the two assignments a written report is needed that summarizes my analysis and helps prepare management for the “silver tsunami” as many current employees reach retirement age.

## Results

### Database with SQL

* The original six HR .csv files provided the foundation to build SQL tables and merge data together in order to produce the necessary data needed for the project.  Using the Quick DBD website the database ERD was constructed as follows:

![EmployeeDB_Revised](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Data/EmployeeDB_Revised.png)

* Moving away from independent .csv files to creating a SQL database structure makes it clearly apparent the power of SQL programming for data merging, filtering, reporting, etc., as well as the ability to quickly and efficiently expand the sturcture with additional data tables as needed.

### Number of retiring employees per title

* After creating a series of new tables by joining data attributes from the original six tables code was used to filter, count and order the data as needed to report the number of retiring employees per title.  

The SQL code to produce the summary of retiring employees per title is as follows:

![Unique_Title_Code](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Unique_Title_Code.png)

The summary and count of retiring employees per title (72,458 total employees) is as follows:

![Retiring_Titles](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Retiring_Titles.png)

### Employees eligible to participate in mentorship program

* Writing the code to create a table showing employees eligible to participate in the mentorship program was made simpler by referencing code written for a prior table, then expanding on `Inner Join` and `Where` functions.

The SQL code to produce the employees eligible to participate in the mentorship program is as follows:
![Mentorship_Eligibility_Code](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Mentorship_Eligibility_Code.png)

The first twelve rows in the summary for the employees eligible to participate in the mentorship program (1,549 total employees) is as follows:

![Mentorship_Eligibility](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Mentorship_Eligibility.png)


## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

The roles that will need to be filled are as follows:

![Retiring_Titles](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Retiring_Titles.png)

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

* Based on the filter criteria of retirement-ready employees born in 1965 there is not nearly enough employees that are mentor eligible.  Comparing the below summary and count of mentorship eligible employees born in 1965 by title (1,549 total employees) to the above summary and count of retirement-ready employees born between 1952-1955 per title (72,458 total employees) it is apparent many more mentors will be needed.  A recommendation is to expand the filter criteria of retirement-ready employees for mentorship eligibility to include additional birth years than only 1965.

The code to filter and report the data of retirement-ready employees born in 1965 (the mentorship_eligibility in the `FROM` line is already filtered for birth_date during 1965) is as follows:

![Mentorship_Titles_Code](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Mentorship_Titles_Code.png)

The count of employees that are mentorship eligible per title with birth dates during 1965 (1,549 total employees) is as follows:

![Mentorship_Titles](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Mentorship_Titles.png)

* Additional analysis was performed to add to the potential mentor pool by expanding the number of birth years from only 1965 to 1962-1965.  This increased the potential pool dramatically from 1,549 for employees with birth dates only in 1965 to 56,859 for employees with birth dates from 1962 to 1965.  The company should consider expanding the potential mentor pool to more than a single birth date year in order to effectively manage the "silver tsunami".  Going forward there should be a rolling number of years for potential mentors to counter the potential retirees.

The code to filter and report the data of retirement-ready employees born between 1962 and 1965 is as follows:

![Mentorship_Titles_Multiyear_Code1](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Mentorship_Titles_Multiyear_Code1.png)

![Mentorship_Titles_Multiyear_Code2](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Mentorship_Titles_Multiyear_Code2.png)

The count of employees that are mentorship eligible per title with birth dates between 1962 and 1965 (56,859 total employees) is as follows:

![Mentorship_Titles_Multiyear](https://raw.githubusercontent.com/JBro-Birds/Pewlett-Hackard-Analysis/master/Queries/Mentorship_Titles_Multiyear.png)
