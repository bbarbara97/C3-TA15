create database ud15ex5;

use ud15ex5;

create table Facultades(
Codigo int, 
Nombre varchar(100),
PRIMARY KEY (Codigo)
);

insert into Facultades values (1, 'URV');
insert into Facultades values (2, 'UOC');
insert into Facultades values (3, 'UdG');
insert into Facultades values (4, 'UB');
insert into Facultades values (5, 'UPC');
insert into Facultades values (6, 'UdL');
insert into Facultades values (7, 'UVic');
insert into Facultades values (8, 'UPF');
insert into Facultades values (9, 'UAB');
insert into Facultades values (10, 'UIC');

select * from Facultades; 

create table Investigadores(
DNI varchar(8), 
Nombre_Apellidos varchar(255),
Facultad int,
CONSTRAINT FK_IDFacultad FOREIGN KEY (Facultad) REFERENCES Facultades(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (DNI)
);

insert into Investigadores values ('1234567A', 'Fernando Alonso', '1');
insert into Investigadores values ('2345670B', 'Rafael Nadal', '2');
insert into Investigadores values ('9876543P', 'Antonio Sanchez', '3');
insert into Investigadores values ('4567891B', 'Pedro Picapiedra', '4');
insert into Investigadores values ('6547893Z', 'Elsa Pataki', '5');
insert into Investigadores values ('8527413U', 'Mariano Rajoy', '6');
insert into Investigadores values ('9638521A', 'Alfonso Fernandez', '7');
insert into Investigadores values ('4852369F', 'Bárbara Broto', '8');
insert into Investigadores values ('2685941D', 'Pau Besora', '9');
insert into Investigadores values ('5896742Y', 'Oriol Andreazini', '10');

select * from Investigadores; 

create table Equipos(
NumSerie char(8), 
Nombre varchar(100),
Facultad int,
CONSTRAINT FK_FacultadID FOREIGN KEY (Facultad) REFERENCES Facultades(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (NumSerie)
);

insert into Equipos values ('5566778Y', 'Universidad Tecnologico', '10');
insert into Equipos values ('9988774L', 'En Recerca', '9');
insert into Equipos values ('9876543P', 'Los Investigadores', '8');
insert into Equipos values ('4466773H', 'La Busqueda', '7');
insert into Equipos values ('6938527T', 'Universidad de Recerca', '6');
insert into Equipos values ('8529517I', 'Open your Mind', '5');
insert into Equipos values ('8975364K', 'The crazy ones', '4');
insert into Equipos values ('9857821L', 'In search', '3');
insert into Equipos values ('7539514O', 'The seekers', '2');
insert into Equipos values ('4863277L', 'En la busqueda', '1');

select * from Equipos; 

create table Reservas(
DNI varchar(8), 
NumSerie char(8),
Comienzo datetime,
Fin datetime,
CONSTRAINT FK_IDInvestigadores FOREIGN KEY (DNI) REFERENCES Investigadores(DNI)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_IDIEquipos FOREIGN KEY (NumSerie) REFERENCES Equipos(NumSerie)
ON DELETE CASCADE ON UPDATE CASCADE
);

insert into Reservas values ('1234567A', '4863277L', '2021/12/10 10:12:35', '2022/02/10 15:12:20');
insert into Reservas values ('2345670B', '7539514O', '2019/10/01 14:15:00', '2020/10/01 09:00:00');
insert into Reservas values ('9876543P', '9857821L', '2015/10/02 10:15:00', '2018/02/21 15:00:00');
insert into Reservas values ('4567891B', '8975364K', '2020/11/06 17:30:00', '2021/11/06 20:00:00');
insert into Reservas values ('6547893Z', '8529517I', '2019/10/05 10:30:00', '2022/06/30 16:00:00');
insert into Reservas values ('8527413U', '6938527T', '2018/02/15 07:00:00', '2019/12/31 18:30:00');
insert into Reservas values ('9638521A', '4466773H', '2019/12/25 15:00:00', '2020/10/11 12:00:00');
insert into Reservas values ('4852369F', '8855662A', '2021/02/18 08:30:00', '2022/06/05 13:30:00');
insert into Reservas values ('2685941D', '9988774L', '2022/01/25 12:30:00', '2022/12/30 15:20:30');
insert into Reservas values ('5896742Y', '5566778Y', '2019/10/12 15:15:00', '2021/10/30 10:30:00');

select * from Reservas; 

delete from Reservas where DNI='1234567A';

replace into Facultades values (10, 'UPI');