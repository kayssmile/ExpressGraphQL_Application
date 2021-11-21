-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql11.freemysqlhosting.net
-- Erstellungszeit: 21. Nov 2021 um 11:15
-- Server-Version: 5.5.62-0ubuntu0.14.04.1
-- PHP-Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `sql11450647`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `estates`
--

CREATE TABLE `estates` (
  `id` tinyint(1) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `country` text NOT NULL,
  `canton` text NOT NULL,
  `city` text NOT NULL,
  `zip` int(11) NOT NULL,
  `availability` text NOT NULL,
  `prize` int(11) NOT NULL,
  `estate_type` text NOT NULL,
  `lat` float NOT NULL,
  `long` float NOT NULL,
  `usable_area` int(11) NOT NULL,
  `ref_type_id` tinyint(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `img` text NOT NULL,
  `img1` text NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `estates`
--

INSERT INTO `estates` (`id`, `title`, `description`, `country`, `canton`, `city`, `zip`, `availability`, `prize`, `estate_type`, `lat`, `long`, `usable_area`, `ref_type_id`, `created_at`, `updated_at`, `img`, `img1`, `img2`, `img3`) VALUES
(1, 'Bijou am See', 'An mystischer Lage in der Nähe des berühmten Greenwhich Waldes verkaufen wir das vollständig renovierten Gebäude. Das Haus bietet mit den 13 attraktiven Räumen einem grosszügigen Umschwung am See eine nicht alltägliche und einzigartige Atmosphäre', 'Schweiz', 'Luzern', 'Sursee', 6214, 'ab sofort', 900000, 'zu verkaufen', 47.1715, 8.12628, 300, 1, '2021-11-04 21:01:17', '2021-11-05 21:01:17', '../src/Images/Immobilien/photo-1464146072230-91cabc968266.jpg', '../src/Images/Immobilien/photo-1472228283686-42356d789f66.jpg', '../src/Images/Immobilien/photo-1491955478222-69ae25414368.jpg', '../src/Images/Immobilien/photo-1551133990-60f24c1e4158.jpg'),
(2, '3.5-Zimmer Wohnung', 'Dieser grosszügigen 3.5 Zimmer-Wohnung bietet eine behagliche und warme Wohnatmosphäre. In den praktisch konzipierten Räumen lassen sich tolle Einrichtungsideen realisieren und verfügt über ein tolles Raumangebot.', 'Schweiz', 'St.Gallen', 'St.Gallen', 6900, 'ab 01.01.2022', 2200, 'zu vermieten', 46.005, 8.94332, 120, 2, '2021-11-04 21:06:33', '2021-11-04 21:06:33', '../src/Images/Immobilien/photo-1448630360428-65456885c650.jpg', '../src/Images/Immobilien/photo-1502005229762-cf1b2da7c5d6.jpg', '../src/Images/Immobilien/photo-1507089947368-19c1da9775ae.jpg', '../src/Images/Immobilien/photo-1507652313519-d4e9174996dd.jpg'),
(3, '6-Zimmer Villa', 'Hell, modern und komfortabel. Die neu gebaute Villa von 280m² mit grossem Garten, geräumiger Terrasse mit Ess- und Grillplatz bietet Ruhe und Erholung inmitten des Grüns der tessiner Landschaft.', 'Schweiz', 'Tessin', 'Lugano', 6977, 'ab sofort', 4500, 'zu vermieten', 46.0064, 8.97428, 280, 1, '2021-11-05 21:11:11', '2021-11-06 21:11:11', '../src/Images/Immobilien/photo-1512917774080-9991f1c4c750.jpg', '../src/Images/Immobilien/luggage-930804_1280.jpg', '../src/Images/Immobilien/bedroom-6686061_1280.jpg', '../src/Images/Immobilien/photo-1507652313519-d4e9174996dd.jpg'),
(4, '4.5-Zimmer Wohnung', 'Diese helle Altbau-Wohnung befindet sich in der Nähe des Stadttheaters \\/ Kantonsspitals und ca. 10 Gehminuten vom Stadtzentrum an sonniger Wohnlage und verfügt über viele detailverliebte Ausstattungs-Specials.', 'Schweiz', 'St.Gallen', 'St.Gallen', 9000, 'ab 01.01.2022', 2800, 'zu vermieten', 47.428, 9.38337, 150, 2, '2021-11-04 21:14:00', '2021-11-04 21:14:00', '../src/Images/Immobilien/photo-1495433324511-bf8e92934d90.jpg', '../src/Images/Immobilien/photo-1502005229762-cf1b2da7c5d6.jpg', '../src/Images/Immobilien/photo-1507089947368-19c1da9775ae.jpg', '../src/Images/Immobilien/photo-1512916958891-fcf61b2160df.jpg'),
(5, 'Haus in Betschwanden', 'In Betschwanden sucht ein freistehendes Einfamilienhaus einen neuen Besitzer. Auf drei Etagen verteilt bietet dieses Haus sehr viel Platz. Durch die grosse, moderne Küche können Sie den Garten mit einem schönem, gedeckten Sitzplatz erreichen und viele Sonnenstunden geniessen, wie auch auf der grossen Dachterrasse.', 'Schweiz', 'Luzern', 'Sursee', 6214, 'ab sofort', 1125000, 'zu verkaufen', 47.1715, 8.12628, 256, 1, '2021-11-04 21:20:54', '2021-11-04 21:20:54', '../src/Images/Immobilien/photo-1494884113216-952a0c2c1a30.jpg', '../src/Images/Immobilien/photo-1491955478222-69ae25414368.jpg', '../src/Images/Immobilien/photo-1472228283686-42356d789f66.jpg', '../src/Images/Immobilien/photo-1507652313519-d4e9174996dd.jpg'),
(6, '6.5-Zimmer Penthouse', 'Das Anwesen ist geprägt von Eleganz, Harmonie und einem speziellen Lichtkonzept. Lassen Sie sich von diesem 6.5-Zimmerwohnung Penthouse verzaubern. Angelehnt an das klassische Engadinerhaus mit wuchtigem Steinbau und Sgraffito stellt eine Fusion nostalgischer Elemente und dezenter Moderne dar.', 'Schweiz', 'Graubünden', 'Pontresina', 7504, 'ab sofort', 8900000, 'zu verkaufen', 46.4941, 9.89976, 320, 2, '2021-11-04 21:24:06', '2021-11-04 21:24:06', '../src/Images/Immobilien/villa-cortine-palace-949552_1280.jpg', '../src/Images/Immobilien/villa-4555824_1280.jpg', '../src/Images/Immobilien/photo-1551133990-60f24c1e4158.jpg', '../src/Images/Immobilien/photo-1507652313519-d4e9174996dd.jpg'),
(7, '3.5-Zimmer Wohnung', 'Mieten Sie eine helle Wohnung 3.5 Zimmer, in der Nähe des Flusses Musia, sehr sonnige Gegend. Die Wohnungen bestehen aus einem Wohnbereich mit offener Küche, zwei Schlafzimmern, einem Bad mit Dusche, einer Terrasse und einem Keller.', 'Schweiz', 'Graubünden', 'Cama', 6557, 'ab 20.12.2021', 1200, 'zu vermieten', 46.2713, 9.17074, 120, 2, '2021-11-04 21:27:25', '2021-11-04 21:27:25', '../src/Images/Immobilien/vacation-2018846_1280.jpg', '../src/Images/Immobilien/chair-1840526_1280.jpg', '../src/Images/Immobilien/ostsee-5498368_1280.jpg', '../src/Images/Immobilien/1200px-Plumpsklo.jpg'),
(8, '4.5-Zimmer Wohnung', 'Grosszügige, charmante Wohnung mit Galerie, Wohnzimmer, offener Küche, 2 Schlafzimmern und einem kleineren Abstellraum mit Fenster.', 'Schweiz', 'Graubünden', 'Klosters', 7252, 'ab sofort', 1650, 'zu vermieten', 46.8836, 9.87587, 120, 2, '2021-11-04 21:32:11', '2021-11-04 21:32:11', '../src/Images/Immobilien/apartments-1845884_1280.jpg', '../src/Images/Immobilien/apartment-406901_1280.jpg', '../src/Images/Immobilien/kitchen-2094707_1280.jpg', '../src/Images/Immobilien/photo-1512916958891-fcf61b2160df.jpg'),
(9, '3.5-Zimmer Tempel', 'Der schoene Tempel am Mt. Kailash direkt an der Himalayastrasse bietet einen optimalen Wohn- und Lebensraum. An ruhiger, sonniger Lage am Kailash  gelegen, befindet sich Ihr neues Zuhause in unmittelbarer Nähe zum Mt.Everest. ', 'Little Tibet', 'Tibet', 'Dharamsala', 9000, 'ab sofort', 1860, 'zu vermieten', 31.0684, 81.3116, 122, 2, '2021-11-04 21:35:42', '2021-11-04 21:35:42', '../src/Images/Immobilien/water-1283963_1280.jpg', '../src/Images/Immobilien/staircase-274614_1280.jpg', '../src/Images/Immobilien/temple-171377_1280.jpg', '../src/Images/Immobilien/monastery-6560623_1280.jpg'),
(10, '2.5-Zimmer Wohnung', 'Komplett renovierte, helle 2-Zimmer Wohnung in einer alten Jugenstilvilla von 1910. Hochwertiger Ausbaustandard mit neuen Holzmetallfenstern (3-fach Verglasung), geschliffener Zementboden mit Dodenheizung.', 'Schweiz', 'St.Gallen', 'St.Gallen', 9015, 'ab sofort', 1390, 'zu vermieten', 47.4067, 9.32085, 41, 2, '2021-11-04 21:38:51', '2021-11-04 21:38:51', '../src/Images/Immobilien/buildings-5941345_1280.jpg', '../src/Images/Immobilien/photo-1551133990-70307d02dc94.jpg', '../src/Images/Immobilien/photo-1491955478222-69ae25414368.jpg', '../src/Images/Immobilien/photo-1507652313519-d4e9174996dd.jpg'),
(11, 'Haus in Niederurnen', 'Ein lukratives Investment an top Lage mit grossem Entwicklungspotential für die Zukunft. Sicher ein lohnenswertes Anlageobjekt der Extraklasse oder für die Nutzung als Generationenhaus mit 2 Wohneinheiten und Potential für mehr Einheiten. Sofort 6% Nettorendite mit Aussicht auf Mehr. Zudem lockt das Gebäude durch ein attraktives Nebengebäude, unmittelbar neben dem Mehrfamilienhaus, welches im Kaufpreis inbegriffen ist.', 'Schweiz', 'Glarus', 'Niederurnen', 8867, 'nach Vereinbarung', 635000, 'zu verkaufen', 47.1258, 9.0552, 180, 1, '2021-11-04 22:08:26', '2021-11-04 22:08:26', '../src/Images/Immobilien/forest-house-2347508_1280.jpg', '../src/Images/Immobilien/fireplace-416042_1280.jpg', '../src/Images/Immobilien/apartment-406901_1280.jpg', '../src/Images/Immobilien/1200px-Plumpsklo.jpg'),
(12, '4.5-Zimmer Eigentumswohnung', 'Finden Sie hier Ihr neues Zuhause und geniessen Sie das Leben in den eigenen vier Wänden. Ideale Lage, hochwertiger Ausbau, gemütliche Loggia: Diese 4.5 Zimmer-Wohnung in Grabs ist perfekt für eine kleine Familie, Paare oder Einzelpersonen mit zeitgemässen Wohnansprüchen.', 'Schweiz', 'St.Gallen', 'Grabs', 9472, 'ab sofort', 675000, 'zu verkaufen', 47.1801, 9.43717, 124, 2, '2021-11-04 22:11:25', '2021-11-04 22:11:25', '../src/Images/Immobilien/apartment-3564955_1280.jpg', '../src/Images/Immobilien/interior-design-4467768_1280.jpg', '../src/Images/Immobilien/room-4768551_1280.jpg', '../src/Images/Immobilien/bedroom-6686061_1280.jpg'),
(13, 'Riesige Wohlfühloase mit Atrium', 'Am Hang mit atemberaubender Aussicht – an bester Lage und optimal erschlossen. Die drei überdurchschnittlich grosszügigen Einfamilienhäuser liegen an traumhafter Hanglage in Grabs.', 'Schweiz', 'St.Gallen', 'Grabs', 9472, '', 1890000, 'zu verkaufen', 47.1832, 9.43884, 402, 1, '2021-11-04 22:14:07', '2021-11-04 22:14:07', '../src/Images/Immobilien/villa-4555824_1280.jpg', '../src/Images/Immobilien/photo-1600585154084-4e5fe7c39198.jpg', '../src/Images/Immobilien/villa-2186906_1280.jpg', '../src/Images/Immobilien/photo-1525896544042-354764aa27e6 1.jpg'),
(14, '3-Zimmer Wohnung', 'Die helle und grosszügig geschnittene 3-Zimmerwohnung an der Oberalpstrasse 54 in Chur liegt in einem ruhigen, familienfreundlichen Quartier.', 'Schweiz', 'Graubünden', 'Chur', 7000, 'ab 01.11.2021', 1450, 'zu vermieten', 46.8544, 9.52034, 68, 2, '2021-11-04 22:16:41', '2021-11-04 22:16:41', '../src/Images/Immobilien/building-5630441_1280.jpg', '../src/Images/Immobilien/kitchen-2094707_1280.jpg', '../src/Images/Immobilien/photo-1507652313519-d4e9174996dd.jpg', '../src/Images/Immobilien/photo-1481277542470-605612bd2d61.jpg'),
(15, '3.5-Zimmer Wohnung', 'Geräumige und helle Wohnung im Erdgeschoss. Sie verfügt über einen Gartensitzplatz mit grosser Rasenfläche zur alleinigen Nutzung (der Unterhalt des Rasens kann auf Wunsch übernommen werden).', 'Schweiz', 'Graubünden', 'Chur', 7000, 'ab 01.11.2021', 1880, 'zu vermieten', 46.8457, 9.52025, 68, 2, '2021-11-09 22:19:34', '2021-11-09 22:19:34', '../src/Images/Immobilien/indoors-3101776_1280.jpg', '../src/Images/Immobilien/home-5835289_1280.jpg', '../src/Images/Immobilien/photo-1502005229762-cf1b2da7c5d6.jpg', '../src/Images/Immobilien/luggage-930804_1280.jpg'),
(16, '4.5-Zimmer Wohnung', 'Bei der 4.5-Zimmer-Wohnung handelt es sich um ein absolutes Bijou an idealster Lage. Die Wohnung überzeugt mit grosszügiger Moderne und bietet mit rund 91m2 Wohnfläche einen Platz, mit viel Liebe zum Detail.', 'Schweiz', 'Graubünden', 'Chur', 7000, 'ab 01.12.2021', 2140, 'zu vermieten', 46.853, 9.52983, 68, 2, '2021-11-04 22:24:40', '2021-11-04 22:24:40', '../src/Images/Immobilien/city-3085516_1280.jpg', '../src/Images/Immobilien/elevators-1598431_1280.jpg', '../src/Images/Immobilien/photo-1507652313519-d4e9174996dd.jpg', '../src/Images/Immobilien/photo-1472228283686-42356d789f66.jpg'),
(17, 'Haus Boot', 'Ihr Traum vom Wohnen. Schöne, helle Wohnung mit ca. 98m² Wohnfläche auf dem schönen Bodensee.', 'Schweiz', 'St.Gallen', 'Romanshorn', 9470, 'ab 01.10.2021', 1570, 'zu verkaufen', 47.5461, 9.51084, 68, 2, '2021-11-12 22:27:38', '2021-11-12 22:27:38', '../src/Images/Immobilien/schoner-wohnen-2728070_1280.jpg', '../src/Images/Immobilien/kitchen-2094707_1280.jpg', '../src/Images/Immobilien/wall-416060_1280.jpg', '../src/Images/Immobilien/indoors-3101776_1280.jpg'),
(18, '4.5-Zimmer Eigentumswohnung', 'Sonniges Wohnen an ruhiger Lage. Schöne, helle Wohnung an ruhiger Lage', 'Schweiz', 'St.Gallen', 'Grabs', 9472, 'ab 01.01.2022', 770000, 'zu vermieten', 47.1859, 9.44295, 119, 2, '2021-11-04 22:30:16', '2021-11-04 22:30:16', '../src/Images/Immobilien/kitchen-2400367_1280.jpg', '../src/Images/Immobilien/villa-cortine-palace-949552_1280.jpg', '../src/Images/Immobilien/luggage-930804_1280.jpg', '../src/Images/Immobilien/1200px-Plumpsklo.jpg'),
(19, '4.5-Zimmer Wohnung', 'Im Herzen von Grabs an der Vorderdorfstrasse 10a und 10b entstehen diese zwei Mehrfamilienhäuser mit jeweils einer 2.5-Zimmerwohnung, drei 3.5-Zimmerwohnungen und fünf 4.5-Zimmerwohnungen.', 'Schweiz', 'St.Gallen', 'Grabs', 9472, 'ab sofort', 2050, 'zu vermieten', 47.182, 9.44275, 103, 2, '2021-11-04 22:33:04', '2021-11-04 22:33:04', '../src/Images/Immobilien/chair-1840526_1280.jpg', '../src/Images/Immobilien/library-5219747_1280.jpg', '../src/Images/Immobilien/photo-1491955478222-69ae25414368.jpg', '../src/Images/Immobilien/photo-1512916958891-fcf61b2160df.jpg');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `estates`
--
ALTER TABLE `estates`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
