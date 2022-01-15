create database e_commerce;
use e_commerce;

create table produtos(
id bigint auto_increment,
Eletrônico varchar (30) not null,
Acessórios varchar(30) not null,
Valor decimal (6,2) not null,
primary key (id)
);

insert into produtos (Eletrônico,Acessórios,Valor) values ("Notbook", "Mochila Adaptada", 9000.00);
insert into produtos (Eletrônico,Acessórios,Valor) values ("Tablet", "Caneta S Pen", 2000.00);
insert into produtos (Eletrônico,Acessórios,Valor) values ("Celular", "Capa e Pelicula", 1200.00);
insert into produtos (Eletrônico,Acessórios,Valor) values ("Echo Dot", "Cabo para Tv", 399.00);
insert into produtos (Eletrônico,Acessórios,Valor) values ("Smart TV", "Suporte Fixo", 3859.04);
insert into produtos (Eletrônico,Acessórios,Valor) values ("Hoverboard", "Fonte Bivolt", 879.00);

select * from produtos where Valor > 500.00;
select * from produtos where Valor < 500.00;
update produtos set Valor = 2000.00 where id=5;