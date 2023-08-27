-- Create database schema called crowdfunding_db
CREATE DATABASE crowdfunding_db;

-- Drop the tables if they already exist
DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE campaign;
DROP TABLE contacts;

-- Create the category table, set the primary key
CREATE TABLE category (
	category_id VARCHAR(4) PRIMARY KEY NOT NULL,
	category VARCHAR(50) NOT NULL
	);

-- Create the subcategory table, set the primary key
CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(50) NOT NULL
	);
	
-- Create the contacts table, set the primary key
CREATE TABLE contacts (
	contact_id INTEGER PRIMARY KEY NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(200) NOT NULL
	);	
	
-- Create the campaigns table, set the primary key and foreign keys
CREATE TABLE campaigns (
	cf_id INTEGER PRIMARY KEY NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(200) NOT NULL, 
	description VARCHAR(200) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
	);	
	
-- Verify table creation and data import
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM contacts
SELECT * FROM campaigns
	
	
	
	
	