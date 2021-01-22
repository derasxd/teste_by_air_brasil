create database test_BAB;

use test_BAB;

create table grupos(
	id int(11) not null auto_increment,
	nome varchar(50) not null,
	primary key (id)
);

create table usuarios(
	id int(11) not null auto_increment,
	nome varchar(50) not null,
	login varchar(50) not null unique,
	password varchar(50) not null,
	primary key (id)
);

create table usuarios_grupos(
	id int(11) not null auto_increment,
	usuario_id int(11) not null,
	grupo_id int(11) not null,
	primary key (id),
	foreign key (usuario_id) references usuarios(id),
	foreign key (grupo_id) references grupos(id)
);

insert into grupos values("", "Financeiro");
insert into grupos values("", "Comercial");
insert into grupos values("", "Suporte");
insert into grupos values("", "Desenvolvimento");

insert into usuarios values ("","Carlos", "carlos", "carlos123");
insert into usuarios values ("","Junior", "junior", "junior123");
insert into usuarios values ("","Andre", "andre", "andre123");

insert into usuarios_grupos values ("",1,1);
insert into usuarios_grupos values ("",1,2);
insert into usuarios_grupos values ("",1,3);
insert into usuarios_grupos values ("",1,4);
insert into usuarios_grupos values ("",2,4);
insert into usuarios_grupos values ("",3,1);
