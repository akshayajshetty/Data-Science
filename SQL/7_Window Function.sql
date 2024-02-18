# Window Function

select product_code, market_code, sales_qty,
sum(sales_amount) over(partition by customer_code) as sum_no
from transactions;


select *, row_number() over(order by sales_amount) as row_no
from transactions;

select *, rank() over(order by sales_amount) as ranking
from transactions;

select *, dense_rank() over(order by sales_amount desc) as ranking
from transactions;