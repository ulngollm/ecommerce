-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июн 15 2021 г., 02:07
-- Версия сервера: 8.0.25-0ubuntu0.20.04.1
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ecommerce`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brends`
--

CREATE TABLE `brends` (
  `id` int NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `section` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `brends`
--

INSERT INTO `brends` (`id`, `name`, `sort`, `status`, `section`) VALUES
(42, 'Levis', 1, 1, 1),
(43, 'Persol', 1, 1, 1),
(44, 'Nike', 1, 1, 1),
(45, 'Edwin', 1, 1, 1),
(46, 'New Balance', 1, 1, 1),
(47, 'Jack & Jones', 1, 1, 1),
(48, 'Paul Swith', 1, 1, 1),
(49, 'Ray-Ban', 1, 1, 1),
(50, 'Wood Wood', 1, 1, 1),
(51, 'Armchair', 1, 1, 2),
(52, 'Reider Bench', 1, 1, 2),
(53, 'Carpet & Desk', 1, 1, 2),
(54, 'Wardrobe & Lamp', 1, 1, 2),
(55, 'Car seat', 1, 1, 2),
(56, 'Loundger', 1, 1, 2),
(57, 'Anson', 1, 1, 2),
(58, 'Karlstad', 1, 1, 2),
(59, 'Camila & Wardrobe', 1, 1, 2),
(60, 'Colton', 1, 1, 2),
(61, 'Brix', 1, 1, 2),
(62, 'Lenovo', 1, 1, 3),
(63, 'Motorola', 1, 1, 3),
(64, 'Samsung', 1, 1, 3),
(65, 'HTC', 1, 1, 3),
(66, 'Dell & Compaq', 1, 1, 3),
(67, 'ASUS', 1, 1, 3),
(68, 'Microsoft', 1, 1, 3),
(69, 'Moto E & Moto G', 1, 1, 3),
(70, 'Intex', 1, 1, 3),
(71, 'Hauwei Lumia', 1, 1, 3),
(72, 'Loungewear', 1, 1, 3),
(73, 'Asus Zenfone 2', 1, 1, 3),
(74, 'Nikon & Sony', 1, 1, 3),
(75, 'Olympus', 1, 1, 3),
(76, 'Lenovo', 1, 1, 4),
(77, 'Motorola', 1, 1, 4),
(78, 'Samsung', 1, 1, 4),
(79, 'HTC', 1, 1, 4),
(80, 'Dell & Compaq', 1, 1, 4),
(81, 'ASUS', 1, 1, 4),
(82, 'Microsoft', 1, 1, 4),
(83, 'Moto E & Moto G', 1, 1, 4),
(84, 'Intex', 1, 1, 4),
(85, 'Hauwei Lumia', 1, 1, 4),
(86, 'Loungewear', 1, 1, 4),
(87, 'Asus Zenfone 2', 1, 1, 4),
(88, 'Nikon & Sony', 1, 1, 4),
(89, 'Olympus', 1, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` int NOT NULL,
  `sort` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `section`, `sort`, `status`) VALUES
(1, 'Аксессуары', 1, 1, 1),
(2, 'Сумки', 1, 1, 1),
(3, 'Кепки,шапки', 1, 1, 1),
(4, 'Свитера,кофты', 1, 1, 1),
(5, 'Куртки,пальто', 1, 1, 1),
(6, 'Джинсы', 1, 1, 1),
(7, 'Бижутерия', 1, 1, 1),
(8, 'Джемперы,кардиганы', 1, 1, 1),
(9, 'Куртки кожанные', 1, 1, 1),
(10, 'Футболки', 1, 1, 1),
(11, 'Лаунж одежда', 1, 1, 1),
(12, 'Рубашки', 1, 1, 1),
(13, 'Спортивные брюки', 1, 1, 1),
(14, 'Плавки, купальники', 1, 1, 1),
(15, 'Брюки', 1, 1, 1),
(16, 'Нижнее белье', 1, 1, 1),
(17, 'Жилеты', 1, 1, 1),
(18, 'Кровати', 2, 1, 1),
(19, 'Комоды', 2, 1, 1),
(20, 'Стулья', 2, 1, 1),
(21, 'Ковры', 2, 1, 1),
(22, 'Шторы, занавески', 2, 1, 1),
(23, 'Полки', 2, 1, 1),
(24, 'Столы', 2, 1, 1),
(25, 'Диваны', 2, 1, 1),
(26, 'Скамейки', 2, 1, 1),
(27, 'Раковины', 2, 1, 1),
(28, 'Лампы, светильники', 2, 1, 1),
(29, 'Телефоны', 3, 1, 1),
(30, 'Планшеты', 3, 1, 1),
(31, 'Компьютеры', 3, 1, 1),
(32, 'Аксесуары', 3, 1, 1),
(33, 'Другое', 3, 1, 1),
(34, 'Принтеры', 3, 1, 1),
(35, 'Мониторы', 3, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `colorproducts`
--

CREATE TABLE `colorproducts` (
  `id` int NOT NULL,
  `product` int NOT NULL,
  `color` int NOT NULL,
  `description` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `colorproducts`
--

INSERT INTO `colorproducts` (`id`, `product`, `color`, `description`) VALUES
(37, 0, 7, ''),
(38, 2, 7, ''),
(39, 2, 5, ''),
(40, 12, 2, ''),
(42, 5, 7, ''),
(43, 6, 5, ''),
(46, 7, 1, ''),
(47, 8, 12, ''),
(50, 9, 2, ''),
(52, 11, 8, ''),
(54, 12, 1, ''),
(57, 14, 2, ''),
(58, 0, 14, ''),
(60, 14, 1, ''),
(62, 10, 2, ''),
(63, 13, 5, ''),
(64, 9, 3, '');

-- --------------------------------------------------------

--
-- Структура таблицы `colors`
--

CREATE TABLE `colors` (
  `id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `red` int NOT NULL,
  `green` int NOT NULL,
  `blue` int NOT NULL,
  `code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `colors`
--

INSERT INTO `colors` (`id`, `name`, `red`, `green`, `blue`, `code`) VALUES
(1, 'Чёрный', 0, 0, 0, '000000'),
(2, 'Серый', 105, 105, 105, '696969'),
(3, 'Тёмно-зелёный', 0, 127, 0, '008000'),
(5, 'Голубой', 176, 224, 230, 'B0E0E6'),
(6, 'Тёмно-коричневый', 139, 69, 19, '8B4513'),
(7, 'Белый', 255, 255, 255, 'FFFFFF'),
(8, 'Оливковый', 128, 128, 0, '808000'),
(9, 'Глубокий серый', 105, 105, 105, '696969'),
(10, 'Песочный', 244, 164, 96, 'F4A460'),
(11, 'Черно-розовый', 255, 182, 193, 'FFB6C1'),
(12, 'Пыльно-розовый', 188, 143, 143, 'BC8F8F'),
(13, 'Бледно-зелёный', 175, 238, 238, 'AFEEEE'),
(14, 'Бежевый', 189, 183, 107, 'BDB76B');

-- --------------------------------------------------------

--
-- Структура таблицы `fotoproducts`
--

CREATE TABLE `fotoproducts` (
  `id` int NOT NULL,
  `products` int NOT NULL,
  `colorproduct` int NOT NULL,
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fotoproducts`
--

INSERT INTO `fotoproducts` (`id`, `products`, `colorproduct`, `path`) VALUES
(1, 0, 1, '0107090101.jpg'),
(2, 0, 1, '0107090102.jpg'),
(3, 1, 2, '0107090201.jpg'),
(4, 1, 2, '0107090202.jpg'),
(5, 2, 3, '0107090301.jpg'),
(6, 2, 3, '0107090302.jpg'),
(9, 4, 5, '0107090501.jpg'),
(10, 4, 5, '0107090502.jpg'),
(13, 6, 5, '0107090701.jpg'),
(14, 6, 5, '0107090702.jpg'),
(15, 7, 1, '0107090801.jpg'),
(16, 7, 1, '0107090802.jpg'),
(19, 9, 1, '0107091001.jpg'),
(20, 9, 1, '0107091002.jpg'),
(21, 10, 1, '0107091101.jpg'),
(22, 10, 1, '0107091102.jpg'),
(23, 11, 5, '0107091201.jpg'),
(24, 11, 1, '0107091202.jpg'),
(25, 12, 2, '0107091301.jpg'),
(26, 12, 2, '0107091302.jpg'),
(29, 14, 5, '0107091501.jpg'),
(30, 14, 5, '0107091502.jpg'),
(31, 3, 1, '0107090401.jpg'),
(32, 3, 1, '0107090402.jpg'),
(33, 5, 10, '0107090601.jpg'),
(34, 5, 10, '0107090602.jpg'),
(35, 8, 7, '0107090901.jpg'),
(36, 8, 7, '0107090902.jpg'),
(37, 13, 1, '0107091401.jpg'),
(38, 13, 1, '0107091402.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brend` int NOT NULL,
  `isnew` tinyint(1) NOT NULL DEFAULT '0',
  `category` int NOT NULL,
  `issize` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `iscolor` tinyint(1) NOT NULL DEFAULT '0',
  `isbest` tinyint(1) NOT NULL DEFAULT '0',
  `uniquecode` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smalldiscription` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `fullname`, `brend`, `isnew`, `category`, `issize`, `price`, `discount`, `iscolor`, `isbest`, `uniquecode`, `smalldiscription`, `discription`) VALUES
(0, 'Базовые короткие носки', 'Базовые короткие носки', 44, 0, 16, 1, '199.00', '0.00', 1, 0, '01040101', '\r\nБазовые короткие носки\r\n\r\nСтрана производства: Россия\r\nСостав\r\n76% Хлопок, 22% Полиамид, 2% Эластан', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(1, 'Разноцветные носки', 'Разноцветные носки', 43, 0, 16, 1, '599.00', '0.00', 0, 0, '01040102', 'Разноцветные короткие носки, 3 пары\r\n\r\nСтрана производства: Китай\r\nСостав\r\n70% Хлопок, 28% Полиэстер, 2% Эластан', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(2, 'Носки для фитнеса ', 'Носки для фитнеса ', 44, 0, 16, 1, '499.00', '10.00', 1, 0, '01040103', 'Носки для фитнеса с «язычком» на пятке, 3 пары\r\n\r\nСтрана производства:Китай\r\nСостав\r\n62% Хлопок, 33% Полиэстер, 3% эластодиен, 2% Эластан', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(3, 'Высокие носки', 'Высокие носки', 45, 0, 16, 1, '299.00', '0.00', 0, 0, '01040104', 'Страна производства: Китай\r\nСостав\r\n60% Хлопок, 37% Полиэстер, 2% Эластан, 1% Метализированное волокно', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(4, 'Носки с полосками', 'Носки с полосками', 42, 0, 16, 1, '399.00', '0.00', 0, 1, '01040105', 'Носки с люрексными жаккардовыми полосками\r\nСтрана производства: Китай\r\nСостав\r\n60% Хлопок, 37% Полиэстер, 2% Эластан, 1% Метализированное волокно', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(5, 'Комплект коротких носков', 'Комплект коротких носков с жаккардом «ягоды» ', 43, 0, 16, 1, '599.00', '0.00', 0, 0, '01040106', 'Страна производства: Китай\r\nСостав\r\n66% Хлопок, 23% Полиэстер, 9% Нейлон, 2% Эластан', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(6, 'Комплект носков', 'Комплект носков', 45, 0, 16, 1, '399.00', '10.00', 0, 1, '01040107', 'Страна производства: Китай\r\nСостав\r\n73% Хлопок, 23% Полиэстер, 2% Эластан, 2% Нейлон', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(7, 'Короткие носки с принтом ', 'Короткие носки с принтом ', 46, 1, 16, 1, '599.00', '0.00', 0, 1, '01040108', 'Страна производства: Китай\r\nСостав\r\n50% Хлопок, 48% Полиэстер, 2% Эласта', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(8, 'Короткие носки с принтом', 'Короткие носки с принтом', 50, 1, 16, 1, '699.00', '0.00', 0, 0, '01040109', 'Страна производства: Китай\r\nСостав\r\n50% Хлопок, 48% Полиэстер, 2% Эластан', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(9, 'Комплект носков с вышивкой', 'Комплект носков с вышивкой', 48, 0, 16, 1, '799.00', '0.00', 0, 1, '01040110', 'Страна производства: Китай\r\nСостав\r\n73% Хлопок, 23% Полиэстер, 2% Эластан, 2% Нейлон', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(10, 'Подследники с хлопковой подошвой', 'Подследники с хлопковой подошвой', 43, 1, 16, 1, '199.00', '0.00', 1, 0, '01040111', 'Страна производства: Китай\r\nСостав\r\nПодъем: 87% Нейлон, 13% Эластан; Подошва: 95% Хлопок, 5% Эластан', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(11, 'Короткие носки', 'Короткие носки', 47, 1, 16, 1, '499.00', '0.00', 0, 0, '01040112', 'Страна производства: Китай\r\nСостав\r\n72% Хлопок, 25% Полиэстер, 3% Эластан', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(12, 'Носки с жаккардом ', 'Носки с жаккардом «пицца» ', 48, 0, 16, 1, '299.00', '0.00', 1, 1, '01040113', 'Страна производства: Китай\r\nСостав\r\n63% Хлопок, 30% Полиэстер, 4% Нейлон, 2% Эластан, 1% Метализированное волокно', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(13, 'Носки для фитнеса', 'Носки для фитнеса', 49, 0, 16, 1, '199.00', '0.00', 1, 0, '01040114', 'Страна производства: Китай\r\nСостав\r\n57% Хлопок, 36% Полиэстер, 5% эластодиен, 2% Эластан', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd),
(14, 'Базовые носки', 'Базовые носки', 45, 0, 16, 1, '199.00', '0.00', 1, 1, '01040115', 'Страна производства: Россия\r\nСостав\r\n78% Хлопок, 20% Полиэстер, 2% Эластан', 0xd094d0b6d0b5d0bcd0bfd0b5d1802dd0b0d0bdd0bed180d0b0d0ba20d0b8d0b720d0bad180d0bed191d0bdd0bed0b3d0be20d182d180d0b8d0bad0bed182d0b0d0b6d0b00d0a0d0a2d20d092d0bed180d0bed182d0bdd0b8d0ba2dd0b0d0bdd0bed180d0b0d0ba20d0bdd0b020d0bcd0bed0bbd0bdd0b8d0b820d18120d0b4d0b5d0bad0bed180d0b0d182d0b8d0b2d0bdd18bd0bcd0b820d182d0b5d181d18cd0bcd0b0d0bcd0b80d0a2d20d094d0bbd0b8d0bdd0bdd18bd0b520d180d183d0bad0b0d0b2d0b00d0a2d20d09ad0b0d180d0bcd0b0d0bd2dd0bad0b5d0bdd0b3d183d180d18320d0bdd0b020d0bfd0bed0bbd0bed187d0bad0b50d0a2d20d09ad0bed0bcd184d0bed180d182d0bdd18bd0b920d184d0b8d1820d0a2d20d0a0d0b5d0b7d0b8d0bdd0bad0b820d0bfd0be20d0bdd0b8d0b7d18320d180d183d0bad0b0d0b2d0bed0b220d0b820d0b8d0b7d0b4d0b5d0bbd0b8d18f0d0a0d0ad0a0d0b0d0b7d0bcd0b5d18020d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2053202832362f3332290d0ad0a0d0bed181d18220d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a2031373620d181d0bc2e0d0ad09fd0b0d180d0b0d0bcd0b5d182d180d18b20d0bcd0bed0b4d0b5d0bbd0b820d0bdd0b020d184d0bed182d0be3a0d0ad0b3d180d183d0b4d18c3a2038330d0ad182d0b0d0bbd0b8d18f3a2036330d0ad0b1d191d0b4d180d0b03a2039320d0a0d0ad0a1d182d180d0b0d0bdd0b020d0bfd180d0bed0b8d0b7d0b2d0bed0b4d181d182d0b2d0b03a20d09ad0b8d182d0b0d0b90d0ad0a1d0bed181d182d0b0d0b20d0a37322520d09fd0bed0bbd0b8d18dd181d182d0b5d1802c2031322520d092d0b8d181d0bad0bed0b7d0b02c2031302520d09dd0b5d0b9d0bbd0bed0bd2c20362520d0add0bbd0b0d181d182d0b0d0bd);

-- --------------------------------------------------------

--
-- Структура таблицы `productsize`
--

CREATE TABLE `productsize` (
  `id` int NOT NULL,
  `product` int NOT NULL,
  `size` int NOT NULL,
  `discription` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `productsize`
--

INSERT INTO `productsize` (`id`, `product`, `size`, `discription`) VALUES
(2, 0, 2, ''),
(5, 2, 7, ''),
(6, 3, 3, ''),
(7, 4, 7, ''),
(8, 5, 7, ''),
(9, 6, 1, ''),
(10, 7, 5, ''),
(11, 7, 4, ''),
(12, 8, 7, ''),
(13, 9, 1, ''),
(14, 10, 1, ''),
(15, 11, 4, ''),
(16, 12, 7, ''),
(17, 13, 4, ''),
(18, 14, 1, ''),
(19, 2, 6, 'Вот-так вот'),
(20, 1, 3, ''),
(21, 1, 6, ''),
(22, 0, 3, ''),
(23, 0, 6, ''),
(24, 6, 6, '');

-- --------------------------------------------------------

--
-- Структура таблицы `remainder`
--

CREATE TABLE `remainder` (
  `id` int NOT NULL,
  `colorproduct` int NOT NULL,
  `productsize` int NOT NULL,
  `value` decimal(10,0) NOT NULL,
  `product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id` int NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id`, `name`, `sort`, `status`) VALUES
(1, 'Мода', 1, 1),
(2, 'Мебель и декор', 2, 1),
(3, 'Телефоны и планшеты', 3, 1),
(4, 'TV, игры, камеры', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sizes`
--

CREATE TABLE `sizes` (
  `id` int NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sizes`
--

INSERT INTO `sizes` (`id`, `name`) VALUES
(1, '34'),
(2, '37'),
(3, '38'),
(4, '40'),
(5, '41'),
(6, '42'),
(7, '39');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brends`
--
ALTER TABLE `brends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section` (`section`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section` (`section`);

--
-- Индексы таблицы `colorproducts`
--
ALTER TABLE `colorproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`product`,`color`),
  ADD KEY `color` (`color`);

--
-- Индексы таблицы `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fotoproducts`
--
ALTER TABLE `fotoproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products` (`products`,`colorproduct`),
  ADD KEY `colorproduct` (`colorproduct`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brend` (`brend`,`category`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `productsize`
--
ALTER TABLE `productsize`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`product`,`size`),
  ADD KEY `size` (`size`);

--
-- Индексы таблицы `remainder`
--
ALTER TABLE `remainder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colorproduct` (`colorproduct`,`productsize`,`product`),
  ADD KEY `product` (`product`),
  ADD KEY `productsize` (`productsize`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brends`
--
ALTER TABLE `brends`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `colorproducts`
--
ALTER TABLE `colorproducts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблицы `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `fotoproducts`
--
ALTER TABLE `fotoproducts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `productsize`
--
ALTER TABLE `productsize`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `remainder`
--
ALTER TABLE `remainder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `brends`
--
ALTER TABLE `brends`
  ADD CONSTRAINT `brends_ibfk_1` FOREIGN KEY (`section`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`section`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `colorproducts`
--
ALTER TABLE `colorproducts`
  ADD CONSTRAINT `colorproducts_ibfk_1` FOREIGN KEY (`product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `colorproducts_ibfk_2` FOREIGN KEY (`color`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fotoproducts`
--
ALTER TABLE `fotoproducts`
  ADD CONSTRAINT `fotoproducts_ibfk_1` FOREIGN KEY (`products`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fotoproducts_ibfk_2` FOREIGN KEY (`colorproduct`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brend`) REFERENCES `brends` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `productsize`
--
ALTER TABLE `productsize`
  ADD CONSTRAINT `productsize_ibfk_1` FOREIGN KEY (`size`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productsize_ibfk_2` FOREIGN KEY (`product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `remainder`
--
ALTER TABLE `remainder`
  ADD CONSTRAINT `remainder_ibfk_1` FOREIGN KEY (`product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `remainder_ibfk_2` FOREIGN KEY (`productsize`) REFERENCES `productsize` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `remainder_ibfk_3` FOREIGN KEY (`colorproduct`) REFERENCES `colorproducts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
