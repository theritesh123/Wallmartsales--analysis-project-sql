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
1. ADD A NEW COLUMN NAMED TIME_0F_DAY  TO GIVE INSIGHT OF SALES IN THE MORNING,AFTERNOON AND EVENING.
   THIS WILL ANSWER THE QUESTION ON WHICH PART OF THE DAY MOST SALES ARE MADE.
   
2.ADD A NEW COLUMN NAMED DAY_NAME THAT CONTAINS THE EXTRACTED DAYS OF THE WEEK ON WHICH THE GIVEN TRANSACTION TOOK PLACE.
   THIS WILL HELP ANSWER THE QUESTION ON WHICH WEEK OF THE DAY EACH BRANCH IS BUSIEST.
   
3.ADD A NEW COLUMN NAMED MONTH_NAME THAT CONTAINS THE EXTRACTED MONTH OF THE YEAR ON WHICH THE GIVEN TRANSACTION TOOK PLACE.
     IT WILL HELP DETERMINE WHICH MONTH OF THE YEAR HAS THE MOST SALES AND PROFIt
     
4.HOW MANY PRODUCT LINE WALLMART HAVE?

5.WHAT IS THE MOST COMMON PAYMENT METHOD?

6.WHAT IS THE TOTAL REVENUE BY MONTH?

7.WHAT IS THE TOTAL REVENUE BY MONTH?

8.WHAT IS THE CITY WITH THE LARGEST REVENUE?

9.WHAT PRODUCT LINE HAD THE LARGEST VAT?

10.WHICH BRANCH SOLD MORE PRODUCTS THAN AVERAGE PRODUCT SOLD?

11.WHAT IS THE MOST COMMON PRODUCT LINE BY GENDER?

12.WHAT IS THE AVERAGE RATING OF EACH PRODUCT LINE?

13.WHAT IS THE GENDER DISTRIBUTION PER BRANCH?

14.find the average gross income and total sales for each product line,
         only considering invoices with a rating higher than 4.
         
15.find the total sales for each branch, broken down by customer type,
       for invoices with a rating greater than 3:*


             
