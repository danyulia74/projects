-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 31 2019 г., 20:11
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `coffeedb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `coffee`
--

CREATE TABLE `coffee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `roast` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `review` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `coffee`
--

INSERT INTO `coffee` (`id`, `name`, `type`, `price`, `roast`, `country`, `image`, `review`) VALUES
(1, 'Caffe Latte', 'Classic', 3, 'Medium', 'France', 'Images/Coffee/Cafe-Au-Lait.jpg', 'The latte or cafe latte is one of the most popular coffees. It is, just like the cappuccino, an espresso based drink topped with milk.\r\n'),
(2, 'Caffe Americano', 'Espresso', 3.5, 'Medium', 'Italy', 'Images/coffee/caffe_americano.jpg', 'Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from traditionally brewed coffee.'),
(3, 'White Chocolate Mocha', 'Espresso', 3.5, 'Medium', 'Italy', 'Images/coffee/white-chocolate-peppermint-mocha.jpg', 'Espresso with white chocolate and peppermint flavored syrups and steamed milk. Topped with sweetened whipped cream and dark chocolate curls.'),
(4, 'Expresso with milk', 'Latte', 4, 'Light', 'Portugal', 'Images/Coffee/galao_kaffee_portugal.jpg', 'Galao is a hot drink from Portugal made of espresso and foamed milk'),
(8, 'Espresso Classic', 'Classic', 3, 'Medium', 'Italy', 'Images/Coffee/A_small_cup_of_coffee.JPG', 'It is an authentic Italian-style espresso and is characterized by its strong character. The combination of Arabica beans from Latin America and Africa and a little Robusta creates an intense coffee with a full body and delicate cocoa notes.\r\nFor coffee lovers who know what they want: an authentic Italian espresso after traditional roasting.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'yulia', '123456');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `coffee`
--
ALTER TABLE `coffee`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `coffee`
--
ALTER TABLE `coffee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
