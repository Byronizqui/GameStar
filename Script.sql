CREATE DATABASE  IF NOT EXISTS `gamestar` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gameestar`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gamestar
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `catalogos`
--

DROP TABLE IF EXISTS `catalogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogos` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_nombre` varchar(45) DEFAULT NULL,
  `c_fecha_lanzamiento` date DEFAULT NULL,
  `c_plataforma` varchar(15) DEFAULT NULL,
  `c_categoria` int(11) DEFAULT NULL,
  `c_cantidad` int(11) DEFAULT NULL,
  `c_jugadores` int(11) DEFAULT NULL,
  `c_prec_alqu` float DEFAULT NULL,
  `c_prec_comp` float DEFAULT NULL,
  `c_urlImg` varchar(175) DEFAULT NULL,
  `c_descrip` varchar(255) DEFAULT NULL,
  `c_detalle` int(11) DEFAULT NULL,
  `c_desarrollador` varchar(45) DEFAULT NULL,
  `c_distribuidor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `FKCatalogo_idx` (`c_categoria`),
  KEY `FKCatalogo2_idx` (`c_detalle`),
  CONSTRAINT `FKCatalogo1` FOREIGN KEY (`c_categoria`) REFERENCES `categorias` (`c_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FKCatalogo2` FOREIGN KEY (`c_detalle`) REFERENCES `detalles` (`d_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogos`
--

LOCK TABLES `catalogos` WRITE;
/*!40000 ALTER TABLE `catalogos` DISABLE KEYS */;
INSERT INTO `catalogos` VALUES (23,'World of Warcraft','2018-01-11','11',3,11,11,11,11,'https://i.imgur.com/GkKkcLF.png','11',NULL,'11','11'),(24,'Outlast','2018-01-01','PC',5,1,1,1,1,'https://i.imgur.com/6jmXz57.png','Outlast 1',NULL,'asdasd','asdasd'),(25,'StarCraft Remastered','2017-01-01','Estrategia',3,1,1,1,2,'https://i.imgur.com/VqOTSUO.png','StarCraft el juegazo',NULL,'Blizzard','Blizzard'),(26,'Age of Empires','2018-01-01','PC',3,1,1,5,10,'http://gameadvisor.ru/wp-content/uploads/2013/04/Age-of-Empires-2-HD-gameplay_slider_1.jpg','Uno de los mejores juegos de estrategia en tiempo real',NULL,'Asembly Studios','Microsoft'),(27,'South Park The Stick of The Truth','2018-01-01','PC',10,1,1,2,4,'https://playlegit.files.wordpress.com/2014/03/southpark.jpg?w=650&h=337','Un juego divertido',NULL,'N/a','N/A'),(28,'Mortal Kombat X','2018-01-01','PC',3,1,1,2,4,'http://apkcara.com/wp-content/uploads/2017/10/Game-MORTAL-KOMBAT-X-terupdate-650x350.jpg','Mortal Kombat X, viene lleno de acción.',NULL,'N/A','N/A'),(29,'God Of war','2018-01-01','PC',3,1,1,2,4,'http://i.imgur.com/QYRdR.png','God of war',NULL,'N/A','N/A');
/*!40000 ALTER TABLE `catalogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `c_Id` int(11) NOT NULL AUTO_INCREMENT,
  `c_nombre` varchar(15) NOT NULL,
  `c_Obs` varchar(45) NOT NULL,
  PRIMARY KEY (`c_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (3,'P~Acción','Juegos de Acción'),(5,'P~Terror','Juegos de terror'),(10,'P~Comedia','Juegos de Comedia'),(20,'P~Estrategia','Juegos de estrategia');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles`
--

DROP TABLE IF EXISTS `detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles` (
  `d_IdO` int(11) NOT NULL,
  `d_tipo` varchar(10) DEFAULT NULL,
  `d_fechaLimite` date DEFAULT NULL,
  `d_precio` float DEFAULT NULL,
  `d_Id` int(11) NOT NULL AUTO_INCREMENT,
  `d_estado` varchar(45) DEFAULT NULL,
  `d_catalogo` int(11) NOT NULL,
  PRIMARY KEY (`d_Id`),
  KEY `FKDetalles2` (`d_IdO`),
  CONSTRAINT `FKDetalles2` FOREIGN KEY (`d_IdO`) REFERENCES `ordenes` (`o_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles`
--

LOCK TABLES `detalles` WRITE;
/*!40000 ALTER TABLE `detalles` DISABLE KEYS */;
INSERT INTO `detalles` VALUES (14,'compra','2018-01-11',1,42,'entregado',24),(13,'compra','2018-01-11',4,43,'proceso',29),(14,'compra','2018-01-11',4,44,'proceso',27),(13,'compra','2018-01-11',4,45,'proceso',28),(13,'compra','2018-01-11',10,46,'proceso',26),(15,'compra','2018-01-11',4,47,'proceso',29),(16,'compra','2018-01-11',4,48,'proceso',29);
/*!40000 ALTER TABLE `detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `catalogo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (6,'http://i1154.photobucket.com/albums/p539/Byronizqui/prograiv/logo_zpsciieprwj.png','logo',''),(7,NULL,'S~3','Luna Nueva'),(8,NULL,'S~3','La propuesta'),(9,NULL,'S~3',''),(10,'http://i.imgur.com/glh4rkd.jpg','slider',NULL),(11,'https://uvejuegos.com/img/caratulas/58882/Starcraft-Remastered.jpg','slider',NULL);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_fecha` date DEFAULT NULL,
  `o_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `FKOrdenes_idx` (`o_usuario`),
  CONSTRAINT `FKOrdenes` FOREIGN KEY (`o_usuario`) REFERENCES `usuarios` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (13,'2018-01-03',1234),(14,'2018-01-04',1234),(15,'2018-01-04',1234),(16,'2018-01-04',1234);
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `u_id` int(11) NOT NULL,
  `u_usuario` varchar(15) NOT NULL,
  `u_contrasena` varchar(15) DEFAULT NULL,
  `u_nombre` varchar(15) DEFAULT NULL,
  `u_apellidos` varchar(25) DEFAULT NULL,
  `u_correo` varchar(45) DEFAULT NULL,
  `u_fechaNac` date DEFAULT NULL,
  `u_direccion` varchar(45) DEFAULT NULL,
  `u_telCasa` varchar(10) DEFAULT NULL,
  `u_telCel` varchar(10) DEFAULT NULL,
  `u_tipo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `c_user_UNIQUE` (`u_usuario`),
  UNIQUE KEY `c_email_UNIQUE` (`u_correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'1','1','Byron','Picado','asasd','2016-05-05','40503','84437734','84437734','usuarioCliente'),(10,'10','10','10','10','10','0011-10-10','10','10','10','usuarioAdmin'),(11,'11','11','11','11','11','0037-02-01','11','11','11','usuarioAdmin'),(12,'12','12','12','12','12','0012-12-12','12','12','12','usuarioAdmin'),(123,'Byron','asd','Byron','Picado','bypiob@gmail.com','1994-05-05','Turrialba','84437734','84437734','usuarioAdmin'),(1212,'1212','1212','Byron','Picado','sasdasd','2007-02-02','40503','84437734','84437734','usuarioCliente'),(1234,'asd','asd','asd','asd','asd','2016-06-09','asd','1234','1234','usuarioCliente'),(5657,'Rosa','123','jghfg','jfhsdkf','gjhsfg','1994-12-12','jghdfkg','312','23','usuarioCliente'),(9292,'Mery','hfg','jdghskjfg','jhgfkg','jkhgjfg','1996-04-23','jshfjk','423','322','usuarioCliente'),(123123123,'123asd','asd','asd','asd','ritataisigue123@gmail.com','2017-01-01','asd','123','123','usuarioCliente'),(204445845,'rootug','rootut','maria ','ramirez ','ritatatisigue123@gmail','1998-02-12','heredia ','24558595','88020458','usuarioCliente'),(207700074,'23','2322','rita ','taisigue ','ritatais','1997-08-23','heredia ','84185970','84185970','usuarioCliente');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-16  0:10:37
