-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: controleestoque
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `cadastrologin`
--

DROP TABLE IF EXISTS `cadastrologin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastrologin` (
  `idCadastroLogin` int NOT NULL AUTO_INCREMENT,
  `Login` varchar(45) DEFAULT NULL,
  `Senha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCadastroLogin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastrologin`
--

LOCK TABLES `cadastrologin` WRITE;
/*!40000 ALTER TABLE `cadastrologin` DISABLE KEYS */;
INSERT INTO `cadastrologin` VALUES (1,'Admim','123456');
/*!40000 ALTER TABLE `cadastrologin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `Cod_Categoria` int NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(45) DEFAULT NULL,
  `NomeLoja` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cod_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Eletrônico','Casas Bahia'),(2,'Acessório','Casas Bahia'),(3,'Produto de Limpeza','Casas Bahia'),(8,'Alimento','Casas Bahia');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `Cod_Fornecedor` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) DEFAULT NULL,
  `InscricaoEstadual` varchar(45) DEFAULT NULL,
  `Telefone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `CNPJ` varchar(45) DEFAULT NULL,
  `Endereco` varchar(45) DEFAULT NULL,
  `NomeLoja` varchar(45) NOT NULL,
  PRIMARY KEY (`Cod_Fornecedor`,`NomeLoja`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'TD LTDA','256136221','3188888888','ltda@gmail.com','621634','Rua 20','Casas Bahia'),(2,'Firma','312645','319888888','firma@gmail.com','2131548','Rua tt','Hirom'),(5,'R fornecedora','2465264234','31 4425231454','r@gmail.com','1235163','Rua tt','Hirom'),(6,'TW FOR','5241384','46 9898997','we@gmail.com','2146524','Rua 22','Hirom'),(8,'Fornecedora 2','124324','31 9522222','2@gmail.com','315156','rua it','Casas Bahia'),(9,'INOVA','465487','31 55555555','inova@gmail.com','16564684','Rua 68','Americanas'),(10,'fornecedor 2','4563453','31 887987','for@gmail.com','445345','rua hh','Casas Bahia'),(11,'FOR15','146262','31 89691465','ra@gmail.com','854951','Rua 2','Supermecado Apoio'),(12,' TDI','1234526','341546564','tdi@gmail.com','12135','RUA 36','Casas Bahia'),(13,'ForGustavo','123453','31 54654','t@gmail.com','102068541','Rua 22','Casas Bahia');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histloja`
--

DROP TABLE IF EXISTS `histloja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `histloja` (
  `idhistloja` int NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhistloja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histloja`
--

LOCK TABLES `histloja` WRITE;
/*!40000 ALTER TABLE `histloja` DISABLE KEYS */;
INSERT INTO `histloja` VALUES (1,'Casas Bahia');
/*!40000 ALTER TABLE `histloja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja`
--

DROP TABLE IF EXISTS `loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja` (
  `Cod_Loja` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Telefone` varchar(45) NOT NULL,
  `Endereco` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `CNPJ` varchar(45) NOT NULL,
  `CapacidadeEstoque` int DEFAULT NULL,
  PRIMARY KEY (`Cod_Loja`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja`
--

LOCK TABLES `loja` WRITE;
/*!40000 ALTER TABLE `loja` DISABLE KEYS */;
INSERT INTO `loja` VALUES (1,'Hirom','2131231','Rua t','2453','543',10000),(2,'Americanas','319900000','Rua HH','americas@gmail.com','211315',30000),(3,'Casas Bahia','3195554366','Rua 22','y@gmail.com','100652',50000),(6,'Supermecado Apoio','31 3333333','e','asda','100',2000);
/*!40000 ALTER TABLE `loja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentacoes`
--

DROP TABLE IF EXISTS `movimentacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimentacoes` (
  `Cod_Movimentacao` int NOT NULL AUTO_INCREMENT,
  `NomeProduto` varchar(45) NOT NULL,
  `Quantidade` int NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `NomeLoja` varchar(45) NOT NULL,
  PRIMARY KEY (`Cod_Movimentacao`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentacoes`
--

LOCK TABLES `movimentacoes` WRITE;
/*!40000 ALTER TABLE `movimentacoes` DISABLE KEYS */;
INSERT INTO `movimentacoes` VALUES (25,'Bone',10,'SAÍDA','2022-05-27 14:43:38','Hirom'),(26,'Bone',20,'SAÍDA','2022-05-27 14:43:41','Hirom'),(27,'Bone',40,'SAÍDA','2022-05-27 14:43:45','Hirom'),(28,'Camisa ',10,'SAÍDA','2022-05-27 14:43:53','Hirom'),(29,'Camisa ',50,'SAÍDA','2022-05-27 14:43:56','Hirom'),(30,'Camisa ',70,'SAÍDA','2022-05-27 14:43:59','Hirom'),(31,'Refri',41,'SAÍDA','2022-05-27 14:44:04','Hirom'),(32,'Refri',20,'SAÍDA','2022-05-27 14:44:07','Hirom'),(33,'Tablet',10,'ENTRADA','2022-05-28 15:35:10','Casas Bahia'),(34,'Tablet',100,'SAÍDA','2022-05-28 15:35:14','Casas Bahia'),(35,'Tablet',900,'ENTRADA','2022-05-28 15:35:18','Casas Bahia'),(36,'Tablet',350,'SAÍDA','2022-05-28 15:35:22','Casas Bahia'),(37,'Tablet',20,'SAÍDA','2022-05-28 15:35:26','Casas Bahia'),(38,'Notebook',100,'ENTRADA','2022-05-28 15:35:33','Casas Bahia'),(39,'Notebook',20,'SAÍDA','2022-05-28 15:35:37','Casas Bahia'),(40,'Notebook',20,'SAÍDA','2022-05-28 15:35:42','Casas Bahia'),(41,'Notebook',30,'SAÍDA','2022-05-28 15:35:46','Casas Bahia'),(42,'Notebook',400,'ENTRADA','2022-05-28 15:35:56','Casas Bahia'),(43,'Notebook',20,'SAÍDA','2022-05-28 15:35:59','Casas Bahia'),(44,'Notebook',40,'SAÍDA','2022-05-28 15:36:02','Casas Bahia'),(45,'Notebook',15,'SAÍDA','2022-05-28 15:36:06','Casas Bahia'),(46,'TV',1000,'ENTRADA','2022-05-30 18:33:58','Casas Bahia'),(47,'Mesa',100,'SAÍDA','2022-05-30 18:34:40','Casas Bahia'),(48,'Sabonete',10,'SAÍDA','2022-05-30 18:34:47','Casas Bahia'),(49,'Sabonete',30,'SAÍDA','2022-05-30 18:34:51','Casas Bahia'),(51,'TV',400,'SAÍDA','2022-05-30 18:35:01','Casas Bahia'),(52,'Notebook',10,'ENTRADA','2022-05-31 18:10:43','Casas Bahia'),(53,'Notebook',20,'SAÍDA','2022-05-31 18:10:45','Casas Bahia');
/*!40000 ALTER TABLE `movimentacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `Cod_Produto` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) DEFAULT NULL,
  `Categoria` varchar(45) DEFAULT NULL,
  `Marca` varchar(45) DEFAULT NULL,
  `Preco` varchar(45) DEFAULT NULL,
  `Qtde_Em_Estoque` int NOT NULL,
  `NomeLoja` varchar(45) DEFAULT NULL,
  `NomeFornecedor` varchar(45) DEFAULT NULL,
  `DataCadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Cod_Produto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Perfume','Acessório','Oboticario','R$ 200,00',270,'Casas Bahia',' TDI','2022-06-01 15:16:01');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `Cod_usuario` int NOT NULL AUTO_INCREMENT,
  `Login` varchar(45) DEFAULT NULL,
  `Senha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Admim','123456'),(2,'Gustavo','123456'),(3,'G','123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-01 23:50:44
