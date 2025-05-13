Select Nombre from Productos;

Select Nombre,precio from Productos;

select * from productos;

select Nombre, Precio, (Precio * 0.89) from Productos;

select Nombre, Precio as "precio en USD", (Precio * 0.89) as "Precio en EUR" from Productos;

select ucase(Nombre) as "Nombre", Precio from productos;

select lower(Nombre) as "Nombre", Precio from productos;

select Nombre , ucase(left(Nombre, 2)) as "alias" from fabricantes;

select Nombre, round(Precio,0) as "precio" from productos


