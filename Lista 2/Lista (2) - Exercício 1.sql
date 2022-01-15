create database db_RH;
use db_RH;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal(6,2) not null,
primary key (id)
);

INSERT INTO tb_funcionaries (nome,cargo,salario) VALUES ("Nathan Luz","Analista",8000.00);
INSERT INTO tb_funcionaries (nome,cargo,salario) VALUES ("Leoneide Mendoza","Executiva",5000.00);
INSERT INTO tb_funcionaries (nome,cargo,salario) VALUES ("Pedro Paulo","Mecânico",2600.00);
INSERT INTO tb_funcionaries (nome,cargo,salario) VALUES ("Carlos Franklin","Recepcionista",1200.00);
INSERT INTO tb_funcionaries (nome,cargo,salario) VALUES ("Felipe Rizzi","Engenheiro",7000.00);

select * from tb_funcionaries where salario > 2000.00;
select * from tb_funcionaries where salario < 2000.00;
update tb_funcionaries set salario = 1000.00 where id=5;

describe tb_funcionaries;