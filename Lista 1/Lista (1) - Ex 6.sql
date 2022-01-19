create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
área varchar (30) not null,
vaga bigint not null,
primary key (id)
);

insert into tb_categoria (área,vaga) values ("Humanas", 500);
insert into tb_categoria (área,vaga) values ("Exatas", 300);

select * from tb_categoria;

create table tb_curso (
id bigint auto_increment,
curso varchar (255) not null,
d_início date,
p_mensalidade decimal (7,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_curso (curso,d_início,p_mensalidade,categoria_id) values ("Engenharia Civil","2012-01-13", 2000.00,2);
insert into tb_curso (curso,d_início,p_mensalidade,categoria_id) values ("Direito","2015-06-25", 3500.00,1);
insert into tb_curso (curso,d_início,p_mensalidade,categoria_id) values ("Medicina","2019-02-19", 5000.00,1);

select * from tb_curso;
select * from tb_curso where p_mensalidade > 50.00;
select * from tb_curso where p_mensalidade between 3.00 and 60.00;
select * from tb_curso where curso like "%j%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1;





