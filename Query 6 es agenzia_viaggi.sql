use agenzia_viaggi;

select nazione, count(pacchetti.id_pacchetto) as pacchetti_venduti
from ordini
join id_status on status_ordine.id_status = ordini.id_status
join id_pacchetto on ordini.id_pacchetto = pacchetti.id_pacchetto
join id_viaggio on pacchetti.id_viaggio = viaggi.id_viaggio
join id_viaggio on viaggi.id_viaggio = viaggi_nazioni.id_viaggio
join id_nazione on viaggi_nazioni.id_nazione = nazioni.id_nazione
where status_ordine.status = "Pagato" and  pacchetti order by pacchetti.id_pacchetto desc

select nazione, count(pacchetti.id_pacchetto) as pacchetti_venduti
from ordini
pacchetti on ordini.id_pacchetto = pacchetti.id_pacchetto
join viaggi_nazioni on pacchetti.id_viaggi = viaggi_nazioni.id_viaggio
join nazioni on viaggi_nazioni.id_nazione = nazioni.id_nazione
where ordini.id_status = 1
