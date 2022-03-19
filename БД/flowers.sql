-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 17 2022 г., 19:45
-- Версия сервера: 5.5.68-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `flowers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `photo`, `price`, `description`) VALUES
(1, 'Бархатистый звон', 'img/photo1.jpg', '1500', 'Неординарной и оригинальной является композиция из фруктов. Довольно часто ею привыкли украшать стол во время торжественных мероприятий. Оформление и состав такого шедевра напрямую зависит от фантазии того, кто решил составить вкуснейший букет. Применяют фигурно нарезанные фрукты, ягоды, которые насаживают на шпажки. Иногда их поливают шоколадом или кремово-шоколадной глазурью. Кроме этого, практикуют ананасовые букеты.'),
(2, 'Благая весть', 'img/photo2.jpg', '1500', 'Описание 2'),
(3, 'Румяная заря', 'img/photo3.jpg', '1500', 'Описание 3'),
(4, 'Золотистый колос', 'img/photo4.jpg', '1500', 'Описание 4'),
(5, 'Неувядающая красота', 'img/photo5.jpg', '1500', 'Описание 5');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `password`) VALUES
(1, 'Admin', 'admin', '1'),
(43, 'Violetta', 'violettasovetkina', '12345'),
(44, 'Alina', 'alinaalina', 'fkl;as;l'),
(45, 'Lena', 'LenaLena', 'lakslfmdslapl;a');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
