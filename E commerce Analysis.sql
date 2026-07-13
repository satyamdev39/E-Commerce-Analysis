-- 1)to know about total data in our database:
SELECT COUNT(*) FROM ecommerce;
describe ecommerce;

-- 2)this query show our table upto 10:
select * from ecommerce
limit 10;

-- 3)this query shows filtering (for ex - show only electronics):
use e_commerce;
select * from ecommerce
where product_category = "Electronics";

-- 4)this query filter orders under 200:
select * from ecommerce
where unit_price < 200;

-- 5)this query sort data in descending order according to its prize:
select * from ecommerce
order by unit_price desc;

-- 6)top 10 most expensive prodcuts:
select * from ecommerce
order by unit_price desc
limit 10;

-- 7)to get avg price:
select avg(unit_price)
from ecommerce;

-- 8)to get maximum prize:
select max(unit_price)
from ecommerce;

-- 9) all payment done by wallet:
select * from ecommerce
where payment_method = "wallet";

-- 10) all payment done by card:
select * from ecommerce
where payment_method = "card";

-- 11) all payment done by COD(cash on deleivery):
select * from ecommerce
where payment_method = "cod";


-- 12) how much payment done by wallet (in numbers):
SELECT COUNT(*) AS wallet_payments
FROM ecommerce
WHERE payment_method = 'Wallet';

-- 13) how much payment done by Card (in numbers):
SELECT COUNT(*) AS cards_payments
FROM ecommerce
WHERE payment_method = "card";

-- 14) how much payment done by COD (in numbers):
SELECT COUNT(*) AS COD_payments
FROM ecommerce
WHERE payment_method = "cod";

-- 15) how much products sold in South Region:
select count(*) as south_region
from ecommerce
where region = "south"; #same goes with north,west,east 

-- 16) Average price by category:
SELECT product_category, AVG(unit_price) AS avg_price
FROM ecommerce
GROUP BY product_category;

-- 17) Number of products in each category or Which categories generate the highest sales?
SELECT product_category, COUNT(*) AS total_products
FROM ecommerce
GROUP BY product_category;

-- 18) average customer rating:
select avg(customer_rating)
from ecommerce;

-- 19) Which products have ratings above 4.5?
select * from ecommerce
where customer_rating > 4.5

