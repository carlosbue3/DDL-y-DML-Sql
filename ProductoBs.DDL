create database ProductosBs;
Use ProductosBs;

create table Fabricantes(
CodigoF int auto_increment primary key,
Nombre varchar(100)
);
create table Productos(
Codigo int auto_increment primary key,
Nombre varchar(100),
Precio double,
CodigoF Int
);

alter table Productos
ADD Constraint FK_CodigoF
foreign key (CodigoF) references Fabricantes(CodigoF);



