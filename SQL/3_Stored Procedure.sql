# Stored procedure

delimiter &&
create procedure top_10_sales()
begin
select product_code, market_code, sales_qty, sales_amount from transactions
where sales_amount > 100000
order by sales_amount desc
limit 10;
end &&
delimiter ;

call top_10_sales();

delimiter &&
create procedure market_city(in var varchar(45))
begin
select * from markets
where zone = var;
end &&
delimiter ;

call market_city('Central');

select * from mytable;
describe mytable;

delimiter &&
create procedure update_value(in name varchar(25), in temp_gender varchar(1))
begin
update mytable
set first_name = name, gender = temp_gender
where id = 6;
end &&
delimiter ;

call update_value('sam','F');



