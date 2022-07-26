show databases;
create database ud15ex2;
use ud15ex2;

create table Piezas(
Codigo int PRIMARY KEY,
Nombre varchar(100)
);

insert into Piezas values (1, 'Tuerca');
insert into Piezas values (2, 'Tornillo');
insert into Piezas values (3, 'Clavo');
insert into Piezas values (4, 'Junta');
insert into Piezas values (5, 'Arandela');
insert into Piezas values (6, 'Tuerca Mariposa');
insert into Piezas values (7, 'Tuerca Ciega');
insert into Piezas values (8, 'Tuerca AutoBlocante');
insert into Piezas values (9, 'Perno');
insert into Piezas values (10, 'Bisagras');

select * from Piezas;

create table Proveedores (
id char(4) PRIMARY KEY,
Nombre varchar(100)
);

insert into Proveedores values (1234, 'Bricotec');
insert into Proveedores values (2345, 'Bauhaus');
insert into Proveedores values (3456, 'Bricodepot');
insert into Proveedores values (4567, 'Yosmar');
insert into Proveedores values (5678, 'Saltoki');
insert into Proveedores values (6789, 'Guerrin');
insert into Proveedores values (7899, 'Isolana');
insert into Proveedores values (8987, 'Carlin');
insert into Proveedores values (9876, 'Bricomat');
insert into Proveedores values (1012, 'Bricomania');

select * from Proveedores;

create table Suministra (
CodigoPieza int,
idProveedor char(4),
Precio int,
CONSTRAINT FK_PiezaSuminis FOREIGN KEY (CodigoPieza) REFERENCES Piezas(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_ProveedorSuminis FOREIGN KEY (idProveedor) REFERENCES Proveedores(id)
ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (CodigoPieza, idProveedor)
);

insert into Suministra values (1, 1234, 3);
insert into Suministra values (2, 2345, 5);
insert into Suministra values (3, 3456, 4);
insert into Suministra values (4, 4567, 8);
insert into Suministra values (5, 5678, 10);
insert into Suministra values (6, 6789, 2);
insert into Suministra values (7, 7899, 7);
insert into Suministra values (8, 8987, 12);
insert into Suministra values (9, 9876, 6);
insert into Suministra values (10, 1012, 16);

select * from Suministra;

update  Piezas set Nombre ='Tuerca Hexagonal' where Codigo=1;
update  Piezas set Nombre ='Tornillo de Estrella' where Codigo=2;

update Proveedores set Nombre='Leroy' where id='1012';

delete from  Suministra where CodigoPieza=10;


