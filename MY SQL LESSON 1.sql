DROP DATABASE IF EXISTS dbecommercer;
CREATE DATABASE IF NOT EXISTS dbecommercer;
USE dbecommercer;
CREATE TABLE customer(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
email_address VARCHAR(50)NOT NULL UNIQUE,
number_of_compaints INT DEFAULT 0
);
CREATE TABLE sales(
purchase_number INT PRIMARY KEY AUTO_INCREMENT,
date_of_purchase DATE NOT NULL,
customer_id INT,
item_id CHAR(3)NOT NULL
);
CREATE TABLE items(
item_code CHAR(3) NOT NULL UNIQUE,
item VARCHAR (50),
unit_price_usd VARCHAR(50) NOT NULL,
company_id INT,
company VARCHAR(50),
headquarters_phone_number CHAR(15)NOT NULL
);
