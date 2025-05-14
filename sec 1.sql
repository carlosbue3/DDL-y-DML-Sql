Select Nombre from Productos ;

Select Nombre,precio from Productos;

select * from productos;

select Nombre, Precio, (Precio * 0.89) from Productos;

select Nombre, Precio as "precio en USD", (Precio * 0.89) as "Precio en EUR" from Productos;

select ucase(Nombre) as "Nombre", Precio from productos;

select lower(Nombre) as "Nombre", Precio from productos;

select Nombre ,ucase(left(Nombre, 2)) as "alias" from Fabricantes;

select Nombre, round(Precio,0) as "precio" from productos;

select Nombre, truncate(Precio, 0) from productos;

Select CodigoF as "fabricantes" from Productos;

SELECT DISTINCT CodigoF as "fabricantes" FROM productos;

SELECT Nombre FROM fabricantes ORDER BY CodigoF ASC;

SELECT Nombre FROM fabricantes ORDER BY CodigoF DESC;

SELECT Nombre as "Primer Lugar" FROM Productos ORDER BY Codigo ASC;

SELECT Nombre as "segundo Lugar" FROM Productos ORDER BY Precio DESC;

SELECT *  FROM fabricantes limit 5;

select * from fabricantes limit 3 offset 3;

SELECT Nombre, precio FROM Productos ORDER BY precio ASC limit 1;

SELECT Nombre, precio FROM Productos ORDER BY precio DESC limit 1;

SELECT Nombre FROM productos WHERE CodigoF = 2;

SELECT Nombre FROM productos WHERE Precio <= 120;

SELECT Nombre FROM productos WHERE Precio >= 400;

SELECT Nombre FROM productos WHERE Precio <= 400;

SELECT Nombre FROM Productos WHERE Precio > 80 AND Precio <= 300;

SELECT Nombre FROM productos WHERE Precio BETWEEN 60 and 200 ;

SELECT Nombre FROM Productos WHERE Precio > 200 AND CodigoF = 6;

SELECT Nombre FROM productos WHERE CodigoF =1 or codigof =3 or codigof =5;

SELECT Nombre FROM productos WHERE CodigoF IN (1, 3, 5);

Select Nombre,precio, (precio * 100) as "precio en centimos" from Productos;



