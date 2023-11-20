#ottenere i titoli dei brani dell'album con id 6
select brani.brano_titolo
from brani. album_brani
where brani.brano_id = album_brani.brano_id
and albums_brani.album_id = 6;

select * from releases
join albums on releses.album_id = albums.album_id
join albums_artisti on albums.album_id = albums_artisti.album_id
where albums_artisti.artista_id = 4
order by releases.release_uscita desc 