CREATE DEFINER=`root`@`localhost` PROCEDURE `ProducProc`(
in Nombre varchar(100),
in Precio double,
in CodigoF int

)
BEGIN
insert into productos(Nombre,Precio,CodigoF)
values (Nombre,Precio,CodigoF);
END