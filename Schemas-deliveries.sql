create table customer (
customerid int auto_increment not null,
customerfullname varchar(50) not null,
customeremail varchar(50) not null,
primary key (customerid)
);

create table orders (
orderid int auto_increment not null,
ordernumber int not null,
customerid int auto_increment not null,
orderdate date not null,
primary key (orderid),
foreign key (customerid) references customer (customerid)
);

insert into customer (customerid, customerfullname, customeremail)
values (1, "Debbie Duncan", "dduncan@yahoo.com");

insert into orders (orderis, ordernumber, customerid, orderdate)
values (1, 020149, 1, 2024-02-14);

select * from customer;
