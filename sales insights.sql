SELECT * FROM sales.transactions;

-- 'HOW MANY RECORDS INTRANSACTION'
SELECT count(*) from sales.transactions

-- 'HOW MANY RECORDS IN CUSTOMERS'
select count(*) from sales.customers;

-- 'TRANSACTIONS FROM CHENNAI'
select *
from sales.transactions
where market_code = 'Mark001'

-- 'HOW MANY TRANSACTIONS FROM CHENNAI'
select count(*)
from sales.transactions
where market_code = 'Mark001'

-- 'HOWMANY TRANSACTION USD CURRENCY'
select *
from sales.transactions
where currency='USD'

-- 'HOW MANY TRANSACTIONS HAPPEND IN 2020' USD IS IS NOT IN RECORDS
select sales.transactions.*, sales.date.*
from sales.transactions 
inner join
sales.date
on
sales.transactions.order_date=sales.date.date
where sales.date.year=2020 

select sum(sales.transactions.sales_amount)
from sales.transactions 
inner join
sales.date
on
sales.transactions.order_date=sales.date.date
where sales.date.year=2020

-- 'HOW MANY TRANSACTIONS HAPPEND IN CHENNAI 2020'
select sales.transactions.*, sales.date.*
from sales.transactions
inner join
sales.date
on
sales.transactions.order_date=sales.date.date
where sales.date.year=2020
and
sales.transactions.market_code='Mark001'

 

-- 'UNIQUE PRODUCTS SOLD IN CHENNAI'
select distinct(product_code)
from sales.transactions
where sales.transactions.market_code='mark001'

-- 'TOTAL REVENUE IN YEAR 2020, JANUARY MONTH'
select sales.transactions.*, sales.date.*
from sales.transactions
inner join
sales.date
on
sales.transactions.order_date=sales.date.date
where sales.date.month_name='January'

select sum(sales.transactions.sales_amount)
from sales.transactions
inner join
sales.date
on sales.transactions.order_date=sales.date.date
where sales.date.month_name='January'

--


