-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Okt 04. 12:01
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webaruhaz`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termek`
--

CREATE TABLE `termek` (
  `id` int(10) UNSIGNED NOT NULL,
  `termek_neve` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `kategoria` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `termek_ara` int(10) UNSIGNED NOT NULL,
  `termek_kepe_nagy` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `termek_kepe_kicsi` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `mennyiseg` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `termek`
--

INSERT INTO `termek` (`id`, `termek_neve`, `kategoria`, `termek_ara`, `termek_kepe_nagy`, `termek_kepe_kicsi`, `mennyiseg`) VALUES
(1, 'Hell Classic 250ml', 'energiaital', 193, 'hell_classic_250.png', 'hell.png', 200),
(2, 'Kobra energiaital 1500ml', 'energiaital', 269, 'kobra_energiaital_1500.png', 'kobra.png', 500),
(3, 'Monster Energy 500ml', 'energiaital', 499, 'monster_energy_500.png', 'monster.png', 215),
(4, 'Red Bull energiaital 250ml', 'energiaital', 544, 'red_bull_energy.png', 'red_bull.png', 125),
(5, 'Hell Energy Coffee Cappuccino 250ml', 'energiaital', 219, 'hell_energy_coffee_cappuccino_250.png', 'hell.png', 156),
(6, 'Bomba! energiaital 600ml', 'energiaital', 249, 'bomba_energiaital_650.png', 'bomba.png', 145),
(7, 'Monster Mango Loco 500ml', 'energiaital', 494, 'monster_mango_loco_500.png', 'monster.png', 421),
(8, 'Monster Espresso 250ml', 'energiaital', 419, 'monster_espresso_250.png', 'monster.png', 800),
(9, 'Burn Original 250ml', 'energiaital', 270, 'burn_original_250.png', 'burn.png', 300),
(10, 'Bomba! energiaital 250ml - dobozos', 'energiaital', 187, 'bomba_dobozos_250.png', 'bomba.png', 213),
(11, 'Hell Energy Coffee Latte 250ml', 'energiaital', 219, 'hell_energy_coffee_latte_250.png', 'hell.png', 154),
(12, 'Monster Rehab 500ml', 'energiaital', 509, 'monster_rehab_500.png', 'monster.png', 144),
(13, 'Monster Absolutely Zero 500ml', 'energiaital', 491, 'monster_absolutely_zero_500.png', 'monster.png', 45),
(14, 'Vaporesso Luxe 2 ', 'ecigarettakit', 33990, 'c1.png', 'vaporesso.png', 4),
(15, 'Vaporesso PM40 ', 'ecigarettakit', 17300, 'c2.png', 'vaporesso.png', 2),
(16, 'Vaporesso GTX GO 80', 'ecigarettakit', 10900, 'c3.png', 'vaporesso.png', 6),
(17, 'Geekvape Aegis Legend 2', 'ecigarettakit', 34990, 'c4.png', 'geekvape.png', 9),
(18, 'Joyetech Widewick', 'ecigarettakit', 5020, 'c5.png', 'joyetech.png', 7),
(19, 'Lost Vape Thelema Solo', 'ecigarettakit', 22990, 'c6.png', 'lostvape.png', 4),
(20, 'Joyetech EGO AIO', 'ecigarettakit', 10890, 'c7.png', 'joyetech.png', 13),
(21, 'Steam Crave Aromamizer Titan KIT', 'ecigarettakit', 43000, 'c8.png', 'steamcrave.png', 1),
(22, 'Smok Fortis 80W', 'ecigarettakit', 20999, 'c9.png', 'smok.png', 6),
(23, 'Smok R-KISS 2', 'ecigarettakit', 26999, 'c10.png', 'smok.png', 3),
(24, 'Smok X-Priv', 'ecigarettakit', 28999, 'c11.png', 'smok.png', 2),
(25, 'Voopoo Drag X', 'ecigarettakit', 19999, 'c12.png', 'voopoo.png', 10),
(26, 'Voopoo Argus GT 2', 'ecigarettakit', 34490, 'c13.png', 'voopoo.png', 7),
(27, 'ASTI MARTINI PROSECCO PEZSGŐ 0,75L', 'alkohol', 2695, 'asti-martini-prosecco-pezsgo-xxl.jpeg', 'asti_martini.jpg', 30),
(28, 'ABERFELDY - WHISKY 0,7L 12 ÉVES DD', 'alkohol', 18050, 'aberfeldy-whisky-0.7l-12-eves-xxl.jpeg', 'aberfeldy.png', 25),
(29, 'ABSOLUT - 100 VODKA 0,7L', 'alkohol', 7540, 'absolut-100-vodka-1l-xxl.jpeg', 'Absolut.png', 14),
(30, 'ABSOLUT VODKA 1L', 'alkohol', 6890, 'absolut-vodka-1.0-liter-xxl.jpeg', 'Absolut.png', 37),
(31, 'MARTINI PROSECCO 1L', 'alkohol', 2890, 'asti-martini-prosecco-pezsgo-xxl.jpeg', 'asti_martini.jpg', 15),
(32, 'Borsodi Friss Citrommentes 0.5L', 'alkohol', 259, 'Borsodi Friss Citromos alkoholmentes.png', 'borsodi.jfif', 41),
(33, 'BORSODI SÖR DOB.4.5% 0.5L', 'alkohol', 239, 'borsodisor.jpg', 'borsodi.jfif', 33),
(34, 'Corona Extra 4.5% 355ml', 'alkohol', 630, 'corona_extra mexikoi_vilagos sor.jpg', 'corona.png', 22),
(35, 'Jack Daniels Almás 750ml', 'alkohol', 9500, 'jack_daniels_almas_750ml.jfif', 'JackDaniels.png', 14),
(36, 'Jack Daniels Tennesse Fire 0.7L', 'alkohol', 8649, 'jack_daniels_ tennessee_fire whiskey.jfif', 'JackDaniels.png', 42),
(37, 'ST Hubertus 0.5L 33%', 'alkohol', 2799, 'St.Hubertus-05-33_.jpg', 'StHubertus.png', 46),
(38, 'Tátra Tea Betyáros 72% 0.7L', 'alkohol', 9250, 'tatratea-betyaros-72-07l-dd-xxl.jpeg', 'tatratea.png', 21),
(39, 'Tátra Tea Gyümölcsös 63% 0.7L', 'alkohol', 8790, 'tatratea-erdeigyumolcs-62-0.7-liter-xxl.jpeg', 'tatratea.png', 67),
(40, 'Acapulco Blue', 'cigaretta', 1620, 'foto_n_01.jpg', 'foto_k_01.jpg', 1),
(41, 'Austin Blue 100\'s', 'cigaretta', 1440, 'foto_n_02.jpg', 'foto_k_02.jpg', 1),
(42, 'Austin Red 100\'s', 'cigaretta', 1500, 'foto_n_03.jpg', 'foto_k_02.jpg', 1),
(43, 'Benson & Hedges Black', 'cigaretta', 1940, 'foto_n_04.jpg', 'foto_k_03.jpg', 1),
(44, 'Benson & Hedges Silver', 'cigaretta', 1680, 'foto_n_05.jpg', 'foto_k_03.jpg', 1),
(45, 'Camel Yellow', 'cigaretta', 1990, 'foto_n_06.jpg', 'foto_k_04.jpg', 1),
(46, 'Dunhill Fine Cut Black', 'cigaretta', 1750, 'foto_n_07.jpg', 'foto_k_05.jpg', 1),
(47, 'Glamour Pink', 'cigaretta', 999, 'foto_n_08.jpg', 'foto_k_06.jpg', 1),
(48, 'Golden Gate Red', 'cigaretta', 1590, 'foto_n_09.jpg', 'foto_k_07.jpg', 1),
(49, 'Hungária Piros', 'cigaretta', 1570, 'foto_n_10.jpg', 'foto_k_08.jpg', 1),
(50, 'Marlboro Advance Blue', 'cigaretta', 1740, 'foto_n_11.jpg', 'foto_k_9.jpg', 1),
(51, 'Matrix Redline', 'cigaretta', 1390, 'foto_n_12.jpg', 'foto_k_10.jpg', 1),
(52, 'Multifilter Classic Blue', 'cigaretta', 1750, 'foto_n_13.jpg', 'foto_k_11.jpg', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `termek`
--
ALTER TABLE `termek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `termek`
--
ALTER TABLE `termek`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
