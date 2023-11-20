drop database es16;
create database es16;
use es16;


create table Autorita(
nome varchar(255),
sede varchar(255),
pubblic bool,

primary key(nome)
);

insert into Autorita values
('ER salute','Bologna', true),
('digos','Roma',true),
('agenzia delle entrate','Ferrara', true),
('ENI','Foosombrone', false),
('poste italiane','Roma',false);


create table Appalto(
ID int,
nome varchar(255),
autorita varchar(255),
primary key(ID),
constraint fk_appalto_autorita
foreign key(autorita) references autorita(nome)
);

insert into Appalto(ID, autorita, nome) values
(1,'ER salute','macchine da radiografia'),
(2,'digos','cani'),
(3,'agenzia delle entrate','sito web'),
(4,'ENI','trivelle'),
(5,'ENI','strategia di mercato');

create table Fornitore(
nome varchar(255),

primary key(nome)
);

insert into Fornitore values
('simens'),
('shimadzu'),
('canile'),
('pets & co'),
('matteo cotti'),
('deloitte'),
('mirco botti'),
('azienda pubblicitaria');

create table Registrazione(
fornitore varchar(255),
autorita varchar(255),
constraint fk_registrazione_fornitore
foreign key(fornitore) references Fornitore(nome),
constraint fk_registrazione_autorita
foreign key(autorita) references Autorita(nome),
primary key(fornitore,autorita)
);

insert into Registrazione values
('simens', 'ER salute'),
('deloitte','agenzia delle entrate');

create table Gruppo(
nome varchar(255),
supergruppo varchar(255),
primary key(nome)
);


insert into Gruppo values
('medico','salute'),
('informatico','computer');

create table LineaOrdine(
numero_progressivo int,
appalto int,
gruppo varchar(255),
constraint fk_linea_appalto
foreign key(appalto) references Appalto(ID),
constraint fk_linea_gruppo
foreign key(gruppo) references Gruppo(nome),
primary key(numero_progressivo,appalto)

);

insert into LineaOrdine values
(1,1,'medico'),
(2,1,'medico'),
(3,1,'medico'),
(1,2,'informatico'),
(2,2,'informatico');


create table Offerta(
fornitore varchar(255),
numero_progressivo_linea int,
appalto int,
giorno date,

constraint fk_offerta_fornitore
foreign key(fornitore) references Fornitore(nome),
constraint fk_offerta_linea
foreign key(numero_progressivo_linea,appalto)
references LineaOrdine(numero_progressivo,appalto),
primary key(fornitore,numero_progressivo_linea,appalto)

);

insert into Offerta values
('simens',1,1, '2022-12-30');


create table OffertaValida(
fornitore varchar(255),
autorita varchar(255),

numero_progressivo_linea int,
appalto int,
giorno date,

constraint fk_offerta_registrazione
foreign key(fornitore, autorita)
references Registrazione(fornitore, autorita),
constraint fk_offerta_fornitore_2
foreign key(fornitore) references Registrazione(fornitore),
constraint fk_offerta_linea_2
foreign key(numero_progressivo_linea,appalto)
references LineaOrdine(numero_progressivo,appalto),
primary key(fornitore,autorita,numero_progressivo_linea,appalto),
unique (fornitore,numero_progressivo_linea,appalto)
);
insert into OffertaValida values
('simens','ER salute',1,1, '2022-12-30')








