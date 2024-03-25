
CREATE TABLE alunos(

id int not null primary key,
nome varchar(30),
sobrenome varchar(30),
idade int,
email varchar(30)
);

CREATE TABLE pessoa(

id int not null primary key auto_increment,
nome varchar(30),
telefone varchar(30)
);

insert into alunos(id,nome,sobrenome,idade,email) values(1,'kariya','mazaki',425,'batata@gmail.com');
insert into alunos(id,nome,sobrenome,idade,email) values(2,'kariya','mazaki',425,'batata@gmail.com');
select*from alunos;
select nome,idade from alunos;
update alunos
set nome = 'haizaki'
where id = 1;
delete from alunos
where id = 2;

insert into pessoa(nome,telefone) values('batata','53454');
select*from pessoa;
