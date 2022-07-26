create database ud15ex3;
use ud15ex3;

create table Cientificos (
DNI varchar(8), 
Nombre_Apellidos varchar(225),
PRIMARY KEY (DNI)
);

create table Proyectos (
ID char(4),
Nombre varchar(225),
Horas int,
PRIMARY KEY (ID)
);

create table Asignado_A(
Cientifico varchar(8),
Proyecto char(4),
CONSTRAINT FK_DNIAsignadoA FOREIGN KEY (Cientifico) REFERENCES Cientificos(DNI)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_IDAsignadoA FOREIGN KEY (Proyecto) REFERENCES Proyectos(ID)
ON DELETE CASCADE ON UPDATE CASCADE
);


insert into Cientificos (DNI, Nombre_Apellidos) values
('34567232', 'Barbara Broto'),
('34564426', 'Oriol Andreazini'),
('34567442', 'Pau Besora'),
('39925632','Fernando Alonso'),
('38921251','Rafael Nadal'),
('37236671','Pablo Picasso'),
('39918723','Ariana Grande'),
('39978761','Pedro Picapiedra'),
('32215674','Alberto Contador'),
('35678909','Francesco Alony');

insert into Proyectos (ID, Nombre, Horas) values
('000A', 'Reacción de Caustificación', 200),
('001A', 'Humo al Vacío', 20),
('002A', 'Vortex Rings', 260),
('003A', 'Electrólisis de agua salada', 30),
('004A', 'Indicador de ácido-base', 60),
('005A', 'Globo no Newtoniano', 95),
('006A', 'RSlime', 650),
('007A', 'MK Ultra', 20),
('008A', 'MK Delta', 27),
('009A', 'MK Naomi', 210);

insert into Asignado_A (Cientifico, Proyecto) values 
('34567232', '009A'),
('34564426', '007A'),
('34567232', '008A'),
('39925632','004A'),
('38921251','006A'),
('37236671','006A'),
('39918723','005A'),
('39978761','002A'),
('32215674','001A'),
('35678909','000A');


update Cientificos set Nombre_Apellidos= 'Raúl Tamudo' where DNI='37236671';

update Proyectos set ID='003Z' where ID='009A';

delete from Proyectos where ID='003A';

select * from Proyectos;