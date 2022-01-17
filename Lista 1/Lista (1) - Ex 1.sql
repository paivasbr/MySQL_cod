create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
poder varchar(30) not null,
pontuação bigint not null,
primary key (id)
);

insert into tb_classe (poder,pontuação) values ("Controle do Fogo",200);
insert into tb_classe (poder,pontuação) values ("Controle do Gelo",175);
insert into tb_classe (poder,pontuação) values ("Braços Mecânicos",200);
insert into tb_classe (poder,pontuação) values ("Trovão e Relâmpago",125);
insert into tb_classe (poder,pontuação) values ("Magias Derivadas do Ar",100);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
pontoDeAtaque int not null,
pontoDeDefesa int not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem (nome,pontoDeAtaque,pontoDeDefesa,classe_id) value ("Scorpion",1000,1000,1);
insert into tb_personagem (nome,pontoDeAtaque,pontoDeDefesa,classe_id) value ("Sub-Zero",1200,500,2);
insert into tb_personagem (nome,pontoDeAtaque,pontoDeDefesa,classe_id) value ("Jax Briggs",800,1000,3);
insert into tb_personagem (nome,pontoDeAtaque,pontoDeDefesa,classe_id) value ("Lord Raiden",900,200,4);
insert into tb_personagem (nome,pontoDeAtaque,pontoDeDefesa,classe_id) value ("Kitana",500,150,5);

select * from tb_personagem where pontoDeAtaque > 2000;
select * from tb_personagem where pontoDeDefesa between 1000 and 2000;
select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.pontoDeAtaque, tb_personagem.pontoDeDefesa, tb_classe.poder, tb_classe.pontuação from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
select tb_personagem.nome, tb_personagem.pontoDeAtaque, tb_personagem.pontoDeDefesa, tb_classe.poder, tb_classe.pontuação from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 1;