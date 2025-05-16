SELECT count(*) FROM productos;

SELECT count(*) as "total de fabricantes" FROM fabricantes;

select count(distinct Codigo_fabricante) from productos;

select avg(Precio) from productos;

select min(Precio) from productos;

select max(precio) from productos;



select precio, nombre from productos where precio= (select min(precio) from productos);

select precio, nombre from productos where precio= (select max(precio) from productos);

select sum(precio) from productos;

select f.nombre, count(f.nombre) from productos as p
join fabricantes as f on p.Codigo_fabricante= f.Codigo
where f.nombre="asus";

select avg(Precio) from productos where Codigo_fabricante=1;

select f.nombre, p.nombre, min(precio) from productos as p
join fabricantes as f on p.Codigo_fabricante= f.Codigo
where f.nombre="asus";

select max(precio) from productos where Codigo_fabricante=1;

select f.nombre, p.nombre, sum(precio) from productos as p
join fabricantes as f on p.Codigo_fabricante= f.Codigo
where f.nombre="asus";

SELECT
    MAX(precio) AS precio_maximo,
    MIN(precio) AS precio_minimo,
    AVG(precio) AS precio_promedio,
    COUNT(*) AS total_productos
FROM productos 
WHERE codigo_fabricante = (SELECT codigo FROM fabricantes WHERE nombre = 'Crucial');

select f.nombre, count(p.codigo) from productos as p
right join fabricantes as f on p.Codigo_fabricante= f.Codigo
group by f.nombre
order by count(p.codigo) desc;


Select f.nombre,max(p.precio),min(p.precio),avg(p.precio)
from productos as p
right join fabricantes as f on p.Codigo_fabricante= f.Codigo
group by f.nombre;

Select f.codigo,max(p.precio),min(p.precio),avg(p.precio),count(p.codigo)
from productos as p
right join fabricantes as f on p.Codigo_fabricante= f.Codigo
where p.precio*0.89>200
group by f.nombre;

Select f.nombre,max(p.precio),min(p.precio),avg(p.precio),count(p.codigo)
from productos as p
right join fabricantes as f on p.Codigo_fabricante= f.Codigo
where p.precio*0.89>=200
group by f.nombre;

select count(nombre) from productos where precio*0.89 >=180;

select f.nombre, count(p.nombre) from productos as p
right join fabricantes as f on p.Codigo_fabricante= f.Codigo
where p.precio*0.89>=180
group by f.nombre;

select f.codigo, avg(p.precio) from productos as p
right join fabricantes as f on p.Codigo_fabricante= f.Codigo
group by f.codigo;

select f.nombre, avg(p.precio) from productos as p
right join fabricantes as f on p.Codigo_fabricante= f.Codigo
group by f.nombre;

select f.nombre from productos as p
join fabricantes as f on p.Codigo_fabricante= f.Codigo
group by f.nombre
having avg(p.precio) >=150;


select f.nombre,count(p.nombre) from productos as p
join fabricantes as f on p.Codigo_fabricante= f.Codigo
group by f.nombre
having count(p.nombre)>=2;

select f.nombre, count(p.nombre) from productos as p
right join fabricantes as f on p.Codigo_fabricante= f.Codigo
where (p.precio*0.8945)>=220 
group by f.nombre;

select f.nombre, count(case when (p.precio*0.8945)>=220 then 2 end ) as "total" from productos as p
left join fabricantes as f on p.Codigo_fabricante= f.Codigo
group by p.Codigo_fabricante
order by "total" desc;

select f.nombre from productos as p
join fabricantes as f on p.Codigo_fabricante= f.Codigo
group by f.nombre
having sum(p.Precio)*0.89>=1000;



Select  P.nombre, max(p.precio),f.nombre
from productos as p
left join fabricantes as f on p.Codigo_fabricante= f.Codigo
group by f.nombre asc;


