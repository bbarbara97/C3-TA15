create database ud15ex1;
use ud15ex1;

create table Despachos(
Numero int PRIMARY KEY,
Capacidad int
);

insert into Despachos values (1,5), (2,10), (3,3), (4, 1), (5,2), (6,10), (7,15), (8,20), (9,6), (10,8);

create table Directores(
DNI varchar(8) PRIMARY KEY,
NomApels varchar(255),
DNIJefe varchar(8) NULL,
Despacho int,
CONSTRAINT FK_DirectorJefe FOREIGN KEY (DNIJefe) REFERENCES Directores(DNI)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_DespachoDirector FOREIGN KEY (Despacho) REFERENCES Despachos(Numero)
ON DELETE CASCADE ON UPDATE CASCADE
);
update Directores set DNI='28345295' where DNI = '28345294';

insert into Directores values ('28345294', 'Pau Besora', null, 1), 
('57384913', 'Oriol Andreazini', '28345294', 2),
('75834234', 'Bárbara Broto', '57384913', 3),
('89034234', 'Fernando Alonso', '75834234', 4),
('74532196', 'Rafael Nadal', '89034234', 5),
('78394241', 'Antonio Sanchez', '74532196', 6),
('85920384', 'Pedro Picapiedra', '78394241', 7),
('72940581', 'Elsa Pataki', '85920384', 8),
('95829572', 'Alfonso Fernandez', '72940581', 9),
('85729472', 'Mariano Rajoy', '95829572', 10);
update Directores set NomApels='Antonio Orozco' WHERE DNI='95829572';
delete from Directores where DNI='85729472';
select * from Directores;