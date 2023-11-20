drop database prova;    #come secondo questo 
create database prova   #prima faccio rannare questo #di nuovo come terzo 	
CHARSET=utf8mb4 
COLLATE=utf8mb4_general_ci; #Specificando questi valori è possibile "sovrascrivere" quelli impostati di default a livello server.
use prova; 				#come quarto questo

create table cittadino(

nome varchar(255),
id_cittadino int,  #nell'id si porebbe aggiungere auto incremet così da farti dare un numero a caso 
cognome varchar(255),
data_di_nascita date,
#primary key(id_cittadino),
constraint fk_cittadino_id_cittadino
foreign key(id_cittadino) references id_cittadino(stato_italia)
)

#drop table esempio = per cancellare la tabella esempio

#per inserire i dati nella tabella
insert into cittadino values
(1928283, 'Simone', 'Frascaroli', '16.09.2003');

create table if not exists stato_italia(   #if not exists è per dire se quella tabella non esiste già creamela
capitale varchar(255),
lingua varchar(255),
id_cittadino varchar(255),
primary key(capitale),
foreign key(id_cittadino) references id_cittadino(cittadino)

);

# per modificare una colonna (cambiare da varchar a int)
alter table stato_italia
modify column id_cittadino int;