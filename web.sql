-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 05 2018 г., 19:38
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `web`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `login` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `date` date,
  `description` varchar(30) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `fixed` int(11) NOT NULL DEFAULT '0',
  `fixedDate` date DEFAULT NULL,
  `fileName` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `login`, `name`, `date`, `description`, `deleted`, `fixed`, `fixedDate`, `fileName`) VALUES
(1, '12', 'hgvjghj', '2018-09-05', 'fgyrk', 0, 0, NULL, '0'),
(2, '98', 'моя корзина', '2018-09-05', 'олиолилдоиорморпмрпсапчсап', 0, 1, '2018-09-05', 'C:\\webApp\\98\\1\\PostInst.log'),
(3, '98', 'fdxbhfdynh', '2018-09-05', 'jhklfg', 0, 0, '2018-09-06', '0'),
(4, '98', 'xfnthxfb hxf', '2018-09-05', 'ytdjb', 0, 0, '2018-09-06', '0'),
(5, '98', 'dftjnjfdfyt', '2018-09-06', 'yjdtb', 0, 0, '2018-09-06', '0'),
(6, '98', ' njhfxcgh bxfh', '2018-09-06', 'rfxdtjhb vftjh', 0, 0, '2018-09-06', '0'),
(7, '98', 'xf hcf', '2018-09-06', 'nfgncv', 0, 0, '2018-09-06', '0'),
(8, '12', 'jghcf hnc', '2018-09-07', 'gncg', 0, 0, '2018-09-06', '0'),
(9, '12', 'fgjhfgjh', '2018-09-07', 'ncfx', 0, 0, '2018-09-06', '0'),
(10, '12', 'nfbnc', '2018-09-07', 'ncx hg', 0, 0, '2018-09-06', '0'),
(11, '12', 'bncbvnb', '2018-09-08', 'nb', 0, 0, '2018-09-06', '0'),
(12, '12', 'cvnbnfnfn', '2018-09-08', ' cgvnhbfgjn', 0, 0, '2018-09-07', '0'),
(13, '12', 'Сегодня', '2018-09-05', 'варапр', 0, 0, '2018-09-05', '0'),
(14, '12', 'вапорпвро', '2018-09-06', 'апрваор', 0, 0, '2018-09-07', '0'),
(15, '12', 'апнеоевно', '2018-09-06', 'ваново', 0, 0, '2018-09-06', '0'),
(16, '12', 'апрвар', '2018-09-06', 'роьларол', 0, 0, '2018-09-06', '0'),
(17, '98', NULL, '2018-09-09', NULL, 0, 0, '2018-09-19', '0'),
(18, NULL, NULL, NULL, NULL, 0, 0, NULL, '0'),
(19, NULL, NULL, NULL, NULL, 0, 0, NULL, '0'),
(20, '98', 'werwrewr', '2018-09-05', 'trewerytwr', 0, 0, NULL, '0'),
(21, '98', 'rtherhrther', '2018-09-05', '', 0, 0, NULL, '0'),
(22, '98', 'erthet', '2018-09-05', 'retherh', 0, 0, NULL, '0'),
(23, '98', 'rethjetyhjety', '2018-09-05', 'hjety', 0, 0, NULL, '0'),
(24, '98', 'etyjetjy', '2018-09-05', 'etyjre', 0, 0, NULL, '0'),
(25, '98', 'sthfthf', '2018-09-05', 'ftjhftyjhytfh', 0, 0, NULL, '0'),
(26, '98', 'dfgjhdfhj', '2018-09-05', 'dfgjdgj', 0, 0, NULL, '0'),
(27, '98', 'dfgjhndgyj', '2018-09-06', 'dgkjdjk', 0, 0, NULL, '0'),
(28, '98', 'dghjdjg', '2018-09-06', 'fdghkjf', 0, 0, NULL, '0'),
(29, '98', 'fuykyfuk', '2018-09-06', 'fyhuklfuyk', 0, 0, NULL, '0'),
(30, '98', 'fghjfgjh', '2018-09-08', 'fghkjfgj', 0, 0, NULL, '0'),
(31, '98', 'fghjfgjh', '2018-09-05', 'fghjfgmj', 0, 0, NULL, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`login`, `password`) VALUES
('12', '12'),
('25', '25'),
('15', '15'),
('52', '52'),
('98', '98'),
('98', '1'),
('22', '22'),
('11', '11');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login` (`login`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
