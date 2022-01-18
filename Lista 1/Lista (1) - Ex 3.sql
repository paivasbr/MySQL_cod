create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar (255) not null,
descrição varchar (255) not null,
ativo boolean,
primary key (id)
);

insert into tb_categoria (categoria,descrição) values ("fármacos","true");
insert into tb_categoria (categoria,descrição) values ("Higiene Pessoal","true");
insert into tb_categoria (categoria,descrição) values ("Beleza e Bem Estar","true");
insert into tb_categoria (categoria,descrição) values ("Manipulados","true");

create table tb_produtos(
id bigint not null auto_increment,
nome varchar (255) not null,
cadastro date,
quant_Estoq int,
preço decimal (6,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome,cadastro,quant_Estoq,preço,categoria_id) values ("Antibiótico",current_date(),1000, 20.56,1);
insert into tb_produtos (nome,cadastro,quant_Estoq,preço,categoria_id) values ("Shampoo",current_date(),50,22.15,2);
insert into tb_produtos (nome,cadastro,quant_Estoq,preço,categoria_id) values ("Maquiagem",current_date(),22,14.99,3);
insert into tb_produtos (nome,cadastro,quant_Estoq,preço,categoria_id) values ("Whey Protein",current_date(),30,64.99,4);

select * from tb_produtos;
select * from tb_produtos where preço > 50.00;
select * from tb_produtos where preço between 3.00 and 60.00;
select * from tb_produtos where nome like "%b%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;
