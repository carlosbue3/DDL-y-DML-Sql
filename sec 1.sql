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

Select Codigo_fabricante as "fabricantes" from Productos;

SELECT DISTINCT Codigo_fabricante as "fabricantes" FROM productos;

SELECT Nombre FROM fabricantes ORDER BY Codigo_fabricante ASC;

SELECT Nombre FROM fabricantes ORDER BY Codigo_fabricante DESC;

SELECT Nombre as "Primer Lugar" FROM Productos ORDER BY Codigo ASC;

SELECT Nombre as "segundo Lugar" FROM Productos ORDER BY Precio DESC;

SELECT *  FROM fabricantes limit 5;

select * from fabricantes limit 3 offset 3;

SELECT Nombre, precio FROM Productos ORDER BY precio ASC limit 1;

SELECT Nombre, precio FROM Productos ORDER BY precio DESC limit 1;

SELECT Nombre FROM productos WHERE Codigo_fabricante = 2;

SELECT Nombre FROM productos WHERE Precio <= 120;

SELECT Nombre FROM productos WHERE Precio >= 400;

SELECT Nombre FROM productos WHERE Precio <= 400;

SELECT Nombre FROM Productos WHERE Precio > 80 AND Precio <= 300;

SELECT Nombre FROM productos WHERE Precio BETWEEN 60 and 200 ;

SELECT Nombre FROM Productos WHERE Precio > 200 AND Codigo_fabricante = 6;

SELECT Nombre FROM productos WHERE Codigo_fabricante =1 or Codigo_fabricante =3 or Codigo_fabricante =5;

SELECT Nombre FROM productos WHERE Codigo_fabricante IN (1, 3, 5);

Select Nombre,precio, (precio * 100) as "centimos" from Productos;

select Nombre from fabricantes where ucase(left(Nombre, 1))="s";

select Nombre from fabricantes where ucase(right(Nombre, 1))="e";

select Nombre from fabricantes where ucase(left(Nombre,10))="W";

SELECT Nombre FROM fabricantes WHERE Nombre LIKE '%W%';

select Nombre from fabricantes where length(nombre)=4;

SELECT Nombre FROM productos WHERE Nombre LIKE '%Portatil%';

SELECT Nombre FROM productos WHERE precio <215 and Nombre LIKE '%monitor%';

SELECT Nombre,precio FROM productos WHERE precio >=180 ORDER BY precio DESC;

SELECT Nombre,precio FROM productos WHERE precio >=180 ORDER BY Nombre ASC;	
