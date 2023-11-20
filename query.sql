#query 1:
select studenti.nome, studenti.cognome, corsi.nome from studenti
join corsi on studenti.id_corso = corsi.id_corso order by corsi.nome asc;

#query 2:
select studenti.nome, studenti.cognome, esami.data, esami.voto  from studenti 
inner join on studenti.id = esami.id_studente 
where year(esami.data) = 2022;

#queary 3:
select studenti.nome, studenti.cognome, esami.voto, esami.data  from studenti 
inner join on studenti.id = esami.id_studente 
where year (esami.data) = 2022  and docenti.id_docente = 1;

#queary 4:
select distinct studenti.mail from studenti 
join iscrizioni on studenti.id = iscrizioni.id_studente
join corsi on iscrizioni.id_corso = corsi.id
where corsi.id_docente = 2;