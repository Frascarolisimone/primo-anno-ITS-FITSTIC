drop database es6;
create database es6;
use es6;

create table fornitore(
nome varchar(255),
primary key(nome)
);

insert into fornitore values
('amazon'),
('zalando'),
('ebay'),
('conad'),
('eurospin'),
('aliexpress');

alter table fornitore
drop primary key;

alter table fornitore
add primary key(nome);


select * from fornitore;

create table prodotto(
nome varchar(255),
fornitore varchar(255),

primary key(nome),
constraint fk_prodotto_fornitore
foreign key(fornitore) references fornitore(nome)
);
alter table prodotto
drop foreign key fk_prodotto_fornitore;

alter table prodotto
add constraint fk_prodotto_fornitore
foreign key(fornitore) references fornitore(nome);

insert into prodotto values
('arduino','amazon'),
('iphone', 'aliexpress'),
('cover', 'aliexpress'),
('gelati','conad'),
('orecchini', 'aliexpress');

select * from prodotto;

create table certificato(
nome_prodotto varchar(255),
nome_fornitore varchar(255),
anno int,

constraint fk_certificato_prodotto
foreign key(nome_prodotto) references prodotto(nome),
constraint fk_certificato_fornitore
foreign key(nome_fornitore) references fornitore(nome),
primary key(nome_prodotto,nome_fornitore,anno),

unique(nome_fornitore,anno),
unique(nome_prodotto,anno)
);

insert into cerificato values
('arduino','amazon',2017),
('iphone', 'aliexpress',2015),
('cover', 'aliexpress',2016),
('gelati','conad',2010),
('orecchini', 'aliexpress',1995);

insert into certificato values
('arduino','aliexpress',2018),
('iphone', 'ebay',2020),
('cover', 'ebay',2021),
('gelati','eurospin',2011),
('orecchini', 'conad',1998);

insert into certificato values
('arduino','amazon',2022);

select * from certificato;

create table cliente(
nome varchar(255),
saldo int,

primary key(nome)
);

insert into cliente values
('luca',789),
('paolo', 0),
('carla', 2021),
('roberta',201),
('andrea',25);

create table ordini(
codice int,
fornitore varchar(255),
cliente varchar(255),
giorno date,


constraint fk_ordine_fornitore
foreign key(fornitore) references fornitore(nome),
constraint fk_ordine_cliente
foreign key(cliente) references cliente(nome),
primary key(codice),
unique(cliente,fornitore,giorno)

);

insert into ordini values
(1,'amazon', 'luca','2012-10-26'),
(2,'amazon', 'carla','2012-10-26'),
(3,'ebay', 'luca','2021-9-17'),
(4,'conad', 'luca','2012-10-26');




