# Wallmartsales--analysis-project-sql          
#ABOUT


This project aims to explore the walmart sales data to understand sales trends of different products.
The aims is to study how sales strategies can be improved and optimised.The dataset was obtained from the kaggle walmart sales forecasting competition
# Purpose of the project
The major aim of this project is to gain insight into the sales data of walmart to understand the different factors that affect sales of the different branches.
# About Data
The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition.This dataset contains sales transaction from a three different of walmart.The data contains 17 columns and 1000 rows:
nvoice_id VARCHAR(35) NOT NULL PRIMARY KEY,
branch VARCHAR(15) NOT NULL,
city VARCHAR(35) NOT NULL,
customer_type VARCHAR(35) NOT NULL,
gender VARCHAR(11) NOT NULL,
product_line VARCHAR(200) NOT NULL,
unit_price Decimal(11,2) NOT NULL,
quantity INT NOT NULL,
VAT FLOAT(7,4) NOT NULL,
total DECIMAL(13,4) NOT NULL,
date DATETIME NOT NULL,
time TIME NOT NULL,
payment_method VARCHAR(20) NOT NULL,
cogs DECIMAL(11,2) NOT NULL,
gross_margin_perct FLOAT(10,9),
gross_income DECIMAL(12,4) NOT NULL,
rating FLOAT(2,1)
