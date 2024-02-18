# Triggers

select * from mytable;

delimiter &&
create trigger salary_check
before insert on mytable
for each row
if new.salary < 0 then set new.salary = 20000;
end if; &&


insert into mytable
values (6, 'abc', 'M',25, -1000 ),
(7,'abb','F',23,-90);


