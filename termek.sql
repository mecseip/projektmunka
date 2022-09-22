-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Sze 22. 13:35
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
(1, 'Acapulco Blue', 'Cigaretta', 1620, 'foto_n_01.jpg', 'foto_k_01.jpg', 1),
(2, 'Austin Blue 100\'s', 'Cigaretta', 1440, 'foto_n_02.jpg', 'foto_k_02.jpg', 1),
(3, 'Austin Red 100\'s', 'Cigaretta', 1500, 'foto_n_03.jpg', 'foto_k_02.jpg', 1),
(4, 'Benson & Hedges Black', 'Cigaretta', 1940, 'foto_n_04.jpg', 'foto_k_03.jpg', 1),
(5, 'Benson & Hedges Silver', 'Cigaretta', 1680, 'foto_n_05.jpg', 'foto_k_03.jpg', 1),
(6, 'Camel Yellow', 'Cigaretta', 1990, 'foto_n_06.jpg', 'foto_k_04.jpg', 1),
(7, 'Dunhill Fine Cut Black', 'Cigaretta', 1750, 'foto_n_07.jpg', 'foto_k_05.jpg', 1),
(8, 'Glamour Pink', 'Cigaretta', 999, 'foto_n_08.jpg', 'foto_k_06.jpg', 1),
(9, 'Golden Gate Red', 'Cigaretta', 1590, 'foto_n_09.jpg', 'foto_k_07.jpg', 1),
(10, 'Hungária Piros', 'Cigaretta', 1570, 'foto_n_10.jpg', 'foto_k_08.jpg', 1),
(11, 'Marlboro Advance Blue', 'Cigaretta', 1740, 'foto_n_11.jpg', 'foto_k_9.jpg', 1),
(12, 'Matrix Redline', 'Cigaretta', 1390, 'foto_n_12.jpg', 'foto_k_10.jpg', 1),
(13, 'Multifilter Classic Blue', 'Cigaretta', 1750, 'foto_n_13.jpg', 'foto_k_11.jpg', 1);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
