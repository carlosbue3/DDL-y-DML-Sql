select p.nombre,f.nombre from productos as p, fabricantes as f
where p.codigo_fabricante=f.codigo and f.nombre="lenovo";

select p.* from productos as p, fabricantes as f
where p.codigo_fabricante=f.codigo and f.nombre="lenovo" and p.precio=559; 

select p.nombre, max(p.precio) ,f.nombre from productos as p, fabricantes as f
where p.codigo_fabricante=f.codigo and f.nombre="lenovo";

select p.nombre, min(p.precio) ,f.nombre from productos as p, fabricantes as f
where p.codigo_fabricante=f.codigo and f.nombre="Hewlett-Packard";

SELECT p.nombre FROM productos as p, fabricantes as f
WHERE precio >= (
	SELECT MAX(precio) FROM productos
    WHERE f.nombre = 'Lenovo');
    
SELECT * FROM productos
WHERE Codigo_fabricante = (
    SELECT codigo FROM fabricantes
    WHERE nombre = 'Asus'
)
AND precio > (
    SELECT AVG(precio) FROM productos
    WHERE Codigo_fabricante = (
        SELECT codigo FROM fabricantes
        WHERE nombre = 'Asus'
    )
);

SELECT * FROM productos as P1
WHERE NOT EXISTS (
	SELECT 1 FROM productos as P2
    WHERE P2.precio > P1.precio
);

SELECT * FROM productos as P1
WHERE NOT EXISTS (
	SELECT 1 FROM productos as P2
    WHERE P2.precio < P1.precio
);

SELECT nombre FROM fabricantes as f
WHERE f.codigo = ANY (
    SELECT p.Codigo_fabricante FROM productos as p
);

SELECT nombre FROM fabricantes as f
WHERE f.codigo <> ALL (
    SELECT p.Codigo_fabricante FROM productos as p
);

SELECT nombre FROM fabricantes as f
WHERE f.codigo IN (
    SELECT p.Codigo_fabricante FROM productos as p
);

SELECT nombre FROM fabricantes as f
WHERE f.codigo NOT IN (
    SELECT p.Codigo_fabricante FROM productos as p
);

SELECT nombre FROM fabricantes as f
WHERE EXISTS (
    SELECT 1 FROM productos as p
    WHERE p.Codigo_fabricante = f.codigo
);

SELECT nombre FROM fabricantes as f
WHERE NOT EXISTS (
    SELECT 1 FROM productos as p
    WHERE p.Codigo_fabricante = f.codigo
);

SELECT f.nombre as fabricante, p.nombre as producto, p.precio FROM fabricantes f, productos p
WHERE f.codigo = p.codigo_fabricante AND p.precio = (
        SELECT MAX(p.precio) FROM productos as p
        WHERE p.codigo_fabricante = f.codigo
);
SELECT nombre, precio, codigo_fabricante
FROM productos as p
WHERE precio >= (
    SELECT AVG(p2.precio)
    FROM productos as p2
    WHERE p2.codigo_fabricante = p.codigo_fabricante
);

select p.nombre, max(p.precio) ,f.nombre from productos as p, fabricantes as f
where p.codigo_fabricante=f.codigo and f.nombre="lenovo";

SELECT nombre FROM fabricantes
WHERE codigo IN (
    SELECT codigo_fabricante FROM productos
    GROUP BY codigo_fabricante
    HAVING COUNT(*) = (
        SELECT COUNT(*) FROM productos
        WHERE codigo_fabricante = (
            SELECT codigo FROM fabricantes
            WHERE nombre = 'Lenovo'
        )
    )
);



