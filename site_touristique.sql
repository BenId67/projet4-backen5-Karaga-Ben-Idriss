-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 29 sep. 2023 à 12:29
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `site_touristique`
--

-- --------------------------------------------------------

--
-- Structure de la table `a_propos`
--

CREATE TABLE `a_propos` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `a_propos`
--

INSERT INTO `a_propos` (`id`, `titre`, `texte`) VALUES
(4, '', 'D\'une superficie de 274.200 km² le pays abrite quelques 14 millions d\'habitants ayant des origines variées. En effet, le pays est riche d\'une soixantaine d\'ethnies. Les Mossis, que l\'on trouve essentiellement au centre, sont en grande majorité puisqu\'ils représentent à eux seuls 53% de la population totale.​\r\n\r\nLe Burkina Faso, ancienne Haute-Volta du fait de ses trois cours d\'eau, la Volta noire, la Volta blanche et la Volta rouge aujourd\'hui devenus Mouhoun, Nakambé et Nazinon, fait parti de l\'Afrique sahélienne. Le pays compte de nombreux voisins avec le Mali au nord, le Niger à l\'est, le Bénin, le Togo, le Ghana et la Côte-d\'Ivoire au sud.\r\n\r\nCes habitations assez sobres et fonctionnelles sont souvent entourées de champs, greniers et poulaillers. Chaque famille suit les conseils d\'un chef qui donnent les grandes directions que doit suivre sa fratrie et répond aux questions religieuses. Chaque ethnie a cependant ses propres codes et hiérarchies qu\'il vous faudra découvrir en allant aux devants de ces peuples accueillants.\r\n\r\nQue visiter au Burkina Faso\r\nPrès de Gorom-Gorom vous trouverez un endroit unique répondant au nom de Bani, ville aux sept mosquées. Ces édifices religieux majestueux forment, vus du ciel, un homme en prière. Tous les lieux de culte sont tournés vers la Grande Mosquée, véritable centre du monde. Très versée dans la symbolique, la Grande Mosquée construite en 1979 comprend cent piliers, autant qu\'Allah possède de noms. Ce site revêt une importance capitale pour les habitants du Barkina Faso, essentiellement musulmans. L\'islam est en effet la première religion du pays en nombre de croyants, toutes ethnies prises en compte.\r\n\r\nSpécialités gastronomiques au Burkina Faso\r\nLa cuisine burkinabe est simple et généreuse. Elle comprend un repas incontournable et même souvent quotidien qui est le Tô, une boule de maïs amère servie avec une sauce épaisse à base de soumbala, tomates, carottes, épices, feuilles de chou et d\'oseille. Ce plat familial est traditionnellement'),
(5, '', 'Situé au cœur de l\'Afrique de l\'ouest, le Burkina Faso peut compter sur un climat tropical de type soudanien composé essentiellement d\'une saison des pluies et d\'une saison sèche. Tout au long de l\'année les températures sont assez élevées. Mieux vaut éviter le mois d\'avril particulièrement torride et la période s\'étendant de mi-juin à mi-octobre très pluvieuse. De novembre à février souffle l\'harmattan qui permet d\'obtenir des températures plus tempérées. Privilégiez donc cette période pour votre séjour au Burkina Faso.\r\n\r\nLe Burkina Faso peut compter sur un atout de charme : la région aride du Sahel. Pays des Touareg, des Peulh et des Bella, le Sahel est le peuple des nomades. C\'est une région magnifique faite de dunes de sable où se nichent une faune variée et de belles villes à l\'image de Gorom-Gorom, la ville centrale de la réserve naturelle du Sahel. Mélange de tradition avec ses vieux quartiers mais aussi très animée et moderne, Gorom-Gorom est le point de départ idéal pour visiter la région. Partez de la ville à dos de chameau pour partir à la rencontre des mystères fascinants du désert.\r\n\r\nprésenté dans un grand plat commun où chacun le déguste avec les mains. D\'autres plats traditionnels sont aussi à découvrir tels que le ragoût d\'igname et le poulet bicyclette. Ces derniers sont généralement accompagnés de riz cuit à la vapeur ou revenu dans l\'huile qui a servi à cuire au préalable la viande.\r\n\r\nArt et culture au Burkina Faso\r\nLa musique et la danse occupent une grande place dans la culture burkinabé. L\'artisanat est aussi très présent. Vous pourrez, par exemple, admirer de superbes masques lors des divers festivals ponctuant la vie des Burkinabès. D\'ailleurs une manifestation leur est entièrement dédiée. Le festival de masques a lieu tous les deux ans début mars, à Dédougou. Vous trouverez aussi de très beaux objets artisanaux, pouvant être d\'un style assez moderne dans les marchés. Dans la région de Bobo Dioulasso, vous verrez des objets provenant des villages environnants mais aussi du Nord de la Côte d\'Ivoire et du Mali.');

-- --------------------------------------------------------

--
-- Structure de la table `banfora`
--

CREATE TABLE `banfora` (
  `id` int(11) NOT NULL,
  `titre1` varchar(256) NOT NULL,
  `titre2` varchar(256) NOT NULL,
  `titre3` varchar(256) NOT NULL,
  `banforatext1` text NOT NULL,
  `banforatext2` text NOT NULL,
  `banforatext3` text NOT NULL,
  `banforaimg1` text NOT NULL,
  `banforaimg2` text NOT NULL,
  `banforaimg3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `banfora`
--

INSERT INTO `banfora` (`id`, `titre1`, `titre2`, `titre3`, `banforatext1`, `banforatext2`, `banforatext3`, `banforaimg1`, `banforaimg2`, `banforaimg3`) VALUES
(1, 'Les Cascade de Banfora', 'Les Pics de Sindou', 'Les Dômes de Fabedougou', 'Situées à environ 12 km au nord-ouest de Banfora, elles tiennent leur nom de la commune de Karfiguéla. Elles constituent l\'un des sites touristiques les plus importants au Burkina Faso. La région des Cascades tire son nom de ces chutes d\'eau.\r\nBanfora, ville frontalière de la Côte d’Ivoire dispose d’un climat doux et d’une végétation comparable à celle des pays côtiers permettant de le nommé sans en abuser la Côte d’Azur du Burkina. Mais au sommet d’une colline, se laissent admirer les fameuses cascades qui font la fierté de tout Banfora.', 'C’est un ensemble de rochers en forme de pics. Ces pics représentent d’étonnantes cheminées façonnées par l’érosion. Deux pistes permettent d’accéder au sommet. Une mosquée délimitée par des pierres sert de lieu de culte où toute personne peut aller présenter des offrandes et formuler des souhaits. Mais, seules les personnes saines de corps sont habilitées à le faire.', 'Le dôme est défini par le dictionnaire comme un sommet semi-sphérique de certains édifices, en forme de coupole\r\nIls sont situés à 15 kilomètres de Banfora dans le département de Bérégadougou. Le site est difficile d’accès. C’est un ensemble de falaises de grès. Ce relief a été taillé par la nature en forme de cas aux toits de chaume et sont visités toute l’année.', 'banfora1.jpg', 'banfora2.jpg', 'banfora3.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `bobo`
--

CREATE TABLE `bobo` (
  `id` int(11) NOT NULL,
  `titre1` varchar(256) NOT NULL,
  `titre2` varchar(256) NOT NULL,
  `titre3` varchar(256) NOT NULL,
  `bobotext1` text NOT NULL,
  `bobotext2` text NOT NULL,
  `bobotext3` text NOT NULL,
  `boboimg1` text NOT NULL,
  `boboimg2` text NOT NULL,
  `boboimg3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bobo`
--

INSERT INTO `bobo` (`id`, `titre1`, `titre2`, `titre3`, `bobotext1`, `bobotext2`, `bobotext3`, `boboimg1`, `boboimg2`, `boboimg3`) VALUES
(1, 'Le Musée Municipal', 'Grande Mosquée de Bobo-Dioulasso', 'La gare ferroviaire de Bobo-Dioulasso', 'Assez récent (1980) le Musée est la mémoire de la région Ouest du Burkina. On y trouve de nombreux outils traditionnels, des oeuvres, bijoux de bronze, etc.\r\nDeux types d’habitats y ont été reconstitués grandeur nature : une maison Bobo et une case Peul. Vous pourrez même y admirer des artisans du bronze et du bois en plein travail.', 'La Grande Mosquée de Bobo-Dioulasso est une mosquée située à Bobo-Dioulasso, dans la province du Houet, dans la région des Hauts-Bassins, au Burkina Faso. La mosquée, qui porte le nom du quartier Dioulasso-bâ, a été construite vers 1880 par l’iman Sidiki Sanou1. Samory Touré y aurait prié lors de son passage à Bobo-Dioulasso2,3 avant de poursuive son combat contre les colons. Le ministère chargé de la Culture et du Tourisme, sur la directive de l’ancien ministre Tahirou Barry a procédé à sa réhabilitation grâce à une souscription volontaire4,5,6. Ce programme s\'étend de 2016 à 2019 et représentait un montant de 500 millions de CFA cette dernière année', 'Le nom « Place de la Gare » est donné en reférence à la société des chemins de fer du Burkina Faso. En 1984\r\n\r\nElle se situe non loin de la cathédrale en face de la Société de la chaîne RAN Hôtel de Bobo-Dioulasso. Elle est d’un style soudanais modernisé. Elle a été construite en 1933. Elle connut son premier train le 25 janvier 1934. Elle a été récemment rénovée et agrandie. La place de la gare a pris le nom de Thiéfo AMORO, en mémoire de ce chef de guerre très réputé qui a affronté l’Almani Samory TOURE La gare de Bobo-Dioulasso, de style soudanais, est souvent mentionnée comme l’une des plus belles d’Afrique. Elle se situe au centre-ville, au bout de l’avenue de la Nation.', 'bo.jpg', 'faso.jpg', 'gare.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE `connexion` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `connexion`
--

INSERT INTO `connexion` (`id`, `nom`, `prenom`, `email`, `password`) VALUES
(1, 'vivih', 'tufu', 'ljb', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(2, 'bob', 'vu', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(3, 'karaga', 'ben', 'karagaben2@gmail.com', '97e53d2d721eb68d6597061cbd888d0a7c4270b1'),
(4, 'karaga', 'ben', 'karagaben2@gmail.com', '97e53d2d721eb68d6597061cbd888d0a7c4270b1'),
(5, 'rdor', '', 'karagaben2@gmail.com', '97e53d2d721eb68d6597061cbd888d0a7c4270b1'),
(6, '', '', 'karagaben2@gmail.com', '97e53d2d721eb68d6597061cbd888d0a7c4270b1'),
(7, '', '', 'karagaben2@gmail.com', '97e53d2d721eb68d6597061cbd888d0a7c4270b1'),
(8, 'karaga', '', 'karagaben2@gmail.com', '97e53d2d721eb68d6597061cbd888d0a7c4270b1'),
(9, 'ere', 'rrfr', 'karagaben2@gmail.com', 'da39a3ee5e6b4b0d3255bfef95601890afd80709');

-- --------------------------------------------------------

--
-- Structure de la table `home-page`
--

CREATE TABLE `home-page` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `home_page`
--

CREATE TABLE `home_page` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `home_page`
--

INSERT INTO `home_page` (`id`, `titre`, `texte`, `image`) VALUES
(1, 'Le tourisme au Burkina Faso', 'Le Burkina faso est un pays presentant de nombreux sites touristiques.\r\nLe Burkina Faso a accueilli 106.000 de touristes en 2021, ce qui les place au 159e rang mondial en termes absolus.\r\n\r\nIl est évident que les petits pays sont régulièrement moins bien classés dans une comparaison du nombre absolu de visiteurs. Si l\'on rapporte le nombre de touristes au nombre d\'habitants du Burkina Faso, on obtient une image un peu plus comparable : avec 0,0047 touristes par habitant, le Burkina Faso se situait au 193e rang mondial. En Afrique de l\'Ouest, à la 12e place, derrière Mauritanie.\r\n\r\nEn 2020, le Burkina Faso a ainsi généré environ 112,06 millions d\'euros dans le seul secteur du tourisme. Cela correspond à 0,62 % du produit intérieur brut et à environ 7 % de toutes les recettes touristiques internationales en Afrique de l\'Ouest.', 'faso.webp');

-- --------------------------------------------------------

--
-- Structure de la table `ouaga`
--

CREATE TABLE `ouaga` (
  `id` int(11) NOT NULL,
  `titre1` varchar(255) NOT NULL,
  `titre2` varchar(255) NOT NULL,
  `titre3` varchar(255) NOT NULL,
  `ouagatext1` text NOT NULL,
  `ouagatext2` text NOT NULL,
  `ouagatext3` text NOT NULL,
  `ouagaimg1` text NOT NULL,
  `ouagaimg2` text NOT NULL,
  `ouagaimg3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ouaga`
--

INSERT INTO `ouaga` (`id`, `titre1`, `titre2`, `titre3`, `ouagatext1`, `ouagatext2`, `ouagatext3`, `ouagaimg1`, `ouagaimg2`, `ouagaimg3`) VALUES
(1, 'Village artisanal du SIAO', 'Cathédrale de Ouagadougou', 'Le Musée National Du Burkina Faso', 'Le Village Artisanal de Ouagadougou, dernier né des espaces de création, de production et de vente, est venu combler ce vide en créant une structure moderne qui représente et commercialise de façon permanente l’artisanat burkinabé.\r\nSitué à côté du SIAO, le Village Artisanal rassemble plus de 500 artisans parmi les meilleurs du Burkina, répartis dans 25 métiers. Convivial et aéré, le site compte près de 50 ateliers installés dans des bâtiments de couleur ocre, construits en éventail autour d’une place avec son bar.', 'La cathédrale de l\'Immaculée-Conception de Ouagadougou, capitale du Burkina Faso, est la cathédrale de l\'archidiocèse de Ouagadougou (depuis le 14 septembre 1955)1. Construite entre 1934 et 1936 à l\'initiative du vicaire apostolique Mgr Thévenoud, de la congrégation missionnaire des Pères blancs, son architecture s\'inspire à la fois des constructions traditionnelles ouest-africaines et de l\'architecture romane européenne. Elle est dédiée à l\'Immaculée Conception de la Bienheureuse Vierge Marie.', 'Il a été aménagé sur un terrain de 29 hectares situé au bout de l’avenue Charles-de-Gaulle, face à l’hôpital pédiatrique de Ouagadougou\r\n                Le musée abrite le projet Habitats du Faso. Inauguré en juin 2022 par l\'ambassadrice du musée national Apolline Traoré, Habitats du Faso est un espace qui regroupe les habitats traditionnels de onze groupes ethniques majeurs du Burkina Faso. Ce cadre met en avant les particularités architecturales de ces habitations et les modes de vie traditionnel des peuples représentés ', 'ouaga1.webp', 'ouaga2.jpg', 'ouaga3.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `titre1` varchar(255) NOT NULL,
  `titre2` varchar(255) NOT NULL,
  `titre3` varchar(255) NOT NULL,
  `p1` text NOT NULL,
  `p2` text NOT NULL,
  `p3` text NOT NULL,
  `img1` text NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `titre`, `titre1`, `titre2`, `titre3`, `p1`, `p2`, `p3`, `img1`, `img2`, `img3`) VALUES
(1, 'Découvrez les sites par villes', 'BOBO DIOULASSO', 'OUAGADOUGOU', 'BANFORA', 'Les sites localisés à Bobo', 'Les sites localisés à Ouaga', 'Les sites localisés à Banfora', 'img3.jpg', 'img6.png', 'img2.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `a_propos`
--
ALTER TABLE `a_propos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `banfora`
--
ALTER TABLE `banfora`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bobo`
--
ALTER TABLE `bobo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `home-page`
--
ALTER TABLE `home-page`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `home_page`
--
ALTER TABLE `home_page`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ouaga`
--
ALTER TABLE `ouaga`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `a_propos`
--
ALTER TABLE `a_propos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `banfora`
--
ALTER TABLE `banfora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `bobo`
--
ALTER TABLE `bobo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `connexion`
--
ALTER TABLE `connexion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `home-page`
--
ALTER TABLE `home-page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `home_page`
--
ALTER TABLE `home_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ouaga`
--
ALTER TABLE `ouaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
