--  1
 /*SELECT 
    firstName, 
    lastName, 
    jobTitle 
FROM 
    employees 
WHERE 
    reportsTo IS NOT NULL 
ORDER BY 
    jobTitle DESC;
    
-- 2
SELECT 
    orderNumber, 
    SUM(quantityOrdered) AS itemsCount,
    SUM(quantityOrdered * priceEach) AS totalSales
FROM 
   orderdetails
GROUP BY 
    orderNumber;    
    
-- 3
 SELECT 
    lastName    
FROM 
    employees
WHERE 
    lastName IN (SELECT lastName FROM employees GROUP BY lastName HAVING COUNT(*) > 1);  */
    
       
-- use classic_models;     
/*SELECT employees.employee_id, employees.first_name, employees.last_name, orders.office_city
FROM employees 
JOIN offices  ON employees.office_id = orders.office_id
WHERE orders.office_city = 'Paris';*/



use classicmodels;

-- 1
/*SELECT * FROM employees WHERE officeCode IN (
    SELECT officeCode   FROM offices WHERE city = 'Paris'
);*/

-- 2 
/*SELECT products.productName,products.productLine,SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS total_sales FROM 
    products JOIN  orderdetails  ON products.productCode = orderdetails.productCode
GROUP BY  products.productLine, products.productName  HAVING   total_sales > 20000 ORDER BY  total_sales ASC;*/

-- 3
/* SELECT  productCode, productName,  buyPrice FROM  products WHERE productCode LIKE '%\_20%' ESCAPE '\\'
AND buyPrice BETWEEN 40 AND 100;*/

    
    

