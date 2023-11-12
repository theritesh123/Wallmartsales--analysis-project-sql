# Wallmartsales--analysis-project-sql          
#ABOUT


This project aims to explore the walmart sales data to understand sales trends of different products.
The aims is to study how sales strategies can be improved and optimised.The dataset was obtained from the kaggle walmart sales forecasting competition
# Purpose of the project
The major aim of this project is to gain insight into the sales data of walmart to understand the different factors that affect sales of the different branches.
# About Data
The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition.This dataset contains sales transaction from a three different of walmart.The data contains 17 columns and 1000 rows:
      
      | column      | |Description                 | Data type    |
      |-------------------------------------------------------------|
      |invoice_id    |Invoice of the sales made       |VARCHAR(35)  |
      
      |branch        |Branch at which sales were made |VARCHAR(15)  |
      
      |city          |The location of the branch      |VARCHAR(35)  |
      
      |customer_type |The type of the customer        |VARCHAR(30)  |
      
      |gender        |Gender of the customer making   |VARCHAR(11)  |
                      purchase
      |product_line  |Product line of the product sold|VARCHAR(200) |
      
      |unit_price    |The price of each product       |DECIMAL(11, 2)|
      
      | quantity     |The amount of the product sold  |INT           |
      
      |VAT           |The amount of tax on the purchase|FLOAT(7, 4)  |
      
      |total         |The total cost of the purchase   |DECIMAL(13,4)|
      
      |date          |The date on which the purchase   |DATE         |
                      was made
                      
      |time          |The time at which the purchase   |TIMESTAMP    |
                      was made
                      
      |payment_method| Medium of the total amount paid |varchar(20)  |
      
      |cogs          |Cost Of Goods sold               |DECIMAL(10, 2)|
      
      |gross_margin_ |Gross margin percentage          |FLOAT(11, 9)  |
      percentage
      
      |gross_income  |Gross Income                     |DECIMAL(10, 2)|
      
      |rating        |Rating                           |FLOAT(2, 1)   |

# Approach used
1.Built a database named Salesdatawalmart

2.Created table named wmsales and inserted the data.

3.Selected columns with null values in them. There are no null values in our database as in creating the tables, 
             we set NOT NULL for each field, hence null values are filtered out.

# Business  Question (Queries) to  Answer:
1. Add a new C0lumn named TIME_0F_DAY  to give insight of sales in the morning,afternoon and evening.
   This will answer the question on which part of the day most sales are made.
   
2.Add a new column named DAY_NAME that contains the extracted days of the week on  which the  given transaction took place.
   This  will help answer the question on which week of the day each branch is busiest.
   
3.Add a new column named MONTH_NAME that contains the extracted month of the year on which the given transaction took place.
     it  will help deermine which month of the year has the most sales and profit
     
4.How many product line wallmart have?

5.What is the most common payment method?

6.What is the total revenue by month?

7.What is the total revenue by month?

8.What is the city with the largest revenue?

9.What product line had the largest VAT?

10.Which Branch Sold more product than average product sold?

11.What is the most common product line by gender?

12.What is the average rating of each product line?

13.What is the gender distribution per branch?

14.Find the average gross income and total sales for each product line,
         only considering invoices with a rating higher than 4.
         
15.Find the total sales for each branch, broken down by customer type,
       for invoices with a rating greater than 3:*

 
 # Code:
For the rest of the code checK the WM SALES ANALYSIS.sql


-- Create database
CREATE DATABASE IF NOT EXISTS walmartSales;

-- Create table
CREATE TABLE IF NOT EXISTS wmsales(
	invoice_id VARCHAR(35) NOT NULL PRIMARY KEY,
 
    branch VARCHAR(15) NOT NULL,
    
    city VARCHAR(35) NOT NULL,
    
    customer_type VARCHAR(30) NOT NULL,
    
    gender VARCHAR(11) NOT NULL,
    
    product_line VARCHAR(200) NOT NULL,
    
    unit_price DECIMAL(11,2) NOT NULL,
    
    quantity INT NOT NULL,
    
    VAT FLOAT(7,4) NOT NULL,
    
    total DECIMAL(13, 4) NOT NULL,
    
    date DATETIME NOT NULL,
    
    time TIME NOT NULL,
    
    payment VARCHAR(20) NOT NULL,
    
    cogs DECIMAL(10,2) NOT NULL,
    
    gross_margin_pct FLOAT(11,9),
    
    gross_income DECIMAL(10, 2),
    
    rating FLOAT(2, 1)
);



             
