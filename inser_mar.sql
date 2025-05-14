CREATE DEFINER=`root`@`localhost` PROCEDURE `Inser_Mar`(
in Nombre varchar(100)

)
BEGIN
insert into fabricantes(Nombre)
values(Nombre);
END