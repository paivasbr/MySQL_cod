create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (tipo,ativo) values ("Banana",true);
insert into tb_categoria (tipo,ativo) values ("Mamão",true);
insert into tb_categoria (tipo,ativo) values ("Abacaxi",true);
insert into tb_categoria (tipo,ativo) values ("Abacate",true);
insert into tb_categoria (tipo,ativo) values ("Cupuaçu",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
preço decimal (5,2) not null,
qt_Produto int not null,
dt_Validade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (preço,qt_Produto,dt_Validade,categoria_id) values (19.99,30,"2021-03-12",1);
insert into tb_produtos (preço,qt_Produto,dt_Validade,categoria_id) values (7.00,50,"2021-02-20",2);
insert into tb_produtos (preço,qt_Produto,dt_Validade,categoria_id) values (15.00,70,"2021-05-03",3);
insert into tb_produtos (preço,qt_Produto,dt_Validade,categoria_id) values (8.00,100,"2021-03-10",4);
insert into tb_produtos (preço,qt_Produto,dt_Validade,categoria_id) values (10.00,15,"2021-04-17",5);

select * from tb_produtos;
select * from tb_produtos where preço > 50;
select * from tb_produtos where preço between 3 and 60;
select * from tb_categoria where tipo like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id =5;






