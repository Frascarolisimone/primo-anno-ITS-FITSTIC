use agenzia_viaggi;
select data_ordine, nome, cognome from utenti
join ordini on utenti.id_utente = ordini.id_utente
join status_ordine on ordini.id_status = status_ordine.id_status
where status_ordine.id_status = 2

#Ottenere l’elenco degli utenti che non hanno ancora pagato l’ordine