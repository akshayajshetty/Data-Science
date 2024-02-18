# Views

create view trasaction_details
as
select t.product_code, t.order_date,t.sales_qty,t.sales_amount, p.product_type from transactions as t
inner join products as p
on t.product_code = p.product_code
where t.sales_qty > 10
order by sales_qty desc, t.sales_amount desc;

select * from trasaction_details;

show full tables
where Table_type = 'VIEW';