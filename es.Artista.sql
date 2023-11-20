drop database if exists casaDiscografica;
create database if not exists casaDiscografica;

use casaDiscografica;

create table artisti(
artista_id int auto_increment primary key,
arttista_nome varchar(255) not null,
artista_bio text
);

create table albums(
album_id int auto_increment primary key,
album_nome varchar(255) not null,
artista_id int not null,
foreign key(artista_id) references artisti(artista_id)
);

create table brani(
brano_id int auto_increment primary key,
brano_titolo varchar(255) not null,
album_id int not null,
foreign key(album_id) references albums(album_id)
);

create table nazioni(
nazioni_id int auto_increment primary key,
nazione_nome varchar(255) not null
);

create table releases(
release_id int auto_increment primary key,
album_id int not null,
nazioni_id int not null,
release_uscita date not null,
foreign key(nazioni_id) references nazioni(nazioni_id),
foreign key(album_id) references albums(album_id)
);

create table generi(
genere_id int auto_increment primary key,
genere_nome varchar(255) not null
);

create table albums_generi(
album_id int not null,
genere_id int not null,
primary key(album_id,genere_id),
foreign key(album_id) references albums(album_id),
foreign key(genere_id) references generi(genere_id)
);

create table concerti(
concerto_id int auto_increment primary key,
artista_id int not null,
concerto_nome varchar(255) not null,
concerto_data date not null,
concerto_location varchar(255) not null,
foreign key(artista_id) references artisti(artista_id)
);

alter table concerti change concerto_data concerto_data_ora datetime not null;
alter table brani add brano_durata time not null after brano_titolo;