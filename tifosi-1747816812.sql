CREATE TABLE IF NOT EXISTS `ingredient` (
	`id_ingredient` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nom_ingredient` varchar(50) NOT NULL,
	PRIMARY KEY (`id_ingredient`)
);

CREATE TABLE IF NOT EXISTS `Client` (
	`id_client` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nom_client` varchar(50) NOT NULL,
	`email_client` varchar(150) NOT NULL,
	`code_postal` int NOT NULL,
	PRIMARY KEY (`id_client`)
);

CREATE TABLE IF NOT EXISTS `marque` (
	`_marque` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nom_marque` varchar(50) NOT NULL,
	PRIMARY KEY (`_marque`)
);

CREATE TABLE IF NOT EXISTS `foccacia` (
	`id_foccacia` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nom_foccacia` varchar(50) NOT NULL,
	`prix` decimal(10,0) NOT NULL,
	PRIMARY KEY (`id_foccacia`)
);

CREATE TABLE IF NOT EXISTS `menu` (
	`id_menu` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nom_menu` varchar(50) NOT NULL,
	`prix_menu` decimal(10,0) NOT NULL,
	PRIMARY KEY (`id_menu`)
);

CREATE TABLE IF NOT EXISTS `boisson` (
	`id_boisson` int AUTO_INCREMENT NOT NULL UNIQUE,
	`nom_boisson` varchar(50) NOT NULL,
	PRIMARY KEY (`id_boisson`)
);






