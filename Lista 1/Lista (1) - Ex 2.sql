create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
tipo varchar (30) not null,
borda varchar (30) not null,
primary key (id)
);

insert into tb_categoria (tipo,borda) values ("Grande", "Catupiry");
insert into tb_categoria (tipo,borda) values ("Média", "Romeu e Julieta");
insert into tb_categoria (tipo,borda) values ("Pequena", "Chocolate Branco");
insert into tb_categoria (tipo,borda) values ("Brotinho", "Cheddar");
insert into tb_categoria (tipo,borda) values ("Familía", "Sem borda");

create table tb_pizza(
id bigint auto_increment,
sabor varchar (30) not null,
massa varchar (30) not null,
preço decimal (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (sabor,massa,preço) values ("Nutella", "Grossa", 126.49);
insert into tb_pizza (sabor,massa,preço) values ("4 Queijos", "Grossa", 89.00);
insert into tb_pizza (sabor,massa,preço) values ("Pepperoni", "Fina", 70.49);
insert into tb_pizza (sabor,massa,preço) values ("Frango com Catupiry", "Sem Glúten", 100.00);
insert into tb_pizza (sabor,massa,preço) values ("Atum", "Fina", 39.49);
insert into tb_pizza (sabor,massa,preço) values ("Calabresa", "Grossa", 50.00);

select * from tb_pizza;
select * from tb_pizza where preço > 45.00;
select * from tb_pizza where preço between 29.00 and 60.00;
select * from tb_pizza where sabor like "%c%";

select tb_pizza.sabor,tb_pizza.massa,tb_pizza.preço,tb_categoria.tipo,tb_categoria.borda from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select tb_pizza.sabor,tb_pizza.massa,tb_pizza.preço,tb_categoria.tipo,tb_categoria.borda from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2 and 3;
