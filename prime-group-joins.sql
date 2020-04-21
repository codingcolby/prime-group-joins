-- These are the text-base responses to the assign questions

-- TASKS
-- Get all customers and their addresses.
SELECT "customers".first_name, "customers".last_name, "addresses".street, "addresses".city, "addresses".state, "addresses".zip
FROM "customers"
JOIN "addresses" ON "customers".id = "addresses".id;


-- Get all orders and their line items (orders, quantity and product).



-- Which warehouses have cheetos?



-- Which warehouses have diet pepsi?



-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.



-- How many customers do we have?



-- How many products do we carry?




-- -- STRETCH
-- How much was the total cost for each order?



-- How much has each customer spent in total?



-- How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).