-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: 76analysis
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `output_day`
--

DROP TABLE IF EXISTS `output_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `output_day` (
  `id` varchar(50) NOT NULL,
  `cantOth` int(11) NOT NULL,
  `cantUsers` int(11) NOT NULL,
  `cantTweet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `output_day`
--

LOCK TABLES `output_day` WRITE;
/*!40000 ALTER TABLE `output_day` DISABLE KEYS */;
INSERT INTO `output_day` VALUES ('#2030NOW.20170606',0,2,2),('#2030NOW.20170607',0,1,1),('#MakeAmericaGreatAgain.20170609',0,11,11),('#Trumprussia.20170606',0,151,155),('#Trumprussia.20170607',0,1281,1396),('#puravida.20170608',1,65,79),('#puravida.20170609',5,160,196),('#women.20170607',0,461,565);
/*!40000 ALTER TABLE `output_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `output_hr`
--

DROP TABLE IF EXISTS `output_hr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `output_hr` (
  `id` varchar(50) NOT NULL,
  `cantOth` int(11) NOT NULL,
  `cantUsers` int(11) NOT NULL,
  `cantTweet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `output_hr`
--

LOCK TABLES `output_hr` WRITE;
/*!40000 ALTER TABLE `output_hr` DISABLE KEYS */;
INSERT INTO `output_hr` VALUES ('#2030NOW.2017060619',0,2,2),('#2030NOW.2017060709',0,1,1),('#MakeAmericaGreatAgain.2017060921',0,11,11),('#Trumprussia.2017060622',0,4,4),('#Trumprussia.2017060623',0,147,151),('#Trumprussia.2017060700',0,148,154),('#Trumprussia.2017060701',0,150,155),('#Trumprussia.2017060702',0,144,157),('#Trumprussia.2017060703',0,147,157),('#Trumprussia.2017060704',0,145,152),('#Trumprussia.2017060705',0,147,155),('#Trumprussia.2017060706',0,155,157),('#Trumprussia.2017060707',0,144,149),('#Trumprussia.2017060708',0,154,157),('#Trumprussia.2017060709',0,3,3),('#puravida.2017060800',0,5,6),('#puravida.2017060801',0,15,18),('#puravida.2017060802',0,5,5),('#puravida.2017060803',0,3,4),('#puravida.2017060808',1,31,37),('#puravida.2017060815',0,7,9),('#puravida.2017060902',0,2,2),('#puravida.2017060903',0,3,3),('#puravida.2017060904',0,3,3),('#puravida.2017060905',1,11,11),('#puravida.2017060906',1,39,49),('#puravida.2017060907',1,43,48),('#puravida.2017060908',1,42,46),('#puravida.2017060909',1,29,34),('#women.2017060713',0,79,85),('#women.2017060717',0,20,22),('#women.2017060718',0,86,89),('#women.2017060719',0,99,121),('#women.2017060720',0,94,102),('#women.2017060721',0,93,102),('#women.2017060722',0,42,44);
/*!40000 ALTER TABLE `output_hr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `output_tot`
--

DROP TABLE IF EXISTS `output_tot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `output_tot` (
  `id` varchar(50) NOT NULL,
  `cantOth` int(11) NOT NULL,
  `cantUsers` int(11) NOT NULL,
  `cantTweet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `output_tot`
--

LOCK TABLES `output_tot` WRITE;
/*!40000 ALTER TABLE `output_tot` DISABLE KEYS */;
INSERT INTO `output_tot` VALUES ('#2030NOW',0,3,3),('#MakeAmericaGreatAgain',0,11,11),('#Trumprussia',0,1421,1551),('#puravida',6,220,275),('#women',0,461,565);
/*!40000 ALTER TABLE `output_tot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nameHashtag` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` VALUES (1,'#2030NOW'),(2,'#women'),(3,'#costarica'),(4,'#puravida'),(5,'#MakeAmericaGreatAgain'),(6,'#Trumprussia'),(7,'#RecycleReuse'),(8,'#TraficoCR');
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topDay_hashtag`
--

DROP TABLE IF EXISTS `topDay_hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topDay_hashtag` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topDay_hashtag`
--

LOCK TABLES `topDay_hashtag` WRITE;
/*!40000 ALTER TABLE `topDay_hashtag` DISABLE KEYS */;
INSERT INTO `topDay_hashtag` VALUES ('#2030NOW.20170606','#ActOnClimate',2),('#2030NOW.20170606','#2030Now',2),('#2030NOW.20170606','#SaveOurOcean',2),('#2030NOW.20170606','#sustainable',2),('#2030NOW.20170606','#SDG14',2),('#2030NOW.20170606','#OceanConference',1),('#2030NOW.20170606','#OceanConference…',1),('#2030NOW.20170607','#2030NOW',1),('#2030NOW.20170607','#GlobalGoals',1),('#MakeAmericaGreatAgain.20170609','#MakeAmericaGreatAgain',9),('#MakeAmericaGreatAgain.20170609','#makeamericagreatagain',2),('#MakeAmericaGreatAgain.20170609','#MAGA',1),('#MakeAmericaGreatAgain.20170609','#usa',1),('#MakeAmericaGreatAgain.20170609','#NWO',1),('#MakeAmericaGreatAgain.20170609','#illuminati',1),('#MakeAmericaGreatAgain.20170609','#Islamophobia',1),('#Trumprussia.20170606','#TrumpRussia',129),('#Trumprussia.20170606','#TrumpObstructed',14),('#Trumprussia.20170606','#Tr…',7),('#Trumprussia.20170606','#trumprussia',7),('#Trumprussia.20170606','#TrumpRussia…',6),('#Trumprussia.20170606','#maddow',6),('#Trumprussia.20170606','#ImpeachTrump',5),('#Trumprussia.20170606','#tcot',4),('#Trumprussia.20170606','#Trumprussia',4),('#Trumprussia.20170606','#TheResistance',4),('#Trumprussia.20170607','#TrumpRussia',1159),('#Trumprussia.20170607','#TrumpObstructed',120),('#Trumprussia.20170607','#Tr…',88),('#Trumprussia.20170607','#FakeNews',64),('#Trumprussia.20170607','#trumprussia',55),('#Trumprussia.20170607','#ImpeachTrump',52),('#Trumprussia.20170607','#TheResistance',41),('#Trumprussia.20170607','#Trump',39),('#Trumprussia.20170607','#Breaking',38),('#Trumprussia.20170607','#Trumprussia',35),('#puravida.20170608','#PuraVida',62),('#puravida.20170608','#Gloria',12),('#puravida.20170608','#puravida',6),('#puravida.20170608','#GrupoGloria',4),('#puravida.20170608','#PuraVIDA',4),('#puravida.20170608','#PuraESTAFA',4),('#puravida.20170608','#Cancerigeno',4),('#puravida.20170608','#YonhyLescano',4),('#puravida.20170608','#Leche',2),('#puravida.20170608','#Ambassador',2),('#puravida.20170609','#PuraVida',165),('#puravida.20170609','#Gloria',23),('#puravida.20170609','#HalaMadrid',18),('#puravida.20170609','#12UCL',18),('#puravida.20170609','#puravida',13),('#puravida.20170609','#MorfiTelefe',11),('#puravida.20170609','#Nosotrosalamañana',11),('#puravida.20170609','#D6a9',9),('#puravida.20170609','#Bonlé',8),('#puravida.20170609','#Amanecer',8),('#women.20170607','#women',303),('#women.20170607','#Women',102),('#women.20170607','#girls',11),('#women.20170607','#Iran',11),('#women.20170607','#WOMEN',9),('#women.20170607','#girl',9),('#women.20170607','#KING',7),('#women.20170607','#fucking',7),('#women.20170607','#Pankhurst',7),('#women.20170607','#Men',7);
/*!40000 ALTER TABLE `topDay_hashtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topDay_word`
--

DROP TABLE IF EXISTS `topDay_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topDay_word` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topDay_word`
--

LOCK TABLES `topDay_word` WRITE;
/*!40000 ALTER TABLE `topDay_word` DISABLE KEYS */;
INSERT INTO `topDay_word` VALUES ('#2030NOW.20170606','promoting',2),('#2030NOW.20170606','UNDP',2),('#2030NOW.20170606','development',2),('#2030NOW.20170606','conference',2),('#2030NOW.20170606','',1),('#2030NOW.20170606','RT',1),('#2030NOW.20170606','…',1),('#2030NOW.20170606','https',1),('#2030NOW.20170606','SilviaMorimoto',1),('#2030NOW.20170607','promoting',2),('#2030NOW.20170607','RT',2),('#2030NOW.20170607','UNDP',2),('#2030NOW.20170607','development',2),('#2030NOW.20170607','conference',2),('#2030NOW.20170607','',1),('#2030NOW.20170607','…',1),('#2030NOW.20170607','SilviaMorimoto',1),('#2030NOW.20170607','HansLak',1),('#2030NOW.20170607','Imagination',1),('#MakeAmericaGreatAgain.20170609','RT',9),('#MakeAmericaGreatAgain.20170609','…',7),('#MakeAmericaGreatAgain.20170609','????????????',6),('#MakeAmericaGreatAgain.20170609','https',6),('#MakeAmericaGreatAgain.20170609','OWNED',5),('#MakeAmericaGreatAgain.20170609','crosses',5),('#MakeAmericaGreatAgain.20170609','President',5),('#MakeAmericaGreatAgain.20170609','POTUS',5),('#MakeAmericaGreatAgain.20170609','Everyone',5),('#MakeAmericaGreatAgain.20170609','learn',5),('#Trumprussia.20170606','RT',147),('#Trumprussia.20170606','investigation',62),('#Trumprussia.20170606','realDonaldTrump',58),('#Trumprussia.20170606','ways',55),('#Trumprussia.20170606','FBI',53),('#Trumprussia.20170606','sure',52),('#Trumprussia.20170606','tried',52),('#Trumprussia.20170606','tedlieu',52),('#Trumprussia.20170606','someone',52),('#Trumprussia.20170606','For',51),('#Trumprussia.20170607','RT',1302),('#Trumprussia.20170607','Trump',619),('#Trumprussia.20170607','investigation',498),('#Trumprussia.20170607','realDonaldTrump',459),('#Trumprussia.20170607','FBI',425),('#Trumprussia.20170607','ways',413),('#Trumprussia.20170607','sure',401),('#Trumprussia.20170607','hoax',399),('#Trumprussia.20170607','tedlieu',399),('#Trumprussia.20170607','claims',398),('#puravida.20170608','RT',1351),('#puravida.20170608','Trump',619),('#puravida.20170608','investigation',498),('#puravida.20170608','realDonaldTrump',459),('#puravida.20170608','FBI',425),('#puravida.20170608','ways',413),('#puravida.20170608','sure',401),('#puravida.20170608','hoax',399),('#puravida.20170608','tedlieu',399),('#puravida.20170608','claims',398),('#puravida.20170609','RT',1465),('#puravida.20170609','Trump',619),('#puravida.20170609','investigation',498),('#puravida.20170609','realDonaldTrump',459),('#puravida.20170609','FBI',425),('#puravida.20170609','ways',413),('#puravida.20170609','sure',401),('#puravida.20170609','tedlieu',399),('#puravida.20170609','hoax',399),('#puravida.20170609','tried',398),('#women.20170607','RT',1682),('#women.20170607','Trump',620),('#women.20170607','investigation',499),('#women.20170607','realDonaldTrump',460),('#women.20170607','…',441),('#women.20170607','FBI',425),('#women.20170607','ways',413),('#women.20170607','For',405),('#women.20170607','sure',403),('#women.20170607','tedlieu',399);
/*!40000 ALTER TABLE `topDay_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topHr_hashtag`
--

DROP TABLE IF EXISTS `topHr_hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topHr_hashtag` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topHr_hashtag`
--

LOCK TABLES `topHr_hashtag` WRITE;
/*!40000 ALTER TABLE `topHr_hashtag` DISABLE KEYS */;
INSERT INTO `topHr_hashtag` VALUES ('#2030NOW.2017060619','#ActOnClimate',2),('#2030NOW.2017060619','#SaveOurOcean',2),('#2030NOW.2017060619','#SDG14',2),('#2030NOW.2017060619','#sustainable',2),('#2030NOW.2017060619','#2030Now',2),('#2030NOW.2017060619','#OceanConference',1),('#2030NOW.2017060619','#OceanConference…',1),('#2030NOW.2017060709','#GlobalGoals',1),('#2030NOW.2017060709','#2030NOW',1),('#MakeAmericaGreatAgain.2017060921','#MakeAmericaGreatAgain',9),('#MakeAmericaGreatAgain.2017060921','#makeamericagreatagain',2),('#MakeAmericaGreatAgain.2017060921','#NWO',1),('#MakeAmericaGreatAgain.2017060921','#Islamophobia',1),('#MakeAmericaGreatAgain.2017060921','#MAGA',1),('#MakeAmericaGreatAgain.2017060921','#illuminati',1),('#MakeAmericaGreatAgain.2017060921','#usa',1),('#Trumprussia.2017060622','#TrumpRussia',4),('#Trumprussia.2017060622','#ImpeachTrump',1),('#Trumprussia.2017060622','#O…',1),('#Trumprussia.2017060623','#TrumpRussia',125),('#Trumprussia.2017060623','#TrumpObstructed',14),('#Trumprussia.2017060623','#Tr…',7),('#Trumprussia.2017060623','#trumprussia',7),('#Trumprussia.2017060623','#maddow',6),('#Trumprussia.2017060623','#TrumpRussia…',6),('#Trumprussia.2017060623','#ImpeachTrump',4),('#Trumprussia.2017060623','#Im…',4),('#Trumprussia.2017060623','#Russiagate',4),('#Trumprussia.2017060623','#TheResistance',4),('#Trumprussia.2017060700','#TrumpRussia',129),('#Trumprussia.2017060700','#TrumpObstructed',16),('#Trumprussia.2017060700','#FakeNews',12),('#Trumprussia.2017060700','#ImpeachTrump',11),('#Trumprussia.2017060700','#resist',6),('#Trumprussia.2017060700','#Breaking',6),('#Trumprussia.2017060700','#trumprussia',6),('#Trumprussia.2017060700','#TrumpRussia…',5),('#Trumprussia.2017060700','#Tr…',5),('#Trumprussia.2017060700','#TheResistance',3),('#Trumprussia.2017060701','#TrumpRussia',127),('#Trumprussia.2017060701','#TrumpObstructed',20),('#Trumprussia.2017060701','#ImpeachTrump',11),('#Trumprussia.2017060701','#Breaking',9),('#Trumprussia.2017060701','#TheResistance',8),('#Trumprussia.2017060701','#FakeNews',7),('#Trumprussia.2017060701','#Tr…',7),('#Trumprussia.2017060701','#Trumprussia',6),('#Trumprussia.2017060701','#Trump',5),('#Trumprussia.2017060701','#tcot',4),('#Trumprussia.2017060702','#TrumpRussia',122),('#Trumprussia.2017060702','#TrumpObstructed',12),('#Trumprussia.2017060702','#Tr…',12),('#Trumprussia.2017060702','#TheResistance',8),('#Trumprussia.2017060702','#Resist',8),('#Trumprussia.2017060702','#Trumprussia',7),('#Trumprussia.2017060702','#trumprussia',7),('#Trumprussia.2017060702','#ImpeachTrump',6),('#Trumprussia.2017060702','#FakeNews',6),('#Trumprussia.2017060702','#Trump',6),('#Trumprussia.2017060703','#TrumpRussia',129),('#Trumprussia.2017060703','#TrumpObstructed',17),('#Trumprussia.2017060703','#trumprussia',10),('#Trumprussia.2017060703','#Tr…',8),('#Trumprussia.2017060703','#TrumpRussia…',6),('#Trumprussia.2017060703','#TheResistance',5),('#Trumprussia.2017060703','#ImpeachTrump',4),('#Trumprussia.2017060703','#Resist',4),('#Trumprussia.2017060703','#Trump',4),('#Trumprussia.2017060703','#FakeNews',3),('#Trumprussia.2017060704','#TrumpRussia',126),('#Trumprussia.2017060704','#TrumpObstructed',12),('#Trumprussia.2017060704','#Tr…',9),('#Trumprussia.2017060704','#Trump',8),('#Trumprussia.2017060704','#trumprussia',7),('#Trumprussia.2017060704','#FakeNews',5),('#Trumprussia.2017060704','#Trumprussia',5),('#Trumprussia.2017060704','#Breaking',4),('#Trumprussia.2017060704','#ComeyHearing',4),('#Trumprussia.2017060704','#ImpeachTrump',3),('#Trumprussia.2017060705','#TrumpRussia',134),('#Trumprussia.2017060705','#TrumpObstructed',13),('#Trumprussia.2017060705','#Tr…',9),('#Trumprussia.2017060705','#trumprussia',8),('#Trumprussia.2017060705','#FakeNews',7),('#Trumprussia.2017060705','#Trump',6),('#Trumprussia.2017060705','#ImpeachTrump',4),('#Trumprussia.2017060705','#Breaking',3),('#Trumprussia.2017060705','#auspol',3),('#Trumprussia.2017060705','#morningjoe',3),('#Trumprussia.2017060706','#TrumpRussia',134),('#Trumprussia.2017060706','#Tr…',24),('#Trumprussia.2017060706','#TrumpObstructed',8),('#Trumprussia.2017060706','#FakeNews',8),('#Trumprussia.2017060706','#ImpeachTrump',5),('#Trumprussia.2017060706','#Breaking',4),('#Trumprussia.2017060706','#trumprussia',4),('#Trumprussia.2017060706','#ComeyTestimony',2),('#Trumprussia.2017060706','#WeThePeople',2),('#Trumprussia.2017060706','#TheResistance',2),('#Trumprussia.2017060707','#TrumpRussia',129),('#Trumprussia.2017060707','#TrumpObstructed',15),('#Trumprussia.2017060707','#TrumpObstructed…',12),('#Trumprussia.2017060707','#FakeNews',8),('#Trumprussia.2017060707','#Tr…',7),('#Trumprussia.2017060707','#ImpeachTrump',6),('#Trumprussia.2017060707','#Im…',5),('#Trumprussia.2017060707','#TheResistance',5),('#Trumprussia.2017060707','#Trumprussia',4),('#Trumprussia.2017060707','#MSM',3),('#Trumprussia.2017060708','#TrumpRussia',126),('#Trumprussia.2017060708','#TrumpObstructed…',13),('#Trumprussia.2017060708','#FakeNews',8),('#Trumprussia.2017060708','#TrumpObstructed',7),('#Trumprussia.2017060708','#ParisAgreement',7),('#Trumprussia.2017060708','#TheResistance',7),('#Trumprussia.2017060708','#Tr…',7),('#Trumprussia.2017060708','#trumprussia',7),('#Trumprussia.2017060708','#Resist',5),('#Trumprussia.2017060708','#RT',5),('#Trumprussia.2017060709','#TrumpRussia',3),('#Trumprussia.2017060709','#ParisAgreement',3),('#puravida.2017060800','#PuraVida',6),('#puravida.2017060800','#Gloria',2),('#puravida.2017060800','#lacras',1),('#puravida.2017060800','#CostaRica',1),('#puravida.2017060800','#BCP',1),('#puravida.2017060800','#claro',1),('#puravida.2017060800','#pendejos',1),('#puravida.2017060800','#movistar',1),('#puravida.2017060800','#YonhyLescano',1),('#puravida.2017060801','#PuraVida',16),('#puravida.2017060801','#Gloria',5),('#puravida.2017060801','#memes',2),('#puravida.2017060801','#FotoReto',1),('#puravida.2017060801','#Indecopi',1),('#puravida.2017060801','#GobiernoPeruano',1),('#puravida.2017060801','#Alegría',1),('#puravida.2017060801','#NoEsLeche',1),('#puravida.2017060801','#Entretenimiento',1),('#puravida.2017060801','#Publicidad',1),('#puravida.2017060802','#puravida',3),('#puravida.2017060802','#PuraVida',2),('#puravida.2017060802','#Ambassador',2),('#puravida.2017060802','#rep',2),('#puravida.2017060802','#bracelets',2),('#puravida.2017060802','#discount',2),('#puravida.2017060802','#chicago',1),('#puravida.2017060803','#PuraVida',3),('#puravida.2017060803','#Gloria',2),('#puravida.2017060803','#Odebrech',1),('#puravida.2017060803','#puravida',1),('#puravida.2017060803','#YonhyLescano',1),('#puravida.2017060803','#perú??',1),('#puravida.2017060808','#PuraVida',28),('#puravida.2017060808','#GrupoGloria',4),('#puravida.2017060808','#PuraVIDA',4),('#puravida.2017060808','#Cancerigeno',4),('#puravida.2017060808','#PuraESTAFA',4),('#puravida.2017060808','#Gloria',3),('#puravida.2017060808','#TECNOLOGÍA',2),('#puravida.2017060808','#puravida',2),('#puravida.2017060808','#Puravida',2),('#puravida.2017060808','#Vintage',2),('#puravida.2017060815','#PuraVida',7),('#puravida.2017060815','#PeruVsParaguay',2),('#puravida.2017060815','#Leche',2),('#puravida.2017060815','#PromsexMiente',1),('#puravida.2017060815','#Sandra',1),('#puravida.2017060815','#DerechoAn…',1),('#puravida.2017060815','#Gabinete…',1),('#puravida.2017060815','#BienestarAnimal',1),('#puravida.2017060902','#PuraVida',2),('#puravida.2017060902','#HalaMadrid',2),('#puravida.2017060902','#12UCL',2),('#puravida.2017060903','#PuraVida',3),('#puravida.2017060903','#HalaMadrid',2),('#puravida.2017060903','#12UCL',2),('#puravida.2017060903','#Gloria',1),('#puravida.2017060903','#YonhyLescano',1),('#puravida.2017060904','#PuraVida',2),('#puravida.2017060904','#HalaMadrid',1),('#puravida.2017060904','#12UCL',1),('#puravida.2017060905','#PuraVida',9),('#puravida.2017060905','#DIGESA',3),('#puravida.2017060905','#D6a9',3),('#puravida.2017060905','#puravida',2),('#puravida.2017060905','#Indecopi',2),('#puravida.2017060905','#clouds',1),('#puravida.2017060905','#HalaMadrid',1),('#puravida.2017060905','#12UCL',1),('#puravida.2017060905','#sky',1),('#puravida.2017060905','#costarica',1),('#puravida.2017060906','#PuraVida',46),('#puravida.2017060906','#D6a9',6),('#puravida.2017060906','#FernandoZavala',5),('#puravida.2017060906','#HalaMadrid',4),('#puravida.2017060906','#12UCL',4),('#puravida.2017060906','#BuenViernes',4),('#puravida.2017060906','#VaComoPiña',3),('#puravida.2017060906','#TECNOLOGÍA',3),('#puravida.2017060906','#Federal',2),('#puravida.2017060906','#Amanecer',2),('#puravida.2017060907','#PuraVida',42),('#puravida.2017060907','#Gloria',7),('#puravida.2017060907','#MorfiTelefe',6),('#puravida.2017060907','#Nosotrosalamañana',6),('#puravida.2017060907','#Cocinandoparavos',5),('#puravida.2017060907','#Amanecer',4),('#puravida.2017060907','#HalaMadrid',4),('#puravida.2017060907','#12UCL',4),('#puravida.2017060907','#GrupoGloria',2),('#puravida.2017060907','#Selfie',2),('#puravida.2017060908','#PuraVida',34),('#puravida.2017060908','#Gloria',13),('#puravida.2017060908','#puravida',6),('#puravida.2017060908','#Bonlé',4),('#puravida.2017060908','#LoÚltimo',4),('#puravida.2017060908','#TealSunset',3),('#puravida.2017060908','#MorfiTelefe',3),('#puravida.2017060908','#CostaRicaGifts',3),('#puravida.2017060908','#Nosotrosalamañana',3),('#puravida.2017060908','#Cocinandoparavos',3),('#puravida.2017060909','#PuraVida',27),('#puravida.2017060909','#GrupoGloria',5),('#puravida.2017060909','#AHORA',4),('#puravida.2017060909','#Bonlé',4),('#puravida.2017060909','#puravida',3),('#puravida.2017060909','#Gloria',2),('#puravida.2017060909','#HalaMadrid',2),('#puravida.2017060909','#12UCL',2),('#puravida.2017060909','#Federal',1),('#puravida.2017060909','#DuraVida',1),('#women.2017060713','#women',53),('#women.2017060713','#Women',16),('#women.2017060713','#ISIS',5),('#women.2017060713','#HSNB',4),('#women.2017060713','#YPJ',4),('#women.2017060713','#SDF',4),('#women.2017060713','#Syria',4),('#women.2017060713','#Iran',4),('#women.2017060713','#MAGA',3),('#women.2017060713','#WednesdayWisdom',3),('#women.2017060717','#Women',9),('#women.2017060717','#women',7),('#women.2017060717','#Bodychain',2),('#women.2017060717','#Start',2),('#women.2017060717','#NorthCarolina',1),('#women.2017060717','#csuite',1),('#women.2017060717','#FirearmSafetyTraining',1),('#women.2017060717','#yycevents',1),('#women.2017060717','#EmeraldSummerNights',1),('#women.2017060717','#Nepal',1),('#women.2017060718','#women',56),('#women.2017060718','#Women',11),('#women.2017060718','#love',4),('#women.2017060718','#Pankhurst',4),('#women.2017060718','#quo…',4),('#women.2017060718','#Iran',4),('#women.2017060718','#TrumpRussia',2),('#women.2017060718','#mujer',2),('#women.2017060718','#TheResistance',2),('#women.2017060718','#Moccasin',2),('#women.2017060719','#women',67),('#women.2017060719','#Women',12),('#women.2017060719','#girl',5),('#women.2017060719','#KING',4),('#women.2017060719','#JMG??',4),('#women.2017060719','#kiss',3),('#women.2017060719','#lesbian',3),('#women.2017060719','#follow',3),('#women.2017060719','#following',3),('#women.2017060719','#girls',3),('#women.2017060720','#women',53),('#women.2017060720','#Women',21),('#women.2017060720','#WOMEN',4),('#women.2017060720','#equalpay',3),('#women.2017060720','#Comey',2),('#women.2017060720','#nook',2),('#women.2017060720','#',2),('#women.2017060720','#SOLID',2),('#women.2017060720','#DRESS',2),('#women.2017060720','#8',2),('#women.2017060721','#women',47),('#women.2017060721','#Women',27),('#women.2017060721','#Men',6),('#women.2017060721','#Success',5),('#women.2017060721','#Tr…',5),('#women.2017060721','#Leadership',5),('#women.2017060721','#girls',5),('#women.2017060721','#UKIP',4),('#women.2017060721','#ModiGovt3Years',3),('#women.2017060721','#amateur',2),('#women.2017060722','#women',20),('#women.2017060722','#Women',6),('#women.2017060722','#empowerment',2),('#women.2017060722','#sex',2),('#women.2017060722','#development',2),('#women.2017060722','#????',1),('#women.2017060722','#women’s',1),('#women.2017060722','#business',1),('#women.2017060722','#GE17',1),('#women.2017060722','#????',1);
/*!40000 ALTER TABLE `topHr_hashtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topHr_word`
--

DROP TABLE IF EXISTS `topHr_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topHr_word` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topHr_word`
--

LOCK TABLES `topHr_word` WRITE;
/*!40000 ALTER TABLE `topHr_word` DISABLE KEYS */;
INSERT INTO `topHr_word` VALUES ('#2030NOW.2017060619','RT',1683),('#2030NOW.2017060619','Trump',620),('#2030NOW.2017060619','investigation',499),('#2030NOW.2017060619','realDonaldTrump',460),('#2030NOW.2017060619','…',442),('#2030NOW.2017060619','FBI',425),('#2030NOW.2017060619','ways',413),('#2030NOW.2017060619','For',405),('#2030NOW.2017060619','sure',403),('#2030NOW.2017060619','tedlieu',399),('#2030NOW.2017060709','RT',1684),('#2030NOW.2017060709','Trump',620),('#2030NOW.2017060709','investigation',499),('#2030NOW.2017060709','realDonaldTrump',460),('#2030NOW.2017060709','…',442),('#2030NOW.2017060709','FBI',425),('#2030NOW.2017060709','ways',413),('#2030NOW.2017060709','For',405),('#2030NOW.2017060709','sure',403),('#2030NOW.2017060709','tedlieu',399),('#MakeAmericaGreatAgain.2017060921','RT',1691),('#MakeAmericaGreatAgain.2017060921','Trump',620),('#MakeAmericaGreatAgain.2017060921','investigation',499),('#MakeAmericaGreatAgain.2017060921','realDonaldTrump',461),('#MakeAmericaGreatAgain.2017060921','…',448),('#MakeAmericaGreatAgain.2017060921','FBI',425),('#MakeAmericaGreatAgain.2017060921','ways',413),('#MakeAmericaGreatAgain.2017060921','For',405),('#MakeAmericaGreatAgain.2017060921','sure',403),('#MakeAmericaGreatAgain.2017060921','tedlieu',399),('#Trumprussia.2017060622','RT',1695),('#Trumprussia.2017060622','Trump',621),('#Trumprussia.2017060622','investigation',501),('#Trumprussia.2017060622','realDonaldTrump',463),('#Trumprussia.2017060622','…',449),('#Trumprussia.2017060622','FBI',427),('#Trumprussia.2017060622','ways',415),('#Trumprussia.2017060622','For',407),('#Trumprussia.2017060622','sure',406),('#Trumprussia.2017060622','tedlieu',401),('#Trumprussia.2017060623','RT',1829),('#Trumprussia.2017060623','Trump',660),('#Trumprussia.2017060623','investigation',561),('#Trumprussia.2017060623','realDonaldTrump',518),('#Trumprussia.2017060623','…',482),('#Trumprussia.2017060623','FBI',478),('#Trumprussia.2017060623','ways',468),('#Trumprussia.2017060623','For',456),('#Trumprussia.2017060623','sure',455),('#Trumprussia.2017060623','tedlieu',451),('#Trumprussia.2017060700','RT',1961),('#Trumprussia.2017060700','Trump',740),('#Trumprussia.2017060700','investigation',608),('#Trumprussia.2017060700','realDonaldTrump',562),('#Trumprussia.2017060700','FBI',521),('#Trumprussia.2017060700','…',516),('#Trumprussia.2017060700','ways',508),('#Trumprussia.2017060700','sure',496),('#Trumprussia.2017060700','For',496),('#Trumprussia.2017060700','tedlieu',491),('#Trumprussia.2017060701','RT',2094),('#Trumprussia.2017060701','Trump',806),('#Trumprussia.2017060701','investigation',653),('#Trumprussia.2017060701','realDonaldTrump',600),('#Trumprussia.2017060701','…',559),('#Trumprussia.2017060701','FBI',556),('#Trumprussia.2017060701','ways',543),('#Trumprussia.2017060701','sure',531),('#Trumprussia.2017060701','For',530),('#Trumprussia.2017060701','tedlieu',524),('#Trumprussia.2017060702','RT',2227),('#Trumprussia.2017060702','Trump',872),('#Trumprussia.2017060702','investigation',707),('#Trumprussia.2017060702','realDonaldTrump',642),('#Trumprussia.2017060702','…',601),('#Trumprussia.2017060702','FBI',599),('#Trumprussia.2017060702','ways',584),('#Trumprussia.2017060702','sure',572),('#Trumprussia.2017060702','For',570),('#Trumprussia.2017060702','tedlieu',564),('#Trumprussia.2017060703','RT',2364),('#Trumprussia.2017060703','Trump',939),('#Trumprussia.2017060703','investigation',767),('#Trumprussia.2017060703','realDonaldTrump',697),('#Trumprussia.2017060703','FBI',650),('#Trumprussia.2017060703','…',636),('#Trumprussia.2017060703','ways',636),('#Trumprussia.2017060703','sure',621),('#Trumprussia.2017060703','For',620),('#Trumprussia.2017060703','tedlieu',615),('#Trumprussia.2017060704','RT',2496),('#Trumprussia.2017060704','Trump',990),('#Trumprussia.2017060704','investigation',834),('#Trumprussia.2017060704','realDonaldTrump',755),('#Trumprussia.2017060704','FBI',703),('#Trumprussia.2017060704','ways',688),('#Trumprussia.2017060704','sure',672),('#Trumprussia.2017060704','For',671),('#Trumprussia.2017060704','tedlieu',667),('#Trumprussia.2017060704','tried',666),('#Trumprussia.2017060705','RT',2622),('#Trumprussia.2017060705','Trump',1042),('#Trumprussia.2017060705','investigation',895),('#Trumprussia.2017060705','realDonaldTrump',813),('#Trumprussia.2017060705','FBI',753),('#Trumprussia.2017060705','ways',738),('#Trumprussia.2017060705','sure',721),('#Trumprussia.2017060705','For',720),('#Trumprussia.2017060705','tedlieu',716),('#Trumprussia.2017060705','tried',715),('#Trumprussia.2017060706','RT',2744),('#Trumprussia.2017060706','Trump',1116),('#Trumprussia.2017060706','investigation',938),('#Trumprussia.2017060706','realDonaldTrump',860),('#Trumprussia.2017060706','FBI',791),('#Trumprussia.2017060706','ways',775),('#Trumprussia.2017060706','sure',757),('#Trumprussia.2017060706','For',756),('#Trumprussia.2017060706','tedlieu',752),('#Trumprussia.2017060706','tried',751),('#Trumprussia.2017060707','RT',2859),('#Trumprussia.2017060707','Trump',1180),('#Trumprussia.2017060707','investigation',970),('#Trumprussia.2017060707','realDonaldTrump',893),('#Trumprussia.2017060707','FBI',826),('#Trumprussia.2017060707','ways',804),('#Trumprussia.2017060707','sure',782),('#Trumprussia.2017060707','For',780),('#Trumprussia.2017060707','tedlieu',777),('#Trumprussia.2017060707','tried',775),('#Trumprussia.2017060708','RT',2981),('#Trumprussia.2017060708','Trump',1239),('#Trumprussia.2017060708','investigation',997),('#Trumprussia.2017060708','realDonaldTrump',919),('#Trumprussia.2017060708','FBI',850),('#Trumprussia.2017060708','ways',826),('#Trumprussia.2017060708','sure',804),('#Trumprussia.2017060708','For',801),('#Trumprussia.2017060708','tedlieu',798),('#Trumprussia.2017060708','hoax',798),('#Trumprussia.2017060709','RT',2984),('#Trumprussia.2017060709','Trump',1239),('#Trumprussia.2017060709','investigation',997),('#Trumprussia.2017060709','realDonaldTrump',919),('#Trumprussia.2017060709','FBI',850),('#Trumprussia.2017060709','ways',826),('#Trumprussia.2017060709','sure',804),('#Trumprussia.2017060709','For',801),('#Trumprussia.2017060709','tedlieu',798),('#Trumprussia.2017060709','hoax',798),('#puravida.2017060800','RT',2988),('#puravida.2017060800','Trump',1239),('#puravida.2017060800','investigation',997),('#puravida.2017060800','realDonaldTrump',919),('#puravida.2017060800','FBI',850),('#puravida.2017060800','ways',826),('#puravida.2017060800','sure',804),('#puravida.2017060800','For',801),('#puravida.2017060800','tedlieu',798),('#puravida.2017060800','hoax',798),('#puravida.2017060801','RT',3001),('#puravida.2017060801','Trump',1239),('#puravida.2017060801','investigation',997),('#puravida.2017060801','realDonaldTrump',919),('#puravida.2017060801','FBI',850),('#puravida.2017060801','ways',826),('#puravida.2017060801','sure',804),('#puravida.2017060801','For',801),('#puravida.2017060801','tedlieu',798),('#puravida.2017060801','hoax',798),('#puravida.2017060802','RT',3004),('#puravida.2017060802','Trump',1239),('#puravida.2017060802','investigation',997),('#puravida.2017060802','realDonaldTrump',919),('#puravida.2017060802','FBI',850),('#puravida.2017060802','ways',826),('#puravida.2017060802','sure',804),('#puravida.2017060802','For',801),('#puravida.2017060802','tedlieu',798),('#puravida.2017060802','hoax',798),('#puravida.2017060803','RT',3007),('#puravida.2017060803','Trump',1239),('#puravida.2017060803','investigation',997),('#puravida.2017060803','realDonaldTrump',919),('#puravida.2017060803','FBI',850),('#puravida.2017060803','ways',826),('#puravida.2017060803','sure',804),('#puravida.2017060803','For',801),('#puravida.2017060803','tedlieu',798),('#puravida.2017060803','hoax',798),('#puravida.2017060808','RT',3027),('#puravida.2017060808','Trump',1239),('#puravida.2017060808','investigation',997),('#puravida.2017060808','realDonaldTrump',919),('#puravida.2017060808','FBI',850),('#puravida.2017060808','ways',826),('#puravida.2017060808','sure',804),('#puravida.2017060808','For',801),('#puravida.2017060808','tedlieu',798),('#puravida.2017060808','hoax',798),('#puravida.2017060815','RT',3033),('#puravida.2017060815','Trump',1239),('#puravida.2017060815','investigation',997),('#puravida.2017060815','realDonaldTrump',919),('#puravida.2017060815','FBI',850),('#puravida.2017060815','ways',826),('#puravida.2017060815','sure',804),('#puravida.2017060815','For',801),('#puravida.2017060815','tedlieu',798),('#puravida.2017060815','hoax',798),('#puravida.2017060902','RT',3035),('#puravida.2017060902','Trump',1239),('#puravida.2017060902','investigation',997),('#puravida.2017060902','realDonaldTrump',919),('#puravida.2017060902','FBI',850),('#puravida.2017060902','ways',826),('#puravida.2017060902','sure',804),('#puravida.2017060902','For',801),('#puravida.2017060902','tedlieu',798),('#puravida.2017060902','hoax',798),('#puravida.2017060903','RT',3038),('#puravida.2017060903','Trump',1239),('#puravida.2017060903','investigation',997),('#puravida.2017060903','realDonaldTrump',919),('#puravida.2017060903','FBI',850),('#puravida.2017060903','ways',826),('#puravida.2017060903','sure',804),('#puravida.2017060903','For',801),('#puravida.2017060903','tedlieu',798),('#puravida.2017060903','hoax',798),('#puravida.2017060904','RT',3040),('#puravida.2017060904','Trump',1239),('#puravida.2017060904','investigation',997),('#puravida.2017060904','realDonaldTrump',919),('#puravida.2017060904','FBI',850),('#puravida.2017060904','ways',826),('#puravida.2017060904','sure',804),('#puravida.2017060904','For',801),('#puravida.2017060904','tedlieu',798),('#puravida.2017060904','hoax',798),('#puravida.2017060905','RT',3046),('#puravida.2017060905','Trump',1239),('#puravida.2017060905','investigation',997),('#puravida.2017060905','realDonaldTrump',919),('#puravida.2017060905','FBI',850),('#puravida.2017060905','ways',826),('#puravida.2017060905','sure',804),('#puravida.2017060905','For',801),('#puravida.2017060905','tedlieu',798),('#puravida.2017060905','hoax',798),('#puravida.2017060906','RT',3076),('#puravida.2017060906','Trump',1239),('#puravida.2017060906','investigation',997),('#puravida.2017060906','realDonaldTrump',919),('#puravida.2017060906','FBI',850),('#puravida.2017060906','ways',826),('#puravida.2017060906','sure',804),('#puravida.2017060906','For',801),('#puravida.2017060906','tedlieu',798),('#puravida.2017060906','hoax',798),('#puravida.2017060907','RT',3101),('#puravida.2017060907','Trump',1239),('#puravida.2017060907','investigation',997),('#puravida.2017060907','realDonaldTrump',919),('#puravida.2017060907','FBI',850),('#puravida.2017060907','ways',826),('#puravida.2017060907','sure',804),('#puravida.2017060907','For',801),('#puravida.2017060907','tedlieu',798),('#puravida.2017060907','hoax',798),('#puravida.2017060908','RT',3126),('#puravida.2017060908','Trump',1239),('#puravida.2017060908','investigation',997),('#puravida.2017060908','realDonaldTrump',919),('#puravida.2017060908','FBI',850),('#puravida.2017060908','ways',826),('#puravida.2017060908','sure',804),('#puravida.2017060908','For',801),('#puravida.2017060908','…',800),('#puravida.2017060908','tedlieu',798),('#puravida.2017060909','RT',3147),('#puravida.2017060909','Trump',1239),('#puravida.2017060909','investigation',997),('#puravida.2017060909','realDonaldTrump',919),('#puravida.2017060909','FBI',850),('#puravida.2017060909','ways',826),('#puravida.2017060909','sure',804),('#puravida.2017060909','…',803),('#puravida.2017060909','For',801),('#puravida.2017060909','tedlieu',798),('#women.2017060713','RT',3186),('#women.2017060713','Trump',1239),('#women.2017060713','investigation',997),('#women.2017060713','realDonaldTrump',919),('#women.2017060713','FBI',850),('#women.2017060713','ways',826),('#women.2017060713','…',811),('#women.2017060713','sure',805),('#women.2017060713','For',803),('#women.2017060713','tedlieu',798),('#women.2017060717','RT',3194),('#women.2017060717','Trump',1239),('#women.2017060717','investigation',997),('#women.2017060717','realDonaldTrump',919),('#women.2017060717','FBI',850),('#women.2017060717','ways',826),('#women.2017060717','…',815),('#women.2017060717','sure',805),('#women.2017060717','For',803),('#women.2017060717','tedlieu',798),('#women.2017060718','RT',3228),('#women.2017060718','Trump',1239),('#women.2017060718','investigation',997),('#women.2017060718','realDonaldTrump',919),('#women.2017060718','FBI',850),('#women.2017060718','…',834),('#women.2017060718','ways',826),('#women.2017060718','sure',805),('#women.2017060718','For',804),('#women.2017060718','tedlieu',798),('#women.2017060719','RT',3281),('#women.2017060719','Trump',1239),('#women.2017060719','investigation',997),('#women.2017060719','realDonaldTrump',920),('#women.2017060719','…',857),('#women.2017060719','FBI',850),('#women.2017060719','ways',826),('#women.2017060719','For',807),('#women.2017060719','sure',806),('#women.2017060719','tedlieu',798),('#women.2017060720','RT',3312),('#women.2017060720','Trump',1240),('#women.2017060720','investigation',998),('#women.2017060720','realDonaldTrump',920),('#women.2017060720','…',875),('#women.2017060720','FBI',850),('#women.2017060720','ways',826),('#women.2017060720','For',809),('#women.2017060720','sure',806),('#women.2017060720','tedlieu',798),('#women.2017060721','RT',3351),('#women.2017060721','Trump',1240),('#women.2017060721','investigation',998),('#women.2017060721','realDonaldTrump',920),('#women.2017060721','…',880),('#women.2017060721','FBI',850),('#women.2017060721','ways',826),('#women.2017060721','For',809),('#women.2017060721','sure',806),('#women.2017060721','tedlieu',798),('#women.2017060722','RT',3364),('#women.2017060722','Trump',1240),('#women.2017060722','investigation',998),('#women.2017060722','realDonaldTrump',920),('#women.2017060722','…',882),('#women.2017060722','FBI',850),('#women.2017060722','ways',826),('#women.2017060722','For',810),('#women.2017060722','sure',806),('#women.2017060722','tedlieu',798);
/*!40000 ALTER TABLE `topHr_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_hashtag`
--

DROP TABLE IF EXISTS `top_hashtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_hashtag` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_hashtag`
--

LOCK TABLES `top_hashtag` WRITE;
/*!40000 ALTER TABLE `top_hashtag` DISABLE KEYS */;
INSERT INTO `top_hashtag` VALUES ('#2030NOW','#ActOnClimate',2),('#2030NOW','#SaveOurOcean',2),('#2030NOW','#SDG14',2),('#2030NOW','#sustainable',2),('#2030NOW','#2030Now',2),('#2030NOW','#GlobalGoals',1),('#2030NOW','#OceanConference',1),('#2030NOW','#OceanConference…',1),('#2030NOW','#2030NOW',1),('#MakeAmericaGreatAgain','#MakeAmericaGreatAgain',9),('#MakeAmericaGreatAgain','#makeamericagreatagain',2),('#MakeAmericaGreatAgain','#NWO',1),('#MakeAmericaGreatAgain','#Islamophobia',1),('#MakeAmericaGreatAgain','#MAGA',1),('#MakeAmericaGreatAgain','#illuminati',1),('#MakeAmericaGreatAgain','#usa',1),('#Trumprussia','#TrumpRussia',1288),('#Trumprussia','#TrumpObstructed',134),('#Trumprussia','#Tr…',95),('#Trumprussia','#FakeNews',64),('#Trumprussia','#trumprussia',62),('#Trumprussia','#ImpeachTrump',57),('#Trumprussia','#TheResistance',45),('#Trumprussia','#Trump',42),('#Trumprussia','#Breaking',40),('#Trumprussia','#Trumprussia',39),('#puravida','#PuraVida',227),('#puravida','#Gloria',35),('#puravida','#puravida',19),('#puravida','#HalaMadrid',18),('#puravida','#12UCL',18),('#puravida','#GrupoGloria',11),('#puravida','#MorfiTelefe',11),('#puravida','#Nosotrosalamañana',11),('#puravida','#D6a9',9),('#puravida','#Amanecer',8),('#women','#women',303),('#women','#Women',102),('#women','#girls',11),('#women','#Iran',11),('#women','#WOMEN',9),('#women','#girl',9),('#women','#KING',7),('#women','#fucking',7),('#women','#Pankhurst',7),('#women','#Men',7);
/*!40000 ALTER TABLE `top_hashtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_word`
--

DROP TABLE IF EXISTS `top_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_word` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_word`
--

LOCK TABLES `top_word` WRITE;
/*!40000 ALTER TABLE `top_word` DISABLE KEYS */;
INSERT INTO `top_word` VALUES ('#2030NOW','RT',3366),('#2030NOW','Trump',1240),('#2030NOW','investigation',998),('#2030NOW','realDonaldTrump',920),('#2030NOW','…',883),('#2030NOW','FBI',850),('#2030NOW','ways',826),('#2030NOW','For',810),('#2030NOW','sure',806),('#2030NOW','tedlieu',798),('#MakeAmericaGreatAgain','RT',3373),('#MakeAmericaGreatAgain','Trump',1240),('#MakeAmericaGreatAgain','investigation',998),('#MakeAmericaGreatAgain','realDonaldTrump',921),('#MakeAmericaGreatAgain','…',889),('#MakeAmericaGreatAgain','FBI',850),('#MakeAmericaGreatAgain','ways',826),('#MakeAmericaGreatAgain','For',810),('#MakeAmericaGreatAgain','sure',806),('#MakeAmericaGreatAgain','tedlieu',798),('#Trumprussia','RT',4666),('#Trumprussia','Trump',1859),('#Trumprussia','investigation',1496),('#Trumprussia','realDonaldTrump',1379),('#Trumprussia','FBI',1275),('#Trumprussia','ways',1239),('#Trumprussia','sure',1207),('#Trumprussia','For',1206),('#Trumprussia','…',1200),('#Trumprussia','tedlieu',1197),('#puravida','RT',4829),('#puravida','Trump',1859),('#puravida','investigation',1496),('#puravida','realDonaldTrump',1379),('#puravida','FBI',1275),('#puravida','…',1244),('#puravida','ways',1239),('#puravida','sure',1207),('#puravida','For',1206),('#puravida','tedlieu',1197),('#women','RT',5046),('#women','Trump',1860),('#women','investigation',1497),('#women','realDonaldTrump',1380),('#women','…',1323),('#women','FBI',1275),('#women','ways',1239),('#women','For',1215),('#women','sure',1209),('#women','tedlieu',1197);
/*!40000 ALTER TABLE `top_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_maxTopHashtag`
--

DROP TABLE IF EXISTS `vw_maxTopHashtag`;
/*!50001 DROP VIEW IF EXISTS `vw_maxTopHashtag`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_maxTopHashtag` AS SELECT 
 1 AS `id`,
 1 AS `max(cant)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_output_day`
--

DROP TABLE IF EXISTS `vw_output_day`;
/*!50001 DROP VIEW IF EXISTS `vw_output_day`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_output_day` AS SELECT 
 1 AS `llave`,
 1 AS `date`,
 1 AS `cantOth`,
 1 AS `cantUsers`,
 1 AS `cantTweet`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_output_hr`
--

DROP TABLE IF EXISTS `vw_output_hr`;
/*!50001 DROP VIEW IF EXISTS `vw_output_hr`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_output_hr` AS SELECT 
 1 AS `llave`,
 1 AS `fecha`,
 1 AS `cantOth`,
 1 AS `cantUsers`,
 1 AS `cantTweet`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_output_tot`
--

DROP TABLE IF EXISTS `vw_output_tot`;
/*!50001 DROP VIEW IF EXISTS `vw_output_tot`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_output_tot` AS SELECT 
 1 AS `id`,
 1 AS `cantOth`,
 1 AS `cantUsers`,
 1 AS `cantTweet`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_topDayHashtag`
--

DROP TABLE IF EXISTS `vw_topDayHashtag`;
/*!50001 DROP VIEW IF EXISTS `vw_topDayHashtag`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_topDayHashtag` AS SELECT 
 1 AS `llave`,
 1 AS `fecha`,
 1 AS `name`,
 1 AS `cant`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_topDayWord`
--

DROP TABLE IF EXISTS `vw_topDayWord`;
/*!50001 DROP VIEW IF EXISTS `vw_topDayWord`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_topDayWord` AS SELECT 
 1 AS `llave`,
 1 AS `date`,
 1 AS `name`,
 1 AS `cant`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_topHrHashtag`
--

DROP TABLE IF EXISTS `vw_topHrHashtag`;
/*!50001 DROP VIEW IF EXISTS `vw_topHrHashtag`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_topHrHashtag` AS SELECT 
 1 AS `llave`,
 1 AS `fecha`,
 1 AS `name`,
 1 AS `cant`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_topHrWord`
--

DROP TABLE IF EXISTS `vw_topHrWord`;
/*!50001 DROP VIEW IF EXISTS `vw_topHrWord`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_topHrWord` AS SELECT 
 1 AS `llave`,
 1 AS `fecha`,
 1 AS `name`,
 1 AS `cant`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database '76analysis'
--
/*!50003 DROP PROCEDURE IF EXISTS `getCantTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCantTotal`()
BEGIN
SELECT sum(cantUsers),sum(cantTweet), sum(cantOth) FROM 76analysis.output_tot;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCantTweets` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCantTweets`()
BEGIN
SELECT sum(cantTweet) FROM 76analysis.output_tot;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCantUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCantUsers`()
BEGIN
SELECT sum(cantUsers) FROM 76analysis.output_tot;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaxTopHashtag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaxTopHashtag`(IN hashtag varchar(50))
BEGIN
SELECT * FROM 76analysis.vw_maxTopHashtag
where llave = hashtag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVwOutputDay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVwOutputDay`(IN hashtag varchar(50))
BEGIN
	SELECT * FROM 76analysis.vw_output_day
    where llave = hashtag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVwOutputHr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVwOutputHr`(IN hashtag varchar(50))
BEGIN
	SELECT * FROM 76analysis.vw_output_hr
        where llave = hashtag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVwOutputTot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVwOutputTot`()
BEGIN
	SELECT * FROM 76analysis.vw_output_tot;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVwTopDayH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVwTopDayH`(IN hashtag varchar(50))
BEGIN
	SELECT * FROM vw_topDayHashtag 
    where llave = hashtag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVwTopDayW` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVwTopDayW`(IN hashtag varchar(50))
BEGIN
	SELECT * FROM 76analysis.vw_topDayWord
        where llave = hashtag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVwTopHashtag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVwTopHashtag`(IN hashtag varchar(50))
BEGIN
	SELECT id,name,cant FROM 76analysis.top_hashtag
            where id = hashtag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVwTopHrH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVwTopHrH`(IN hashtag varchar(50))
BEGIN
	SELECT * FROM 76analysis.vw_topHrHashtag
       where llave = hashtag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVwTopHrW` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVwTopHrW`(in hashtag varchar(50))
BEGIN
	SELECT * FROM 76analysis.vw_topHrWord
    where llave = hashtag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVwTopOFHashtags` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVwTopOFHashtags`(in hashtag varchar(50))
BEGIN
SELECT id,name,cant FROM 76analysis.top_hashtag
    where top_hashtag.id = hashtag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVwTopWord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVwTopWord`()
BEGIN
	SELECT id,name,cant FROM 76analysis.top_word;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setOutputDay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setOutputDay`(
pId varchar(50),
pCantOth int,
pCantUsers int,
pCantTweet int

)
BEGIN

INSERT INTO `76analysis`.`output_day`
(`id`,
`cantOth`,
`cantUsers`,
`cantTweet`)
VALUES
(pId ,
pCantOth ,
pCantUsers ,
pCantTweet );


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setOutputHr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setOutputHr`(
pId varchar(50),
pCantOth int,
pCantUsers int,
pCantTweet int

)
BEGIN

INSERT INTO `76analysis`.`output_hr`
(`id`,
`cantOth`,
`cantUsers`,
`cantTweet`)
VALUES
(pId ,
pCantOth ,
pCantUsers ,
pCantTweet );


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setOutputTot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setOutputTot`(
pId varchar(50),
pCantOth int,
pCantUsers int,
pCantTweet int

)
BEGIN

INSERT INTO `76analysis`.`output_tot`
(`id`,
`cantOth`,
`cantUsers`,
`cantTweet`)
VALUES
(pId ,
pCantOth ,
pCantUsers ,
pCantTweet );


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setTopDayHashtag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setTopDayHashtag`(
pId varchar(50),
pName varchar(50),
pCant int

)
BEGIN

INSERT INTO `76analysis`.`topDay_hashtag`
(`id`,
`name`,
`cant`)
VALUES
(pId ,
pName ,
pCant);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setTopDayWord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setTopDayWord`(
pId varchar(50),
pName varchar(50),
pCant int

)
BEGIN

INSERT INTO `76analysis`.`topDay_word`
(`id`,
`name`,
`cant`)
VALUES
(pId ,
pName ,
pCant);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setTopHashtag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setTopHashtag`(
pId varchar(50),
pName varchar(50),
pCant int

)
BEGIN

INSERT INTO `76analysis`.`top_hashtag`
(`id`,
`name`,
`cant`)
VALUES
(pId ,
pName ,
pCant);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setTopHrHashtag` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setTopHrHashtag`(
pId varchar(50),
pName varchar(50),
pCant int

)
BEGIN

INSERT INTO `76analysis`.`topHr_hashtag`
(`id`,
`name`,
`cant`)
VALUES
(pId ,
pName ,
pCant);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setTopHrWord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setTopHrWord`(
pId varchar(50),
pName varchar(50),
pCant int

)
BEGIN

INSERT INTO `76analysis`.`topHr_word`
(`id`,
`name`,
`cant`)
VALUES
(pId ,
pName ,
pCant);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setTopWord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setTopWord`(
pId varchar(50),
pName varchar(50),
pCant int

)
BEGIN

INSERT INTO `76analysis`.`top_word`
(`id`,
`name`,
`cant`)
VALUES
(pId ,
pName ,
pCant);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `truncTemp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `truncTemp`()
BEGIN

TRUNCATE TABLE topDay_hashtag;
TRUNCATE TABLE topDay_word;
TRUNCATE TABLE topHr_hashtag;
TRUNCATE TABLE topHr_word;
TRUNCATE TABLE top_hashtag;
TRUNCATE TABLE top_word;
TRUNCATE TABLE output_day;
TRUNCATE TABLE output_hr;
TRUNCATE TABLE output_tot;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_maxTopHashtag`
--

/*!50001 DROP VIEW IF EXISTS `vw_maxTopHashtag`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_maxTopHashtag` AS select `top_hashtag`.`id` AS `id`,max(`top_hashtag`.`cant`) AS `max(cant)` from `top_hashtag` group by `top_hashtag`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_output_day`
--

/*!50001 DROP VIEW IF EXISTS `vw_output_day`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_output_day` AS select substr(`output_day`.`id`,1,(locate('.',`output_day`.`id`) - 1)) AS `llave`,date_format(str_to_date(substr(`output_day`.`id`,(locate('.',`output_day`.`id`) + 1),length(`output_day`.`id`)),'%Y%m%d'),'%Y%m%d') AS `date`,`output_day`.`cantOth` AS `cantOth`,`output_day`.`cantUsers` AS `cantUsers`,`output_day`.`cantTweet` AS `cantTweet` from `output_day` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_output_hr`
--

/*!50001 DROP VIEW IF EXISTS `vw_output_hr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_output_hr` AS select substr(`output_hr`.`id`,1,(locate('.',`output_hr`.`id`) - 1)) AS `llave`,date_format(str_to_date(substr(`output_hr`.`id`,(locate('.',`output_hr`.`id`) + 1),length(`output_hr`.`id`)),'%Y%m%d'),'%Y%m%d') AS `fecha`,`output_hr`.`cantOth` AS `cantOth`,`output_hr`.`cantUsers` AS `cantUsers`,`output_hr`.`cantTweet` AS `cantTweet` from `output_hr` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_output_tot`
--

/*!50001 DROP VIEW IF EXISTS `vw_output_tot`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_output_tot` AS select `output_tot`.`id` AS `id`,`output_tot`.`cantOth` AS `cantOth`,`output_tot`.`cantUsers` AS `cantUsers`,`output_tot`.`cantTweet` AS `cantTweet` from `output_tot` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_topDayHashtag`
--

/*!50001 DROP VIEW IF EXISTS `vw_topDayHashtag`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_topDayHashtag` AS select substr(`topDay_hashtag`.`id`,1,(locate('.',`topDay_hashtag`.`id`) - 1)) AS `llave`,date_format(str_to_date(substr(`topDay_hashtag`.`id`,(locate('.',`topDay_hashtag`.`id`) + 1),length(`topDay_hashtag`.`id`)),'%Y%m%d'),'%Y%m%d') AS `fecha`,`topDay_hashtag`.`name` AS `name`,`topDay_hashtag`.`cant` AS `cant` from `topDay_hashtag` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_topDayWord`
--

/*!50001 DROP VIEW IF EXISTS `vw_topDayWord`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_topDayWord` AS select substr(`topDay_word`.`id`,1,(locate('.',`topDay_word`.`id`) - 1)) AS `llave`,substr(`topDay_word`.`id`,(locate('.',`topDay_word`.`id`) + 1),length(`topDay_word`.`id`)) AS `date`,`topDay_word`.`name` AS `name`,`topDay_word`.`cant` AS `cant` from `topDay_word` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_topHrHashtag`
--

/*!50001 DROP VIEW IF EXISTS `vw_topHrHashtag`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_topHrHashtag` AS select substr(`topHr_hashtag`.`id`,1,(locate('.',`topHr_hashtag`.`id`) - 1)) AS `llave`,date_format(str_to_date(substr(`topHr_hashtag`.`id`,(locate('.',`topHr_hashtag`.`id`) + 1),length(`topHr_hashtag`.`id`)),'%Y%m%d'),'%Y%m%d') AS `fecha`,`topHr_hashtag`.`name` AS `name`,`topHr_hashtag`.`cant` AS `cant` from `topHr_hashtag` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_topHrWord`
--

/*!50001 DROP VIEW IF EXISTS `vw_topHrWord`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_topHrWord` AS select substr(`topHr_word`.`id`,1,(locate('.',`topHr_word`.`id`) - 1)) AS `llave`,date_format(str_to_date(substr(`topHr_word`.`id`,(locate('.',`topHr_word`.`id`) + 1),length(`topHr_word`.`id`)),'%Y%m%d'),'%Y%m%d') AS `fecha`,`topHr_word`.`name` AS `name`,`topHr_word`.`cant` AS `cant` from `topHr_word` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-11 20:18:37
