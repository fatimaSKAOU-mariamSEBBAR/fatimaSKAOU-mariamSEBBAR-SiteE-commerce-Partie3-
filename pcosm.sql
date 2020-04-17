-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2020 at 02:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcosm`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'CREMES/GELS'),
(2, 'DEODORANTS'),
(3, 'EPILATION'),
(4, 'HUILES'),
(5, 'MAQUILLAGE/DEMAQUILLAGE'),
(6, 'PARFUMS'),
(7, 'PRODUITS DE COIFFAGE'),
(8, 'RASAGE'),
(9, 'SAVONS/MOUSSES'),
(10, 'SOINS DE VISAGE');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `date_commande` date NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `qtt_commande` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL,
  `id_scategorie` int(11) NOT NULL,
  `nom_produit` varchar(256) NOT NULL,
  `photo_produit` varchar(256) NOT NULL,
  `prix` double NOT NULL,
  `description` varchar(256) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id_produit`, `id_scategorie`, `nom_produit`, `photo_produit`, `prix`, `description`, `stock`) VALUES
(1, 41, 'créme pour le corps', '1.png', 95, 'PhytoSpecific Curl Legend Gel-Crème Sculpteur de Boucles 200 ml est un gel-crème sculpteur de boucles qui offre une haute nutrition, du galbe et du ressort aux cheveux.', 60),
(2, 41, 'créme soin visage', '2.png', 35, 'Ce gel frais nettoie et purifie les peaux grasses à imperfections. Il normalise l’épiderme et régule la production de sébum. Pour les peaux jeunes à problèmes.\r\n', 20),
(3, 42, 'Déodorant-Vichy', '3.png', 130, 'Pour les aisselles foncées et la texture rugueuse avec une transpiration normale à intense. Deo Ideal Finish est parfait pour ceux qui cherchent à embellir et à prendre soin de leurs aisselles, sans sacrifier l\'efficacité d\'un puissant antisudorifique.', 35),
(4, 1, 'Créme Depilatoire', '4.png', 56, 'Spécialement formulée pour respecter la peau sensible, la CRÈME DÉPILATOIRE DERMO-TOLERANCE est enrichie en l’Eau Thermale apaisante et anti-irritante et à l’Huile d’Amande adoucissante.\r\n', 24),
(5, 2, 'Kit-electrique', '5.png', 30, 'Recharge de cire 50 ml spéciale jambes et bras A utiliser avec le Roll-on Electrique Veet EasyWax Facile et rapide à utiliser Inclus : 12 bandes de tissu, 4 lingettes de finition\r\n', 30),
(6, 43, 'huile d\'alés', '6.png', 35, 'Fournit pour protection et brillance aux cheveux secs et dévitalisés.\r\nVersez le contenu de l\'ampoule dans le flacon diffuseur, vaporisez mèche par mèche de la racine aux pointes. Laisser agir 30 minutes et rincer et laver les cheveux.\r\n', 20),
(7, 43, 'huile-de-beaute-visage-corps-et-cheveux', '7.png', 350, 'Huile de beauté enrichie en huile d\'olive Bio AOC Provence - Pour nourrir, adoucir et sublimer la peau et les cheveux - Texture huile sèche - Pénètre rapidement sans laisser de film gras et enveloppe d\'un délicat sillage floral.', 100),
(8, 43, 'huile de visage', '8.png', 59, 'Utilisée dans le but de réduire l\'exposition de la peau au rayonnement ultraviolet du soleil. Elle constitue à ce titre un moyen de photoprotection externe passive, fonctionnant comme un filtre ultraviolet.\r\n', 50),
(9, 3, 'éponge pour maquillage', '9.png', 16, 'Meilleure éponge abordable : Éponge Teint Miracle Real Techniques,\r\nIl a la même texture rebondissante mais ferme et offre la même finition indétectable. Le côté rond est idéal pour une application intégrale, et le bord incliné aide à modeler et façonner.\r', 40),
(10, 3, 'Eye Curl', '10.png', 120, 'Le recourbe cils est un accessoire de maquillage indispensable à toutes femmes désirant une courbure de cils extrême en quelques secondes et sans effort.', 40),
(11, 3, 'Brosse', '11.png', 79, 'Un ensemble de douze pinceaux pour le visage et les yeux noirs et lilas avec un sac à pinceaux assorti. Ces brosses antibactériennes comportent des poignées en plastique noir durables avec une impression d\'icône lilas.', 70),
(12, 4, 'Anti-cernes -the ubub', '12.png', 56, 'Crème correcteur de maquillage  de type Baume à lèvres pour les  femmes\r\n', 70),
(13, 4, 'Anti-cernes', '13.png', 67, 'Anti-cernes enrichi anti-âge pour camoufler instantanément les cernes et lutter contre les signes du vieillissement de l’œil.\r\nFormule enrichie à la baie de Goji et à l’Haloxyl pour ralentir le vieillissement ', 100),
(14, 5, 'BB Creme', 'bbCreme.png', 500, 'Une crème apaisante spécialement formulée pour les peaux atopiques. Elle permet d\'apaiser les irritations des paupières sèches et irritées.\r\n', 100),
(15, 6, 'Fard à joues', 'fard-a-joues.png', 59, 'Un éclat de couleur extrêmement naturel avec un résultat longue durée. Sa texture seconde peau mélangeable permet une application facile et contrôlée', 130),
(16, 7, 'Eyeliner', 'c1.png', 100, 'Un eye-liner liquide noir riche qui combine une tenue longue durée avec une ligne de précision sans bavure et sans flocons. Continue sans effort. S\'applique avec son propre pinceau pour tracer une ligne parfaitement définie.\r\n', 80),
(17, 7, 'Crayon des yeux', 'c2.png', 350, 'Pupa est l\'eye-liner imperméable parfait: avec une couleur définie et intense, résistant à l\'eau avec une tenue record, sans bavure. La pointe en feutre est idéale pour une application homogène et impeccable\r\n', 200),
(18, 8, 'Crayons à lèvres T1', 'crayon-a-levres.png', 120, 'Crayon mat imperméable à l\'eau hydratant à lèvres « crimson»', 100),
(19, 8, 'Crayons à lèvres T2', 'crayon-a-levres1.png', 120, 'Crayon mat imperméable à l\'eau hydratant à lèvres « fire brick »', 100),
(20, 8, 'Crayons à lèvres T3', 'crayon-a-levres2.png', 120, 'Crayon mat imperméable à l\'eau hydratant à lèvres « red brown »', 100),
(21, 8, 'Crayons à lèvres T4', 'crayon-a-levres3.png', 120, 'Crayon mat imperméable à l\'eau hydratant à lèvres « « red bean paste »', 100),
(22, 9, 'Démaquillant', 'demaquillant.png', 305, 'Ce lait démaquillant contient de la figue et du miel aux propriétés calmantes. Les impuretés et même le maquillage waterproof sont délicatement éliminés. Après avoir appliqué ce soin, la peau est nettoyée et la tension est apaisée.', 200),
(23, 10, 'pallete', 'pallete.png', 400, 'Cette palette populaire et facile à utiliser contient trois teintes éclaircissantes et trois teintes contour qui œuvrent ensemble pour vous aider à sculpter, définir et mettre en valeur vos traits naturels \r\n', 100),
(24, 11, 'fonds de teint', 'f1.png', 78, 'Conçu pour couvrir les imperfections, la décoloration, les cicatrices et les tatouages, ce correcteur crémeux à couverture complète contient une forte concentration de pigments et une technologie imperméable ', 100),
(25, 12, 'Gloss T1', 'g1.jpg', 35, 'Focalure Marque Maquillage Étanche Batom Brillant À Lèvres « rose taupe»\r\n', 100),
(26, 12, 'Gloss T2', 'g2.jpg', 35, 'Focalure Marque Maquillage Étanche Batom Brillant À Lèvres « frence beige»', 100),
(27, 12, 'Gloss T3', 'g3.jpg', 35, 'Focalure Marque Maquillage Étanche Batom Brillant À Lèvres « deep chestunt» \r\n', 100),
(28, 12, 'Gloss T4', 'g4.jpg', 35, 'Focalure Marque Maquillage Étanche Batom Brillant À Lèvres  « persian plum»', 100),
(29, 12, 'Gloss T5', 'g5.jpg', 35, 'Focalure Marque Maquillage Étanche Batom Brillant À Lèvres « coquelicot»', 100),
(30, 13, 'Mascaras Niveau 1', 'm1.jpg', 200, 'un mascara pour des cils fabuleux. Sa formule révolutionnaire avec de l\'huile d\'Argan du Maroc aide à nourrir les cils et apporte douceur et confort. Sa brosse ultra flexible capture les cils de la racine ', 100),
(31, 13, 'Mascaras Niveau 2', 'm2.png', 240, 'MUA’s Eye Define is your perfect lengthening mascara! It extends and elongates lashes to create a fuller, longer look.', 100),
(32, 14, 'Poudre c2-t', 'poudre.jpg', 56, 'Le produit convient à tous les types de peau. Il repose bien pendant la journée et crée un revêtement translucide. La poudre compacte occupera une place de choix dans une trousse de maquillage pour femme.', 100),
(33, 14, 'Poudre c1-t', 'poudre1.png', 55, 'Fond de teint compact durable Mesauda Milano . La texture de la poudre est légère et soyeuse. Il est bien appliqué avec une éponge, repose à plat et ne dépoussière pas, fixant fermement le maquillage et offrant une finition impeccable.', 100),
(34, 15, 'Rouge à lèvres r-c1\r\n\r\n', 'r1.jpg', 77, 'Lipstick   rouge à lèvres L\'Absolu mat a une pigmentation élevée pour une couleur intense et longue durée. ‘Revlon Colorburst Lip Colorin Mauve’', 100),
(35, 15, 'Rouge à lèvres r-c2', 'r2.jpg', 77, 'Lipstick   rouge à lèvres L\'Absolu mat a une pigmentation élevée pour une couleur intense et longue durée. ‘MARC JACOBS BeautyLe Marc Lip', 100),
(36, 15, 'Rouge à lèvres r-c3', 'r3.png', 77, 'Lipstick   rouge à lèvres L\'Absolu mat a une pigmentation élevée pour une couleur intense et longue durée. ‘NARS Audacious Lipstick in Catherine', 100),
(37, 15, 'Rouge à lèvres r-c4', 'r4.jpg', 77, 'Lipstick   rouge à lèvres L\'Absolu mat a une pigmentation élevée pour une couleur intense et longue durée. ‘Givenchy RougeInterdit Satin Lipstick', 100),
(38, 15, 'Rouge à lèvres r-c5', 'r5.jpg', 77, 'Lipstick   rouge à lèvres L\'Absolu mat a une pigmentation élevée pour une couleur intense et longue durée. ‘Bobbi Brown Lip ColorLipstick Beige’', 100),
(39, 16, 'eau de toilete -femme', 'e2.png', 59, 'Eau Sauvage est le parfum du culte de l\'élégance, du raffinement et de la bonne humeur.', 100),
(40, 16, 'eau de toilete -homme', 'e1.png', 69, 'L\'Euphoria Essence for Men raffinée s\'ouvre sur des teintes vertes rafraîchissantes de lierre succulent et de bergamote. Au cœur du charmant bouquet règne un doux daim auquel se mêlent harmonieusement les motifs de jasmin de miel et de poivre blanc piquant', 100),
(41, 17, 'parfums enfant', 'ee1.png', 35, 'Cette eau de toilette décontractée dégagera une odeur lumineuse, énergique et mémorable pour tous ceux qui passent au bureau ou dans la rue.', 100),
(42, 19, 'parfums de luxe -femme', 'f1.jpg', 305, 'Flowerbomb Bloom de Viktor & Rolf est conçu comme un éclat de fleurs fraîches avec des nuances qui accélèrent le retour des jours de printemps et un air frais et vivifiant.', 100),
(43, 19, 'parfums femme', 'f2.png', 509, 'Flowerbomb   un parfum d\'enchantement, un spectacle olfactif, une folie florale.Idéal pour les femmes séduisantes et sûres d’elle, c’est le parfum qui crée un geyser de sensations sucrées', 100),
(44, 19, 'eau de parfum-femme', 'f3.png', 234, 'La Petite Robe Noire est une Eau de Parfum florale fruitée. Les plus belles notes noires de la parfumerie. Des notes de tête pétillantes & fraîches', 100),
(45, 18, 'parfum homme', 'fh1.png', 234, 'eau de parfum pour homme et est décrite comme masculine, puissante et mémorable. Entre autres choses, la nouvelle version contient une concentration plus élevée d\'huiles aromatiques, augmentant ainsi l\'intensité des principaux ingrédients.', 100),
(46, 18, 'eau de parfum homme', 'fh2.png', 235, 'L\'intense fraîcheur de Sauvage dégage de nouveaux aspects sensuels et mystérieux, la renouvelant en signant une composition audacieuse.', 100),
(47, 20, 'hair pin', 'hairpin.png', 30, '24 pcs / ensemble Pince À Cheveux Dames Épingles À Cheveux Bouclés Ondulés pour femmes', 100),
(48, 21, 'Apres Shampoing', 'ApresShampoing.png', 50, 'Shampooing à base d\'huiles naturelles, spécialement formulé pour renforcer les cheveux et aider à prévenir la chute des cheveux.\r\nOptimise et prolonge l\'efficacité du traitement avec le sérum anti-chute Puressentiel. ', 100),
(49, 21, 'Shampoing v4-r', 'shampoing.png', 130, 'Ce shampoing traitant antipelliculaire élimine les pellicules, sèches ou grasses. Le cuir chevelu est purifié et les démangeaisons apaisées. Sa texture ultra-sensorielle apporte souplesse, beauté et brillance aux cheveux.', 100),
(50, 21, 'Shampoing v4-p', 'Shampooing.png', 46, 'Shampoing reflets dorés pour hygiène capillaire, des cheveux blonds ou châtain clair, à l\'extrait de camomille', 100),
(51, 22, 'Coloration cheveux T1', 'colo1.png', 190, 'Coloration permanente 7,3 Blond doré ,Couverture des cheveux blancs à 100% tenue longue durée, sans ammoniaque, sans paraben, soin revitalisant au lait d\'hibiscus', 100),
(52, 22, 'Coloration cheveux T2', 'colo2.png', 190, 'Coloration permanente 4.35 Chocolat , Couverture des cheveux blancs à 100% Tenue longue durée Sans ammoniaque Sans paraben, Soin revitalisant au lait d\'Hibiscus Testée sous contrôle dermatologique', 100),
(53, 22, 'Soin cheveux', 'soin.jpg', 19, 'Phytopolleine Botanical Scalp Treatment 25 ml', 100),
(54, 22, 'traitement Anti-Chute', 'traitement Anti-Chute.png', 560, 'Derci\'s Densi-Solution Serum :Soins dermatologiques dermatologiques', 100),
(55, 23, 'rasoir', 'rasoir.png', 39, 'Coupe-taille large avec unité de coupe et tondeuse étroite à cheveux longs', 100),
(56, 23, 'Rasoir Electrique', 'rasoirElectrique.png', 50, 'Taurus Rasoir Electrique Hommes 3D triple tête Rechargeable avec LED Affichage, Durée d’autonomie :60 minutes approximativement', 100),
(57, 24, 'Aprés Rasage k3-YY', 'apresRasage.png', 305, 'Vetiver Guerlain Cologne by Guerlain, Lancé par la maison de design de guerlain en 1959. Ce parfum masculin possède un mélange de fraîcheur et d\'extérieur, un mélange de vétiver, de bois, de tabac et d\'épices. Il est recommandé pour le port de jour.', 100),
(58, 25, 'savon pour les mains', 'savonMain.png', 34, 'Savon solide  .Soin des mains et hygiène parfaite.\r\nNettoie la peau et élimine efficacement les bactéries.', 100),
(59, 31, 'savon pour le corps', 'SavonCorps.png', 35, 'Savon noir surgras bain corps/visage - Théophile Berthon. Formulé avec 80% d’huile de grignon d’olive à la saponification.', 100),
(60, 32, 'Activateurs et accélérateurs de bronzage', 'auto-bronzage.png', 300, 'Une crème protectrice de la zone périnéale à effet lénitif, désinfectante et rééquilibrante.\r\nTrès utile et facile à appliquer.\r\nAdaptée pour un usage sportif et particulièrement indiquée dans la pratique du cyclisme.', 100),
(61, 33, 'Aprés Soleil fr-1', 'apresSoleil.png', 13, 'La crème solaire Heliocare 360 Gel sans huile Optimise et prolonge l\'efficacité du traitement avec le sérum anti-chute Puressentiel. Redonner force, vigueur, épaisseur, brillance aux cheveux, pour des cheveux plus couvrants, redensifiés.\r\n', 100),
(62, 33, 'Aprés Soleil fr-2', 'apresSoleil1.png', 56, 'Le gel bronze UV après-soleil de Filorga ; une formule gel qui se transforme en huile avec une texture légère et rafraîchissante qui apaise la peau après un bronzage. Enrichie de quatre huiles essentielles (argan, abricot, amande et avocat).', 100),
(63, 33, 'Aprés Soleil fr-3', 'apresSoleil2.jpg', 45, 'Le lait solaire NUXE visage et corps est un lait solaire haute protection, de texture et d\'arôme délicieux,\r\nqui protège le visage et le corps contre les rayons UV, pour éviter le photovieillissement prématuré et les taches brunes.', 100),
(64, 34, 'Auto bronzant', 'bronzage.png', 209, 'Huile de bronzage haute protection au soleil et aux fleurs d\'eau.', 100),
(65, 35, 'Gommage Type c1', 'gommage.png', 45, 'Soin hydratant et base de maquillage,cette crème à la couleur vitaminée apporte un effet bonne mine immédiat.', 100),
(66, 35, 'Gommage Type c2', 'gommage2.png', 45, 'Cette texture écaillée crémeuse aux fleurs d\'amandier et d\'orange et aux particules abrasives 100% végétales (oranges, litchis et noix) élimine en douceur les cellules mortes de la peau', 100),
(67, 36, 'Masque de soin', 'm1.png', 45, 'Ce masque à la texture fraîche et onctueuse, reconstruit le capital hydratation de la peau grâce à son extrait de Chondrus Crispus et de Collagène Marin.', 100),
(68, 37, 'Protection solaire b1', 'protectionSolaire.png', 100, 'Ce lait corps protège et hydrate intensément votre peau. Sa texture, légère et fondante, ne colle pas et ne laisse pas d’effet gras.', 100),
(69, 37, 'Protection solaire b2', 'protectionSolaire1.png', 101, 'Il protège contre les effets nocifs du soleil et réduit le risque d\'hyperpigmentation des cicatrices. La combinaison du resvératrol, du cuivre et de l\'hydrogène asiatique stimule efficacement le processus de régénération de l\'épiderme.', 100),
(70, 37, 'Protection solaire b3', 'protectionSolaire2.png', 102, 'Ce lait velouté soulage et apaise la peau après l’exposition au soleil. La peau est hydratée, réparée et immédiatement sublimée.\r\n', 100),
(71, 38, 'Soin de Lèvre -high', 'SoinLévre.png', 200, 'Nuxe a sélectionné le meilleur du bassin méditerranéen pour parer vos lèvres d’un soin à la senteur cerise. Grâce à sa formule contenant exclusivement des huiles végétales', 100),
(72, 38, 'Soin de Lèvre -luxe', 'SoinLévre1.png', 500, 'Repulper, protéger, hydrater et nourrir sont les actions principales de HYDRA-CHRONO+ LÈVRES obtenues grâce à un cocktail des meilleurs actifs sélectionnés par les Laboratoires Lierac ', 100),
(73, 39, 'Soin des Yeux T1-a', 'soinYeux.png', 56, 'Soin de comblement quotidien\r\nRéduction de rides\r\nIrrégularités diminuées', 100),
(74, 39, 'Soin des Yeux T1-b', 'soinYeux1.png', 56, 'Sérum de maquillage pour les yeux avec une action hydratante, revitalisante et fortifiante pour les cils', 100),
(75, 39, 'Soin des Yeux T1-c', 'soinYeux2.png', 58, 'un fluide léger qui rajeunit et embellit le contour des yeux. Sa formule complète contient des ingrédients actifs qui réduisent les poches et comblent les rides superficielles', 100),
(76, 39, 'Soin des Yeux T1-d', 'soinYeux3.png', 59, 'Crème pour les yeux multifonctionnelle avec de la caféine et de l\'extrait de dasmin pour la peau sensible des yeux.', 100),
(77, 40, 'Soins éclaircissant', 'anti-Tache.png', 409, 'Supra Radiance crème rénovatrice détox nuit contient du marrube blanc rénovateur cellulaire qui détoxifie les cellules, prévient la formation de nouvelles toxines et réactive le métabolisme cellulaire.', 100),
(78, 40, 'Soins -anti-tâches', 'anti-tache1.png', 49, 'Crème pour peau extrêmement sèche, gercée et qui démange. Il donne une hydratation intense et lisse même les zones de peau extrêmement sèches et délicates telles que les coudes et les genoux. ', 100),
(79, 40, 'anti-tâches vol-1', 'anti-age.png', 49, 'Ce soin assure une action comblement rides réelle et une nutrition extrême pour un visage visiblement jeune.\r\nSa texture active toujours onctueuse et fondante offre un effet seconde peau instantanément reconstituant, et un fini velouté inouï.\r\n', 100);

-- --------------------------------------------------------

--
-- Table structure for table `sous_categorie`
--

CREATE TABLE `sous_categorie` (
  `id_scategorie` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `nom_scategorie` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sous_categorie`
--

INSERT INTO `sous_categorie` (`id_scategorie`, `id_categorie`, `nom_scategorie`) VALUES
(1, 3, 'Crème & produits dépilatoire'),
(2, 3, 'Epilateur'),
(3, 5, 'Accessoires de beauté'),
(4, 5, 'Anti-Cernes'),
(5, 5, 'BB créme'),
(6, 5, 'Blush (Fard à joues)'),
(7, 5, 'Crayons & Eyeliners'),
(8, 5, 'Crayons à lèvres'),
(9, 5, 'Démaquillants'),
(10, 5, 'Fards à Paupière'),
(11, 5, 'Fonds de teint'),
(12, 5, 'Gloss'),
(13, 5, 'Mascaras'),
(14, 5, 'Poudres'),
(15, 5, 'Rouge à lévres'),
(16, 6, 'Eau de toilette'),
(17, 6, 'Parfums enfant'),
(18, 6, 'Parfums homme'),
(19, 6, 'Parfums femme'),
(20, 7, 'Materiel et accessoire de coiffure'),
(21, 7, 'Shampoing et après shampoing'),
(22, 7, 'Soin et Coloration'),
(23, 8, 'Materiel de rasage'),
(24, 8, 'Produits de rasage'),
(25, 9, 'Savons pour mains'),
(31, 9, 'Savons pour corps'),
(32, 10, 'Activateurs et accélérateurs de bronzage'),
(33, 10, 'Après-soleil'),
(34, 10, 'Autobronzants'),
(35, 10, 'Gommage & peeling'),
(36, 10, 'Masque de soins'),
(37, 10, 'Protection solaire'),
(38, 10, 'Soin des Lèvres'),
(39, 10, 'Soin des Yeux'),
(40, 10, 'Soins éclaircissant & anti-tâches'),
(41, 1, 'cremes/gels'),
(42, 2, 'deodorants'),
(43, 4, 'huiles');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nom_user` varchar(256) NOT NULL,
  `adresse_user` varchar(256) NOT NULL,
  `tel_user` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `type_user` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nom_user`, `adresse_user`, `tel_user`, `email`, `password`, `type_user`) VALUES
(43, 'sebbar', 'hay doha rue 953 nr 41 dcheira inzegane', 707648241, 'sebbar.mariam.06@gmail.com', '00eb8fd9129125c031f6d1eb50fc7be7', 'client'),
(44, 'sanmarino', 'hay doha rue 953 nr 41 dcheira inzegane', 808080808, 'crasy.meryam@gmail.com', '12fc145fa476103c42846071a97504cb', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`date_commande`,`id_produit`,`id_client`),
  ADD KEY `produit_comm` (`id_produit`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `scategorie_produit` (`id_scategorie`);

--
-- Indexes for table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD PRIMARY KEY (`id_scategorie`),
  ADD KEY `categorie` (`id_categorie`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  MODIFY `id_scategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `produit_comm` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Constraints for table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `scategorie_produit` FOREIGN KEY (`id_scategorie`) REFERENCES `sous_categorie` (`id_scategorie`);

--
-- Constraints for table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD CONSTRAINT `categorie` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
