create table racetrack (
racetackid int auto_increment not null, -- automatically generates a unique number
name varchar(50) not null,
city varchar(50) not null, 
-- attributes
primary key(racetackid)
);

create table race (
raceid int auto_increment not null, -- automatically generates a unique number
racetackid int not null,
name varchar(50) not null,
date date not null,
-- attributes
primary key(raceid),
foreign key(racetackid) references racetrack (racetackid)
);

insert into racetrack (name, city)
values ("Red bull Ring", "Spielberg"),
("Hungeroring", "Budapest");
    
insert into race (racetrackid, name, date)
values (1, "Austria 2020", "2020-07-05"),
(2, "Hungray 2020", "2020-07-19");

select * from race;