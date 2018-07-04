Create table Customers(
customer_id int,
customer_name varchar(50),
age varchar(20),
city varchar(50),
country varchar(50)
);


create table Orders(
order_id int,
customer_id int,
product_id int,
quantity int,
sum int
);


insert into customers(customer_id,customer_name,age,city,country)
values ('8','Hugh Jackman','47','Sidney','Australia')



select*
from Customers

select *
from Orders

select c.customer_name
from Customers c join Orders o
on c.customer_id=o.customer_id


select c.customer_name
from Customers c left join Orders o
on c.customer_id=o.customer_id
where o.customer_id is null


select c.customer_name
from Customers c left join Orders o
on c.customer_id=o.customer_id
where o.customer_id is not null


select c.customer_name
from Customers c join Orders o
on c.customer_id=o.customer_id
where sum>=1000


select customer_name
from Customers
where customer_id in
(select customer_id
from orders)


select customer_name
from customers
where customer_id not in
(select customer_id
from orders)

select customer_name
from Customers 
where customer_id in
(select customer_id
from orders
where sum>=1000)






