-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `nacionalidade` varchar(150) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'George Orwell','Britânico','1903-06-25'),(2,'J.K. Rowling','Britânica','1965-07-31'),(3,'Agatha Christie','Britânica','1890-09-15'),(4,'J.R.R. Tolkien','Britânico','1892-01-03'),(5,'Machado de Assis','Brasileiro','1839-06-21');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `descricao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Ficção','Obras de ficção em geral, incluindo romances e contos'),(2,'Fantasia','Livros com elementos mágicos, mundos imaginários, e criaturas fantásticas'),(3,'Romance','Histórias com foco em relacionamentos e emoções huamanas'),(4,'Mistério',NULL),(5,'Clássicos','Obras literárias reconhecidas como clássicas e atemporais'),(6,'Jornalismo','Jornalismo documental, ensaio literário, relato social, etc'),(7,'Sátira','Sátira política, fábula, alegoria e distopia');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `data_cadastro` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ana Silva','ana.silva@email.com','(11) 99999-1111','Rua A, 123 - São Paulo, SP','2025-01-10'),(2,'Carlos Santos','carlos.s@email.com','(11) 99999-2222','Rua B, 456 - São Paulo, SP','2025-02-15'),(3,'Mariana Oliveira','mariana.o@email.com','(11) 99999-3333','Rua C, 789 - São Paulo, SP','2025-03-20'),(4,'Roberto Almeida','roberto.a@email.com','(11) 99999-4444','Rua D, 101 - São Paulo, SP','2025-04-05'),(5,'Fernanda Lima','fernanda.l@email.com','(11) 99999-5555','Rua E, 202 - São Paulo, SP','2025-05-12');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprestimos`
--

DROP TABLE IF EXISTS `emprestimos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `livro_id` int DEFAULT NULL,
  `data_emprestimo` date DEFAULT NULL,
  `data_devolucao_prevista` date DEFAULT NULL,
  `situacao` enum('ativo','devolvido','atrasado') DEFAULT 'ativo',
  `data_devolucao_real` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `livro_id` (`livro_id`),
  CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`livro_id`) REFERENCES `livros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimos`
--

LOCK TABLES `emprestimos` WRITE;
/*!40000 ALTER TABLE `emprestimos` DISABLE KEYS */;
INSERT INTO `emprestimos` VALUES (1,1,1,'2025-06-01','2025-06-15','ativo',NULL),(2,2,3,'2025-06-05','2025-06-20','ativo',NULL),(3,3,5,'2025-06-10','2025-06-25','ativo',NULL),(4,4,6,'2025-06-07','2025-06-22','ativo',NULL),(5,1,4,'2025-05-20','2025-06-05','devolvido','2025-06-05'),(6,2,2,'2025-05-25','2025-06-10','devolvido','2025-06-10'),(7,3,7,'2025-05-15','2025-05-30','devolvido','2025-05-28'),(8,5,1,'2025-05-10','2025-05-25','devolvido','2025-05-24'),(9,4,8,'2025-05-15','2025-05-30','atrasado',NULL),(10,5,3,'2025-05-20','2025-06-05','atrasado',NULL);
/*!40000 ALTER TABLE `emprestimos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `autor_id` int DEFAULT NULL,
  `categoria_id` int DEFAULT NULL,
  `ano_publicacao` int DEFAULT NULL,
  `editora` varchar(100) DEFAULT NULL,
  `quantidade_total` int DEFAULT NULL,
  `quantidade_disponivel` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `autor_id` (`autor_id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `livros_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autores` (`id`),
  CONSTRAINT `livros_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'1984',1,1,1949,'Companhia das Letras,',7,6),(2,'A Revolução dos Bichos',1,1,1945,'Companhia das Letras',5,5),(3,'Na pior em Paris e Londres',1,6,1933,'Companhia das Letras',2,1),(4,'Dias na Birmânia',1,1,1934,'Companhia das Letras',5,3),(5,'Um Pouco de Ar, Por Favor!',1,1,1939,'Nova Fronteira',3,1),(6,'O Triunfo dos Porcos',1,7,1945,'Companhia das Letras',3,2),(7,'Harry Potter e a Pedra Filosofal',2,2,1997,'Editora Rocco',7,7),(8,'Harry Potter e o Cálice de Fogo',2,2,2000,'Editora Rocco',4,3),(9,'Morte Súbita',2,3,2012,'Nova Fronteira',3,3),(10,'Harry Potter e a Pedra Filosofal',2,2,1997,'Editora Rocco',7,7),(11,'Harry Potter e o Cálice de Fogo',2,2,2000,'Editora Rocco',4,4),(12,'Morte Súbita',2,3,2012,'Nova Fronteira',3,3),(13,'O Misterioso Caso de Styles',3,3,1920,'Globo Livros',5,5),(14,'O Homem do Terno Marrom',3,3,1924,'HarperCollins Brasil',5,3),(15,'O Mistério do Trem Azul',3,3,1928,'Nova Fronteira',4,4),(16,'O Hobbit',4,2,1937,'Harper Collins Brasil',5,1),(17,'O Silmarillion',4,2,1977,'Harper Collins Brasil',5,3),(18,'A Queda de Gondolin',4,2,2018,'Harper Collins Brasil',4,4),(19,'Memórias Póstumas de Brás Cubas',5,2,1881,'Penguin-Companhia',7,7),(20,'A Mão e a Luva',5,1,1874,'Editora Martin Claret',4,3),(21,'Histórias da Meia-Noite',5,6,1873,'WMF Martins Fontes',5,5),(22,'Quincas Borba',5,3,1891,'Livraria Garnier',7,5),(23,'Memorial de Aires',5,3,1908,'Companhia das Letras',4,2);
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-12 18:58:29
