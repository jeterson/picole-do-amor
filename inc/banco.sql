CREATE DATABASE  IF NOT EXISTS `transporteturismo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `transporteturismo`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: transporteturismo
-- ------------------------------------------------------
-- Server version	5.7.27-log

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
-- Table structure for table `comofunciona`
--

DROP TABLE IF EXISTS `comofunciona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comofunciona` (
  `idcomofunciona` int(11) NOT NULL AUTO_INCREMENT,
  `frase` varchar(150) NOT NULL,
  `passo1` varchar(45) NOT NULL,
  `frasepasso1` varchar(100) NOT NULL,
  `passo2` varchar(45) NOT NULL,
  `frasepasso2` varchar(150) NOT NULL,
  `passo3` varchar(45) NOT NULL,
  `frasepasso3` varchar(150) NOT NULL,
  `registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcomofunciona`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comofunciona`
--

LOCK TABLES `comofunciona` WRITE;
/*!40000 ALTER TABLE `comofunciona` DISABLE KEYS */;
INSERT INTO `comofunciona` VALUES (1,'Para melhor tratativa nossos clientes devem entrar em contato via telefone ou nos enviando seu e-mail para contato.','Entrar em Contato','Podem falar com a gente através dos telefones de contato ou e-mail, presentes na pagina.','Fazer o Pedido','Assim que voce entrar em contato, alguem de nossa equipe lhe respondera imediatamente e agendará a entrega.','Aproveitar o Picolé do Amor','Pronto, e muito fácil e rapido ser um de nossos parceiros, voce so precisa entrar em contato e ser feliz.','2019-12-02 12:42:09');
/*!40000 ALTER TABLE `comofunciona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frasegrande`
--

DROP TABLE IF EXISTS `frasegrande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frasegrande` (
  `idfraseGrande` int(11) NOT NULL AUTO_INCREMENT,
  `frase` varchar(200) DEFAULT NULL,
  `autor` varchar(45) DEFAULT NULL,
  `dtregistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idfraseGrande`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frasegrande`
--

LOCK TABLES `frasegrande` WRITE;
/*!40000 ALTER TABLE `frasegrande` DISABLE KEYS */;
INSERT INTO `frasegrande` VALUES (1,'Existe um momento na vida de cada pessoa que é possível sonhar e realizar nossos sonhos… e esse momento tão fugaz chama-se presente e tem a duração do tempo que passa','Quintana, Mário. d','2019-12-02 12:12:01');
/*!40000 ALTER TABLE `frasegrande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fraseprodutos`
--

DROP TABLE IF EXISTS `fraseprodutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fraseprodutos` (
  `idfraseprodutos` int(11) NOT NULL AUTO_INCREMENT,
  `fraseprodutospop` varchar(100) NOT NULL,
  PRIMARY KEY (`idfraseprodutos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fraseprodutos`
--

LOCK TABLES `fraseprodutos` WRITE;
/*!40000 ALTER TABLE `fraseprodutos` DISABLE KEYS */;
INSERT INTO `fraseprodutos` VALUES (1,'Estes são alguns de nossos produtos mais populares e tambem mais procurados entre nossos clientes.');
/*!40000 ALTER TABLE `fraseprodutos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nossosucesso`
--

DROP TABLE IF EXISTS `nossosucesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nossosucesso` (
  `idnossosucesso` int(11) NOT NULL AUTO_INCREMENT,
  `frase` varchar(200) NOT NULL,
  `cidade` int(11) NOT NULL,
  `qtsatisfeitos` int(11) NOT NULL,
  `parceiros` int(11) NOT NULL,
  `desde` int(11) NOT NULL,
  `dtregistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idnossosucesso`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nossosucesso`
--

LOCK TABLES `nossosucesso` WRITE;
/*!40000 ALTER TABLE `nossosucesso` DISABLE KEYS */;
INSERT INTO `nossosucesso` VALUES (1,'Com equipe bem qualificada e muita dedicação, trabalhamos incansavelmente para a melhor experiência dos nossos parceiros, clientes e amigos!',12,430,30,2018,'2019-12-02 12:11:39');
/*!40000 ALTER TABLE `nossosucesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_contacts`
--

DROP TABLE IF EXISTS `tb_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_contacts`
--

LOCK TABLES `tb_contacts` WRITE;
/*!40000 ALTER TABLE `tb_contacts` DISABLE KEYS */;
INSERT INTO `tb_contacts` VALUES (7,'www','wwwwww@ww','ss','2019-11-23 14:19:38'),(8,'dfhdfhgfhgf','fw@d','dfnhdgb','2019-11-23 14:41:41'),(9,'rafael almeida','rafael@rafa','afafafaf','2019-11-25 11:29:11'),(10,'rafael almeida','rafael@rafa','afafafaf','2019-11-25 11:30:53'),(11,'rafael almeida','rafa@ww','teste por favor','2019-11-25 11:46:28'),(12,'22222222222','2222222222@22','222','2019-11-26 11:45:46'),(13,'rrrrrrrr','rrrrrrrrrrrr@rrrrrrrrrrr','sdfdf','2019-11-30 11:16:33'),(14,'w233223','werwef@sdfs','sd','2019-11-30 11:20:02'),(15,'w233223','werwef@sdfs','sd','2019-11-30 11:21:15'),(16,'cu','cu@cu2','cu','2019-11-30 11:22:17');
/*!40000 ALTER TABLE `tb_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_emails`
--

DROP TABLE IF EXISTS `tb_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_emails`
--

LOCK TABLES `tb_emails` WRITE;
/*!40000 ALTER TABLE `tb_emails` DISABLE KEYS */;
INSERT INTO `tb_emails` VALUES (3,'rafael@em'),(4,'rafael@em'),(5,'rafael@em'),(6,'tttt@ffff'),(7,'tttt@ffff'),(8,'rafa@fff'),(9,'444@33'),(10,'teste123@porfavor'),(11,'rafael@qqq'),(12,'ytiyt@fgdghdff'),(13,'ehdh@dfsghdhf'),(14,'htkgt@gfdhf'),(15,'cu@cu');
/*!40000 ALTER TABLE `tb_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menus`
--

DROP TABLE IF EXISTS `tb_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(512) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `frase` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menus`
--

LOCK TABLES `tb_menus` WRITE;
/*!40000 ALTER TABLE `tb_menus` DISABLE KEYS */;
INSERT INTO `tb_menus` VALUES (2,'Picolé do Amor 1','O Melhor Picolé que voce irá provar...',2.00,'images/upload_1c4c10f1443f2ee47950cbe397d4f3a8.jpg','2019-09-14 15:47:47',NULL),(4,'Picolé do Amor 2','Feito com muito amor e carinho...',1.00,'images/upload_54a09256d9bf8d65b58587c2d8475bc0.jpg','2019-11-14 20:24:42',NULL),(5,'Picolé do Amor 3','Pìcolé do amor, esse não leva amor apenas no nome...',1.00,'images/upload_00d68f59c5c6d4d7206326d927f4bc0b.jpg','2019-11-15 17:09:18',NULL);
/*!40000 ALTER TABLE `tb_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_reservations`
--

DROP TABLE IF EXISTS `tb_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `people` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_reservations`
--

LOCK TABLES `tb_reservations` WRITE;
/*!40000 ALTER TABLE `tb_reservations` DISABLE KEYS */;
INSERT INTO `tb_reservations` VALUES (509,'aa','aa@aa',3,'2020-11-05','10:03:00','2019-11-23 14:03:55'),(510,'eee','ee@222',2,'2020-11-23','10:16:00','2019-11-23 14:16:18'),(511,'ze','ze@ze',3,'2019-11-25','07:47:00','2019-11-25 11:48:02'),(512,'1','2@2',2,'2020-01-07','07:48:00','2019-11-25 11:48:17'),(513,'qqqqq','qqqqq@qqqqq',3,'2019-11-26','07:45:00','2019-11-26 11:45:29'),(514,'errwtr3tretew','werwer@dfdsdfgsd',3,'2019-11-29','14:13:00','2019-11-29 18:13:40'),(515,'q342342','242342@cu',2,'2019-11-30','07:22:00','2019-11-30 11:22:38');
/*!40000 ALTER TABLE `tb_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,'admin','admin@1','1234','2019-11-23 14:05:30'),(2,'w','rafael@gmail','1234','2019-11-28 22:05:57');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'transporteturismo'
--

--
-- Dumping routines for database 'transporteturismo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 10:27:47
