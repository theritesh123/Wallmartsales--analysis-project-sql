SELECT * FROM salesdatawalmart.wmsales;
/* ADDING A NEW COLUMN NAMED TIME_0F_DAY  TO GIVE INSIGHT OF SALES IN THE MORNING,AFTERNOON AND EVENING.
   THIS WILL ANSWER THE QUESTION ON WHICH PART OF THE DAY MOST SALES ARE MADE. */
SELECT 
     time,
     (CASE
		WHEN 'time' BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN 'time' BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening"
     END
     ) AS time_of_day
FROM wmsales;

ALTER TABLE wmsales ADD COLUMN time_of_day VARCHAR(20);
UPDATE wmsales
SET time_of_day=(
CASE
		WHEN 'time' BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN 'time' BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening"
     END
);


/* ADDING A NEW COLUMN NAMED DAY_NAME THAT CONTAINS THE EXTRACTED DAYS OF THE WEEK ON WHICH THE GIVEN TRANSACTION TOOK PLACE.
   THIS WILL HELP ANSWER THE QUESTION ON WHICH WEEK OF THE DAY EACH BRANCH IS BUSIEST.*/
   SELECT
       date,
       dayname(date) as day_name
   FROM wmsales; 
   
   
   ALTER TABLE wmsales add column day_name VARCHAR(10);
   UPDATE wmsales
   SET day_name=dayname(date);
   
   
   /*ADDING A NEW COLUMN NAMED MONTH_NAME THAT CONTAINS THE EXTRACTED MONTH OF THE YEAR ON WHICH THE GIVEN TRANSACTION TOOK PLACE.
     IT WILL HELP DETERMINE WHICH MONTH OF THE YEAR HAS THE MOST SALES AND PROFIT */
     SELECT
         date,
         monthname(date)
       FROM wmsales;  
   
   
   ALTER TABLE wmsales add column month_name VARCHAR(20);
   UPDATE wmsales 
   SET month_name=monthname(date);
   
   
   /*HOW MANY PRODUCT LINE WALLMART HAVE? */
   SELECT
        COUNT(DISTINCT product_line)
    FROM wmsales;    
    
    /* WHAT IS THE MOST COMMON PAYMENT METHOD */
    SELECT
        payment_method,
        COUNT(payment_method) as count
    FROM wmsales
    GROUP BY payment_method
    ORDER by count DESC;
    
    /* WHAT IS THE TOTAL REVENUE BY MONTH */
    SELECT
        month_name AS month,
        SUM(total) AS total_revenue
    FROM wmsales
    GROUP by month_name
    order by total_revenue DESC;
    
    
    /* WHAT MONTH HAD THE LARGEST COGS? */
    SELECT
        month_name AS month,
        SUM(cogs) AS cogs
    FROM wmsales
    GROUP BY month_name
    ORDER BY cogs DESC;
    
    
    /* WHAT IS THE CITY WITH THE LARGEST REVENUE? */
    SELECT
         branch,
         city,
         sum(total) AS total_revenue
      FROM wmsales
      GROUP BY city,branch
      order by total_revenue DESC;
      
      /* WHAT PRODUCT LINE HAD THE LARGEST VAT? */
      SELECT
           product_line ,
           AVG(VAT) AS avg_tax
       FROM wmsales
       GROUP BY product_line
       ORDER BY avg_tax DESC;
       
       
       /*WHICH BRANCH SOLD MORE PRODUCTS THAN AVERAGE PRODUCT SOLD? */
      SELECT
           branch,
           SUM(quantity) AS qty
       FROM wmsales
       GROUP BY branch
       HAVING SUM(quantity) > (SELECT AVG(quantity) FROM wmsales);
       
       
       /* WHAT IS THE MOST COMMON PRODUCT LINE BY GENDER? */
       SELECT 
          gender,
          product_line,
          count(gender) AS total_count
        FROM wmsales
        GROUP BY gender,product_line
        ORDER BY total_count DESC;
        
        
        /* WHAT IS THE AVERAGE RATING OF EACH PRODUCT LINE */
        SELECT 
             AVG(rating) AS avg_rating,
             product_line
         FROM wmsales
         GROUP BY product_line
         ORDER BY avg_rating DESC;
         
         
         /* WHAT IS THE GENDER DISTRIBUTION PER BRANCH?*/
         SELECT 
              gender,
              count(*) as gender_count
          FROM wmsales
          where branch="A"
          GROUP BY gender
          order by gender_count DESC;
          
     /* find the average gross income and total sales for each product line,
         only considering invoices with a rating higher than 4. */
	SELECT
    product_line,
    AVG("Gross_income") AS average_gross_income,
    SUM("total") AS total_sales,
    COUNT(DISTINCT invoice_id) AS total_invoices
    FROM
    wmsales
    WHERE
    rating > 4
	GROUP BY
    product_line;
    
    /* find the total sales for each branch, broken down by customer type,
       for invoices with a rating greater than 3:*/
SELECT
    branch,
    customer_type,
    SUM("total") AS total_sales
FROM
    wmsales  
WHERE
    Rating = 7.0
GROUP BY
branch, Customer_type;


          