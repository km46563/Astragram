-- phpMyAdmin SQL Dump
-- version 3.3.10
-- http://www.phpmyadmin.net
--
-- Host: db.zut.edu.pl
-- Czas wygenerowania: 07 Cze 2021, 10:33
-- Wersja serwera: 1.0.328
-- Wersja PHP: 5.4.16

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `km46563`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `CialoNiebieskieGrupa_IO`
--

CREATE TABLE IF NOT EXISTS `CialoNiebieskieGrupa_IO` (
  `Id_CialaNiebieskiego` int(11) DEFAULT NULL,
  `Id_Grupy` int(11) DEFAULT NULL,
  UNIQUE KEY `Id_CialaNiebieskiego` (`Id_CialaNiebieskiego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `CialoNiebieskieGrupa_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `CialoNiebieskie_IO`
--

CREATE TABLE IF NOT EXISTS `CialoNiebieskie_IO` (
  `Id_CialaNiebieskiego` int(11) DEFAULT NULL,
  `Nazwa` varchar(255) DEFAULT NULL,
  `Opis` varchar(2500) DEFAULT NULL,
  `Masa` int(11) DEFAULT NULL,
  `Odleglosc_od_Ziemi` int(11) DEFAULT NULL,
  `Odleglosc_od_Slonca` int(11) DEFAULT NULL,
  `Objetosc` int(11) DEFAULT NULL,
  UNIQUE KEY `Id_CialaNiebieskiego` (`Id_CialaNiebieskiego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `CialoNiebieskie_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `Czat_IO`
--

CREATE TABLE IF NOT EXISTS `Czat_IO` (
  `Id_Wiadomosci` int(11) DEFAULT NULL,
  `Tresc` varchar(255) DEFAULT NULL,
  UNIQUE KEY `Id_Wiadomosci` (`Id_Wiadomosci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Czat_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `GrupaWiadomosc_IO`
--

CREATE TABLE IF NOT EXISTS `GrupaWiadomosc_IO` (
  `Id_Wiadomosci` int(11) DEFAULT NULL,
  `Id_Grupy` int(11) DEFAULT NULL,
  UNIQUE KEY `Id_Wiadomosci` (`Id_Wiadomosci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `GrupaWiadomosc_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `Grupa_IO`
--

CREATE TABLE IF NOT EXISTS `Grupa_IO` (
  `Id_Grupy` int(11) DEFAULT NULL,
  `Klasyfikacja` varchar(255) DEFAULT NULL,
  UNIQUE KEY `Id_Grupy` (`Id_Grupy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Grupa_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `KomentarzeZdjecia_IO`
--

CREATE TABLE IF NOT EXISTS `KomentarzeZdjecia_IO` (
  `Id_Komentarza` int(11) DEFAULT NULL,
  `Id_Zdjecia` int(11) DEFAULT NULL,
  UNIQUE KEY `Id_Komentarza` (`Id_Komentarza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `KomentarzeZdjecia_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `Komentarze_IO`
--

CREATE TABLE IF NOT EXISTS `Komentarze_IO` (
  `Id_Komentarza` int(11) DEFAULT NULL,
  `Tresc` varchar(255) DEFAULT NULL,
  UNIQUE KEY `Id_Komentarza` (`Id_Komentarza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Komentarze_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `NajlepszeZdjecia_IO`
--

CREATE TABLE IF NOT EXISTS `NajlepszeZdjecia_IO` (
  `Ranking` int(11) DEFAULT NULL,
  `Id_Zdjecia` int(11) DEFAULT NULL,
  UNIQUE KEY `Ranking` (`Ranking`),
  UNIQUE KEY `Id_Zdjecia` (`Id_Zdjecia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `NajlepszeZdjecia_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `PermisjeUzytkownikow_IO`
--

CREATE TABLE IF NOT EXISTS `PermisjeUzytkownikow_IO` (
  `Id_Roli` int(11) DEFAULT NULL,
  `Id_Permisji` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `PermisjeUzytkownikow_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `Permisje_IO`
--

CREATE TABLE IF NOT EXISTS `Permisje_IO` (
  `Id_Permisji` int(11) DEFAULT NULL,
  `Nazwa` varchar(255) DEFAULT NULL,
  `Opis` varchar(255) DEFAULT NULL,
  UNIQUE KEY `Id_Permisji` (`Id_Permisji`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Permisje_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `Rola_IO`
--

CREATE TABLE IF NOT EXISTS `Rola_IO` (
  `Id_Roli` int(11) DEFAULT NULL,
  `Nazwa` varchar(255) DEFAULT NULL,
  `Opis` varchar(255) DEFAULT NULL,
  UNIQUE KEY `Id_Roli` (`Id_Roli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Rola_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `RoleUzytkownikow_IO`
--

CREATE TABLE IF NOT EXISTS `RoleUzytkownikow_IO` (
  `Id_Uzytkownika` int(11) DEFAULT NULL,
  `Id_Roli` int(11) DEFAULT NULL,
  UNIQUE KEY `Id_Uzytkownika` (`Id_Uzytkownika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `RoleUzytkownikow_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `UzytkownicyWiadomosc_IO`
--

CREATE TABLE IF NOT EXISTS `UzytkownicyWiadomosc_IO` (
  `Id_Wiadomosci` int(11) DEFAULT NULL,
  `Id_Uzytkownika` int(11) DEFAULT NULL,
  UNIQUE KEY `Id_Wiadomosci` (`Id_Wiadomosci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `UzytkownicyWiadomosc_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `Uzytkownicy_IO`
--

CREATE TABLE IF NOT EXISTS `Uzytkownicy_IO` (
  `Id_uzytkownika` int(11) DEFAULT NULL,
  `Login` varchar(255) DEFAULT NULL,
  `Haslo` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  UNIQUE KEY `Id_uzytkownika` (`Id_uzytkownika`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Uzytkownicy_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `ZdjeciaUzytkownika_IO`
--

CREATE TABLE IF NOT EXISTS `ZdjeciaUzytkownika_IO` (
  `Id_Uzytkownika` int(11) DEFAULT NULL,
  `Id_Zdjecia` int(11) DEFAULT NULL,
  UNIQUE KEY `Id_Zdjecia` (`Id_Zdjecia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ZdjeciaUzytkownika_IO`
--


-- --------------------------------------------------------

--
-- Struktura tabeli dla  `Zdjecia_IO`
--

CREATE TABLE IF NOT EXISTS `Zdjecia_IO` (
  `Id_Zdjecia` int(11) DEFAULT NULL,
  `Tytul` varchar(255) DEFAULT NULL,
  `Opis` varchar(255) DEFAULT NULL,
  `Zdjecie` varchar(255) DEFAULT NULL,
  `Ocena` float DEFAULT NULL,
  UNIQUE KEY `Id_Zdjecia` (`Id_Zdjecia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Zdjecia_IO`
--

