create table PERSONA (
identificativo varchar (255),
nome varchar(255),
cognome varchar(255),
indirizzo varchar(255),
città varchar(255),
data_di_nascita year
);

alter table PERSONA
modify column data_di_nascita date;




