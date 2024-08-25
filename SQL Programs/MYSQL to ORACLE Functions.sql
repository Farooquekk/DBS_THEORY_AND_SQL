/*SELECT CONCAT(UPPER(SUBSTRING(customerName, 1, 1)), LOWER(SUBSTRING(customerName, 2))) AS initcap_customerName
FROM customers;*/    -- initcap function

/*SELECT CONCAT(
           UPPER(SUBSTRING(firstName, 1, 1)),
           LOWER(SUBSTRING(firstName, 2)),
           ' ',
           UPPER(SUBSTRING(lastName, 1, 1)),
           LOWER(SUBSTRING(lastName, 2))
       ) AS initcap_fullName
FROM employees;*/ -- initcap function

-- Calculate the number of months between two dates
/*SELECT 
    TIMESTAMPDIFF(MONTH, '2022-01-01', '2022-03-01') AS months_between;*/  -- months between function
    
    
    -- Add 3 months to a given date
-- SELECT DATE_ADD('2022-01-01', INTERVAL 3 MONTH) AS new_date;      -- add months function


-- Get the next day from a given date
-- SELECT DATE_ADD('2022-01-01', INTERVAL 1 DAY) AS next_day; -- next day function
-- Get the last day of the month for a given date
 -- SELECT LAST_DAY('2022-01-15') AS last_day_of_month; --        last day function
 -- SELECT DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s') AS current_date_time;
 
 /*SELECT DATE_FORMAT(NOW(), '%Y-%m-%d') AS yyyy_mm_dd,
       DATE_FORMAT(NOW(), '%m/%d/%Y') AS mm_dd_yyyy,
       DATE_FORMAT(NOW(), '%H:%i:%s') AS hh_ii_ss;*/
       
       -- All Formats of date in MySql 
       
/*       
%Y: Year, 4 digits (e.g., 2022)
%y: Year, 2 digits (e.g., 22)
%m: Month, numeric (01..12)
%d: Day of the month, numeric (01..31)
%H: Hour (00..23)
%h: Hour (01..12)
%i: Minutes, numeric (00..59)
%s: Seconds, numeric (00..59)
%p: AM or PM
%W: Day of the week (Sunday..Saturday)
%a: Abbreviated weekday name (Sun..Sat)
%M: Month name (January..December)
%b: Abbreviated month name (Jan..Dec)

*/



-- NVL equivalent in MySQL
-- SELECT COALESCE(column_name, default_value) AS result FROM table_name;


-- NVL2 equivalent in MySQL
-- SELECT CASE WHEN column_name IS NOT NULL THEN value1 ELSE value2 END AS result FROM table_name;

/* SELECT CASE 
           WHEN hire_date IS NOT NULL THEN 
               CASE 
                   WHEN hire_date < '2000-01-01' THEN 'Senior' 
                   ELSE 'Junior' 
               END 
           ELSE 'Unknown' 
       END AS employee_category 
FROM employees; */

/*SELECT CASE department_id 
           WHEN 10 THEN 'Accounting' 
           WHEN 20 THEN 'Research' 
           WHEN 30 THEN 'Sales' 
           WHEN 40 THEN 'Operations' 
           ELSE 'Other' 
       END AS department_name 
FROM employees; */













 


