# Crowdfunding-ETL

## Overview of Project
Independent Funding is a crowdfunding platform that has been growing and needs to move all their accessible data from a large Excel file onto a PostgreSQL database.  This will give the analytics team the ability to perform more enhanced and efficient analysis while also being able to create reports for company stakeholders and individuals who donate funding to projects.  I have been assigned to work with a junior SQL developer to assist in extracting and transforming the data from the large Excel file into four separate CSV files, create a PostgreSQL database and tables by using an ERD, loading the CSV files into the database and performing SQL queries to generate reports for stakeholders.  As part of this project we'll apply the extract, transform, and load (ETL) process, which are the three steps data engineers use when collecting, cleaning, and storing data in a database prior to performing analysis. We'll use Python and Pandas to perform the extract and transform steps. Then, we’ll create a PostgreSQL database and table schemas by using an entity relationship diagram (ERD), and load the data into the database. Finally, we'll use SQL to perform data analysis.

### Purpose
The company gave positive feedback to the junior SQL developer and myself for successfully completing the crowdfunding ETL project and SQL data analysis.  But the company recently received a new dataset that contains information about the backers who've pledged to the live projects and now wants the junior SQL developer and myself to perform both an ETL process on this dataset and a data analysis by using SQL queries.  We'll need to use Python, Pandas, and Jupyter notebook to do the extract and transform process.  For the load process we'll use the dataset to create and ERD and table schema for creating a new table in the database and then upload the CSV file that contains the backer information. Last but not least we'll perform a data analysis on the database by using SQL queries.

## Summary

### ERD

The revised ERD including the new "backers" table in the schema is as follows:

![crowdfunding_db_relationships](https://raw.githubusercontent.com/JBro-Birds/Crowdfunding-ETL/master/crowdfunding_db_relationships.png)

### Requested Data Analysis on the Database by Using SQL Queries

Number of backers in descending order for each "live" project (the "count" column represents the number of backers and teh "cf_id" column represents the "live project numeric code):

![backer_count_live_check](https://raw.githubusercontent.com/JBro-Birds/Crowdfunding-ETL/master/Support/backer_count_live_check.png)

Backer contact information for "live" projects sorted in descending order based on the remaining goal amount:

!(email_contacts_remaining_goal_amount](https://raw.githubusercontent.com/JBro-Birds/Crowdfunding-ETL/master/Support/email_contacts_remaining_goal_amount.png)

Backer contact information for "live" projects that includes additional project information and is sorted in ascending order by backer last name and email address:

!(email_backers_remaining_goal_amount](https://raw.githubusercontent.com/JBro-Birds/Crowdfunding-ETL/master/Support/email_backers_remaining_goal_amount.png)
