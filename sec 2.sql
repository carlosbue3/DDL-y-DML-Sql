select p.nombre, p.precio, f.nombre
from productos as p
join fabricantes as f on p.Codigo_fabricante= f.Codigo;

select p.nombre, p.precio, f.nombre from productos as p join fabricantes as f on p.Codigo_fabricante= f.Codigo ORDER BY f.nombre asc; ;

select p.codigo, p.nombre, f.codigo, f.nombre from productos as p
join fabricantes as f on p.Codigo_fabricante= f.Codigo;

select p.nombre, p.precio, f.nombre from productos as p join fabricantes as f on p.Codigo_fabricante= f.Codigo ORDER BY p.precio asc limit 1; 

select p.nombre, p.precio, f.nombre
from productos as p 
join fabricantes as f on p.Codigo_fabricante= f.Codigo ORDER BY p.precio DESC limit 1; 

select p.nombre
from productos as p 
join fabricantes as f on p.Codigo_fabricante= f.Codigo where f.nombre LIKE '%Lenovo%'; 

select p.nombre
from productos as p 
join fabricantes as f on p.Codigo_fabricante= f.Codigo where f.nombre LIKE '%crucial%' and p.precio >200; 

select p.nombre
from productos as p 
join fabricantes as f on p.Codigo_fabricante= f.Codigo where f.nombre = 'Asus'  or f.nombre= 'Hewlett-Packard' or f.nombre= 'Seagate'; 

select p.nombre
from productos as p 
join fabricantes as f on p.Codigo_fabricante= f.Codigo where f.nombre in ('Asus','Hewlett-Packard','Seagate');

select p.nombre, p.precio
from productos as p 
join fabricantes as f on p.Codigo_fabricante= f.Codigo where ucase(right(f.Nombre, 1))="e";

select p.nombre, p.precio
from productos as p 
join fabricantes as f on p.Codigo_fabricante= f.Codigo where f.nombre like '%W%';

select p.nombre, p.precio, f.nombre
from productos as p 
join fabricantes as f on p.Codigo_fabricante= f.Codigo where p.precio >= 180 ORDER BY p.precio DESC;

select p.nombre, p.precio, f.nombre
from productos as p 
join fabricantes as f on p.Codigo_fabricante= f.Codigo where p.precio >= 180 ORDER BY p.nombre asc;

select DISTINCT f.nombre, f.codigo
from productos as p 
join fabricantes as f on p.Codigo_fabricante= f.Codigo;



