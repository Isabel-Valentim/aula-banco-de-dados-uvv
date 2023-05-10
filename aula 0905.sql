create database escola; 

drop table if exists escola.alunos; 
create table escola.alunos (
matricula varchar(20) not null primary key,
nome varchar(30), 
sexo char(1),
hora timestamp default current_timestamp());

insert into escola.alunos (matricula, nome, sexo) values ('054464', 'isabel', 'f');
update escola.alunos 
set matricula = lpad(`matricula`, 20, '0');
delete from escola.alunos;
select * from escola.alunos;
-- ------------------------------------------------------

-- alteração da tabela aluno novas colunas

ALTER TABLE escola.alunos
ADD ENDERECO VARCHAR(40) AFTER HORA, 
ADD EMAIL VARCHAR(30) AFTER ENDERECO; 



create table escola.professores (
cpf bigint not null primary key, 
nomedoprofessor varchar(30), 
codcursoformado bigint);



use escola; 
show tables;
describe alunos;
