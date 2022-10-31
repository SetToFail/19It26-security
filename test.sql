-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 27 2022 г., 17:48
-- Версия сервера: 8.0.30-0ubuntu0.22.04.1
-- Версия PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `code` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `code`) VALUES
(1, '<p> В течение пяти недель студенты специальности «Информационные системы и программирование» Мишин Антон, Барилюк Александр, Баклин Денис и Макаров Никита на базе команды X-TEAM разрабатывали приложение дополненной реальности под шлемы Oculus Quest. Данная компания является членом ассоциации разработчиков Secon и уже три года делает игры для виртуальной реальности.\r\n<br><br>\r\nБудущие разработчики веб и мультимедиа приложений получили возможность учиться и консультироваться у реальных разработчиков. Студенты при создании MVP своей первой VR-игры использовали игровой движок Unity и среду для 3D моделирования Blender, а также специальное ПО для аудиосопровождения программного продукта. В итоге ребята смогли за небольшой промежуток времени представить прототип космического шутера и получить обратную связь. <br> <img src=\"https://sun9-78.userapi.com/impg/0T2GHgeRYrqu-ks4Cp638L2DYb4f5KZqk7l3-Q/67EWoPuzFE4.jpg?size=1889x1889&quality=96&sign=0bfff4d7281959c18a921867261b6fa6&type=album\" style=\"width: 100%; height: max;\"> </p>');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'Dan\'ka', '1234512345'),
(3, 'Andrey', '37150fd94f5083a3b6b28040c59ae420');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
