create database escola;
use escola;
create table Estudantes(
	id int,
    nome varchar(40),
    idade int,
    data_nascimento date,
    primary key(id)
);

insert into estudantes values
(1,'paula pinto',20,'2004-10-28'),
(2,'juliana abreu',18,'2006-8-15'),
(3,'levi ackerman',36,'1988-6-8');

update estudantes 
set idade = 12,data_nascimento ='2012-8-15'
where id = 2;

select * from estudantes;

set SQL_SAFE_UPDATES=0;

delete from estudantes where idade > 35;

select sum(idade) AS total_idades 
from estudantes;

select sum(idade) AS Total_idades_maiores_18
from estudantes
where idade>18;

select count(*) AS Total_estudantes from estudantes;

select count(*) AS Total_estudantes from estudantes where idade>20;

create table sum (
	pedido_id int,
    empresa varchar(20),
    quantidade int
);

insert into sum values
(1,'A',20),
(2,'B',50),
(3,'B',50);

insert into sum values
(4,'B',NULL);

insert into sum values
(5,'C',NULL);

insert into sum values
(6,'A',20),
(7,'C',70);

select sum(quantidade) AS sum_total from sum;

select empresa, sum(quantidade) AS sum_total 
from sum
group by empresa;

select avg(quantidade) AS media_quantidade from sum;

select empresa,avg(quantidade) AS media_empresa 
from sum
group by empresa;

create table minmax (
	pedido_id int,
    cliente varchar(20),
    data_nascimento date
);

insert into minmax values
(1,'paula dias','2000-11-1'),
(2,'thomas mascareño','1999-10-3');

select min(data_nascimento) from minmax;

select max(data_nascimento) from minmax;



