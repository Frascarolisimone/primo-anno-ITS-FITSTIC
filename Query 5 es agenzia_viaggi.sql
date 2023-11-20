use agenzia_viaggi;
select nome,cognome from utenti
join ordini on utenti.id_utente = ordini.id_utente
join status_ordine on ordini.id_status = status_ordine.id_status
join pacchetti on ordini.id_pacchetto = pacchetti.id_pacchetto
where id_viaggio = 2;


#Ottenere i nomi degli utenti che hanno acquistato i pacchetti del viaggio con id 2