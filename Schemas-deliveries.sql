create table customer (
customerid int auto_increment not null,
customerfullname varchar(50) not null,
customeremail varchar(50) not null,
primary key (customerid)
);

create table orders (
orderid int auto_increment not null,
ordernumber int not null,
customerid int not null,
orderdate date not null,
primary key (orderid),
foreign key (customerid) references customer (customerid)
);

insert into customer (customerfullname, customeremail)
values ("Debbie Duncan", "dduncan@yahoo.com");

insert into orders (ordernumber, customerid, orderdate)
values ("020149", "1", "2024-02-14");

-- update statement
update orders
set orderdate = "2024-02-13"
where orderid = 2;

select * from orders;

-- delete statement
delete from orders
where orderid = 1;

