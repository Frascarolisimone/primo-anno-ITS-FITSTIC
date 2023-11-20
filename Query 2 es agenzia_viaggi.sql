use agenzia_viaggi;
Select sum(prezzo_unitario * num_partecipanti) as incasso_pacchetti_venduti_nel_2023 from ordini
Join pacchetti on ordini.id_pacchetto = pacchetti.id_pacchetto
join status_ordine on ordini.id_status = status_ordine.id_status
where status_ordine.status = "Pagato"
and data_partenza like "%2023%"

#Query: ottenere l’incasso dei pacchetti venduti quest’anno