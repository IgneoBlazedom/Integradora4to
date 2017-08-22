show databases;
use registro;
show tables;
describe datos;
select * from datos where nombre = 'Lol' and contra = 111;
delimiter $$
create procedure busca(usuario varchar(50),contra int(4))
begin
select * from datos where nombre = usuario and contra = contra;
end$$
delimiter ;