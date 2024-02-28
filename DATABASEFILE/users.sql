-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Lut 2024, 14:28
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `users`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_21_174635_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan1`
--

CREATE TABLE `plan1` (
  `plan1ID` int(11) NOT NULL,
  `userTableID` int(3) DEFAULT NULL,
  `plan1` varchar(20) NOT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL,
  `val5` varchar(7) DEFAULT NULL,
  `val6` varchar(7) DEFAULT NULL,
  `val7` varchar(7) DEFAULT NULL,
  `val8` varchar(7) DEFAULT NULL,
  `val9` varchar(7) DEFAULT NULL,
  `val10` varchar(7) DEFAULT NULL,
  `val11` varchar(7) DEFAULT NULL,
  `val12` varchar(7) DEFAULT NULL,
  `val13` varchar(7) DEFAULT NULL,
  `val14` varchar(7) DEFAULT NULL,
  `val15` varchar(7) DEFAULT NULL,
  `val16` varchar(7) DEFAULT NULL,
  `val17` varchar(7) DEFAULT NULL,
  `val18` varchar(7) DEFAULT NULL,
  `val19` varchar(7) DEFAULT NULL,
  `val20` varchar(7) DEFAULT NULL,
  `val21` varchar(7) DEFAULT NULL,
  `val22` varchar(7) DEFAULT NULL,
  `val23` varchar(7) DEFAULT NULL,
  `val24` varchar(7) DEFAULT NULL,
  `val25` varchar(7) DEFAULT NULL,
  `val26` varchar(7) DEFAULT NULL,
  `val27` varchar(7) DEFAULT NULL,
  `val28` varchar(7) DEFAULT NULL,
  `val29` varchar(7) DEFAULT NULL,
  `val30` varchar(7) DEFAULT NULL,
  `val31` varchar(7) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `plan1`
--

INSERT INTO `plan1` (`plan1ID`, `userTableID`, `plan1`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `val31`, `user_id`) VALUES
(1, 1, '🍌BULK🍌', 'checked', 'checked', 'checked', 'checked', '', '', '', '', 'checked', 'checked', '', 'checked', '', '', '', '', 'checked', '', '', '', '', '', '', '', '', '', '', '', 'checked', 'checked', 'checked', 1),
(15, 3, 'wake up early(7am)', 'checked', 'checked', 'checked', 'checked', 'checked', 'checked', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(17, 3, 'wake up early(7am)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(18, 4, 'wake up early(7am)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(19, 5, 'wake up early(7am)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan2`
--

CREATE TABLE `plan2` (
  `plan2ID` int(11) NOT NULL,
  `userTableID` int(3) DEFAULT NULL,
  `plan2` varchar(20) NOT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL,
  `val5` varchar(7) DEFAULT NULL,
  `val6` varchar(7) DEFAULT NULL,
  `val7` varchar(7) DEFAULT NULL,
  `val8` varchar(7) DEFAULT NULL,
  `val9` varchar(7) DEFAULT NULL,
  `val10` varchar(7) DEFAULT NULL,
  `val11` varchar(7) DEFAULT NULL,
  `val12` varchar(7) DEFAULT NULL,
  `val13` varchar(7) DEFAULT NULL,
  `val14` varchar(7) DEFAULT NULL,
  `val15` varchar(7) DEFAULT NULL,
  `val16` varchar(7) DEFAULT NULL,
  `val17` varchar(7) DEFAULT NULL,
  `val18` varchar(7) DEFAULT NULL,
  `val19` varchar(7) DEFAULT NULL,
  `val20` varchar(7) DEFAULT NULL,
  `val21` varchar(7) DEFAULT NULL,
  `val22` varchar(7) DEFAULT NULL,
  `val23` varchar(7) DEFAULT NULL,
  `val24` varchar(7) DEFAULT NULL,
  `val25` varchar(7) DEFAULT NULL,
  `val26` varchar(7) DEFAULT NULL,
  `val27` varchar(7) DEFAULT NULL,
  `val28` varchar(7) DEFAULT NULL,
  `val29` varchar(7) DEFAULT NULL,
  `val30` varchar(7) DEFAULT NULL,
  `val31` varchar(7) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `plan2`
--

INSERT INTO `plan2` (`plan2ID`, `userTableID`, `plan2`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `val31`, `user_id`) VALUES
(1, 1, '🦍 GYM 🦍', 'checked', 'checked', 'checked', '', '', '', '', 'checked', 'checked', '', 'checked', 'checked', '', '', '', '', 'checked', '', '', 'checked', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(15, 3, 'exercise', 'checked', 'checked', 'checked', 'checked', 'checked', 'checked', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'checked', 1),
(17, 3, 'exercise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(18, 4, 'exercise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(19, 5, 'exercise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan3`
--

CREATE TABLE `plan3` (
  `plan3ID` int(11) NOT NULL,
  `userTableID` int(3) DEFAULT NULL,
  `plan3` varchar(20) NOT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL,
  `val5` varchar(7) DEFAULT NULL,
  `val6` varchar(7) DEFAULT NULL,
  `val7` varchar(7) DEFAULT NULL,
  `val8` varchar(7) DEFAULT NULL,
  `val9` varchar(7) DEFAULT NULL,
  `val10` varchar(7) DEFAULT NULL,
  `val11` varchar(7) DEFAULT NULL,
  `val12` varchar(7) DEFAULT NULL,
  `val13` varchar(7) DEFAULT NULL,
  `val14` varchar(7) DEFAULT NULL,
  `val15` varchar(7) DEFAULT NULL,
  `val16` varchar(7) DEFAULT NULL,
  `val17` varchar(7) DEFAULT NULL,
  `val18` varchar(7) DEFAULT NULL,
  `val19` varchar(7) DEFAULT NULL,
  `val20` varchar(7) DEFAULT NULL,
  `val21` varchar(7) DEFAULT NULL,
  `val22` varchar(7) DEFAULT NULL,
  `val23` varchar(7) DEFAULT NULL,
  `val24` varchar(7) DEFAULT NULL,
  `val25` varchar(7) DEFAULT NULL,
  `val26` varchar(7) DEFAULT NULL,
  `val27` varchar(7) DEFAULT NULL,
  `val28` varchar(7) DEFAULT NULL,
  `val29` varchar(7) DEFAULT NULL,
  `val30` varchar(7) DEFAULT NULL,
  `val31` varchar(7) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `plan3`
--

INSERT INTO `plan3` (`plan3ID`, `userTableID`, `plan3`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `val31`, `user_id`) VALUES
(1, 1, '🦍 GYM 🦍', 'checked', 'checked', 'checked', '', '', 'checked', 'checked', 'checked', 'checked', '', 'checked', 'checked', '', '', '', '', '', '', 'checked', 'checked', '', '', '', NULL, '', '', '', '', '', '', NULL, 1),
(14, 3, 'shower', 'checked', '', 'checked', 'checked', '', 'checked', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'checked', 1),
(16, 3, 'shower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(17, 4, 'shower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(18, 5, 'shower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan4`
--

CREATE TABLE `plan4` (
  `plan4ID` int(11) NOT NULL,
  `userTableID` int(3) DEFAULT NULL,
  `plan4` varchar(20) NOT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL,
  `val5` varchar(7) DEFAULT NULL,
  `val6` varchar(7) DEFAULT NULL,
  `val7` varchar(7) DEFAULT NULL,
  `val8` varchar(7) DEFAULT NULL,
  `val9` varchar(7) DEFAULT NULL,
  `val10` varchar(7) DEFAULT NULL,
  `val11` varchar(7) DEFAULT NULL,
  `val12` varchar(7) DEFAULT NULL,
  `val13` varchar(7) DEFAULT NULL,
  `val14` varchar(7) DEFAULT NULL,
  `val15` varchar(7) DEFAULT NULL,
  `val16` varchar(7) DEFAULT NULL,
  `val17` varchar(7) DEFAULT NULL,
  `val18` varchar(7) DEFAULT NULL,
  `val19` varchar(7) DEFAULT NULL,
  `val20` varchar(7) DEFAULT NULL,
  `val21` varchar(7) DEFAULT NULL,
  `val22` varchar(7) DEFAULT NULL,
  `val23` varchar(7) DEFAULT NULL,
  `val24` varchar(7) DEFAULT NULL,
  `val25` varchar(7) DEFAULT NULL,
  `val26` varchar(7) DEFAULT NULL,
  `val27` varchar(7) DEFAULT NULL,
  `val28` varchar(7) DEFAULT NULL,
  `val29` varchar(7) DEFAULT NULL,
  `val30` varchar(7) DEFAULT NULL,
  `val31` varchar(7) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `plan4`
--

INSERT INTO `plan4` (`plan4ID`, `userTableID`, `plan4`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `val31`, `user_id`) VALUES
(1, 1, '🦍 GYM 🦍', 'checked', 'checked', 'checked', '', '', 'checked', 'checked', 'checked', 'checked', '', 'checked', 'checked', '', '', '', '', '', 'checked', 'checked', 'checked', '', '', '', NULL, '', '', '', '', '', '', 'checked', 1),
(14, 3, 'self care', 'checked', '', 'checked', '', '', 'checked', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'checked', 1),
(16, 3, 'self care', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(17, 4, 'self care', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(18, 5, 'self care', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan5`
--

CREATE TABLE `plan5` (
  `plan5ID` int(11) NOT NULL,
  `userTableID` int(3) DEFAULT NULL,
  `plan5` varchar(20) NOT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL,
  `val5` varchar(7) DEFAULT NULL,
  `val6` varchar(7) DEFAULT NULL,
  `val7` varchar(7) DEFAULT NULL,
  `val8` varchar(7) DEFAULT NULL,
  `val9` varchar(7) DEFAULT NULL,
  `val10` varchar(7) DEFAULT NULL,
  `val11` varchar(7) DEFAULT NULL,
  `val12` varchar(7) DEFAULT NULL,
  `val13` varchar(7) DEFAULT NULL,
  `val14` varchar(7) DEFAULT NULL,
  `val15` varchar(7) DEFAULT NULL,
  `val16` varchar(7) DEFAULT NULL,
  `val17` varchar(7) DEFAULT NULL,
  `val18` varchar(7) DEFAULT NULL,
  `val19` varchar(7) DEFAULT NULL,
  `val20` varchar(7) DEFAULT NULL,
  `val21` varchar(7) DEFAULT NULL,
  `val22` varchar(7) DEFAULT NULL,
  `val23` varchar(7) DEFAULT NULL,
  `val24` varchar(7) DEFAULT NULL,
  `val25` varchar(7) DEFAULT NULL,
  `val26` varchar(7) DEFAULT NULL,
  `val27` varchar(7) DEFAULT NULL,
  `val28` varchar(7) DEFAULT NULL,
  `val29` varchar(7) DEFAULT NULL,
  `val30` varchar(7) DEFAULT NULL,
  `val31` varchar(7) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `plan5`
--

INSERT INTO `plan5` (`plan5ID`, `userTableID`, `plan5`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `val31`, `user_id`) VALUES
(1, 1, '🍌BULK🍌', 'checked', 'checked', '', '', 'checked', 'checked', 'checked', 'checked', 'checked', 'checked', 'checked', 'checked', ' ', '', '', '', '', 'checked', 'checked', 'checked', '', ' ', '', NULL, '', '', '', '', '', '', 'checked', 1),
(13, 3, 'healthy breakfast', 'checked', '', '', '', '', 'checked', '', '', 'checked', 'checked', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'checked', 'checked', 1),
(15, 3, 'healthy breakfast', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(16, 4, 'healthy breakfast', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(17, 5, 'healthy breakfast', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan6`
--

CREATE TABLE `plan6` (
  `plan6ID` int(11) NOT NULL,
  `userTableID` int(3) DEFAULT NULL,
  `plan6` varchar(20) NOT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL,
  `val5` varchar(7) DEFAULT NULL,
  `val6` varchar(7) DEFAULT NULL,
  `val7` varchar(7) DEFAULT NULL,
  `val8` varchar(7) DEFAULT NULL,
  `val9` varchar(7) DEFAULT NULL,
  `val10` varchar(7) DEFAULT NULL,
  `val11` varchar(7) DEFAULT NULL,
  `val12` varchar(7) DEFAULT NULL,
  `val13` varchar(7) DEFAULT NULL,
  `val14` varchar(7) DEFAULT NULL,
  `val15` varchar(7) DEFAULT NULL,
  `val16` varchar(7) DEFAULT NULL,
  `val17` varchar(7) DEFAULT NULL,
  `val18` varchar(7) DEFAULT NULL,
  `val19` varchar(7) DEFAULT NULL,
  `val20` varchar(7) DEFAULT NULL,
  `val21` varchar(7) DEFAULT NULL,
  `val22` varchar(7) DEFAULT NULL,
  `val23` varchar(7) DEFAULT NULL,
  `val24` varchar(7) DEFAULT NULL,
  `val25` varchar(7) DEFAULT NULL,
  `val26` varchar(7) DEFAULT NULL,
  `val27` varchar(7) DEFAULT NULL,
  `val28` varchar(7) DEFAULT NULL,
  `val29` varchar(7) DEFAULT NULL,
  `val30` varchar(7) DEFAULT NULL,
  `val31` varchar(7) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `plan6`
--

INSERT INTO `plan6` (`plan6ID`, `userTableID`, `plan6`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `val31`, `user_id`) VALUES
(1, 1, '🦍 GYM 🦍', 'checked', 'checked', '', 'checked', 'checked', 'checked', 'checked', 'checked', 'checked', '', '', 'checked', '', ' ', '', 'checked', '', 'checked', 'checked', 'checked', '', '', '', '', '', '', '', '', '', '', 'checked', 1),
(13, 3, 'read a book', 'checked', '', 'checked', '', '', 'checked', '', '', '', 'checked', '', '', '', '', '', 'checked', '', '', '', '', '', '', 'checked', '', '', '', '', '', 'checked', 'checked', 'checked', 1),
(15, 3, 'read a book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(16, 4, 'read a book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(17, 5, 'read a book', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan7`
--

CREATE TABLE `plan7` (
  `plan7ID` int(11) NOT NULL,
  `userTableID` int(3) DEFAULT NULL,
  `plan7` varchar(20) NOT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL,
  `val5` varchar(7) DEFAULT NULL,
  `val6` varchar(7) DEFAULT NULL,
  `val7` varchar(7) DEFAULT NULL,
  `val8` varchar(7) DEFAULT NULL,
  `val9` varchar(7) DEFAULT NULL,
  `val10` varchar(7) DEFAULT NULL,
  `val11` varchar(7) DEFAULT NULL,
  `val12` varchar(7) DEFAULT NULL,
  `val13` varchar(7) DEFAULT NULL,
  `val14` varchar(7) DEFAULT NULL,
  `val15` varchar(7) DEFAULT NULL,
  `val16` varchar(7) DEFAULT NULL,
  `val17` varchar(7) DEFAULT NULL,
  `val18` varchar(7) DEFAULT NULL,
  `val19` varchar(7) DEFAULT NULL,
  `val20` varchar(7) DEFAULT NULL,
  `val21` varchar(7) DEFAULT NULL,
  `val22` varchar(7) DEFAULT NULL,
  `val23` varchar(7) DEFAULT NULL,
  `val24` varchar(7) DEFAULT NULL,
  `val25` varchar(7) DEFAULT NULL,
  `val26` varchar(7) DEFAULT NULL,
  `val27` varchar(7) DEFAULT NULL,
  `val28` varchar(7) DEFAULT NULL,
  `val29` varchar(7) DEFAULT NULL,
  `val30` varchar(7) DEFAULT NULL,
  `val31` varchar(7) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `plan7`
--

INSERT INTO `plan7` (`plan7ID`, `userTableID`, `plan7`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `val31`, `user_id`) VALUES
(1, 1, '🦍 GYM 🦍', 'checked', 'checked', '', '', 'checked', 'checked', 'checked', '', ' ', ' ', ' ', ' ', ' ', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', 'checked', 'checked', '', 1),
(12, 3, 'wake up early(7am)', 'checked', '', 'checked', '', 'checked', 'checked', '', 'checked', '', '', '', 'checked', '', '', '', 'checked', '', '', '', 'checked', '', 'checked', 'checked', 'checked', '', '', '', 'checked', '', '', '', 1),
(14, 3, 'wake up early(7am)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(15, 4, 'wake up early(7am)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(16, 5, 'wake up early(7am)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan8`
--

CREATE TABLE `plan8` (
  `plan8ID` int(11) NOT NULL,
  `userTableID` int(3) DEFAULT NULL,
  `plan8` varchar(20) NOT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL,
  `val5` varchar(7) DEFAULT NULL,
  `val6` varchar(7) DEFAULT NULL,
  `val7` varchar(7) DEFAULT NULL,
  `val8` varchar(7) DEFAULT NULL,
  `val9` varchar(7) DEFAULT NULL,
  `val10` varchar(7) DEFAULT NULL,
  `val11` varchar(7) DEFAULT NULL,
  `val12` varchar(7) DEFAULT NULL,
  `val13` varchar(7) DEFAULT NULL,
  `val14` varchar(7) DEFAULT NULL,
  `val15` varchar(7) DEFAULT NULL,
  `val16` varchar(7) DEFAULT NULL,
  `val17` varchar(7) DEFAULT NULL,
  `val18` varchar(7) DEFAULT NULL,
  `val19` varchar(7) DEFAULT NULL,
  `val20` varchar(7) DEFAULT NULL,
  `val21` varchar(7) DEFAULT NULL,
  `val22` varchar(7) DEFAULT NULL,
  `val23` varchar(7) DEFAULT NULL,
  `val24` varchar(7) DEFAULT NULL,
  `val25` varchar(7) DEFAULT NULL,
  `val26` varchar(7) DEFAULT NULL,
  `val27` varchar(7) DEFAULT NULL,
  `val28` varchar(7) DEFAULT NULL,
  `val29` varchar(7) DEFAULT NULL,
  `val30` varchar(7) DEFAULT NULL,
  `val31` varchar(7) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `plan8`
--

INSERT INTO `plan8` (`plan8ID`, `userTableID`, `plan8`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `val31`, `user_id`) VALUES
(1, 1, '🍌BULK🍌', 'checked', 'checked', 'checked', 'checked', 'checked', 'checked', 'checked', ' ', '', '', '', 'checked', '', '', '', '', 'checked', '', '', '', 'checked', '', '', 'checked', 'checked', '', '', '', 'checked', '', '', 1),
(14, 3, 'exercise', 'checked', '', '', '', '', 'checked', '', 'checked', '', '', '', 'checked', '', '', '', '', 'checked', 'checked', 'checked', 'checked', '', 'checked', 'checked', 'checked', '', '', '', 'checked', '', '', '', 1),
(16, 3, 'exercise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(17, 4, 'exercise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(18, 5, 'exercise', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan9`
--

CREATE TABLE `plan9` (
  `plan9ID` int(11) NOT NULL,
  `userTableID` int(3) DEFAULT NULL,
  `plan9` varchar(20) NOT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL,
  `val5` varchar(7) DEFAULT NULL,
  `val6` varchar(7) DEFAULT NULL,
  `val7` varchar(7) DEFAULT NULL,
  `val8` varchar(7) DEFAULT NULL,
  `val9` varchar(7) DEFAULT NULL,
  `val10` varchar(7) DEFAULT NULL,
  `val11` varchar(7) DEFAULT NULL,
  `val12` varchar(7) DEFAULT NULL,
  `val13` varchar(7) DEFAULT NULL,
  `val14` varchar(7) DEFAULT NULL,
  `val15` varchar(7) DEFAULT NULL,
  `val16` varchar(7) DEFAULT NULL,
  `val17` varchar(7) DEFAULT NULL,
  `val18` varchar(7) DEFAULT NULL,
  `val19` varchar(7) DEFAULT NULL,
  `val20` varchar(7) DEFAULT NULL,
  `val21` varchar(7) DEFAULT NULL,
  `val22` varchar(7) DEFAULT NULL,
  `val23` varchar(7) DEFAULT NULL,
  `val24` varchar(7) DEFAULT NULL,
  `val25` varchar(7) DEFAULT NULL,
  `val26` varchar(7) DEFAULT NULL,
  `val27` varchar(7) DEFAULT NULL,
  `val28` varchar(7) DEFAULT NULL,
  `val29` varchar(7) DEFAULT NULL,
  `val30` varchar(7) DEFAULT NULL,
  `val31` varchar(7) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `plan9`
--

INSERT INTO `plan9` (`plan9ID`, `userTableID`, `plan9`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `val31`, `user_id`) VALUES
(1, 1, 'BULk2', 'checked', '', '', '', '', '', '', ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'checked', '', '', '', '', '', '', 1),
(13, 3, 'shower', 'checked', '', '', '', 'checked', 'checked', '', 'checked', '', '', '', '', '', '', 'checked', '', '', '', '', '', 'checked', '', '', '', 'checked', 'checked', 'checked', 'checked', '', '', '', 1),
(15, 3, 'shower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(16, 4, 'shower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(17, 5, 'shower', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan10`
--

CREATE TABLE `plan10` (
  `plan10ID` int(11) NOT NULL,
  `userTableID` int(3) DEFAULT NULL,
  `plan10` varchar(20) NOT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL,
  `val5` varchar(7) DEFAULT NULL,
  `val6` varchar(7) DEFAULT NULL,
  `val7` varchar(7) DEFAULT NULL,
  `val8` varchar(7) DEFAULT NULL,
  `val9` varchar(7) DEFAULT NULL,
  `val10` varchar(7) DEFAULT NULL,
  `val11` varchar(7) DEFAULT NULL,
  `val12` varchar(7) DEFAULT NULL,
  `val13` varchar(7) DEFAULT NULL,
  `val14` varchar(7) DEFAULT NULL,
  `val15` varchar(7) DEFAULT NULL,
  `val16` varchar(7) DEFAULT NULL,
  `val17` varchar(7) DEFAULT NULL,
  `val18` varchar(7) DEFAULT NULL,
  `val19` varchar(7) DEFAULT NULL,
  `val20` varchar(7) DEFAULT NULL,
  `val21` varchar(7) DEFAULT NULL,
  `val22` varchar(7) DEFAULT NULL,
  `val23` varchar(7) DEFAULT NULL,
  `val24` varchar(7) DEFAULT NULL,
  `val25` varchar(7) DEFAULT NULL,
  `val26` varchar(7) DEFAULT NULL,
  `val27` varchar(7) DEFAULT NULL,
  `val28` varchar(7) DEFAULT NULL,
  `val29` varchar(7) DEFAULT NULL,
  `val30` varchar(7) DEFAULT NULL,
  `val31` varchar(7) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `plan10`
--

INSERT INTO `plan10` (`plan10ID`, `userTableID`, `plan10`, `val1`, `val2`, `val3`, `val4`, `val5`, `val6`, `val7`, `val8`, `val9`, `val10`, `val11`, `val12`, `val13`, `val14`, `val15`, `val16`, `val17`, `val18`, `val19`, `val20`, `val21`, `val22`, `val23`, `val24`, `val25`, `val26`, `val27`, `val28`, `val29`, `val30`, `val31`, `user_id`) VALUES
(1, 1, 'costam', 'checked', '', ' ', '', '', ' ', '', '', '', '', '', '', '', '', '', 'checked', '', '', '', '', '', '', '', '', 'checked', '', 'checked', 'checked', '', 'checked', '', 1),
(13, 3, 'self care', 'checked', '', '', 'checked', 'checked', 'checked', 'checked', 'checked', 'checked', '', '', '', 'checked', '', '', '', '', '', '', '', '', '', '', '', '', 'checked', '', 'checked', '', 'checked', '', 1),
(15, 3, 'self care', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(16, 4, 'self care', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1),
(17, 5, 'self care', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `planspec1`
--

CREATE TABLE `planspec1` (
  `planspec1ID` int(11) NOT NULL,
  `userTableID` int(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `planspec1` varchar(20) NOT NULL,
  `planspec1a` varchar(20) DEFAULT NULL,
  `planspec1b` varchar(20) DEFAULT NULL,
  `planspec1c` varchar(20) DEFAULT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `planspec1`
--

INSERT INTO `planspec1` (`planspec1ID`, `userTableID`, `user_id`, `planspec1`, `planspec1a`, `planspec1b`, `planspec1c`, `val1`, `val2`, `val3`, `val4`) VALUES
(1, 1, 1, 'chujnia', 'z', 'z', 'z', '', 'checked', '', ''),
(9, 3, 1, 'wake up early(7am)', 'read a book', 'wake up early(7am)', 'read a book', '', '', '', ''),
(11, 3, 1, 'wake up early(7am)', 'read a book', 'wake up early(7am)', 'read a book', '', '', '', ''),
(12, 4, 1, 'wake up early(7am)', 'read a book', 'wake up early(7am)', 'read a book', '', '', '', ''),
(13, 5, 1, 'wake up early(7am)', 'read a book', 'wake up early(7am)', 'read a book', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `planspec2`
--

CREATE TABLE `planspec2` (
  `planspec2ID` int(11) NOT NULL,
  `userTableID` int(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `planspec2` varchar(20) NOT NULL,
  `planspec2a` varchar(20) DEFAULT NULL,
  `planspec2b` varchar(20) DEFAULT NULL,
  `planspec2c` varchar(20) DEFAULT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `planspec2`
--

INSERT INTO `planspec2` (`planspec2ID`, `userTableID`, `user_id`, `planspec2`, `planspec2a`, `planspec2b`, `planspec2c`, `val1`, `val2`, `val3`, `val4`) VALUES
(2, 1, 1, 'chujnia', 'z', 'z', 'z', '', 'checked', '', ''),
(9, 3, 1, 'exercise', 'wake up early(7am)', 'exercise', 'wake up early(7am)', '', '', '', ''),
(11, 3, 1, 'exercise', 'wake up early(7am)', 'exercise', 'wake up early(7am)', '', '', '', ''),
(12, 4, 1, 'exercise', 'wake up early(7am)', 'exercise', 'wake up early(7am)', '', '', '', ''),
(13, 5, 1, 'exercise', 'wake up early(7am)', 'exercise', 'wake up early(7am)', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `planspec3`
--

CREATE TABLE `planspec3` (
  `planspec3ID` int(11) NOT NULL,
  `userTableID` int(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `planspec3` varchar(20) NOT NULL,
  `planspec3a` varchar(20) DEFAULT NULL,
  `planspec3b` varchar(20) DEFAULT NULL,
  `planspec3c` varchar(20) DEFAULT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `planspec3`
--

INSERT INTO `planspec3` (`planspec3ID`, `userTableID`, `user_id`, `planspec3`, `planspec3a`, `planspec3b`, `planspec3c`, `val1`, `val2`, `val3`, `val4`) VALUES
(2, 1, 1, 'chujnia', 'z', 'z', 'z', '', 'checked', '', ''),
(7, 3, 1, 'shower', 'exercise', 'shower', 'exercise', '', '', '', ''),
(9, 3, 1, 'shower', 'exercise', 'shower', 'exercise', '', '', '', ''),
(10, 4, 1, 'shower', 'exercise', 'shower', 'exercise', '', '', '', ''),
(11, 5, 1, 'shower', 'exercise', 'shower', 'exercise', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `planspec4`
--

CREATE TABLE `planspec4` (
  `planspec4ID` int(11) NOT NULL,
  `userTableID` int(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `planspec4` varchar(20) NOT NULL,
  `planspec4a` varchar(20) DEFAULT NULL,
  `planspec4b` varchar(20) DEFAULT NULL,
  `planspec4c` varchar(20) DEFAULT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `planspec4`
--

INSERT INTO `planspec4` (`planspec4ID`, `userTableID`, `user_id`, `planspec4`, `planspec4a`, `planspec4b`, `planspec4c`, `val1`, `val2`, `val3`, `val4`) VALUES
(2, 1, 1, 'chujnia', 'z', 'z', 'z', '', 'checked', '', ''),
(7, 3, 1, 'self care', 'shower', 'self care', 'shower', '', '', '', ''),
(9, 3, 1, 'self care', 'shower', 'self care', 'shower', '', '', '', ''),
(10, 4, 1, 'self care', 'shower', 'self care', 'shower', '', '', '', ''),
(11, 5, 1, 'self care', 'shower', 'self care', 'shower', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `planspec5`
--

CREATE TABLE `planspec5` (
  `planspec5ID` int(11) NOT NULL,
  `userTableID` int(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `planspec5` varchar(20) NOT NULL,
  `planspec5a` varchar(20) DEFAULT NULL,
  `planspec5b` varchar(20) DEFAULT NULL,
  `planspec5c` varchar(20) DEFAULT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `planspec5`
--

INSERT INTO `planspec5` (`planspec5ID`, `userTableID`, `user_id`, `planspec5`, `planspec5a`, `planspec5b`, `planspec5c`, `val1`, `val2`, `val3`, `val4`) VALUES
(2, 1, 1, 'chujnia', 'z', 'z', 'z', '', 'checked', '', ''),
(7, 3, 1, ' ... ', ' ... ', ' ... ', ' ... ', '', '', '', ''),
(9, 3, 1, ' ... ', ' ... ', ' ... ', ' ... ', '', '', '', ''),
(10, 4, 1, ' ... ', ' ... ', ' ... ', ' ... ', '', '', '', ''),
(11, 5, 1, ' ... ', ' ... ', ' ... ', ' ... ', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `planwek1`
--

CREATE TABLE `planwek1` (
  `planwek1ID` int(11) NOT NULL,
  `userTableID` int(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `planwek1` varchar(20) NOT NULL,
  `planwek1a` varchar(20) DEFAULT NULL,
  `planwek1b` varchar(20) DEFAULT NULL,
  `planwek1c` varchar(20) DEFAULT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `planwek1`
--

INSERT INTO `planwek1` (`planwek1ID`, `userTableID`, `user_id`, `planwek1`, `planwek1a`, `planwek1b`, `planwek1c`, `val1`, `val2`, `val3`, `val4`) VALUES
(1, 1, 1, '...', 'nice', 'shit', 'bro', ' ', 'checked', ' ', ' '),
(11, 3, 1, 'wake up early(7am)', 'read a book', 'wake up early(7am)', 'read a book', 'checked', '', '', ''),
(13, 3, 1, 'wake up early(7am)', 'read a book', 'wake up early(7am)', 'read a book', '', '', '', ''),
(14, 4, 1, 'wake up early(7am)', 'read a book', 'wake up early(7am)', 'read a book', '', '', '', ''),
(15, 5, 1, 'wake up early(7am)', 'read a book', 'wake up early(7am)', 'read a book', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `planwek2`
--

CREATE TABLE `planwek2` (
  `planwek2ID` int(11) NOT NULL,
  `userTableID` int(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `planwek2` varchar(20) NOT NULL,
  `planwek2a` varchar(20) DEFAULT NULL,
  `planwek2b` varchar(20) DEFAULT NULL,
  `planwek2c` varchar(20) DEFAULT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `planwek2`
--

INSERT INTO `planwek2` (`planwek2ID`, `userTableID`, `user_id`, `planwek2`, `planwek2a`, `planwek2b`, `planwek2c`, `val1`, `val2`, `val3`, `val4`) VALUES
(1, 1, 1, '...', 'smieci', 'd', 'q', ' ', '', ' ', ' '),
(6, 3, 1, 'exercise', 'wake up early(7am)', 'exercise', 'wake up early(7am)', '', '', '', ''),
(8, 3, 1, 'exercise', 'wake up early(7am)', 'exercise', 'wake up early(7am)', '', '', '', ''),
(9, 4, 1, 'exercise', 'wake up early(7am)', 'exercise', 'wake up early(7am)', '', '', '', ''),
(10, 5, 1, 'exercise', 'wake up early(7am)', 'exercise', 'wake up early(7am)', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `planwek3`
--

CREATE TABLE `planwek3` (
  `planwek3ID` int(11) NOT NULL,
  `userTableID` int(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `planwek3` varchar(20) NOT NULL,
  `planwek3a` varchar(20) DEFAULT NULL,
  `planwek3b` varchar(20) DEFAULT NULL,
  `planwek3c` varchar(20) DEFAULT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `planwek3`
--

INSERT INTO `planwek3` (`planwek3ID`, `userTableID`, `user_id`, `planwek3`, `planwek3a`, `planwek3b`, `planwek3c`, `val1`, `val2`, `val3`, `val4`) VALUES
(1, 1, 1, '...', 'z', 'z', 'z', ' ', 'checked', ' ', ' '),
(5, 3, 1, 'shower', 'exercise', 'shower', 'exercise', '', '', '', ''),
(7, 3, 1, 'shower', 'exercise', 'shower', 'exercise', '', '', '', ''),
(8, 4, 1, 'shower', 'exercise', 'shower', 'exercise', '', '', '', ''),
(9, 5, 1, 'shower', 'exercise', 'shower', 'exercise', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `planwek4`
--

CREATE TABLE `planwek4` (
  `planwek4ID` int(11) NOT NULL,
  `userTableID` int(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `planwek4` varchar(20) NOT NULL,
  `planwek4a` varchar(20) DEFAULT NULL,
  `planwek4b` varchar(20) DEFAULT NULL,
  `planwek4c` varchar(20) DEFAULT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `planwek4`
--

INSERT INTO `planwek4` (`planwek4ID`, `userTableID`, `user_id`, `planwek4`, `planwek4a`, `planwek4b`, `planwek4c`, `val1`, `val2`, `val3`, `val4`) VALUES
(1, 1, 1, '...', 'z', 'z', 'z', ' ', 'checked', ' ', ' '),
(5, 3, 1, 'self care', 'shower', 'self care', 'shower', '', '', '', ''),
(7, 3, 1, 'self care', 'shower', 'self care', 'shower', '', '', '', ''),
(8, 4, 1, 'self care', 'shower', 'self care', 'shower', '', '', '', ''),
(9, 5, 1, 'self care', 'shower', 'self care', 'shower', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `planwek5`
--

CREATE TABLE `planwek5` (
  `planwek5ID` int(11) NOT NULL,
  `userTableID` int(3) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `planwek5` varchar(20) NOT NULL,
  `planwek5a` varchar(20) DEFAULT NULL,
  `planwek5b` varchar(20) DEFAULT NULL,
  `planwek5c` varchar(20) DEFAULT NULL,
  `val1` varchar(7) DEFAULT NULL,
  `val2` varchar(7) DEFAULT NULL,
  `val3` varchar(7) DEFAULT NULL,
  `val4` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `planwek5`
--

INSERT INTO `planwek5` (`planwek5ID`, `userTableID`, `user_id`, `planwek5`, `planwek5a`, `planwek5b`, `planwek5c`, `val1`, `val2`, `val3`, `val4`) VALUES
(1, 1, 1, '...', 'z', 'z', 'z', ' ', 'checked', ' ', ' '),
(5, 3, 1, ' ... ', ' ... ', ' ... ', ' ... ', '', '', '', ''),
(7, 3, 1, ' ... ', ' ... ', ' ... ', ' ... ', '', '', '', ''),
(8, 4, 1, ' ... ', ' ... ', ' ... ', ' ... ', '', '', '', ''),
(9, 5, 1, ' ... ', ' ... ', ' ... ', ' ... ', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('XTKqc88ATs85oZbYDSc9TpUfTONOxtmjo4cZY1pp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 OPR/105.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidHRlcW9nYVFkVDlKTVhxYWdGakxNbHF6cXI0NGhrWUhUdDJmZk1PWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9nb2FsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRjNWNodDBtQmpmZmJDdmYzampKR0NPN29ZSzNQM2w2emxOV0N5OXlhUG12cWFWbU5DUW50QyI7fQ==', 1705436013);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'tsquix@gmail.com', NULL, '$2y$10$c5cht0mBjffbCvf3jjJGCO7oYK3P3l6zlNWCy9yaPmvqaVmNCQntC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-22 15:00:58', '2023-10-22 15:00:58'),
(3, 'user', 'user@user', NULL, '$2y$10$PjVOxwWjaHH4rhsqSFwhNOjD0q8E0kkZUnTmZZq6UZ1kJsHXPALBW', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-07 16:48:10', '2024-01-07 16:48:10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `userstable`
--

CREATE TABLE `userstable` (
  `ID` int(11) NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `userTableID` int(3) NOT NULL,
  `plan1ID` int(11) DEFAULT NULL,
  `plan2ID` int(11) NOT NULL,
  `plan3ID` int(11) NOT NULL,
  `plan4ID` int(11) NOT NULL,
  `plan5ID` int(11) NOT NULL,
  `plan6ID` int(11) NOT NULL,
  `plan7ID` int(11) NOT NULL,
  `plan8ID` int(11) DEFAULT NULL,
  `plan9ID` int(11) DEFAULT NULL,
  `plan10ID` int(11) DEFAULT NULL,
  `planwek1ID` int(11) DEFAULT NULL,
  `planwek2ID` int(11) DEFAULT NULL,
  `planwek3ID` int(11) DEFAULT NULL,
  `planwek4ID` int(11) DEFAULT NULL,
  `planwek5ID` int(11) DEFAULT NULL,
  `planspec1ID` int(11) DEFAULT NULL,
  `planspec2ID` int(11) DEFAULT NULL,
  `planspec3ID` int(11) DEFAULT NULL,
  `planspec4ID` int(11) DEFAULT NULL,
  `planspec5ID` int(11) DEFAULT NULL,
  `daysInMo` tinyint(2) UNSIGNED DEFAULT dayofmonth(last_day(curdate())),
  `planQuant` tinyint(2) UNSIGNED DEFAULT 8,
  `plantheme` varchar(10) DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `userstable`
--

INSERT INTO `userstable` (`ID`, `userID`, `userTableID`, `plan1ID`, `plan2ID`, `plan3ID`, `plan4ID`, `plan5ID`, `plan6ID`, `plan7ID`, `plan8ID`, `plan9ID`, `plan10ID`, `planwek1ID`, `planwek2ID`, `planwek3ID`, `planwek4ID`, `planwek5ID`, `planspec1ID`, `planspec2ID`, `planspec3ID`, `planspec4ID`, `planspec5ID`, `daysInMo`, `planQuant`, `plantheme`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 30, 10, 'default'),
(7, 1, 3, 15, 15, 14, 14, 13, 13, 12, 14, 13, 13, 11, 6, 5, 5, 5, 9, 9, 7, 7, 7, 31, 10, 'default'),
(10, 1, 4, 18, 18, 17, 17, 16, 16, 15, 17, 16, 16, 14, 9, 8, 8, 8, 12, 12, 10, 10, 10, 31, 8, 'default'),
(11, 1, 5, 19, 19, 18, 18, 17, 17, 16, 18, 17, 17, 15, 10, 9, 9, 9, 13, 13, 11, 11, 11, 31, 8, 'default');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `userstablekopia`
--

CREATE TABLE `userstablekopia` (
  `ID` int(11) NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `userTableID` int(3) NOT NULL,
  `plan2ID` int(11) NOT NULL,
  `plan3ID` int(11) NOT NULL,
  `plan4ID` int(11) NOT NULL,
  `plan5ID` int(11) NOT NULL,
  `plan6ID` int(11) NOT NULL,
  `plan7ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `userstablekopia`
--

INSERT INTO `userstablekopia` (`ID`, `userID`, `userTableID`, `plan2ID`, `plan3ID`, `plan4ID`, `plan5ID`, `plan6ID`, `plan7ID`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 4, 2, 3, 2, 2, 2),
(5, 2, 1, 5, 3, 4, 3, 3, 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `plan1`
--
ALTER TABLE `plan1`
  ADD PRIMARY KEY (`plan1ID`),
  ADD KEY `fk_user_id_plan1` (`user_id`) USING BTREE;

--
-- Indeksy dla tabeli `plan2`
--
ALTER TABLE `plan2`
  ADD PRIMARY KEY (`plan2ID`),
  ADD KEY `fk_user_id_plan2` (`user_id`);

--
-- Indeksy dla tabeli `plan3`
--
ALTER TABLE `plan3`
  ADD PRIMARY KEY (`plan3ID`),
  ADD KEY `fk_user_id_plan3` (`user_id`);

--
-- Indeksy dla tabeli `plan4`
--
ALTER TABLE `plan4`
  ADD PRIMARY KEY (`plan4ID`),
  ADD KEY `fk_user_id_plan4` (`user_id`);

--
-- Indeksy dla tabeli `plan5`
--
ALTER TABLE `plan5`
  ADD PRIMARY KEY (`plan5ID`),
  ADD KEY `fk_user_id_plan5` (`user_id`);

--
-- Indeksy dla tabeli `plan6`
--
ALTER TABLE `plan6`
  ADD PRIMARY KEY (`plan6ID`),
  ADD KEY `fk_user_id_plan6` (`user_id`);

--
-- Indeksy dla tabeli `plan7`
--
ALTER TABLE `plan7`
  ADD PRIMARY KEY (`plan7ID`),
  ADD KEY `fk_user_id_plan7` (`user_id`);

--
-- Indeksy dla tabeli `plan8`
--
ALTER TABLE `plan8`
  ADD PRIMARY KEY (`plan8ID`),
  ADD KEY `fk_user_id_plan2` (`user_id`);

--
-- Indeksy dla tabeli `plan9`
--
ALTER TABLE `plan9`
  ADD PRIMARY KEY (`plan9ID`),
  ADD KEY `fk_user_id_plan2` (`user_id`);

--
-- Indeksy dla tabeli `plan10`
--
ALTER TABLE `plan10`
  ADD PRIMARY KEY (`plan10ID`),
  ADD KEY `fk_user_id_plan2` (`user_id`);

--
-- Indeksy dla tabeli `planspec1`
--
ALTER TABLE `planspec1`
  ADD PRIMARY KEY (`planspec1ID`),
  ADD KEY `fk_user_id_planspec1` (`user_id`);

--
-- Indeksy dla tabeli `planspec2`
--
ALTER TABLE `planspec2`
  ADD PRIMARY KEY (`planspec2ID`),
  ADD KEY `fk_user_id_planspec2` (`user_id`);

--
-- Indeksy dla tabeli `planspec3`
--
ALTER TABLE `planspec3`
  ADD PRIMARY KEY (`planspec3ID`),
  ADD KEY `fk_user_id_planspec3` (`user_id`);

--
-- Indeksy dla tabeli `planspec4`
--
ALTER TABLE `planspec4`
  ADD PRIMARY KEY (`planspec4ID`),
  ADD KEY `fk_user_id_planspec4` (`user_id`);

--
-- Indeksy dla tabeli `planspec5`
--
ALTER TABLE `planspec5`
  ADD PRIMARY KEY (`planspec5ID`),
  ADD KEY `fk_user_id_planspec5` (`user_id`);

--
-- Indeksy dla tabeli `planwek1`
--
ALTER TABLE `planwek1`
  ADD PRIMARY KEY (`planwek1ID`),
  ADD KEY `fk_user_id_planwek1` (`user_id`);

--
-- Indeksy dla tabeli `planwek2`
--
ALTER TABLE `planwek2`
  ADD PRIMARY KEY (`planwek2ID`),
  ADD KEY `fk_user_id_planwek2` (`user_id`);

--
-- Indeksy dla tabeli `planwek3`
--
ALTER TABLE `planwek3`
  ADD PRIMARY KEY (`planwek3ID`),
  ADD KEY `fk_user_id_planwek3` (`user_id`);

--
-- Indeksy dla tabeli `planwek4`
--
ALTER TABLE `planwek4`
  ADD PRIMARY KEY (`planwek4ID`),
  ADD KEY `fk_user_id_planwek4` (`user_id`);

--
-- Indeksy dla tabeli `planwek5`
--
ALTER TABLE `planwek5`
  ADD PRIMARY KEY (`planwek5ID`),
  ADD KEY `fk_user_id_planwek5` (`user_id`);

--
-- Indeksy dla tabeli `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeksy dla tabeli `userstable`
--
ALTER TABLE `userstable`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `plan2ID` (`plan2ID`),
  ADD KEY `plan3ID` (`plan3ID`),
  ADD KEY `plan4ID` (`plan4ID`),
  ADD KEY `plan5ID` (`plan5ID`),
  ADD KEY `plan6ID` (`plan6ID`),
  ADD KEY `plan7ID` (`plan7ID`),
  ADD KEY `fk_new_plan1_userstable` (`plan1ID`),
  ADD KEY `fk_new_plan8_userstable` (`plan8ID`),
  ADD KEY `fk_new_plan9_userstable` (`plan9ID`),
  ADD KEY `fk_new_plan10_userstable` (`plan10ID`),
  ADD KEY `fk_new_planspec1_userstable` (`planspec1ID`),
  ADD KEY `fk_new_planspec2_userstable` (`planspec2ID`),
  ADD KEY `fk_new_planspec3_userstable` (`planspec3ID`),
  ADD KEY `fk_new_planspec4_userstable` (`planspec4ID`),
  ADD KEY `fk_new_planspec5_userstable` (`planspec5ID`),
  ADD KEY `fk_new_planwek1_userstable` (`planwek1ID`),
  ADD KEY `fk_new_planwek2_userstable` (`planwek2ID`),
  ADD KEY `fk_new_planwek3_userstable` (`planwek3ID`),
  ADD KEY `fk_new_planwek4_userstable` (`planwek4ID`),
  ADD KEY `fk_new_planwek5_userstable` (`planwek5ID`);

--
-- Indeksy dla tabeli `userstablekopia`
--
ALTER TABLE `userstablekopia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `plan2ID` (`plan2ID`),
  ADD KEY `plan3ID` (`plan3ID`),
  ADD KEY `plan4ID` (`plan4ID`),
  ADD KEY `plan5ID` (`plan5ID`),
  ADD KEY `plan6ID` (`plan6ID`),
  ADD KEY `plan7ID` (`plan7ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `plan1`
--
ALTER TABLE `plan1`
  MODIFY `plan1ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `plan2`
--
ALTER TABLE `plan2`
  MODIFY `plan2ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `plan3`
--
ALTER TABLE `plan3`
  MODIFY `plan3ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `plan4`
--
ALTER TABLE `plan4`
  MODIFY `plan4ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `plan5`
--
ALTER TABLE `plan5`
  MODIFY `plan5ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `plan6`
--
ALTER TABLE `plan6`
  MODIFY `plan6ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `plan7`
--
ALTER TABLE `plan7`
  MODIFY `plan7ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `plan8`
--
ALTER TABLE `plan8`
  MODIFY `plan8ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `plan9`
--
ALTER TABLE `plan9`
  MODIFY `plan9ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `plan10`
--
ALTER TABLE `plan10`
  MODIFY `plan10ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `planspec1`
--
ALTER TABLE `planspec1`
  MODIFY `planspec1ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `planspec2`
--
ALTER TABLE `planspec2`
  MODIFY `planspec2ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `planspec3`
--
ALTER TABLE `planspec3`
  MODIFY `planspec3ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `planspec4`
--
ALTER TABLE `planspec4`
  MODIFY `planspec4ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `planspec5`
--
ALTER TABLE `planspec5`
  MODIFY `planspec5ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `planwek1`
--
ALTER TABLE `planwek1`
  MODIFY `planwek1ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `planwek2`
--
ALTER TABLE `planwek2`
  MODIFY `planwek2ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `planwek3`
--
ALTER TABLE `planwek3`
  MODIFY `planwek3ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `planwek4`
--
ALTER TABLE `planwek4`
  MODIFY `planwek4ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `planwek5`
--
ALTER TABLE `planwek5`
  MODIFY `planwek5ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `userstable`
--
ALTER TABLE `userstable`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `userstablekopia`
--
ALTER TABLE `userstablekopia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `plan1`
--
ALTER TABLE `plan1`
  ADD CONSTRAINT `fk_user_id_plan1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `plan2`
--
ALTER TABLE `plan2`
  ADD CONSTRAINT `fk_user_id_plan2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `plan3`
--
ALTER TABLE `plan3`
  ADD CONSTRAINT `fk_user_id_plan3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `plan4`
--
ALTER TABLE `plan4`
  ADD CONSTRAINT `fk_user_id_plan4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `plan5`
--
ALTER TABLE `plan5`
  ADD CONSTRAINT `fk_user_id_plan5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `plan6`
--
ALTER TABLE `plan6`
  ADD CONSTRAINT `fk_user_id_plan6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `plan7`
--
ALTER TABLE `plan7`
  ADD CONSTRAINT `fk_user_id_plan7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `planspec1`
--
ALTER TABLE `planspec1`
  ADD CONSTRAINT `fk_user_id_planspec1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `planspec2`
--
ALTER TABLE `planspec2`
  ADD CONSTRAINT `fk_user_id_planspec2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `planspec3`
--
ALTER TABLE `planspec3`
  ADD CONSTRAINT `fk_user_id_planspec3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `planspec4`
--
ALTER TABLE `planspec4`
  ADD CONSTRAINT `fk_user_id_planspec4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `planspec5`
--
ALTER TABLE `planspec5`
  ADD CONSTRAINT `fk_user_id_planspec5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `planwek1`
--
ALTER TABLE `planwek1`
  ADD CONSTRAINT `fk_user_id_planwek1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `planwek2`
--
ALTER TABLE `planwek2`
  ADD CONSTRAINT `fk_user_id_planwek2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `planwek3`
--
ALTER TABLE `planwek3`
  ADD CONSTRAINT `fk_user_id_planwek3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `planwek4`
--
ALTER TABLE `planwek4`
  ADD CONSTRAINT `fk_user_id_planwek4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `planwek5`
--
ALTER TABLE `planwek5`
  ADD CONSTRAINT `fk_user_id_planwek5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `userstable`
--
ALTER TABLE `userstable`
  ADD CONSTRAINT `fk_new_plan10_userstable` FOREIGN KEY (`plan10ID`) REFERENCES `plan10` (`plan10ID`),
  ADD CONSTRAINT `fk_new_plan1_userstable` FOREIGN KEY (`plan1ID`) REFERENCES `plan1` (`plan1ID`),
  ADD CONSTRAINT `fk_new_plan8_userstable` FOREIGN KEY (`plan8ID`) REFERENCES `plan8` (`plan8ID`),
  ADD CONSTRAINT `fk_new_plan9_userstable` FOREIGN KEY (`plan9ID`) REFERENCES `plan9` (`plan9ID`),
  ADD CONSTRAINT `fk_new_planspec1_userstable` FOREIGN KEY (`planspec1ID`) REFERENCES `planspec1` (`planspec1ID`),
  ADD CONSTRAINT `fk_new_planspec2_userstable` FOREIGN KEY (`planspec2ID`) REFERENCES `planspec2` (`planspec2ID`),
  ADD CONSTRAINT `fk_new_planspec3_userstable` FOREIGN KEY (`planspec3ID`) REFERENCES `planspec3` (`planspec3ID`),
  ADD CONSTRAINT `fk_new_planspec4_userstable` FOREIGN KEY (`planspec4ID`) REFERENCES `planspec4` (`planspec4ID`),
  ADD CONSTRAINT `fk_new_planspec5_userstable` FOREIGN KEY (`planspec5ID`) REFERENCES `planspec5` (`planspec5ID`),
  ADD CONSTRAINT `fk_new_planwek1_userstable` FOREIGN KEY (`planwek1ID`) REFERENCES `planwek1` (`planwek1ID`),
  ADD CONSTRAINT `fk_new_planwek2_userstable` FOREIGN KEY (`planwek2ID`) REFERENCES `planwek2` (`planwek2ID`),
  ADD CONSTRAINT `fk_new_planwek3_userstable` FOREIGN KEY (`planwek3ID`) REFERENCES `planwek3` (`planwek3ID`),
  ADD CONSTRAINT `fk_new_planwek4_userstable` FOREIGN KEY (`planwek4ID`) REFERENCES `planwek4` (`planwek4ID`),
  ADD CONSTRAINT `fk_new_planwek5_userstable` FOREIGN KEY (`planwek5ID`) REFERENCES `planwek5` (`planwek5ID`),
  ADD CONSTRAINT `userstable_ibfk_1` FOREIGN KEY (`plan2ID`) REFERENCES `plan2` (`plan2ID`),
  ADD CONSTRAINT `userstable_ibfk_2` FOREIGN KEY (`plan3ID`) REFERENCES `plan3` (`plan3ID`),
  ADD CONSTRAINT `userstable_ibfk_3` FOREIGN KEY (`plan4ID`) REFERENCES `plan4` (`plan4ID`),
  ADD CONSTRAINT `userstable_ibfk_4` FOREIGN KEY (`plan5ID`) REFERENCES `plan5` (`plan5ID`),
  ADD CONSTRAINT `userstable_ibfk_5` FOREIGN KEY (`plan6ID`) REFERENCES `plan6` (`plan6ID`),
  ADD CONSTRAINT `userstable_ibfk_8` FOREIGN KEY (`plan7ID`) REFERENCES `plan7` (`plan7ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
