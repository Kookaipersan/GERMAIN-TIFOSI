-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 22 mai 2025 à 19:42
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

--
-- Déchargement des données de la table `achete`
--

INSERT INTO `achete` (`id_client`, `id_menu`, `date_achat`) VALUES
(1, 1, '2025-05-20'),
(1, 2, '2025-04-26'),
(2, 5, '2025-05-22'),
(3, 8, '2025-05-18');

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max zéro', 4),
(8, 'Lipton zéro citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 2);

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `email_client`, `code_postal`) VALUES
(1, 'Paul', 'paul@gmail.com', 42000),
(2, 'Bertrand', 'bertrand@gmail.com', 38000),
(3, 'Renoir', 'renoir@free.fr', 74000),
(4, 'Matisse', 'matisse@orange.fr', 75000);

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES
(1, 1, 2.00),
(1, 3, 20.00),
(1, 5, 200.00),
(1, 7, 40.00),
(1, 9, 20.00),
(1, 13, 80.00),
(1, 16, 20.00),
(1, 18, 50.00),
(1, 20, 1.00),
(1, 25, 50.00),
(2, 1, 2.00),
(2, 5, 200.00),
(2, 7, 40.00),
(2, 9, 20.00),
(2, 11, 50.00),
(2, 16, 20.00),
(2, 18, 50.00),
(2, 20, 1.00),
(3, 1, 2.00),
(3, 5, 200.00),
(3, 7, 40.00),
(3, 9, 20.00),
(3, 18, 50.00),
(3, 20, 1.00),
(3, 22, 50.00),
(4, 6, 200.00),
(4, 7, 40.00),
(4, 9, 20.00),
(4, 10, 50.00),
(4, 15, 20.00),
(4, 18, 50.00),
(4, 20, 1.00),
(5, 5, 200.00),
(5, 7, 80.00),
(5, 9, 20.00),
(5, 12, 80.00),
(5, 16, 10.00),
(5, 17, 10.00),
(5, 18, 50.00),
(5, 20, 1.00),
(5, 25, 50.00),
(6, 2, 40.00),
(6, 4, 80.00),
(6, 5, 200.00),
(6, 9, 20.00),
(6, 16, 20.00),
(6, 18, 50.00),
(6, 19, 2.00),
(6, 20, 1.00),
(6, 25, 50.00),
(7, 4, 80.00),
(7, 5, 200.00),
(7, 9, 20.00),
(7, 16, 20.00),
(7, 18, 50.00),
(7, 20, 1.00),
(7, 21, 40.00),
(7, 25, 50.00),
(8, 1, 2.00),
(8, 3, 20.00),
(8, 6, 200.00),
(8, 7, 40.00),
(8, 8, 50.00),
(8, 9, 20.00),
(8, 13, 80.00),
(8, 14, 50.00),
(8, 16, 20.00),
(8, 18, 50.00),
(8, 20, 1.00),
(8, 21, 80.00);

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 11),
(8, 12);

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix`, `id_menu`) VALUES
(1, 'mozaccia', 9.80, 1),
(2, 'Gorgonzollaccia', 10.80, 2),
(3, 'Raclaccia', 8.90, 3),
(4, 'Emmentalaccia', 9.80, 4),
(5, 'Tradizione', 8.90, 5),
(6, 'Hawaienne', 11.20, 6),
(7, 'Américaine', 10.80, 7),
(8, 'Paysanne', 12.80, 8);

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaux'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise'),
(25, 'Mozarella');

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix`) VALUES
(1, 'Menu Mozaccia', 13.90),
(2, 'Menu Gorgonzollaccia', 14.90),
(3, 'Menu Raclaccia', 12.90),
(4, 'Menu Emmentalaccia', 13.80),
(5, 'Menu Tradizione', 12.90),
(6, 'Menu Hawaienne', 15.20),
(7, 'Menu Américaine', 14.80),
(8, 'Menu Paysanne', 16.80);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
