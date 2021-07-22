-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: videojocs
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Accessoris`
--

DROP TABLE IF EXISTS `Accessoris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accessoris` (
  `idAccessori` int NOT NULL AUTO_INCREMENT,
  `tipus` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  PRIMARY KEY (`idAccessori`),
  UNIQUE KEY `idAccessori_UNIQUE` (`idAccessori`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accessoris`
--

LOCK TABLES `Accessoris` WRITE;
/*!40000 ALTER TABLE `Accessoris` DISABLE KEYS */;
INSERT INTO `Accessoris` VALUES (1,'pistola belga','metàl·lica'),(2,'gorra','vermella'),(3,'gorra','verda'),(4,'closca amb punxes','verda'),(5,'bolso','groc'),(6,'gorro','blanc'),(7,'ulleres de sol','grogues'),(8,'bolso','gris'),(9,'mocador','negre'),(10,'barret','negre'),(11,'barret','marró'),(12,'revólver Cattleman','metàl·lic'),(13,'pistola M4A1','metàl·lica'),(14,'bastó','marró'),(15,'màscara indígena','blanca'),(16,'espada de plata','metàl·lic'),(17,'diadema','vermella'),(18,'arma Python','metàl·lic'),(19,'gorro rus','blanc'),(20,'arracades tipus aro','marrons'),(21,'collaret','metàl·lic'),(22,'guants','marrons'),(23,'escut hyliano','blaus'),(24,'espasa maestra','metàl·lica'),(25,'arc de llum','daurat'),(26,'diadema','daurada'),(27,'espasa','blava'),(28,'ahab','marró'),(29,'motxilla','marró'),(30,'guitarra','marró'),(31,'braçalet','metàl·lic'),(32,'turbant','verd');
/*!40000 ALTER TABLE `Accessoris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AccessorisPersonatges`
--

DROP TABLE IF EXISTS `AccessorisPersonatges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AccessorisPersonatges` (
  `idAccesori` int NOT NULL,
  `idPersonatge` int NOT NULL,
  PRIMARY KEY (`idAccesori`,`idPersonatge`),
  KEY `fk_personatges_idx` (`idPersonatge`),
  CONSTRAINT `fk_accessoris` FOREIGN KEY (`idAccesori`) REFERENCES `Accessoris` (`idAccessori`),
  CONSTRAINT `fk_personatges_Person` FOREIGN KEY (`idPersonatge`) REFERENCES `Personatges` (`idPersonatge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccessorisPersonatges`
--

LOCK TABLES `AccessorisPersonatges` WRITE;
/*!40000 ALTER TABLE `AccessorisPersonatges` DISABLE KEYS */;
INSERT INTO `AccessorisPersonatges` VALUES (10,1),(1,5),(2,9),(3,10),(4,12),(5,13),(7,16),(8,16),(6,17),(10,20),(9,21),(11,22),(12,23),(13,27),(13,28),(14,29),(15,32),(14,33),(16,37),(17,39),(18,41),(19,42),(20,45),(21,45),(22,46),(23,50),(24,50),(25,51),(26,51),(27,53),(28,54),(29,56),(29,57),(30,57);
/*!40000 ALTER TABLE `AccessorisPersonatges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Arcade`
--

DROP TABLE IF EXISTS `Arcade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arcade` (
  `idArcade` int NOT NULL AUTO_INCREMENT,
  `anyFabricacio` int NOT NULL,
  `joc` varchar(45) NOT NULL,
  `idPlataformaDigital` int NOT NULL,
  PRIMARY KEY (`idArcade`),
  UNIQUE KEY `idArcade_UNIQUE` (`idArcade`),
  KEY `fk_Arcade_1_idx` (`idPlataformaDigital`),
  CONSTRAINT `fk_Arcade_1` FOREIGN KEY (`idPlataformaDigital`) REFERENCES `PlataformaDigital` (`idPlataformaDigital`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arcade`
--

LOCK TABLES `Arcade` WRITE;
/*!40000 ALTER TABLE `Arcade` DISABLE KEYS */;
INSERT INTO `Arcade` VALUES (1,1988,'Tetris',8),(2,1980,'Pacman',9),(3,1984,'Duck hunt',10),(4,1993,'Sonic The Hedgehog',11);
/*!40000 ALTER TABLE `Arcade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Consola`
--

DROP TABLE IF EXISTS `Consola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Consola` (
  `idConsola` int NOT NULL AUTO_INCREMENT,
  `anyFabricacio` int NOT NULL,
  `companyia` varchar(45) NOT NULL,
  `idPlataformaDigital` int NOT NULL,
  PRIMARY KEY (`idConsola`),
  UNIQUE KEY `idConsola_UNIQUE` (`idConsola`),
  KEY `fk_Consola_1_idx` (`idPlataformaDigital`),
  CONSTRAINT `fk_Consola_1` FOREIGN KEY (`idPlataformaDigital`) REFERENCES `PlataformaDigital` (`idPlataformaDigital`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Consola`
--

LOCK TABLES `Consola` WRITE;
/*!40000 ALTER TABLE `Consola` DISABLE KEYS */;
INSERT INTO `Consola` VALUES (1,2013,'Sony',12),(2,1986,'Nintendo',14),(3,1990,'Nintendo',15),(4,1992,'Nintendo',16),(5,1997,'Nintendo',17),(6,1998,'Nintendo',18),(7,2001,'Nintendo',19),(8,2005,'Nintendo',20),(9,2006,'Nintendo',21),(10,2009,'Nintendo',22),(11,2010,'Nintendo',23),(12,2011,'Nintendo',24),(13,2012,'Nintendo',25),(14,2013,'Nintendo',26),(15,2015,'Nintendo',27),(16,2015,'Nintendo',28),(17,2017,'Nintendo',29),(18,2005,'Microsoft',30);
/*!40000 ALTER TABLE `Consola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empresa` (
  `idEmpresa` int NOT NULL AUTO_INCREMENT,
  `nomEmpresa` varchar(45) NOT NULL,
  `sede` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `ingressos` varchar(45) NOT NULL,
  `anyFundacio` varchar(45) NOT NULL,
  `nombreTreballadors` int NOT NULL,
  PRIMARY KEY (`idEmpresa`),
  UNIQUE KEY `idEmpresa_UNIQUE` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES (1,'Mojang Studios','Estocolm','Suècia','80 milions (dolars)','2009',70),(2,'Rockstar Games','Nova York','Estats Units','335 milions (dolars)','1998',2537),(3,'Electronic Arts','Redwood City','Estats Units','5.470 milions (dolars)','1982',9700),(4,'Nintendo','Kioto','Japó','1.201 bilions (JPY)','1889',6413),(5,'Krafton','Seongnam','Corea del Sud','27.2 bilions (dolars)','2018',150),(6,'Namco','Ota','Japó','571.71 milions (dolars)','1955',1000),(7,'Re-logic','Floyds Knobs','Estats Units','3 milions (dolars)','2011',20),(8,'Activision','Los Angeles','Estats Units','2900 milions (dolars)','1978',4670),(9,'Bethesda Softworks','Rockville','Estats Units','143.8 milions (dolars)','1986',2300),(10,'Blizzard Entertainment','Irvine','Estats Units','1.9 bilions (dolars)','1994',4600),(11,'CD Projekt','Varsòvia','Polònia','2.138.875.000 (zlotyes)','1994',300),(12,'Curve Digital','Londres','Anglaterra','23.6 milions (dolars)','2005',50),(13,'Xbox Game Studios','Redmond','Estats Units','48 milions (dolars)','2000',2433),(14,'Sega','Shinagawa','Japó','247.7 mil milions (yens)','1960',5349),(15,'2K Games','Novato','Estats Units','247 milions (dolars)','2005',2777),(16,'Sony Computer Entertainment','Tokio','Japó','103.26 milions (dolars)','1993',1300),(17,'Riot Games','Los Angeles','Estats Units','1.6 mil milions (dolars)','2006',2500);
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Epoca`
--

DROP TABLE IF EXISTS `Epoca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Epoca` (
  `idEpoca` int NOT NULL,
  `any` int NOT NULL,
  `nomEpoca` varchar(45) NOT NULL,
  PRIMARY KEY (`idEpoca`),
  UNIQUE KEY `idPoca_UNIQUE` (`idEpoca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Epoca`
--

LOCK TABLES `Epoca` WRITE;
/*!40000 ALTER TABLE `Epoca` DISABLE KEYS */;
INSERT INTO `Epoca` VALUES (1,2008,'edat contemporània'),(2,2016,'edat contemporània'),(3,1968,'edat contemporània'),(4,1992,'edat contemporània'),(5,2019,'edat contemporània'),(6,2011,'edat contemporània'),(7,2013,'edat contemporània'),(8,2009,'edat contemporània'),(9,1980,'edat contemporània');
/*!40000 ALTER TABLE `Epoca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hardware`
--

DROP TABLE IF EXISTS `Hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hardware` (
  `idHardware` int NOT NULL AUTO_INCREMENT,
  `RAM` decimal(10,0) NOT NULL,
  `CPU` varchar(45) NOT NULL,
  `GPU` varchar(45) NOT NULL,
  `idPlataformaDigital` int NOT NULL,
  PRIMARY KEY (`idHardware`),
  UNIQUE KEY `idSistemaOperatiu_UNIQUE` (`idHardware`),
  KEY `fk_SistemaOperatiu_1_idx` (`idPlataformaDigital`),
  CONSTRAINT `fk_Hardware_1` FOREIGN KEY (`idPlataformaDigital`) REFERENCES `PlataformaDigital` (`idPlataformaDigital`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hardware`
--

LOCK TABLES `Hardware` WRITE;
/*!40000 ALTER TABLE `Hardware` DISABLE KEYS */;
INSERT INTO `Hardware` VALUES (1,4,'Intel Core i3','AMD Radeon R5',1),(2,4,'Intel Core i3','AMD Radeon R5',2),(3,4,'Intel Core i3','AMD Radeon R5',3),(4,4,'Intel Core 2','AMD HD 4870',1),(5,16,'Intel Core i5','NVIDIA GeForce GTX 1060',1),(6,8,'Intel Core i5','Nvidia GeForce GTX 770',1),(8,8,'Intel Core i3','NVIDIA GeForce GTX 670',1),(9,8,'Intel Core i5','NVIDIA GTX 470',1),(10,4,'Intel Core 2 Duo','NVIDIA GeForce 8800GT',1),(11,6,'Intel Core i5','Nvidia GPU GeForce GTX 660',1),(13,2,'Intel Core 2 Duo','NVIDIA GeForce 8600GT',4),(14,8,'Intel Core i3','NVIDIA GeForce GTX 670',1),(15,1,'Intel Core 2 Duo','GeForce GT 740',4),(16,1,'Intel Core 2 Duo','nVidia 7900',5),(17,2,'Intel Core 2 Duo','Nvidia GeForce 8800GT',5),(18,8,'Intel Core i3','NVIDIA Ge Force GTX 460',6),(19,1,'Intel Pentium','nVidia Geforce 6600GT',4),(20,2,'Intel Core 2 Duo','Nvidia GeForce 8500',4),(21,1,'Intel Celeron','Tarjeta gráfica NVIDIA GeForce GT 240M',5),(22,6,'Intel Celeron','Tarjeta gráfica NVIDIA GeForce GT 240M',7);
/*!40000 ALTER TABLE `Hardware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Indumentaria`
--

DROP TABLE IF EXISTS `Indumentaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Indumentaria` (
  `idIndumentaria` int NOT NULL AUTO_INCREMENT,
  `tipus` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  PRIMARY KEY (`idIndumentaria`),
  UNIQUE KEY `idIndumentaria_UNIQUE` (`idIndumentaria`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Indumentaria`
--

LOCK TABLES `Indumentaria` WRITE;
/*!40000 ALTER TABLE `Indumentaria` DISABLE KEYS */;
INSERT INTO `Indumentaria` VALUES (1,'samarreta','blau'),(2,'pantalons texans','blau'),(3,'bambes','gris'),(4,'camisa maniga curta','blau'),(5,'pantalons cotó','marró'),(6,'vestit','rosa'),(7,'peto texà','blau'),(8,'samarreta','vermell'),(9,'jaqueta','blau'),(10,'camisa','blau'),(11,'camisa','groc'),(12,'cotxe','vermell'),(13,'cotxe','rosa'),(14,'cotxe','verd'),(15,'xaleco','negre'),(16,'xaleco','verd'),(17,'capa ','vermell'),(18,'armadura','metàl·lic'),(19,'taparrabos','marró'),(20,'samarreta tirants','blanc'),(21,'top','verd'),(22,'uniforme militar','verd'),(23,'jaqueta ','blanc'),(24,'top zebra','blanc'),(25,'mono','lila'),(26,'mono','verd'),(27,'bambes','vermell'),(28,'vestit','blanc'),(29,'armadura','negre'),(30,'samarreta','taronja'),(31,'pantalons','verd'),(32,'caçadora','marró'),(33,'jaqueta militar','verd'),(34,'vestit','vermell');
/*!40000 ALTER TABLE `Indumentaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IndumentariaPersonatges`
--

DROP TABLE IF EXISTS `IndumentariaPersonatges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IndumentariaPersonatges` (
  `idIndumentaria` int NOT NULL,
  `idPersonatges` int NOT NULL,
  PRIMARY KEY (`idIndumentaria`,`idPersonatges`),
  KEY `fk_indumentaria_idx` (`idPersonatges`),
  CONSTRAINT `fk_indumentaria` FOREIGN KEY (`idIndumentaria`) REFERENCES `Indumentaria` (`idIndumentaria`),
  CONSTRAINT `fk_personatges_Indum` FOREIGN KEY (`idPersonatges`) REFERENCES `Personatges` (`idPersonatge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IndumentariaPersonatges`
--

LOCK TABLES `IndumentariaPersonatges` WRITE;
/*!40000 ALTER TABLE `IndumentariaPersonatges` DISABLE KEYS */;
INSERT INTO `IndumentariaPersonatges` VALUES (1,2),(2,2),(3,2),(4,4),(5,6),(7,9),(8,9),(12,9),(7,10),(14,10),(6,11),(13,11),(2,13),(7,17),(8,17),(9,18),(10,21),(11,22),(15,23),(16,26),(17,29),(18,31),(19,32),(17,33),(18,34),(18,37),(20,38),(21,39),(22,41),(23,44),(24,45),(26,46),(25,47),(27,49),(28,51),(29,53),(30,54),(31,55),(32,56),(33,57),(34,58);
/*!40000 ALTER TABLE `IndumentariaPersonatges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Missio`
--

DROP TABLE IF EXISTS `Missio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Missio` (
  `idMissio` int NOT NULL AUTO_INCREMENT,
  `dificultat` enum('Alta','Intermitja','Baixa') NOT NULL,
  `objectiu` varchar(200) NOT NULL,
  `recompensa` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idMissio`),
  UNIQUE KEY `idMissio_UNIQUE` (`idMissio`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Missio`
--

LOCK TABLES `Missio` WRITE;
/*!40000 ALTER TABLE `Missio` DISABLE KEYS */;
INSERT INTO `Missio` VALUES (1,'Intermitja','anar recol·lectant mentre va explorant per poder construir-se un llar i sobreviure a les criatures.','recompenses comunes, recompenses poc comunes, recompenses rares, objectes equipats, orbes d\'experiència'),(2,'Alta','completar tres activitats assignats a l\'atzar (cada 24 hores es renoven)','diners, bonificació extra'),(3,'Baixa','anotar tants punts com sigui possible alliberant línies horitzontals mitjançant blocs.','punts'),(4,'Baixa','realitzar activitats esportives',''),(5,'Intermitja','armar-se amb el que el jugador trobí a l\'illa i sobreviure als altres 99 jugadors','Battlegrounds Points'),(6,'Intermitja','superar els nivells per rescatar a la princesa Peach del rei Browser','monedes, vides, estrelles'),(7,'Intermitja','convertir-se en el campió de Kanto a l\'derrotar els quatre millors entrenadors Pokémon de la regió','medalles'),(8,'Intermitja','aconseguir la primera posició en les curses','punts, estrelles, monedes'),(9,'Baixa','menjar tots els punts que apareixen a la pantalla i evitar que els fantasmes et mengin','punts'),(10,'Alta','superar tots els nivells per trobar l\'or ','diners'),(11,'Baixa','ser bon veí, col·leccionar i conviure.','bayas, objectes, fòssils'),(12,'Alta','depen del mode de jugador que triï l\'usuari','armes, diners'),(13,'Alta','elaborar daga de ferro, adobar cuir, elaborar una posció, veure a Debris Neloren','sèptims'),(14,'Intermitja','matar als morts vivents que assalten les portes, parlar amb Leah a la Taverna de l\'Anyell Sacrificat','partides Horádricos'),(15,'Intermitja','aconseguir les 16 medalles de cada gimnàs, derrotar a alt comandament i al campió, completar la pokedex','medalles, MT'),(16,'Intermitja','disparar els ànecs que anaven apareixent a la pantalla','punts'),(17,'Alta','Kaen Morhen, lila i groselles, la Bèstia de Hort Blanco, l\'incident de Hort Blanco, una audiència amb l\'emperador','diners, objectes'),(18,'Alta','Big Smoke, Sweet and Kendl','diners, bonificació extra'),(19,'Alta','acabar amb onades interminables d\'enemics cada vegada més difícils','UAV, Paquet d\'ajuda, SMI, Torreta'),(20,'Alta','operació 40, ordre executiva, SOG, ADM','diners, bonificació extra'),(21,'Alta','escapa de somnis surrealistes resolent trencaclosques amb res més que el teu enginy i la teva física.','points'),(22,'Alta','it\'s your call, easy fare, first date, uncle vlad','diners, bonificació extra'),(23,'Alta','victòria pírrica, Celerium, velles ferides, temps i destí','diners, bonificació extra'),(24,'Baixa','guanyar partits de futbol','punts'),(25,'Intermitja','curses de salts, la prova de l\'amistat, la prova de valor','anells, punts'),(26,'Intermitja','eliminar a Ganondorf, rescatar a la princesa Zelda','habilitats, armes, menjar'),(27,'Baixa','cuidar a diferents gossos','punts'),(28,'Intermitja','guanyar a altres personatges, superar diverses proves','figures, temes musicals, personatges desbloquejables'),(29,'Alta','màxim risc, res de rus, aterratge','diners, bonificació extra'),(30,'Intermitja','la primera arma, cegat, neteja del Berg','Maya\'s Harmony'),(31,'Alta','outside, downtown, el museu','punts, trofeus'),(32,'Alta','atrapar la bandera','experiències');
/*!40000 ALTER TABLE `Missio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MissioPersonatges`
--

DROP TABLE IF EXISTS `MissioPersonatges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MissioPersonatges` (
  `idPersonatges` int NOT NULL,
  `idMissio` int NOT NULL,
  PRIMARY KEY (`idPersonatges`,`idMissio`),
  KEY `fk_missio_idx` (`idMissio`),
  CONSTRAINT `fk_missio` FOREIGN KEY (`idMissio`) REFERENCES `Missio` (`idMissio`),
  CONSTRAINT `fk_personatges_Missio` FOREIGN KEY (`idPersonatges`) REFERENCES `Personatges` (`idPersonatge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MissioPersonatges`
--

LOCK TABLES `MissioPersonatges` WRITE;
/*!40000 ALTER TABLE `MissioPersonatges` DISABLE KEYS */;
INSERT INTO `MissioPersonatges` VALUES (1,1),(2,2),(3,3),(4,4),(13,4),(14,4),(19,4),(38,4),(5,5),(6,6),(21,6),(31,6),(36,6),(45,6),(48,6),(7,7),(8,7),(9,7),(10,7),(11,8),(12,8),(16,8),(17,8),(44,8),(15,9),(18,10),(20,11),(22,12),(23,13),(24,14),(25,15),(26,15),(27,15),(28,16),(29,17),(30,18),(32,19),(33,20),(34,21),(35,22),(37,23),(39,24),(40,25),(41,26),(42,27),(43,28),(46,29),(47,30),(49,31),(50,32);
/*!40000 ALTER TABLE `MissioPersonatges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ObjecteVideojocs`
--

DROP TABLE IF EXISTS `ObjecteVideojocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ObjecteVideojocs` (
  `idObjecte` int NOT NULL,
  `idVideojoc` int NOT NULL,
  PRIMARY KEY (`idVideojoc`,`idObjecte`),
  KEY `fk_videojoc_idx` (`idVideojoc`),
  KEY `fk_objectes` (`idObjecte`),
  CONSTRAINT `fk_objectes` FOREIGN KEY (`idObjecte`) REFERENCES `Objectes` (`idObjecte`),
  CONSTRAINT `fk_videojoc` FOREIGN KEY (`idVideojoc`) REFERENCES `Videojoc` (`idVideojoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ObjecteVideojocs`
--

LOCK TABLES `ObjecteVideojocs` WRITE;
/*!40000 ALTER TABLE `ObjecteVideojocs` DISABLE KEYS */;
INSERT INTO `ObjecteVideojocs` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,2),(10,2),(11,2),(12,4),(13,4),(14,4),(9,5),(15,5),(16,6),(17,6),(18,6),(19,7),(20,7),(21,7),(19,8),(20,8),(21,8),(19,9),(20,9),(21,9),(19,10),(20,10),(21,10),(18,11),(22,11),(23,11),(18,12),(22,12),(23,12),(18,16),(22,16),(23,16),(19,25),(20,25),(21,25),(19,26),(20,26),(21,26),(19,27),(20,27),(21,27),(10,30),(17,31),(18,31),(26,33),(27,33),(9,35),(10,35),(11,35),(24,35),(25,35),(16,36),(17,36),(18,36),(19,36),(20,36),(21,36),(26,37),(27,37),(28,39),(29,40),(30,40),(31,41),(32,41),(33,42),(34,42),(35,42),(16,43),(18,43),(22,44),(16,45),(17,45),(18,45),(36,46),(37,46),(38,47),(39,47),(40,47),(18,48),(41,49),(42,49),(43,50),(44,50),(45,50);
/*!40000 ALTER TABLE `ObjecteVideojocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Objectes`
--

DROP TABLE IF EXISTS `Objectes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Objectes` (
  `idObjecte` int NOT NULL AUTO_INCREMENT,
  `nomObjecte` varchar(45) NOT NULL,
  `classificacio` varchar(45) NOT NULL,
  `utilitat` varchar(200) NOT NULL,
  PRIMARY KEY (`idObjecte`),
  UNIQUE KEY `idObjecte_UNIQUE` (`idObjecte`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Objectes`
--

LOCK TABLES `Objectes` WRITE;
/*!40000 ALTER TABLE `Objectes` DISABLE KEYS */;
INSERT INTO `Objectes` VALUES (1,'pic','eina','picar pedres i minerals'),(2,'destral','eina','tallar arbres'),(3,'encenedor','eina','encendre foc'),(4,'brúixola','instrument','indicar la ubicació'),(5,'mapa','papers','veure les zones que s\'han visitat'),(6,'canya de pescar','estri','pescar peixos al riu i al mar'),(7,'arc','arma','disparar fletxes'),(8,'espasa','arma','atacar per fer mal a altres jugadors o criatures'),(9,'farmaciola','utilitat','recuperar la salut perduda'),(10,'caixer automàtic','màquina','treure diners mitjançant una targeta de crèdit'),(11,'barrera de pues','destorb','usat per la policia en cas de persecució'),(12,'bola','instrument','tirar les bitlles'),(13,'pal de golf','instrument','colpejar la bola de golf'),(14,'raqueta de tenis','instrument','colpejar la bola de tenis'),(15,'caixa','utilitat','serveixen per donar estil visual als personatges'),(16,'xampinyó','poder','converteix al personatge en el seu tamany normal (si era petit)'),(17,'xampinyó 1-UP','poder','dóna una vida extra al personatge'),(18,'estrella','poder','fa invencible al personatge durant uns segons'),(19,'antídot','element químic','cura un Pokemon envenenat'),(20,'antigel','element químic','cura un Pokemon congelat'),(21,'calci','element químic','puja en 1 l\'atac especial d\'un Pokemon de forma permanent'),(22,'plàtan','destorb','el vehicle que el toca patina i perd temps de carrera'),(23,'bob-omb','destorb','bomba que explota '),(24,'diamant','pedra preciosa','no té una utilitat però és el causant de la trama del joc'),(25,'consolador','arma','regal per Millie Perkins, per colpejar o assassinar gent.'),(26,'arma 9','arma','per crear la Torreta'),(27,'tallagespa','eina','funció decorativa'),(28,'cartes jugadors','cartes','et deixa usar el jugador de la carta en els teus partits'),(29,'chilli dog','aliment','aliment preferit del Sonic'),(30,'phantom Ruby','pedra preciosa','permetre al Heavy King fer mal a Super Sonic'),(31,'cranc fort','animal','restaurar un cor, atorgar un increment en l\'atac, ingredient per receptes, elaborar elixirs.'),(32,'baia ígnia','aliment','restaurar un quart de cor, atorgar resistència al fred, ingredient per receptes'),(33,'pompero','joguina','joguina que al bufar pel micròfon fa bombolles'),(34,'pilota tova','joguina','joguina que al tocar a terra fa un soroll determinat'),(35,'os de goma blanc','joguina','joguina amb forma d\'os perquè jugui el gos'),(36,'mina Claymore','arma','es detona quan detecta a un enemic en el seu radi d\'acció'),(37,'ganivet llancívol','arma','al ser llançat mata l\'enemic, indiferentment d\'on impacti.'),(38,'subfussil','arma','objecte per matar als enemics'),(39,'escopeta','arma','objecte per matar als enemics'),(40,'pistola','arma','objecte per matar als enemics'),(41,'pamflet militar','papers','objecte coleccionable'),(42,'avís de reclutament','papers','objecte coleccionable'),(43,'sentinella de Control','objecte combustible','produeix una descàrrega estàtica vermella i la pèrdua de visió dels aliats'),(44,'hidra Voraç','objecte llegendari','accelera les habilitats'),(45,'botes Jonias de la Lucidesa','objecte acabat','augmenta la velocitat de moviment');
/*!40000 ALTER TABLE `Objectes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PersonatgeVideojoc`
--

DROP TABLE IF EXISTS `PersonatgeVideojoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PersonatgeVideojoc` (
  `idPersonatge` int NOT NULL,
  `idVideojoc` int NOT NULL,
  PRIMARY KEY (`idPersonatge`,`idVideojoc`),
  KEY `fk_PersonatgeVideojoc_2_idx` (`idVideojoc`),
  CONSTRAINT `fk_PersonatgeVideojoc_1` FOREIGN KEY (`idPersonatge`) REFERENCES `Personatges` (`idPersonatge`),
  CONSTRAINT `fk_PersonatgeVideojoc_2` FOREIGN KEY (`idVideojoc`) REFERENCES `Videojoc` (`idVideojoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PersonatgeVideojoc`
--

LOCK TABLES `PersonatgeVideojoc` WRITE;
/*!40000 ALTER TABLE `PersonatgeVideojoc` DISABLE KEYS */;
INSERT INTO `PersonatgeVideojoc` VALUES (1,1),(2,1),(3,1),(4,2),(5,2),(6,2),(7,4),(8,5),(9,6),(10,6),(11,6),(12,6),(13,7),(13,8),(13,9),(13,10),(9,11),(10,11),(11,11),(12,11),(9,12),(10,12),(11,12),(12,12),(7,13),(7,14),(18,15),(19,15),(9,16),(10,16),(11,16),(12,16),(20,17),(21,17),(22,17),(23,18),(23,20),(24,20),(9,21),(10,21),(11,21),(12,21),(25,22),(26,22),(38,22),(27,23),(28,23),(29,24),(30,24),(31,24),(32,24),(33,24),(13,25),(15,25),(16,25),(17,25),(13,26),(15,26),(16,26),(17,26),(14,27),(15,27),(16,27),(17,27),(34,28),(35,29),(36,30),(37,30),(9,31),(10,31),(11,31),(12,31),(26,32),(38,32),(39,33),(40,33),(41,34),(9,36),(10,36),(11,36),(12,36),(39,37),(40,37),(42,37),(43,37),(44,38),(45,38),(46,39),(47,40),(48,41),(49,41),(50,42),(34,43),(48,43),(49,43),(9,44),(10,44),(11,44),(12,44),(9,45),(10,45),(11,45),(12,45),(26,46),(38,46),(51,47),(52,47),(53,47),(9,48),(10,48),(11,48),(12,48),(54,49),(55,49),(56,50),(57,50),(58,50);
/*!40000 ALTER TABLE `PersonatgeVideojoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personatges`
--

DROP TABLE IF EXISTS `Personatges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personatges` (
  `idPersonatge` int NOT NULL AUTO_INCREMENT,
  `tipusPersonatge` varchar(45) NOT NULL,
  `nomPersonatge` varchar(45) DEFAULT NULL,
  `caracteristiques` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idPersonatge`),
  UNIQUE KEY `idPersonatge_UNIQUE` (`idPersonatge`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personatges`
--

LOCK TABLES `Personatges` WRITE;
/*!40000 ALTER TABLE `Personatges` DISABLE KEYS */;
INSERT INTO `Personatges` VALUES (1,'Principal','Ender dragón','pell negre, ulls morats, inteligent'),(2,'Protagonista','Steve','pell marró, ulls morats, hàbil carregant blocs'),(3,'Secundari','Enderman','llarg, alt, només ataca si el jugador el mira als ulls'),(4,'Protagonista','Franklin Clinton','jove, afroamericà, ambiciós'),(5,'Protagonista','Michael De Santa','ex-lladre de bancs, expert en armes'),(6,'Antagonista','Steve Haines','agent corrupte del FBI, arrogant'),(7,'Protagonista','Mii','personalitzable per cada jugador'),(8,'Protagonista','','personalitzable per cada jugador'),(9,'Protagonista','Mario Bros','fontaner, habilidós, ha de salvar a la princesa'),(10,'Secundari','Luigi','fontaner, germà del protagonista'),(11,'Principal','Princesa Peach','princesa, raptada per l\'antagonista'),(12,'Antagonista','Bowser','tortuga, rei dels Koopas'),(13,'Protagonista','Red','noi de 14 anys, entrenador pokemon'),(14,'Secundari','Pikachu','pokemon groc tipus elèctric, té una preevolucions i una evolució'),(15,'Protagonista','Gold','noi de 17 anys, entrenador pokemon'),(16,'Protagonista','Crystal','noia de 16 anys, entrenadora pokemon'),(17,'Antagonista','Silver','noi, entrenador pokemon, amb el cabell vermell'),(18,'Protagonista','Pac-man','bola groga, el seu objectiu es menjar-se totes les boletes blanques'),(19,'Antagonista','Fantasmes','fantasmes de diferents colors, el seu objectiu es matar al pac-man'),(20,'Protagonista','Arthur Morgan','capitost del grup, pateix una crisis existencial'),(21,'Secundari','Sadie Adler','viuda que busca venjança per la mort del seu marit, impulsiva'),(22,'Principal','Dutch van der Linde','era líder d\'una banda, criminal'),(23,'Protagonista','','personalitzable per cada jugador'),(24,'Secundari','Canela','secretaria i assistent del protagonista'),(25,'Protagonista','Gary \"Roach\"\" Sanderson\"','soldat de les forces britàniques i en la 3WW'),(26,'Protagonista','John Soap MacTavish','soldat escocés, té els ulls blaus'),(27,'Secundari','Akatosh','credor de la raça argoniana, líder dels nou divins'),(28,'Antagonista','Alduin','drac negre, devoradorde mons'),(29,'Protagonista','Bàrbar','guerrer imponent, ben armat'),(30,'Protagonista','Metge bruixot','utilitza el poder dels espírits, invoca les almes dels morts'),(31,'Protagonista','Mag','conctrola el temps, es un bruixot regenerat'),(32,'Protagonista','Monjo','guerrer sagrat, sirvent de la divinitat'),(33,'Protagonista','Caçador de dimonis','supervivents d\'un atac demoníac, vol alliberar el mon'),(34,'Protagonista','Gos','li agrada riure i estar a l\'herba'),(35,'Protagonista','Geralt de Rivia','caçador de monstres, té moltes armes'),(36,'Protagonista','Carl Johnson','lladre, la seva mare ha mort assessinada'),(37,'Principal','Kendl Johnson','germana del protagonista'),(38,'Principal','John Price','conegut amb el sobrenom Bravo Seis, oficial del SAS'),(39,'Protagonista','Alex Mason','operatiu de la CIA, capità retirat de la UMSC'),(40,'Protagonista','Viktor Reznov','ex-líder soviètic, va participar a la batalla de Stalingrado'),(41,'Protagonista','','personalitzable per cada jugador'),(42,'Protagonista','Roman Bellic','adicte al joc, té deutes amb la màfia'),(43,'Secundari','Elizabeta','delincuent, casada tres vegades'),(44,'Protagonista','Rob','noi protagonista dels minijocs'),(45,'Protagonista','Amelia','noia protagonista dels minijocs'),(46,'Protagonista','','el jugador tria l\'equip de futbol que vulgui: Barça, Madrid...'),(47,'Protagonista','Sonic','eriço blau, corre a gran velocitat'),(48,'Protagonista','Link','soldat de l\'exercit de Hyrule, desperta d\'un somni de 100 anys'),(49,'Principal','Zelda','princesa Hyrule, aventurera'),(50,'Protagonista','','el jugador tria la raça de gos que vulgui: labrador, buldog...'),(51,'Principal','Zer0','assassí, pot tornar-se invisible'),(52,'Principal','Salvador','utilitza dues armes alhora, s\'autolessiona'),(53,'Principal','Axton','té l\'habilitat de llançar torreta sable'),(54,'Secundari','Joel Miller','pare solter, guardià de la protagonista'),(55,'Protagonista','Ellie','és immune a una enfermetat molt contagiosa, controlada per intel·ligència artificial'),(56,'Protagonista','Ahri','converteix la màgia en energia, depredadora però empàtica'),(57,'Protagonista','Alistar','minotauro, poderós guerrer'),(58,'Protagonista','Cassiopeia','manipuladora, mig serp');
/*!40000 ALTER TABLE `Personatges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PlataformaDigital`
--

DROP TABLE IF EXISTS `PlataformaDigital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PlataformaDigital` (
  `idPlataformaDigital` int NOT NULL,
  `nom` varchar(45) NOT NULL,
  `versio` varchar(45) DEFAULT NULL,
  `tipus` enum('Consola','Arcade','Hardware') NOT NULL,
  PRIMARY KEY (`idPlataformaDigital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlataformaDigital`
--

LOCK TABLES `PlataformaDigital` WRITE;
/*!40000 ALTER TABLE `PlataformaDigital` DISABLE KEYS */;
INSERT INTO `PlataformaDigital` VALUES (1,'Windows','7','Hardware'),(2,'macOs','10.9 Maverick','Hardware'),(3,'Linux','','Hardware'),(4,'Windows','XP','Hardware'),(5,'Windows','Vista','Hardware'),(6,'Windows','10','Hardware'),(7,'macOs','X 10','Hardware'),(8,'Maquina arcade','','Arcade'),(9,'Namco','','Arcade'),(10,'Nintendo VS. System','','Arcade'),(11,'Sega System 32','','Arcade'),(12,'PlayStation','4','Consola'),(13,'PlayStation','5','Consola'),(14,'Nintendo Entertainment System','','Consola'),(15,'Game Boy','','Consola'),(16,'Super Nintendo Entertainment system','','Consola'),(17,'Nintendo 64','','Consola'),(18,'Game Boy','color','Consola'),(19,'Game Boy','Advance','Consola'),(20,'Nintendo DS','','Consola'),(21,'Wii','','Consola'),(22,'Nintendo Ds','i','Consola'),(23,'Nintendo Ds','i XL','Consola'),(24,'Nintendo 3Ds','','Consola'),(25,'Nintendo 3Ds','XL','Consola'),(26,'Nintendo 2DS','','Consola'),(27,'new Nintendo 3Ds','','Consola'),(28,'new Nintendo 3Ds','XL','Consola'),(29,'Nintendo Switch','','Consola'),(30,'Xbox','360','Consola');
/*!40000 ALTER TABLE `PlataformaDigital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PlataformaVideojoc`
--

DROP TABLE IF EXISTS `PlataformaVideojoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PlataformaVideojoc` (
  `idPlataformaDigital` int NOT NULL,
  `idVideojoc` int NOT NULL,
  PRIMARY KEY (`idPlataformaDigital`,`idVideojoc`),
  KEY `fk_PlataformaVideojoc_2_idx` (`idPlataformaDigital`),
  KEY `fk_PlataformaVideojoc_1` (`idVideojoc`),
  CONSTRAINT `fk_PlataformaVideojoc_1` FOREIGN KEY (`idVideojoc`) REFERENCES `Videojoc` (`idVideojoc`),
  CONSTRAINT `fk_PlataformaVideojoc_2` FOREIGN KEY (`idPlataformaDigital`) REFERENCES `PlataformaDigital` (`idPlataformaDigital`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PlataformaVideojoc`
--

LOCK TABLES `PlataformaVideojoc` WRITE;
/*!40000 ALTER TABLE `PlataformaVideojoc` DISABLE KEYS */;
INSERT INTO `PlataformaVideojoc` VALUES (1,1),(1,2),(1,5),(1,17),(1,22),(1,23),(1,24),(1,33),(2,1),(3,1),(4,18),(4,30),(4,32),(4,34),(4,46),(4,47),(5,35),(5,37),(6,39),(6,50),(8,3),(9,15),(10,28),(11,40),(12,1),(12,2),(12,17),(12,22),(12,29),(12,39),(12,46),(12,47),(13,2),(13,29),(14,6),(14,36),(14,49),(15,7),(15,8),(15,9),(15,10),(16,31),(17,45),(18,25),(18,26),(18,27),(20,21),(20,33),(20,42),(20,44),(21,4),(21,13),(21,14),(21,16),(21,19),(21,32),(21,33),(22,21),(22,42),(22,44),(23,21),(23,42),(23,44),(24,21),(24,42),(24,44),(25,21),(25,42),(25,44),(26,21),(26,42),(26,44),(27,21),(27,42),(27,44),(28,21),(28,42),(28,44),(29,11),(29,12),(29,20),(29,24),(29,29),(29,39),(29,41),(29,43),(29,48),(30,1),(30,2),(30,32),(30,33),(30,35),(30,37),(30,38),(30,39),(30,46),(30,47);
/*!40000 ALTER TABLE `PlataformaVideojoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Videojoc`
--

DROP TABLE IF EXISTS `Videojoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Videojoc` (
  `idVideojoc` int NOT NULL AUTO_INCREMENT,
  `nomVideojoc` varchar(45) NOT NULL,
  `preuVideojoc` decimal(10,0) NOT NULL,
  `publicEspecific` enum('3+','7+','12+','16+','18+','OK') NOT NULL,
  `pertanySaga` enum('Si','No') NOT NULL,
  `genereVideojoc` varchar(45) NOT NULL,
  `dataLlançament` datetime NOT NULL,
  `idEmpresa` int NOT NULL,
  `idEpoca` int DEFAULT NULL,
  PRIMARY KEY (`idVideojoc`),
  UNIQUE KEY `idVideojoc_UNIQUE` (`idVideojoc`),
  KEY `fk_Videojoc_2_idx` (`idEmpresa`),
  KEY `fk_Videojoc_1_idx` (`idEpoca`),
  CONSTRAINT `fk_Videojoc_1` FOREIGN KEY (`idEpoca`) REFERENCES `Epoca` (`idEpoca`),
  CONSTRAINT `fk_Videojoc_2` FOREIGN KEY (`idEmpresa`) REFERENCES `Empresa` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Videojoc`
--

LOCK TABLES `Videojoc` WRITE;
/*!40000 ALTER TABLE `Videojoc` DISABLE KEYS */;
INSERT INTO `Videojoc` VALUES (1,'Minecraft',26,'7+','No','Sandbox','2011-11-18 00:00:00',1,NULL),(2,'Grand Theft Auto V',10,'18+','Si','Acció, Aventura','2013-09-17 00:00:00',2,1),(3,'Tetris',16,'OK','No','Puzzle','2006-09-12 00:00:00',3,NULL),(4,'Wii Sports',10,'7+','Si','Esports','2006-11-19 00:00:00',4,NULL),(5,'PlayerUnknown’s Battlegrounds',16,'16+','Si','Shooter,Bèl·lic','2017-12-20 00:00:00',5,NULL),(6,'Super Mario Bros',36,'3+','Si','Plataforma','1985-09-13 00:00:00',4,NULL),(7,'Pokemon Vermell',9,'3+','Si','Acció, Aventura, Rol','1996-02-27 00:00:00',4,NULL),(8,'Pokemon Groc',9,'3+','Si','Acció, Aventura, Rol','1996-02-27 00:00:00',4,NULL),(9,'Pokemon Verd',9,'3+','Si','Acció, Aventura, Rol','1996-02-27 00:00:00',4,NULL),(10,'Pokemon Blau',9,'3+','Si','Acció, Aventura, Rol','1996-02-27 00:00:00',4,NULL),(11,'Mario Kart 8',36,'3+','Si','Carreres','2014-05-24 00:00:00',4,NULL),(12,'Mario Kart 8 Deluxe',52,'3+','Si','Carreres','2014-05-29 00:00:00',4,NULL),(13,'Wii Fit',9,'3+','Si','Esports','2007-12-01 00:00:00',4,NULL),(14,'Wii Fit Plus ',9,'3+','Si','Esports','2007-12-01 00:00:00',4,NULL),(15,'Pac-Man',3,'OK','No','Puzzle','1980-06-01 00:00:00',6,NULL),(16,'Mario Kart Wii',18,'3+','Si','Carreres','2008-04-10 00:00:00',4,NULL),(17,'Red Dead Redemption 2',35,'18+','Si','Acció, Aventura, Shooter','2018-10-26 00:00:00',2,NULL),(18,'Terraria',5,'12+','Si','Acció, Aventura','2011-05-16 00:00:00',7,NULL),(19,'Wii Sports Resort',61,'7+','Si','Esports','2009-06-25 00:00:00',4,NULL),(20,'Animal Crossing: New Horizons',50,'3+','Si','Simulació','2020-03-20 00:00:00',4,NULL),(21,'New Super Mario Bros',36,'3+','Si','Plataforma','2006-05-15 00:00:00',4,NULL),(22,'Call of Duty: Modern Warfare',29,'18+','Si','Shooter','2019-10-25 00:00:00',8,5),(23,'The Elder Scrolls V: Skyrim',5,'18+','Si','Rol','2011-11-11 00:00:00',9,NULL),(24,'Diablo III',12,'16+','Si','Rol','2012-05-16 00:00:00',10,NULL),(25,'Pokemon Or',50,'12+','Si','Aventura, Rol','1999-11-21 00:00:00',4,NULL),(26,'Pokemon Plata',50,'12+','Si','Aventura, Rol','1999-11-21 00:00:00',4,NULL),(27,'Pokemon Cristal',50,'12+','Si','Aventura, Rol','1999-11-21 00:00:00',4,NULL),(28,'Duck Hunt',31,'OK','No','Shooter','1984-04-21 00:00:00',4,NULL),(29,'The Witcher 3',9,'18+','Si','Rol','2015-05-19 00:00:00',11,NULL),(30,'Grand Theft Auto: San Andreas',7,'18+','Si','Acció, Aventura','2004-10-26 00:00:00',2,4),(31,'Super Mario World',50,'OK','Si','Plataforma','1990-11-21 00:00:00',4,NULL),(32,'Call of Duty: Modern Warfare 3',20,'18+','Si','Shooter','2011-11-08 00:00:00',8,2),(33,'Call of Duty: Black Ops',48,'18+','Si','Shooter','2010-11-09 00:00:00',8,3),(34,'Human Fall Flat',5,'3+','No','Puzzle','2016-07-22 00:00:00',12,NULL),(35,'Grand Theft Auto IV',13,'18+','Si','Shooter, Acció, Aventura','2008-04-29 00:00:00',2,NULL),(36,'Super Mario Bros 3',57,'OK','Si','Plataforma','1988-10-23 00:00:00',4,NULL),(37,'Call of Duty: Black Ops 2',35,'18+','Si','Shooter','2012-11-12 00:00:00',8,9),(38,'Kinect Adventures!',1,'3+','Si','Acció, Espots','2010-11-04 00:00:00',13,NULL),(39,'FIFA 18',12,'3+','Si','Esports','2017-09-29 00:00:00',3,NULL),(40,'Sonic the Hedgehog',14,'12+','Si','Plataforma','1991-06-23 00:00:00',14,NULL),(41,'The Legends of Zelda: Breath of the Wild',55,'12+','Si','Acció, Aventura, Rol','2017-03-03 00:00:00',4,6),(42,'Nintendogs',22,'3+','No','Simulador','2005-04-21 00:00:00',4,NULL),(43,'Super Smash Bros. Ultimate',21,'12+','Si','Lluita, Plataforma','2018-12-07 00:00:00',4,NULL),(44,'Mario Kart DS',15,'3+','Si','Carreres','2005-11-14 00:00:00',4,NULL),(45,'Super Mario 64/DS',24,'OK','Si','Plataforma','1996-06-23 00:00:00',4,NULL),(46,'Call of Duty: Modern Warfare 2',13,'18+','Si','Acció','2009-11-10 00:00:00',8,2),(47,'Borderlands 2',3,'18+','Si','Acció, Shooter','2012-09-18 00:00:00',15,NULL),(48,'Super Mario Odyssey',50,'7+','Si','Plataforma','2017-10-27 00:00:00',4,NULL),(49,'The Last of Us',20,'18+','Si','Acció, Aventura, Shooter','2013-06-14 00:00:00',16,7),(50,'League of Legends',20,'12+','No','Acció','2009-04-17 00:00:00',17,8);
/*!40000 ALTER TABLE `Videojoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-11  0:47:07
