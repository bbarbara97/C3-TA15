create database ud15ex4;
use ud15ex4;

create table Cajeros(
Codigo int, 
Nombre_Apellidos nvarchar(225),
PRIMARY KEY (Codigo)
);

insert into Cajeros values (1,'Fernando Alonso'), 
(2,'Rafael Nadal'), (3,'Antonio Sanchez'), 
(4,'Pedro Picapiedra'), (10,'Elsa Pataki'),
(5,'Alfonso Fernandez'), (9,'Mariano Rajoy'),
(6,'Bárbara Broto'),(8,'Oriol Andreazini'),
(7,'Pau Besora');
select * from Cajeros;

create table Productos(
Codigo int, 
Nombre nvarchar(100),
Precio int,
PRIMARY KEY (Codigo)
);

insert into Productos values (1, "Croquetas", 5),
(2, "Tenedor", 15), (7, "Auriculares", 50),
(4, "Ordenador", 1005), (8, "Espejo", 61),
(3, "Cortinas", 100), (9, "Botella", 10),
(5, "Pijama", 35), (10, "Ventilador", 20),
(6, "Colchón", 250);
select * from Productos;

create table Maquinas_Registradoras(
Codigo int, 
Piso int,
PRIMARY KEY (Codigo)
);

insert into Maquinas_Registradoras values (1,1),
(2,1), (5,2), (6,5), (9,4), (10,4),
(3,3), (4,2), (7,5), (8,3);
select * from Maquinas_Registradoras;

create table Ventas(
Cajero int,
Maquina int,
Producto int,
CONSTRAINT FK_IDCajero FOREIGN KEY (Cajero) REFERENCES Cajeros(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_IDMaquina FOREIGN KEY (Maquina) REFERENCES Maquinas_Registradoras(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT FK_IDProducto FOREIGN KEY (Producto) REFERENCES Productos(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);

insert into Ventas values (1,3,5), (1,2,4), (2,4,6), (7,8,1), (6,2,9),
(5,2,1), (3,10,2), (10,5,9), (7,2,1), (4,6,5);
update Cajeros set Nombre_Apellidos='Amaia Montero' WHERE Codigo=1;
delete from Maquinas_Registradoras where Codigo=3;
select * from Ventas;