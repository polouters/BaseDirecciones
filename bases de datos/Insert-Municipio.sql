-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-04-2015 a las 04:34:16
-- Versión del servidor: 5.5.40
-- Versión de PHP: 5.4.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyectodir`
--

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`idMunicipio`, `Nombre`, `idProvincia`) VALUES
(1, 'Alegría de Álava', 1),
(2, 'Amurrio', 1),
(3, 'Añana', 1),
(4, 'Aramayona', 1),
(5, 'Armiñón', 1),
(6, 'Arraya-Maestu', 1),
(7, 'Arrazua-Ubarrundia', 1),
(8, 'Arceniega', 1),
(9, 'Aspárrena', 1),
(10, 'Ayala', 1),
(11, 'Baños de Ebro', 1),
(12, 'Barrundia', 1),
(13, 'Berantevilla', 1),
(14, 'Bernedo', 1),
(15, 'Campezo', 1),
(16, 'Elburgo', 1),
(17, 'Elciego', 1),
(18, 'Elvillar', 1),
(19, 'Valle de Arana', 1),
(20, 'Iruña de Oca', 1),
(21, 'Iruraiz-Gauna', 1),
(22, 'Cripán', 1),
(23, 'Cuartango', 1),
(24, 'Labastida', 1),
(25, 'Lagrán', 1),
(26, 'Laguardia', 1),
(27, 'Lanciego', 1),
(28, 'Lantarón', 1),
(29, 'Lapuebla de Labarca', 1),
(30, 'Llodio', 1),
(31, 'Villarreal de Álava', 1),
(32, 'Leza', 1),
(33, 'Moreda de Álava', 1),
(34, 'Navaridas', 1),
(35, 'Oquendo', 1),
(36, 'Oyón', 1),
(37, 'Peñacerrada', 1),
(38, 'Ribera Alta', 1),
(39, 'Ribera Baja', 1),
(40, 'Salvatierra', 1),
(41, 'Samaniego', 1),
(42, 'San Millán', 1),
(43, 'Urkabustaiz', 1),
(44, 'Valdegovía', 1),
(45, 'Villabuena de Álava', 1),
(46, 'Vitoria', 1),
(47, 'Yécora', 1),
(48, 'Zalduendo de Álava', 1),
(49, 'Zambrana', 1),
(50, 'Cigoitia', 1),
(51, 'Zuya', 1),
(52, 'Abadiño', 48),
(53, 'Abanto-Zierbena', 48),
(54, 'Ajangiz', 48),
(55, 'Alonsotegi', 48),
(56, 'Amorebieta-Etxano', 48),
(57, 'Amoroto', 48),
(58, 'Arakaldo', 48),
(59, 'Arantzazu', 48),
(60, 'Arcentales', 48),
(61, 'Areatza', 48),
(62, 'Arrankudiaga', 48),
(63, 'Arratzu', 48),
(64, 'Arrieta', 48),
(65, 'Arrigorriaga', 48),
(66, 'Artea', 48),
(67, 'Atxondo', 48),
(68, 'Aulesti', 48),
(69, 'Bakio', 48),
(70, 'Balmaseda', 48),
(71, 'Barakaldo', 48),
(72, 'Barrika', 48),
(73, 'Basauri', 48),
(74, 'Bedia', 48),
(75, 'Berango', 48),
(76, 'Bermeo', 48),
(77, 'Berriatua', 48),
(78, 'Berriz', 48),
(79, 'Bilbao', 48),
(80, 'Busturia', 48),
(81, 'Derio', 48),
(82, 'Dima', 48),
(83, 'Durango', 48),
(84, 'Ea', 48),
(85, 'Elantxobe', 48),
(86, 'Elorrio', 48),
(87, 'Erandio', 48),
(88, 'Ereño', 48),
(89, 'Ermua', 48),
(90, 'Errigoiti', 48),
(91, 'Etxebarri', 48),
(92, 'Etxebarria', 48),
(93, 'Forua', 48),
(94, 'Fruiz', 48),
(95, 'Galdakao', 48),
(96, 'Galdames', 48),
(97, 'Gamiz-Fika', 48),
(98, 'Garai', 48),
(99, 'Gatika', 48),
(100, 'Gautegiz-Arteaga', 48),
(101, 'Gernika-Lumo', 48),
(102, 'Getxo', 48),
(103, 'Gizaburuaga', 48),
(104, 'Gordexola', 48),
(105, 'Gorliz', 48),
(106, 'Gueñes', 48),
(107, 'Ibarrangelu', 48),
(108, 'Igorre', 48),
(109, 'Ispaster', 48),
(110, 'Iurreta', 48),
(111, 'Izurtza', 48),
(112, 'Karrantza Harana / Valle de Carranza', 48),
(113, 'Kortezubi', 48),
(114, 'Lanestosa', 48),
(115, 'Larrabetzu', 48),
(116, 'Laukiz', 48),
(117, 'Leioa', 48),
(118, 'Lekeitio', 48),
(119, 'Lemoa', 48),
(120, 'Lemoiz', 48),
(121, 'Lezama', 48),
(122, 'Loiu', 48),
(123, 'Mallabia', 48),
(124, 'Mañaria', 48),
(125, 'Markina-Xemein', 48),
(126, 'Maruri-Jatabe', 48),
(127, 'Mendata', 48),
(128, 'Mendexa', 48),
(129, 'Meñaka', 48),
(130, 'Morga', 48),
(131, 'Mundaka', 48),
(132, 'Mungia', 48),
(133, 'Munitibar-Arbatzegi Gerrikaitz', 48),
(134, 'Murueta', 48),
(135, 'Muskiz', 48),
(136, 'Muxika', 48),
(137, 'Nabarniz', 48),
(138, 'Ondarroa', 48),
(139, 'Orozko', 48),
(140, 'Ortuella', 48),
(141, 'Otxandio', 48),
(142, 'Plentzia', 48),
(143, 'Portugalete', 48),
(144, 'Santurtzi', 48),
(145, 'Sestao', 48),
(146, 'Sondika', 48),
(147, 'Sopela', 48),
(148, 'Sopuerta', 48),
(149, 'Sukarrieta', 48),
(150, 'Trucios-Turtzioz', 48),
(151, 'Ubide', 48),
(152, 'Ugao-Miraballes', 48),
(153, 'Urduliz', 48),
(154, 'Urduña / Orduña', 48),
(155, 'Valle de Trápaga-Trapagaran', 48),
(156, 'Zaldibar', 48),
(157, 'Zalla', 48),
(158, 'Zamudio', 48),
(159, 'Zaratamo', 48),
(160, 'Zeanuri', 48),
(161, 'Zeberio', 48),
(162, 'Zierbena', 48),
(163, 'Ziortza-Bolibar', 48),
(164, 'Abaltzisketa', 20),
(165, 'Aduna', 20),
(166, 'Aia', 20),
(167, 'Aizarnazabal', 20),
(168, 'Albiztur', 20),
(169, 'Alegia', 20),
(170, 'Alkiza', 20),
(171, 'Altzaga', 20),
(172, 'Altzo', 20),
(173, 'Amezketa', 20),
(174, 'Andoain', 20),
(175, 'Anoeta', 20),
(176, 'Antzuola', 20),
(177, 'Arama', 20),
(178, 'Aretxabaleta', 20),
(179, 'Arrasate', 20),
(180, 'Asteasu', 20),
(181, 'Astigarraga', 20),
(182, 'Ataun', 20),
(183, 'Azkoitia', 20),
(184, 'Azpeitia', 20),
(185, 'Baliarrain', 20),
(186, 'Beasain', 20),
(187, 'Beizama', 20),
(188, 'Belauntza', 20),
(189, 'Berastegi', 20),
(190, 'Bergara', 20),
(191, 'Berrobi', 20),
(192, 'Bidegoian', 20),
(193, 'Billabona', 20),
(194, 'Deba', 20),
(195, 'Donostia', 20),
(196, 'Eibar', 20),
(197, 'Elduain', 20),
(198, 'Elgeta', 20),
(199, 'Elgoibar', 20),
(200, 'Errenteria', 20),
(201, 'Errezil', 20),
(202, 'Eskoriatza', 20),
(203, 'Ezkio-Itsaso', 20),
(204, 'Gabiria', 20),
(205, 'Gaintza', 20),
(206, 'Gaztelu', 20),
(207, 'Getaria', 20),
(208, 'Hernani', 20),
(209, 'Hernialde', 20),
(210, 'Hondarribia', 20),
(211, 'Ibarra', 20),
(212, 'Idiazabal', 20),
(213, 'Ikaztegieta', 20),
(214, 'Irun', 20),
(215, 'Irura', 20),
(216, 'Itsasondo', 20),
(217, 'Larraul', 20),
(218, 'Lasarte-Oria', 20),
(219, 'Lazkao', 20),
(220, 'Leaburu', 20),
(221, 'Legazpi', 20),
(222, 'Legorreta', 20),
(223, 'Leintz-Gatzaga', 20),
(224, 'Lezo', 20),
(225, 'Lizartza', 20),
(226, 'Mendaro', 20),
(227, 'Mutiloa', 20),
(228, 'Mutriku', 20),
(229, 'Oiartzun', 20),
(230, 'Olaberria', 20),
(231, 'Oñati', 20),
(232, 'Ordizi', 20),
(233, 'Orendain', 20),
(234, 'Orexa', 20),
(235, 'Orio', 20),
(236, 'Ormaiztegi', 20),
(237, 'Pasaia', 20),
(238, 'Segura', 20),
(239, 'Soraluze', 20),
(240, 'Tolosa', 20),
(241, 'Urnieta', 20),
(242, 'Urretxu', 20),
(243, 'Usurbil', 20),
(244, 'Zaldibia', 20),
(245, 'Zarautz', 20),
(246, 'Zegama', 20),
(247, 'Zerain', 20),
(248, 'Zestoa', 20),
(249, 'Zizurkil', 20),
(250, 'Zumaia', 20),
(251, 'Zumarraga', 20);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
