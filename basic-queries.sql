USE northwind;

-- 1. What is the name of the table that holds the items Northwind sells?
SELECT *
FROM products;

-- 2. Write a query to list the product id, product name, and unit price of every product.

SELECT productID, productName, unitPrice
FROM products;

-- 3. Write a query to list the product id, product name, and unit price of every product. Except this time, order then in ascending order by price

SELECT productID, productName, unitPrice
FROM products
ORDER BY unitPrice ASC;

-- 4. What are the products that we carry where the unit price is $7.50 or less?

SELECT productID, productName, unitPrice
FROM products
WHERE productID = unitPrice = 7.50 or unitPrice <= 7.50
ORDER BY unitPrice DESC;

-- 5. What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price

SELECT productID, productName, unitPrice, UnitsOnOrder
FROM products
WHERE UnitsOnOrder >= 100
ORDER BY unitPrice DESC;



-- 6. What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. If two or more have the same price, list those in ascending order by product name

SELECT productID, productName, unitPrice, UnitsOnOrder
FROM products
WHERE UnitsOnOrder >= 100
ORDER BY unitPrice DESC, productName ASC;

-- 7. What are the products that we carry where we have no units on hand, but 1
-- or more units of them on backorder? Order them by product name

SELECT productID, productName, unitPrice, UnitsOnOrder
FROM products
WHERE UnitsOnOrder <= 1
ORDER BY productName ASC;

-- 8. What is the name of the table that holds the types (categories) of the items Northwind sells?

SELECT *
FROM categories

