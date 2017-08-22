create database registro;
use registro;
create table datos(
	nombre varchar(50),
    contra int (4) primary key,
    domicilio varchar(40),
    delegacion varchar(20),
    colonia varchar(20),
    correo varchar(30),
    telefono int(12),
    sexo varchar(20)
);

alter table datos modify telefono varchar(12);

delete from datos where contra = '9000';

show tables;
describe datos;
select * from datos;