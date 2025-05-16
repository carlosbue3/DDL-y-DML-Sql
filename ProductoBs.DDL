create database ProductosBs;
Use ProductosBs;

create table Fabricantes(
Codigo int auto_increment primary key,
Nombre varchar(100)
);
create table Productos(
Codigo int auto_increment primary key,
Nombre varchar(100),
Precio double,
Codigo_fabricante Int
);

alter table Productos
ADD Constraint FK_Codigo_fabricante
foreign key (Codigo_fabricante) references Fabricantes(Codigo);