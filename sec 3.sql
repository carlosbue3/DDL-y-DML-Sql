select  f.nombre, p.nombre
from productos as p
right join fabricantes as f on p.Codigo_fabricante= f.Codigo;

select  f.nombre, p.nombre
from productos as p
right join fabricantes as f on p.Codigo_fabricante= f.Codigo
where p.Codigo_fabricante is null

