# Index

create index myindex
on transactions (sales_amount);

alter table transactions
drop index myindex;

