-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Mar 03, 2023 alle 03:04
-- Versione del server: 10.4.28-MariaDB-1:10.4.28+maria~ubu1804
-- Versione PHP: 7.2.34-37+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stefanosisti`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie`
--

CREATE TABLE `categorie` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `descrizione` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `categorie`
--

INSERT INTO `categorie` (`id_categoria`, `categoria`, `descrizione`) VALUES
(1, 'Arte e Cultura', 'Non ti proponiamo luoghi nuovi, ma nuovi modi di viverli.\r\nChe tu stia ammirando un teatro greco o un museo di Berlino; che tu stia passeggiando nel suk di Gerusalemme o in un mercato delle pulci parigino; che tu sia a bocca aperta davanti al Taj Mahal o perso nelle strade trafficate di New York, ogni luogo del nostro meraviglioso mondo ha una sua anima, che si svela solo a chi è capace di guardare con occhi nuovi.'),
(2, 'Natura e Avventura', 'Non ti proponiamo imprese estreme, ma di ritrovare il ritmo dei tuoi passi.\r\nTerra, fuoco, aria, acqua, luce e buio: dai caldi deserti mediorientali ai ghiacciai sudamericani, dagli scintillanti vulcani siciliani alla notte boreale islandese, dalle ombrose foreste umbre agli ampi prati armeni, scopriamo la dolcezza di far parte di questa complessa e potente vita, dove non c’è spazio per la solitudine, ma tempo per tornare all’origine e all’essenziale.');

-- --------------------------------------------------------

--
-- Struttura della tabella `continenti`
--

CREATE TABLE `continenti` (
  `id_continente` int(11) NOT NULL,
  `continente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `continenti`
--

INSERT INTO `continenti` (`id_continente`, `continente`) VALUES
(3, 'Africa'),
(4, 'America'),
(6, 'Asia'),
(7, 'Europa'),
(5, 'Oceania');

-- --------------------------------------------------------

--
-- Struttura della tabella `guide`
--

CREATE TABLE `guide` (
  `id_guida` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `guide`
--

INSERT INTO `guide` (`id_guida`, `nome`, `cognome`, `bio`) VALUES
(1, 'Massimo', 'Camussi', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.'),
(2, 'Marco', 'Rossi', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.'),
(3, 'Valentina', 'Bianchi', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.'),
(4, 'Leonardo', 'Conti', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.'),
(5, 'Martina', 'Lombardi', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.'),
(6, 'Francesco', 'Esposito', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.'),
(7, 'Alessia', 'Moretti', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.'),
(8, 'Matteo', 'Rizzo', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.'),
(9, 'Giulia', 'Ferrara', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.'),
(10, 'Lorenzo', 'Greco', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.'),
(11, 'Chiara', 'Ricci', 'Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue.');

-- --------------------------------------------------------

--
-- Struttura della tabella `nazioni`
--

CREATE TABLE `nazioni` (
  `id_nazione` int(11) NOT NULL,
  `nazione` varchar(255) NOT NULL,
  `id_continente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `nazioni`
--

INSERT INTO `nazioni` (`id_nazione`, `nazione`, `id_continente`) VALUES
(299, 'Algeria', 3),
(300, 'Angola', 3),
(301, 'Botswana', 3),
(302, 'Burkina Faso', 3),
(303, 'Burundi', 3),
(304, 'Camerun', 3),
(305, 'Capo Verde', 3),
(306, 'Ciad', 3),
(307, 'Congo', 3),
(308, 'Costa d’Avorio', 3),
(309, 'Egitto', 3),
(310, 'Eritrea', 3),
(311, 'Etiopia', 3),
(312, 'Gabon', 3),
(313, 'Gambia', 3),
(314, 'Ghana', 3),
(315, 'Isole Mauritius', 3),
(316, 'Kenya', 3),
(317, 'Liberia', 3),
(318, 'Libia', 3),
(319, 'Madagascar', 3),
(320, 'Malawi', 3),
(321, 'Marocco', 3),
(322, 'Mozambico', 3),
(323, 'Namibia', 3),
(324, 'Nigeria', 3),
(325, 'Ruanda', 3),
(326, 'R. D. Congo', 3),
(327, 'Senegal', 3),
(328, 'Sierra Leone', 3),
(329, 'Somalia', 3),
(330, 'Sudafrica', 3),
(331, 'Sudan', 3),
(332, 'Swaziland', 3),
(333, 'Tanzania', 3),
(334, 'Togo', 3),
(335, 'Tunisia', 3),
(336, 'Uganda', 3),
(337, 'Zambia', 3),
(338, 'Zimbabwe', 3),
(339, 'Argentina', 4),
(340, 'Bolivia', 4),
(341, 'Brasile', 4),
(342, 'Canada', 4),
(343, 'Cile', 4),
(344, 'Colombia', 4),
(345, 'Costa Rica', 4),
(346, 'Cuba', 4),
(347, 'Ecuador', 4),
(348, 'El Salvador', 4),
(349, 'Giamaica', 4),
(350, 'Guatemala', 4),
(351, 'Haiti', 4),
(352, 'Hawaii', 4),
(353, 'Honduras', 4),
(354, 'Messico', 4),
(355, 'Nicaragua', 4),
(356, 'Panama', 4),
(357, 'Paraguay', 4),
(358, 'Perù', 4),
(359, 'Portorico', 4),
(360, 'Repubblica Dominicana', 4),
(361, 'Stati Uniti d\'America', 4),
(362, 'Uruguay', 4),
(363, 'Venezuela', 4),
(364, 'Afghanistan', 6),
(365, 'Arabia Saudita', 6),
(366, 'Armenia', 6),
(367, 'Bangladesh', 6),
(368, 'Birmania', 6),
(369, 'Cambogia', 6),
(370, 'Cina', 6),
(371, 'Corea', 6),
(372, 'Corea del Sud', 6),
(373, 'Filippine', 6),
(374, 'Georgia', 6),
(375, 'Giappone', 6),
(376, 'Giordania', 6),
(377, 'India', 6),
(378, 'Indonesia', 6),
(379, 'Iran', 6),
(380, 'Iraq', 6),
(381, 'Israele', 6),
(382, 'Kuwait', 6),
(383, 'Laos', 6),
(384, 'Libano', 6),
(385, 'Maldive', 6),
(386, 'Malesia', 6),
(387, 'Medio Oriente', 6),
(388, 'Mongolia', 6),
(389, 'Nepal', 6),
(390, 'Pakistan', 6),
(391, 'Palestina', 6),
(392, 'Siria', 6),
(393, 'Sri Lanka', 6),
(394, 'Thailandia', 6),
(395, 'Tibet', 6),
(396, 'Turchia', 6),
(397, 'Uzbekistan', 6),
(398, 'Vietnam', 6),
(399, 'Albania', 7),
(400, 'Austria', 7),
(401, 'Belgio', 7),
(402, 'Bielorussia', 7),
(403, 'Bosnia-Erzegovina', 7),
(404, 'Bulgaria', 7),
(405, 'Cipro', 7),
(406, 'Croazia', 7),
(407, 'Danimarca', 7),
(408, 'Estonia', 7),
(409, 'Finlandia', 7),
(410, 'Francia', 7),
(411, 'Galles', 7),
(412, 'Germania', 7),
(413, 'Grecia', 7),
(414, 'Inghilterra', 7),
(415, 'Irlanda', 7),
(416, 'Irlanda del Nord', 7),
(417, 'Islanda', 7),
(418, 'Italia', 7),
(419, 'Kosovo', 7),
(420, 'Lettonia', 7),
(421, 'Lituania', 7),
(422, 'Lussemburgo', 7),
(423, 'Malta', 7),
(424, 'Montenegro', 7),
(425, 'Norvegia', 7),
(426, 'Paesi Bassi', 7),
(427, 'Polonia', 7),
(428, 'Portogallo', 7),
(429, 'Regno Unito', 7),
(430, 'Repubblica Ceca', 7),
(431, 'Romania', 7),
(432, 'Russia', 7),
(433, 'San Marino', 7),
(434, 'Scozia', 7),
(435, 'Serbia', 7),
(436, 'Slovacchia', 7),
(437, 'Slovenia', 7),
(438, 'Spagna', 7),
(439, 'Svezia', 7),
(440, 'Svizzera', 7),
(441, 'Ucraina', 7),
(442, 'Ungheria', 7),
(443, 'Australia', 5),
(444, 'Nuova Guinea', 5),
(445, 'Nuova Zelanda', 5),
(446, 'Samoa', 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

CREATE TABLE `ordini` (
  `id_ordine` int(11) NOT NULL,
  `data_ordine` datetime NOT NULL,
  `id_utente` int(11) NOT NULL,
  `id_pacchetto` int(11) NOT NULL,
  `num_partecipanti` int(11) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `ordini`
--

INSERT INTO `ordini` (`id_ordine`, `data_ordine`, `id_utente`, `id_pacchetto`, `num_partecipanti`, `id_status`) VALUES
(1, '2023-02-14 04:37:23', 9, 2, 2, 1),
(2, '2023-02-14 07:11:37', 8, 2, 6, 1),
(3, '2023-02-14 07:12:04', 15, 2, 1, 1),
(4, '2023-02-15 11:07:49', 2, 2, 5, 1),
(5, '2023-02-15 11:53:33', 1, 1, 2, 1),
(6, '2023-02-15 14:42:58', 10, 2, 3, 1),
(7, '2023-02-15 21:03:42', 17, 1, 9, 1),
(8, '2023-03-01 03:49:00', 12, 4, 2, 2),
(9, '2023-03-02 03:49:00', 4, 4, 16, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `pacchetti`
--

CREATE TABLE `pacchetti` (
  `id_pacchetto` int(11) NOT NULL,
  `id_viaggio` int(11) NOT NULL,
  `nome_pacchetto` varchar(255) NOT NULL,
  `prezzo_unitario` float(10,2) NOT NULL,
  `descrizione` text DEFAULT NULL,
  `data_partenza` date NOT NULL,
  `data_rientro` date NOT NULL,
  `max_partecipanti` int(11) NOT NULL,
  `id_guida` int(11) DEFAULT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `pacchetti`
--

INSERT INTO `pacchetti` (`id_pacchetto`, `id_viaggio`, `nome_pacchetto`, `prezzo_unitario`, `descrizione`, `data_partenza`, `data_rientro`, `max_partecipanti`, `id_guida`, `id_status`) VALUES
(1, 1, 'Da Tui a Santiago in 7 giorni', 1560.00, 'Giorno 1\r\nArrivo a Santiago de Compostela con volo individuale (volo non incluso). In base all’orario di arrivo trasferimento privato a Tui (112 km). Vi verrà consegnata la Credenziale. Tui è sulla frontiera con il Portogallo, e la sua cattedrale-fortezza ricorda un passato medievale pieno di lotte territoriali. Sistemazione in albergo, cena libera e pernottamento.\r\n\r\nGiorno 2\r\nDopo la prima colazione, inizio del cammino a piedi in direzione Redondela. All’uscita da Tui, il cammino procede verso la cappella della Virxe do Camiño e attraversa il Puente de San Telmo sul fiume San Simón per giungere a A Madalena. Da qui, la tappa continua in direzione di Ribadelouro e, lasciando a est Gándaras de Budiño, attraversa una zona industriale che conduce direttamente al centro urbano di O’ Porriño. Si prosegue per la cittadina di Mos raggiungendo infine Redondela. Sistemazione in albergo. Pasti liberi e pernottamento in albergo.\r\n\r\nGiorno 3\r\nDopo la prima colazione, partenza per la tappa del giorno. Lungo il percorso per la Ria de Vigo si potranno ammirare diversi bei panorami sul mare: si vedranno alcuni brevi tratti della antica strada romana e le pietre ‘miliari’ che segnalavano la distanza. La tappa procede verso l’altura di A Canicouva in direzione della città di Pontevedra e il suo Santuario della Virgen Peregrina, patrona e simbolo della città. Pasti liberi e pernottamento in albergo.\r\n\r\nGiorno 4\r\nDopo la prima colazione in albergo, si inizierà il cammino verso nord, deviando per i boschi di Reiriz e Lombo da Maceira. A San Mauro il Cammino si dirige a Ponte Balbón e da qui a O Ameal. Infine si avvia verso Tivo e, ormai già molto vicini alle sponde dell’Urnia, giunge a Caldas de Reis, meta della tappa. Pasti liberi e pernottamento in albergo.\r\n\r\nGiorno 5\r\nDopo la prima colazione, ci incamminiamo verso Padron. La rotta portoghese si allontana da Caldas de Reis per addentrarsi nella valle di Bermaña e nei suoi boschi centenari. Inizia una dolce salita verso Santa Mariña de Carracedo, per proseguire poi in direzione di Casal de Eirigo ed O Pino, attraverso il monte Albor. Passato il ponte romano di Cesures, il Cammino entra nelle terre della provincia A Coruña proseguendo parallelamente alla N-550 fino a giungere a Padrón, località dalla forte tradizione giacobea: secondo la tradizione, il corpo di San Giacomo venne portato nel vicino paesino portuale di Iria Flavia dai suoi discepoli. Pasti liberi e pernottamento in albergo.\r\n\r\nGiorno 6\r\nOggi è il giorno dell’arrivo a Santiago… e dell’ultima tappa del Cammino! Dopo la prima colazione in albergo, inizia l’ultima tappa del Cammino di Santiago: partendo da A Escravitude si passa il santuario e, dopo un tratto di boschi, il cammino attraversa i binari della ferrovia nella località di A Angueira de Suso e comincia la sua discesa verso Santiago. L’itinerario portoghese entra a Santiago dalla zona monumentale di Porta Faxeira e si dirige verso la facciata di Praterias della cattedrale. E qui seguiremo la tradizione: andremo al Portico della Gloria sotto la figura dell’Apostolo sedente, per esprimere tre desideri. Dietro la stessa colonna c’è la figura del maestro Matteo (il costruttore), alla quale si danno tre testate “affinché trasmetta la sua sapienza ed il talento”. Dopo ci recheremo alla cripta dove si trova il sepolcro di Santiago. Pasti liberi e pernottamento in albergo.\r\n\r\nGiorno 7\r\nDopo la prima colazione, giornata libera per la visita di Santiago de Compostela, adornata di edifici rinascimentali e barocchi, assieme alla famosa cattedrale. In base all’operativo partenza con volo individuale per l’Italia (trasferimento in aeroporto non incluso). ', '2023-08-01', '2023-08-07', 30, 10, 1),
(2, 1, 'Da Tui a Santiago in 4 giorni', 1080.00, 'Giorno 1\r\nArrivo a Santiago de Compostela con volo individuale (volo non incluso). In base all’orario di arrivo trasferimento privato a Tui (112 km). Vi verrà consegnata la Credenziale. Tui è sulla frontiera con il Portogallo, e la sua cattedrale-fortezza ricorda un passato medievale pieno di lotte territoriali. Sistemazione in albergo, cena libera e pernottamento.\r\n\r\nGiorno 2\r\nDopo la prima colazione, partenza per la tappa del giorno. Lungo il percorso per la Ria de Vigo si potranno ammirare diversi bei panorami sul mare: si vedranno alcuni brevi tratti della antica strada romana e le pietre ‘miliari’ che segnalavano la distanza. La tappa procede verso l’altura di A Canicouva in direzione della città di Pontevedra e il suo Santuario della Virgen Peregrina, patrona e simbolo della città. Pasti liberi e pernottamento in albergo.\r\n\r\nGiorno 3\r\nOggi è il giorno dell’arrivo a Santiago… e dell’ultima tappa del Cammino! Dopo la prima colazione in albergo, inizia l’ultima tappa del Cammino di Santiago: partendo da A Escravitude si passa il santuario e, dopo un tratto di boschi, il cammino attraversa i binari della ferrovia nella località di A Angueira de Suso e comincia la sua discesa verso Santiago. L’itinerario portoghese entra a Santiago dalla zona monumentale di Porta Faxeira e si dirige verso la facciata di Praterias della cattedrale. E qui seguiremo la tradizione: andremo al Portico della Gloria sotto la figura dell’Apostolo sedente, per esprimere tre desideri. Dietro la stessa colonna c’è la figura del maestro Matteo (il costruttore), alla quale si danno tre testate “affinché trasmetta la sua sapienza ed il talento”. Dopo ci recheremo alla cripta dove si trova il sepolcro di Santiago. Pasti liberi e pernottamento in albergo.\r\n\r\nGiorno 4\r\nDopo la prima colazione, giornata libera per la visita di Santiago de Compostela, adornata di edifici rinascimentali e barocchi, assieme alla famosa cattedrale. In base all’operativo partenza con volo individuale per l’Italia (trasferimento in aeroporto non incluso). ', '2023-08-08', '2023-08-11', 40, NULL, 1),
(3, 2, '4 giorni All inclusive - volo escluso', 2789.00, 'Cras mattis consectetur purus sit amet fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis risus eget urna mollis ornare vel eu leo. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod.\r\n\r\nFusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n\r\nVestibulum id ligula porta felis euismod semper. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.\r\n\r\nMorbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nullam quis risus eget urna mollis ornare vel eu leo. Donec sed odio dui. Sed posuere consectetur est at lobortis. Nullam quis risus eget urna mollis ornare vel eu leo.', '2023-05-21', '2023-05-24', 28, 3, 2),
(4, 2, '6 giorni All inclusive - volo incluso', 4490.00, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nMaecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Donec ullamcorper nulla non metus auctor fringilla. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper.\r\n\r\nDonec sed odio dui. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.\r\n\r\nPraesent commodo cursus magna, vel scelerisque nisl consectetur et. Maecenas faucibus mollis interdum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nullam id dolor id nibh ultricies vehicula ut id elit.', '2023-05-21', '2023-05-26', 22, 10, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `status_ordine`
--

CREATE TABLE `status_ordine` (
  `id_status` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `status_ordine`
--

INSERT INTO `status_ordine` (`id_status`, `status`) VALUES
(2, 'Non pagato'),
(1, 'Pagato'),
(3, 'Rimborsato');

-- --------------------------------------------------------

--
-- Struttura della tabella `status_pacchetto`
--

CREATE TABLE `status_pacchetto` (
  `id_status` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `status_pacchetto`
--

INSERT INTO `status_pacchetto` (`id_status`, `status`) VALUES
(1, 'Attivo'),
(2, 'Non attivo'),
(3, 'Sold out');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id_utente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(60) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `data_di_nascita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id_utente`, `nome`, `cognome`, `email`, `password`, `telefono`, `data_di_nascita`) VALUES
(1, 'Stefano', 'Sisti', 'stefano-sisti@domain.ext', '$P$BZFTbjAVa/J3oacCTE2k4FdcW7zf4V0', '123456789', '1986-02-05'),
(2, 'Giuseppe', 'Moretti', 'giuseppe-moretti@domain.ext', '$P$BXjRkRUpwAPpRcyNzOeJGyBKYXhtD81', '3314567890', '1989-07-23'),
(3, 'Federica', 'Santoro', 'federica-santoro@domain.ext', '$P$BkL8bmh2Qc/3j3RGweTC0sNKsZYzjK.', '3352345678', '1978-04-15'),
(4, 'Antonio', 'De Angelis', 'antonio-de angelis@domain.ext', '$P$Bx0fCfdYkxEbsTstKjDav0G2yJHsA41', '3409876543', '1966-01-05'),
(5, 'Valeria', 'Rizzo', 'valeria-rizzo@domain.ext', '$P$BMCd1lHJ1Ba8ZrT/C7jTzDnTbLhpGJ/', '3471234567', '1981-09-11'),
(6, 'Simone', 'Ricci', 'simone-ricci@domain.ext', '$P$BhtXy56KpwPPB/BhZb1J70pdIKc3Kf/', '3488765432', '1959-06-03'),
(7, 'Laura', 'Ferrari', 'laura-ferrari@domain.ext', '$P$BE8Iz5Q5FkE3CqN7aZ8YjNWXNIlRZF.', '3493456789', '1973-11-25'),
(8, 'Davide', 'Greco', 'davide-greco@domain.ext', '$P$Bvrd4KPh/QV7LX6Lom0VH/D0YvpDdt1', '3335678901', '1996-02-14'),
(9, 'Martina', 'Costa', 'martina-costa@domain.ext', '$P$BI1Ro7TuF9jKoJ7p4v1pqve4FN6UcJ.', '3367890123', '2002-12-01'),
(10, 'Marco', 'Lombardi', 'marco-lombardi@domain.ext', '$P$BlS79nY2kr3TKITK5d2ah5A5v5z5GK1', '3424567890', '1990-08-29'),
(11, 'Sara', 'Conti', 'sara-conti@domain.ext', '$P$BRthB/fvFZ8oLpIzXdNJdR0cNzJiug/', '3462345678', '1962-03-18'),
(12, 'Matteo', 'Rossi', 'matteo-rossi@domain.ext', '$P$BKdwykQ/fJTSKjia/PCZ1m/l9EgBxh.', '3519876543', '1984-10-07'),
(13, 'Giulia', 'Colombo', 'giulia-colombo@domain.ext', '$P$BQzox0dLwqsstGcFZrKjZbsl1XnGHd1', '3571234567', '1971-05-28'),
(14, 'Giovanni', 'Romano', 'giovanni-romano@domain.ext', '$P$Bz8l2om.MgBwTOfTJcDFrjZrJpOn7A/', '3588765432', '1998-11-12'),
(15, 'Alice', 'Vitale', 'alice-vitale@domain.ext', '$P$BYruLMF5j5kGLHmYiZva1vxmzKj8dH0', '3593456789', '1969-08-08'),
(16, 'Luca', 'Serra', 'luca-serra@domain.ext', '$P$BX9vEuzOgzWb8j6Ufz6UjvBUk13zWU.', '3335678901', '2006-01-22'),
(17, 'Beatrice', 'Marini', 'beatrice-marini@domain.ext', '$P$BZDq3v6f7sW2QKjVRaJHnkT0i.TKKk/', '3357890123', '2000-09-19'),
(18, 'Alessandro', 'Parisi', 'alessandro-parisi@domain.ext', '$P$BP4j9XaZ.WvN57mu1LQj1zS6JnSv.20', '3404567890', '1992-06-09'),
(19, 'Caterina', 'Ferretti', 'caterina-ferretti@domain.ext', '$P$BML85cvoKjZRGh1JmWxiit8YjmkU6N1', '3452345678', '1987-03-31'),
(20, 'Francesca', 'Fabbri', 'francesca-fabbri@domain.ext', '$P$BYDTgK.rD60R7TyLXJ0p0bVfiLjwrY.', '3491234567', '1954-09-14');

-- --------------------------------------------------------

--
-- Struttura della tabella `viaggi`
--

CREATE TABLE `viaggi` (
  `id_viaggio` int(11) NOT NULL,
  `nome_viaggio` varchar(255) NOT NULL,
  `descrizione` text DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `viaggi`
--

INSERT INTO `viaggi` (`id_viaggio`, `nome_viaggio`, `descrizione`, `id_categoria`) VALUES
(1, 'Il Cammino di Santiago: itinerario portoghese da Tui', 'Da 800 anni pellegrini da tutto il mondo intraprendono il cammino per arrivare a Santiago de Compostela.\r\n\r\nQuesto percorso è pensato per chi vuole percorrere a piedi il Cammino Portoghese, e riceverete come ricordo la Compostela, la credenziale del Cammino.\r\n\r\nDescrizione:\r\n- ultimi 115,2 km a piedi\r\n- partenza da Tui', 2),
(2, 'La notte artica e l\'aurora boreale', 'La magia dell’inverno dove questa parola assume il suo significato più profondo: esploriamo i dintorni di Tromsø, con la sua natura estrema che non mancherà di lasciarci un ricordo indimenticabile: escursioni in slitta, navigazione nei fiordi innevati e la regina del nord Europa: l’aurora boreale!', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `viaggi_nazioni`
--

CREATE TABLE `viaggi_nazioni` (
  `id_viaggio` int(11) NOT NULL,
  `id_nazione` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `viaggi_nazioni`
--

INSERT INTO `viaggi_nazioni` (`id_viaggio`, `id_nazione`) VALUES
(1, 428),
(1, 438),
(2, 425);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `categoria` (`categoria`);

--
-- Indici per le tabelle `continenti`
--
ALTER TABLE `continenti`
  ADD PRIMARY KEY (`id_continente`),
  ADD UNIQUE KEY `continente` (`continente`);

--
-- Indici per le tabelle `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`id_guida`);

--
-- Indici per le tabelle `nazioni`
--
ALTER TABLE `nazioni`
  ADD PRIMARY KEY (`id_nazione`),
  ADD KEY `id_continente` (`id_continente`);

--
-- Indici per le tabelle `ordini`
--
ALTER TABLE `ordini`
  ADD PRIMARY KEY (`id_ordine`),
  ADD KEY `id_utente` (`id_utente`),
  ADD KEY `id_pacchetto` (`id_pacchetto`),
  ADD KEY `id_status` (`id_status`);

--
-- Indici per le tabelle `pacchetti`
--
ALTER TABLE `pacchetti`
  ADD PRIMARY KEY (`id_pacchetto`),
  ADD KEY `id_viaggio` (`id_viaggio`),
  ADD KEY `id_guida` (`id_guida`),
  ADD KEY `id_status` (`id_status`);

--
-- Indici per le tabelle `status_ordine`
--
ALTER TABLE `status_ordine`
  ADD PRIMARY KEY (`id_status`),
  ADD UNIQUE KEY `status` (`status`);

--
-- Indici per le tabelle `status_pacchetto`
--
ALTER TABLE `status_pacchetto`
  ADD PRIMARY KEY (`id_status`),
  ADD UNIQUE KEY `nome_status` (`status`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id_utente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indici per le tabelle `viaggi`
--
ALTER TABLE `viaggi`
  ADD PRIMARY KEY (`id_viaggio`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indici per le tabelle `viaggi_nazioni`
--
ALTER TABLE `viaggi_nazioni`
  ADD PRIMARY KEY (`id_viaggio`,`id_nazione`),
  ADD KEY `id_nazione` (`id_nazione`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `continenti`
--
ALTER TABLE `continenti`
  MODIFY `id_continente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT per la tabella `guide`
--
ALTER TABLE `guide`
  MODIFY `id_guida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `nazioni`
--
ALTER TABLE `nazioni`
  MODIFY `id_nazione` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT per la tabella `ordini`
--
ALTER TABLE `ordini`
  MODIFY `id_ordine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `pacchetti`
--
ALTER TABLE `pacchetti`
  MODIFY `id_pacchetto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `status_ordine`
--
ALTER TABLE `status_ordine`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `status_pacchetto`
--
ALTER TABLE `status_pacchetto`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id_utente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `viaggi`
--
ALTER TABLE `viaggi`
  MODIFY `id_viaggio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `nazioni`
--
ALTER TABLE `nazioni`
  ADD CONSTRAINT `nazioni_ibfk_1` FOREIGN KEY (`id_continente`) REFERENCES `continenti` (`id_continente`);

--
-- Limiti per la tabella `ordini`
--
ALTER TABLE `ordini`
  ADD CONSTRAINT `ordini_ibfk_1` FOREIGN KEY (`id_utente`) REFERENCES `utenti` (`id_utente`),
  ADD CONSTRAINT `ordini_ibfk_2` FOREIGN KEY (`id_pacchetto`) REFERENCES `pacchetti` (`id_pacchetto`),
  ADD CONSTRAINT `ordini_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `status_ordine` (`id_status`);

--
-- Limiti per la tabella `pacchetti`
--
ALTER TABLE `pacchetti`
  ADD CONSTRAINT `pacchetti_ibfk_1` FOREIGN KEY (`id_viaggio`) REFERENCES `viaggi` (`id_viaggio`),
  ADD CONSTRAINT `pacchetti_ibfk_2` FOREIGN KEY (`id_guida`) REFERENCES `guide` (`id_guida`),
  ADD CONSTRAINT `pacchetti_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `status_pacchetto` (`id_status`);

--
-- Limiti per la tabella `viaggi`
--
ALTER TABLE `viaggi`
  ADD CONSTRAINT `viaggi_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorie` (`id_categoria`);

--
-- Limiti per la tabella `viaggi_nazioni`
--
ALTER TABLE `viaggi_nazioni`
  ADD CONSTRAINT `viaggi_nazioni_ibfk_1` FOREIGN KEY (`id_viaggio`) REFERENCES `viaggi` (`id_viaggio`),
  ADD CONSTRAINT `viaggi_nazioni_ibfk_2` FOREIGN KEY (`id_nazione`) REFERENCES `nazioni` (`id_nazione`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
