use sales;

show tables;

describe customers;  # customer_code
describe date;  # date transactionsproduct_codeproduct_code
describe markets;  # markets_code
describe products; # product_code
describe transactions;  # product_code, customer_code, market_code, order_date

select * from transactions;
select * from products;
select * from customers;
select * from markets;
select * from date;


select * from transactions
where product_code='Prod001';

select distinct customer_type, custmer_name from customers;

select product_code, market_code, customer_code, sales_qty, sales_amount from transactions
where customer_code = 'Cus007'
order by sales_amount desc;

select * from transactions
where sales_qty is not null;

select  * from transactions
where sales_amount > 10000
order by sales_amount desc
limit 10;

select min(sales_amount), max(sales_amount) from transactions;

select avg(sales_qty) from transactions;

select sum(sales_amount) from transactions;

select count(distinct(sales_qty)) from transactions;

select * from customers
where custmer_name in ('Surge Stores','Nomad Stores');

select * from transactions
where customer_code in (select customer_code from customers where custmer_name like 'S%s');

select count(sales_amount) from transactions
where sales_amount between 100000 and 150000;

select * from date
where date between '2017-06-01' and '2017-06-14';

select * from customers
where custmer_name like 'S%';

select * from customers
where custmer_name like '%s';

select * from customers
where custmer_name like '%m%';

select * from customers
where custmer_name like 'S%s';

select * from customers
where custmer_name like '___a%';

select count(sales_amount) as sales_count from transactions
where sales_amount > 100000;

select customer_code,sum(sales_amount) as sum_of_sales_amount from transactions
group by customer_code
order by sum(sales_amount) desc;

select count(product_code),product_type from products
group by product_type;

select count(markets_code),zone from markets
group by zone;

select count(markets_code),zone from markets
group by zone
having count(markets_code) > 2;

select * from transactions;
select * from products;

select t.product_code, t.order_date,t.sales_qty,t.sales_amount, p.product_type from transactions as t
inner join products as p
on t.product_code = p.product_code
where t.sales_qty > 10
order by sales_qty desc, t.sales_amount desc;

select sum(t.sales_amount) as total_sales, sum(t.sales_qty) as total_quantity, m.zone, p.product_type,c.customer_type,
d.year from transactions as t
inner join markets as m on t.market_code = m.markets_code
inner join products as p on t.product_code = p.product_code
inner join customers as c on t.customer_code = c.customer_code
inner join date as d on t.order_date = d.date
where zone = 'North'
group by zone, product_type, customer_type,year
order by total_sales desc, year;

select * from products;

select t.market_code,t.customer_code,t.sales_qty,t.sales_amount,m.markets_name,m.zone from transactions as t
left join markets as m
on t.market_code = m.markets_code;

select t.market_code,t.customer_code,t.sales_qty,t.sales_amount,m.markets_name,m.zone from transactions as t
left join markets as m
on t.market_code = m.markets_code;

select t.market_code,t.customer_code,t.sales_qty,t.sales_amount,m.markets_name,m.zone from transactions as t
right join markets as m
on t.market_code = m.markets_code;

select t1.customer_code,t1.sales_amount,t2.customer_code,t2.sales_amount from transactions as t1, transactions as t2
where t1.customer_code = t2.customer_code;

select customer_code from transactions
union
select customer_code from customers;

select customer_code from transactions
union all
select customer_code from customers;

select product_code, sales_amount from transactions 
where product_code = all (
                          select product_code from products
                          where product_type = 'Own Brand');
select * from products;


select * into transactionbackup from transactions
where 1 = 0;


select  product_code, sales_qty,
case
	when sales_qty >=30 then 'Good'
    when sales_qty >=20 and sales_qty <30 then 'Average'
    else 'Poor'
end as Rating
from transactions
order by sales_qty desc;






















 






