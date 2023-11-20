use agenzia_viaggi;
select sum(prezzo_unitario * num_partecipanti) as totale_pagato, nome, cognome from utenti
join ordini on utenti.id_utente = ordini.id_utente
join status_ordine on ordini.id_status = status_ordine.id_status
join pacchetti on ordini.id_pacchetto = pacchetti.id_pacchetto
where status_ordine.id_status = 1
group by utenti.id_utente   #group by serve per riunire gli acquisti che una singola persona ha acquistato

#Ottenere quanto ha pagato ciascun utente per ogni acquisto effettuato