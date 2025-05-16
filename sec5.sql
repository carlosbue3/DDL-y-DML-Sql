select p.nombre,f.nombre from productos as p, fabricantes as f
where p.codigo_fabricante=f.codigo and f.nombre="lenovo";

select p.* from productos as p, fabricantes as f
where p.codigo_fabricante=f.codigo and f.nombre="lenovo" and p.precio=559; 

select p.nombre, max(p.precio) ,f.nombre from productos as p, fabricantes as f
where p.codigo_fabricante=f.codigo and f.nombre="lenovo";

select p.nombre, min(p.precio) ,f.nombre from productos as p, fabricantes as f
where p.codigo_fabricante=f.codigo and f.nombre="Hewlett-Packard";

SELECT p.nombre
FROM productos as p, fabricantes as f
WHERE precio >= (
	SELECT MAX(precio)
    FROM productos
    WHERE f.nombre = 'Lenovo');
    
select p.nombre, min(p.precio) ,f.nombre from productos as p, fabricantes as f
where p.codigo_fabricante=f.codigo and f.nombre="Hewlett-Packard";
