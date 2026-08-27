-- create tables
create table resourcetype (
resourcetypeid int auto_increment not null,
name varchar(50) not null,
abbreviation char(10) not null,
value decimal(3, 2), -- size (100), d (0,00)
-- attributes
primary key (resourcetypeid)
);

select * from buildingcomponent;

create table buildingcomponenttype (
buildingcomponenttypeid int auto_increment not null,
name varchar(50) not null,
-- attributes
primary key (buildingcomponenttypeid)
);

create table buildingcomponent (
buildingcomponentid int auto_increment not null,
resourcetypeid int not null,
buildingcomponenttypeid int not null,
name varchar(50) not null,
-- attributes
primary key (buildingcomponentid),
foreign key (resourcetypeid) references resourcetype (resourcetypeid),
foreign key (buildingcomponenttypeid) references buildingcomponenttype (buildingcomponenttypeid)
);

-- populate any tables (example)
insert into resourcetype (name, abbreviation, value) -- name, abbreviation, value
values 
("Thermal Conductivity", "k", 0.13),
("Density", "p", 800),
("Compressive Strength", "fc", 30),
("Fire Resistance Rating", "frr", 2);

insert into buildingcomponenttype (name) -- name
values 
("Wall"),
("Wall"),
("Slab"),
("Column");

insert into buildingcomponent (name) -- name
values 
("Exterior North Wall"),
("Exterior North Wall"),
("Ground Floor Slab"),
("Main Lobby Pillar");
