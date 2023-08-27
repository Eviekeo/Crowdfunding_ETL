# Crowdfunding_ETL

# Description
As part of project 2, I have practised building an ETL pipeline using Python, Pandas andPython dictionary methods to extract and transform crowdfunding data. After transforming the data, I have created four CSV files and have used these files to create an ERD and a table schema before importing the CSV file data into a Postgres database.

# Repository Structure 
- Extracting and transforming data: this has been performed in the jupyter notebook file titled "ETL_Mini_Project_Starter_Code_EKeo". In this file I have extracted the data from a CSV file, and have reorganised, cleaned and transformed the data. 
- Loading data: this has been performed in the sql file titled "crowdfunding_db_schema" where a crowdfunding database has been created. This file includes code to create the tables and confirm existance of tables and successful importing of data in Postgres.
- Refer to the file titled "QuickDBD-export.png" for the entity relationship diagram ("ERD"), which is a visual representation of the 4 tables created and their relationships via primary and foreign keys. 
- Resources file: in this file is the crowdfunding data that I have performed the above procedures on ("crowdfunding.xlsx" and "contacts.xlsx") and the transformed data, which I have output in CSV format ("campaign.csv", "contacts.csv", "category.csv" and "subcategory.csv")