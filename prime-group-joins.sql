-- These are the text-base responses to the assign questions

-- TASKS
-- Get all customers and their addresses.
SELECT "customers".first_name, "customers".last_name, "addresses".street, "addresses".city, "addresses".state, "addresses".zip
FROM "customers"
JOIN "addresses" ON "customers".id = "addresses".id;


-- Get all orders and their line items (orders, quantity and product).
SELECT "orders".id AS "Order_Number", "line_items".quantity
, "products".description
FROM "orders"
JOIN "line_items" ON "orders".id = "line_items".id 
JOIN "products" ON "line_items".product_id = "products".id;


-- Which warehouses have cheetos?
SELECT "warehouse".warehouse
FROM "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "warehouse_product".product_id = "products".id
WHERE "products".description = 'cheetos';


-- Which warehouses have diet pepsi?
SELECT "warehouse".warehouse
FROM "warehouse"
JOIN "warehouse_product" ON "warehouse".id = "warehouse_product".warehouse_id
JOIN "products" ON "warehouse_product".product_id = "products".id
WHERE "products".description = 'diet pepsi';


-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT "customers".first_name, "customers".last_name, count("orders".id) AS "Total_Orders"
FROM "customers"
JOIN "addresses" ON "customers".id = "addresses".customer_id
JOIN "orders" ON "addresses".id = "orders".address_id
GROUP BY "customers".first_name, "customers".last_name
ORDER BY "customers".last_name;


-- How many customers do we have?
SELECT count("customers".id) 
FROM "customers";


-- How many products do we carry?
SELECT count("products".id) 
FROM "products";


-- -- STRETCH
-- How much was the total cost for each order? 


-- How much has each customer spent in total?



-- How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).