
CREATE TABLE curso (
	id int primary key identity,
	nome varchar(50) not null,
	descricao varchar(400) not null,
	link varchar(400) not null,
	id_transuser int not null,


)

drop table curso



create table transUser (
	id int primary key identity not null,
	nome varchar(50) not null,
	email varchar(50) not null,
	telefone varchar(14) not null,
	id_curso int not null,
	id_emprego int not null

	foreign key (id_curso) references curso (id),
	foreign key (id_emprego) references emprego (id)
)


alter table curso
add constraint id_transuser foreign key (id_transuser)
references transUser (id)
on delete cascade
on update cascade

select * from transUser

drop table trans_user