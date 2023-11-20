drop database if exists musiclabel;
create database if not exists musiclabel;

use musiclabel;
insert into artisti
values
('5', 'Vasco Rossi', 'Vasco Rossi, noto anche semplicemente come Vasco, è un cantautore italiano.'),
('6', 'Gianni Morandi', 'Gianni Morandi, è un cantante, musicista, attore e conduttore televisivo italiano.');

insert into generi
values
('7', 'Rap'),
('8', 'pop-rock')

