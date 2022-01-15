create database Escola_Raimunda_Sarmento;
use Escola_Raimunda_Sarmento;

create table Alunos(
id bigint auto_increment,
nome varchar (255) not null,
sexo enum ('F','M'),
turma decimal (4) not null,
turno varchar (30) not null,
nota decimal (3,1) not null,
primary key (id)
);

insert into Alunos (nome,sexo,turma,turno,nota) values ("Valéria Bezerra", "F", 0001, "Manhã", 10.0);
insert into Alunos (nome,sexo,turma,turno,nota) values ("Rodrigo Mattos", "M", 0002, "Tarde", 5.5);
insert into Alunos (nome,sexo,turma,turno,nota) values ("Miguel Paiva", "M", 0003, "Manhã", 7.5);
insert into Alunos (nome,sexo,turma,turno,nota) values ("Gabriel Paiva", "M", 0001, "Manhã", 2.8);
insert into Alunos (nome,sexo,turma,turno,nota) values ("Lara Rizzi", "F", 0002, "Tarde", 10.0);

select * from Alunos where nota > 7.0;
select * from Alunos where nota < 7.0;

update Alunos set nota = 3.5 where id=4;