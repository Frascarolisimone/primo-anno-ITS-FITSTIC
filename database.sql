drop database if exists verifica;
create database verifica
character set utf8mb4 COLLATE utf8mb4_general_ci;
use verifica;

create table if not exists facolta(
id_facolta int auto_increment not null,
nome varchar(255),
id_corso int not null,
primary key (id_facolta),
foreign key(id_facolta) references corsi_di_laurea(id_facolta)
);

create table if not exists materie(
id_materia int auto_increment not null,
nome varchar (255),
id_docente int not null,
crediti_cfu double not null,
primary key(id_materia),
foreign key(id_materia) references corsi_di_laurea(id_materia)
);

create table if not exists corsi_di_laurea (
id_corso int auto_increment not null,
id_studente int not null,
crediti_cfu double,
id_facolta int not null,
id_materia int not null,
primary key (id_corso),
foreign key(id_facolta) references facolta(id_facolta),
foreign key(id_materia) references materie(id_materia)

);



create table if not exists docenti(
id_docente int auto_increment not null,
nome varchar (255),
cognome varchar(255),
email varchar(255),
id_materia int not null,
primary key(id_docente),
foreign key(id_docente) references materie(id_docente)
);

create table if not exists esame(
id_esame int auto_increment not null,
id_materia int not null,
data_esame date,
voto double,
id_studente int not null,
primary key(id_esame),
foreign key(id_materia) references materia(id_materia),
foreign key(id_studente) references studenti(id_studente)
);

create table if not exists studenti(
id_studente int auto_increment not null,
nome varchar (255),
cognome varchar(255),
data_di_nascita date,
email varchar(255),
numero_telefico varchar(255),
id_universita int not null,
primary key(id_studente),
foreign key(id_studente) references corsi_di_laurea(id_studente),
foreign key(id_universita) references iscrizione_universita(id_universita),
foreign key(id_studente) references esame(id_studente)
);

create table if not exists iscrizione_universita(
id_universita int auto_increment not null,
voto_finale double,
data_conseguimento date,
titolo_di_studio varchar(255),
primary key(id_universita),
foreign key(titolo_di_studio) references titolo_di_studio(titolo_di_studio)
);

create table if not exists titolo_di_studio(
titolo_di_studio int auto_increment not null,
nome_istituto varchar(255),
citta varchar(255),
email_istituto varchar(255),
primary key(titolo_di_studio),
foreign key(titolo_di_studio) references iscrizione_universita(titolo_di_studio)
);




