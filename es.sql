drop database ddl;
create database ddl;
use ddl;

drop table if exists prova;
create table if not exists prova(
ID int primary key,
nome varchar(10) not null,
cognome varchar(10),
eta int not null,
check(eta > 18)
);
insert into prova values(1,'ciao',null,null);


create table SeggiElettorali(
ID int auto_increment,
nome varchar(10) not null,
cognome varchar(10),
eta int default 18,
primary key(ID),
check(eta >= 18)
);
insert into SeggiElettorali(nome) values('abaco');
insert into SeggiElettorali(nome,eta) values('abaco',26);

select * from prova;

insert into prova values(1,'ciao', null,81);
insert into prova values(2,'ciao',null,7);
insert into prova(ID,nome) values(3,'abaco',5);
insert into prova (ID,nome) values(4,null,null);

select * from prova;

create table SeggiElettorali(
ID int auto_increment,
nome varchar(10) not null,
cognome varchar(10),
eta int default 18,
primary key(ID),
check(eta >= 18)
);
insert into SeggiElettorali(nome) values('abaco');
insert into SeggiElettorali(nome,eta) values('abaco',26);
select * from SeggiElettorali;
