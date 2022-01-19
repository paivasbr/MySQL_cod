create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
produtos varchar (255) not null,
ativo boolean not null,
primary key (id)
 );
 
insert into tb_categoria (produtos,ativo) values ("Eletrônicos", true);
insert into tb_categoria (produtos,ativo) values ("Vestuário", true);
insert into tb_categoria (produtos,ativo) values ("Saúde e Bem Estar", true); 

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preço decimal (6,2) not null,
q_produtos bigint not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome,preço,q_produtos,categoria_id) values ("Smartphone",2000.00,500,1);
insert into tb_produtos (nome,preço,q_produtos,categoria_id) values ("SmartTV",7800.00,12,1);
insert into tb_produtos (nome,preço,q_produtos,categoria_id) values ("Tablet",3500.00,34,1);
insert into tb_produtos (nome,preço,q_produtos,categoria_id) values ("Camisetas",29.99,100,2);
insert into tb_produtos (nome,preço,q_produtos,categoria_id) values ("Batom",39.99,60,3);

select * from tb_produtos;
select * from tb_produtos where preço > 50.00;
select * from tb_produtos where preço between 3 and 60;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 1;





