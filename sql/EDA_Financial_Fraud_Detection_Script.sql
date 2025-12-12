CREATE SCHEMA Finance;
USE Finance;

# Create Table cc_data

CREATE TABLE cc_data(
indexx INT,
trans_date_trans_time VARCHAR(100),
cc_num BIGINT,
merchant VARCHAR(200),
category VARCHAR(100),
amt DECIMAL(10,6),
first VARCHAR (50),
last VARCHAR(50),
gender VARCHAR(10),
street VARCHAR(100),
city VARCHAR(50),
state VARCHAR(50),
zip INT,
lat DECIMAL(10,6),
longg DECIMAL(10,6),
city_pop INT,
job VARCHAR(50),
dob VARCHAR(20),
trans_num VARCHAR(50),
unix_time INT,
merch_lat DECIMAL(10,6),
merch_long DECIMAL(10,6),
is_fraud TINYINT
);

 # Create Table Location_Data
 
CREATE TABLE location_data(
cc_num BIGINT,
lat DECIMAL(10,6),
longg DECIMAL (10,6)
);

# Calculate the total number of transactions in the cc_data table

SELECT count(*) as Total_Transactions
FROM cc_data;

# Identify the top 10 most frequent merchants in the cc_data table

SELECT merchant, count(*) AS Transaction_Count 
FROM cc_data
GROUP BY merchant
ORDER BY Transaction_Count DESC
LIMIT 10;

# Find the average transaction amount for each category of transactions in the cc_data table

SELECT category, AVG(amt) as Average_Amount
FROM cc_data
GROUP BY category;

# Determine the number of fraudulent transactions and the percentage of total transactions that they represent

SELECT COUNT(*) AS fraud_count,
((COUNT(*)/ (SELECT COUNT(*) FROM cc_data))) * 100 AS fraud_percent
FROM cc_data
WHERE is_fraud = 1;

# Join the cc_data and location_data tables to identify the latitude and longitude of each transaction

SELECT cc.*, ld.lat, ld.longg 
FROM cc_data cc
LEFT JOIN location_data ld
ON cc.cc_num = ld.cc_num;

# Identify the city with the highest population in the location_data table

SELECT ld.cc_num, cc.city, cc.city_pop 
FROM cc_data cc
RIGHT JOIN location_data ld
ON cc.cc_num = ld.cc_num
GROUP BY ld.cc_num, cc.city, cc.city_pop
ORDER BY city_pop DESC
LIMIT 1;

# Find the earliest and latest transaction dates in the cc_data table

SELECT MIN(STR_TO_DATE(trans_date_trans_time, '%d-%m-%Y %H:%i')) AS earliest_transaction_date,
MAX(STR_TO_DATE(trans_date_trans_time, '%d-%m-%Y %H:%i')) AS latest_transaction_date
FROM cc_data;

# What is the total amount spent across all transactions in the cc_data table?

SELECT SUM(amt) Total_Amount_Spent
FROM cc_data;

# How many transactions occurred in each category in the cc_data table?

SELECT category, count(*) Total_Transactions
FROM cc_data
GROUP BY category
ORDER BY Total_Transactions;

# What is the average transaction amount for each gender in the cc_data table?

SELECT gender, AVG(amt) Average_Transaction_Amount
FROM cc_data
GROUP BY gender;

# Which day of the week has the highest average transaction amount in the cc_data table?

SELECT DAYNAME(STR_TO_DATE(trans_date_trans_time, '%d-%m-%Y %H:%i')) AS day_of_week,
AVG(amt) AS average_transaction_amount
FROM cc_data
GROUP BY day_of_week
ORDER BY average_transaction_amount DESC
LIMIT 1;




