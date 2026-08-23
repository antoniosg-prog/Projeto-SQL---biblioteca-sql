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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'George Orwell','Britânico','1903-06-25'),(2,'J.K. Rowling','Britânica','1965-07-31'),(3,'Agatha Christie','Britânica','1890-09-15'),(4,'J.R.R. Tolkien','Britânico','1892-01-03'),(5,'Machado de Assis','Brasileiro','1839-06-21'),(6,'Stephen King','Estadunidense','1947-09-21'),(7,'Herman Melville','Estadunidense','1819-08-01'),(8,'Clarice Lispector','Brasileira','1920-12-10'),(9,'Carlos Drummond de Andrade','Brasileiro','1902-10-31');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Ficção','Obras de ficção em geral, incluindo romances e contos'),(2,'Fantasia','Livros com elementos mágicos, mundos imaginários, e criaturas fantásticas'),(3,'Romance','Histórias com foco em relacionamentos e emoções huamanas'),(4,'Mistério','Mistérios em geral'),(5,'Clássicos','Obras literárias reconhecidas como clássicas e atemporais'),(6,'Jornalismo','Jornalismo documental, ensaio literário, relato social, etc'),(7,'Sátira','Sátira política, fábula, alegoria e distopia'),(8,'Terror','Obras de terror e ficção de suspense'),(9,'Contos','Contos e novelas'),(10,'Poesia','Poesias de gêneros variados');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ana Silva','ana.silva@gmail.com','(11) 98765-4321','Rua Alagoas, 903 - São Paulo, SP','2025-01-10'),(2,'Carlos Santos','carlos.s@gmail.com','(85) 94596-6398','Av. Beira Mar, 400 - Fortaleza, CE','2025-02-15'),(3,'Mariana Oliveira','mariana.o@outlook.com','(11) 94578-8956','Rua Cesário Galeno, 485 - São Paulo, SP','2025-03-20'),(4,'Roberto Almeida','roberto.a@gmail.com','(11) 98596-5263','Rua Dr. César, 741 - São Paulo, SP','2025-04-05'),(5,'Fernanda Lima','fernanda.l@gmail.com','(11) 97574-3321','Rua Estados Unidos, 205 - São Paulo, SP','2025-05-12'),(6,'Alberto Debaran','al.debaran@gmail.com','(11) 98596-6396','Rua Touristar, 478 - São Paulo, SP','2026-08-19'),(7,'Lindaci Tempesta','linda.te@gmail.com','(86) 99856-4123','Av. Frei Serafim, 200 - Teresina, PI','2026-08-19'),(8,'Rodrigo Scramb','rodrigo.scr@gmail.com','(11) 97458-8571','Rua Galvão Bueno, 352 - São Paulo, SP)','2026-08-19'),(9,'Márcio Tanaka','marcio.tanaka@outlook.com','(11) 98596-2785','Rua da Glória, 523 - São Paulo, SP)','2026-08-19'),(10,'Angélica Diniz','angel.d@hotmail.com','(11) 93625-8596','Rua Assis, 965 - São Paulo - SP','2026-08-19'),(11,'Danilo Machado','dan.machado@outlook.com','(71) 97296-4539','Rua da Ajuda, 854 - Salvador - BA','2026-08-19'),(12,'André Constantino','andre.const@gmail.com','(11) 98183-4578','Rua do Bosque, 95 - São Paulo, SP','2026-08-19'),(13,'Caio Lucca','caio.l@gmail.com','(11) 97584-6359','Rua Abaçaí, 154 - São Paulo, SP','2026-08-19'),(14,'Clara Helena','clara.h@hotmail.com','(11) 97263-6795','Rua Alvorada, 205 - São Paulo, SP','2026-08-19'),(15,'Alice Bragança','alice.brag@gmail.com','(81) 94156-2695','Rua do Bom Jesus, 300 - Recife, PE','2026-08-19'),(16,'Rafael Santos','rafael.s@outlook.com','(11) 95696-3628','Rua Albatroz, 200 - São Paulo, SP','2026-08-19'),(17,'Fernando Ferrari','fernando.f@gmail.com','(11) 96936-6341','Rua Abel Lucas, 471 - São Paulo, SP','2026-08-19'),(18,'Felipe Gomes','felipe.g@hotmail.com','(21) 3751-2745','Rua Ura, 780 - Rio de Janeiro - RJ','2026-08-19'),(19,'Julio Cunha','julio.c@outlook.com','(15) 4679-3884','Rua Professor Luiz de Vasconcelos, 1256 - Sorocaba, SP','2026-08-19'),(20,'Giovana Barros','giovana.bar.@gmail.com','(47) 8939-9408','Rua Thomé de Souza, 1075 - Blumenau, SC','2026-08-19'),(21,'Melissa Silva','mel.silva@gmail.com','(27) 3668-8777','Rua Vitório Nunes da Motta, 215 - Vitória, ES','2026-08-19');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimos`
--

LOCK TABLES `emprestimos` WRITE;
/*!40000 ALTER TABLE `emprestimos` DISABLE KEYS */;
INSERT INTO `emprestimos` VALUES (1,1,1,'2025-06-01','2025-06-15','devolvido','2026-08-21'),(2,2,3,'2025-06-05','2025-06-20','devolvido','2026-08-23'),(3,3,5,'2025-06-10','2025-06-25','devolvido','2026-08-23'),(4,4,6,'2025-06-07','2025-06-22','devolvido','2026-08-23'),(5,1,4,'2025-05-20','2025-06-05','devolvido','2025-06-05'),(6,2,2,'2025-05-25','2025-06-10','devolvido','2025-06-10'),(7,3,7,'2025-05-15','2025-05-30','devolvido','2025-05-28'),(8,5,1,'2025-05-10','2025-05-25','devolvido','2025-05-24'),(9,4,8,'2025-05-15','2025-05-30','devolvido','2026-08-23'),(10,5,3,'2025-05-20','2025-06-05','devolvido','2026-08-23'),(11,1,46,'2026-08-23','2026-09-07','ativo',NULL),(12,5,36,'2026-08-23','2026-09-12','ativo',NULL),(13,5,16,'2026-08-23','2026-08-25','ativo',NULL),(14,20,24,'2026-08-23','2026-08-28','ativo',NULL),(15,21,26,'2026-08-23','2026-08-26','ativo',NULL),(16,19,12,'2026-08-23','2026-08-25','ativo',NULL),(17,16,2,'2026-08-23','2026-08-26','ativo',NULL),(18,18,4,'2026-08-23','2026-08-27','ativo',NULL),(19,13,6,'2026-08-23','2026-08-30','ativo',NULL),(20,14,15,'2026-08-23','2026-08-28','ativo',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'1984',1,1,1949,'Companhia das Letras,',13,13),(2,'A Revolução dos Bichos',1,1,1945,'Companhia das Letras',13,12),(3,'Na pior em Paris e Londres',1,6,1933,'Companhia das Letras',13,13),(4,'Dias na Birmânia',1,1,1934,'Companhia das Letras',13,12),(5,'Um Pouco de Ar, Por Favor!',1,1,1939,'Nova Fronteira',13,13),(6,'O Triunfo dos Porcos',1,7,1945,'Companhia das Letras',13,12),(7,'Harry Potter e a Pedra Filosofal',2,2,1997,'Editora Rocco',13,13),(8,'Harry Potter e o Cálice de Fogo',2,2,2000,'Editora Rocco',13,13),(10,'Harry Potter e a Pedra Filosofal',2,2,1997,'Editora Rocco',13,13),(11,'Harry Potter e o Cálice de Fogo',2,2,2000,'Editora Rocco',13,13),(12,'Morte Súbita',2,3,2012,'Nova Fronteira',13,12),(13,'O Misterioso Caso de Styles',3,3,1920,'Editora Record',13,13),(14,'O Homem do Terno Marrom',3,3,1924,'HarperCollins Brasil',13,13),(15,'O Mistério do Trem Azul',3,3,1928,'Nova Fronteira',13,12),(16,'O Hobbit',4,2,1937,'Harper Collins Brasil',13,12),(17,'O Silmarillion',4,2,1977,'Harper Collins Brasil',13,13),(18,'A Queda de Gondolin',4,2,2018,'Harper Collins Brasil',13,13),(19,'Memórias Póstumas de Brás Cubas',5,2,1881,'Penguin-Companhia',13,13),(20,'A Mão e a Luva',5,1,1874,'Editora Martin Claret',13,13),(21,'Histórias da Meia-Noite',5,6,1873,'WMF Martins Fontes',13,13),(22,'Quincas Borba',5,3,1891,'Livraria Garnier',13,13),(23,'Memorial de Aires',5,3,1908,'Companhia das Letras',13,13),(24,'O Iluminado',6,4,1980,'Editora Suma',13,12),(25,'Carrie, a Estranha',6,1,1974,'Nova Fronteira',13,13),(26,'A Hora do Lobisomen',6,8,1983,'Suma das Letras',13,12),(27,'Insônia',6,8,1994,'Editora Suma',13,13),(28,'Saco de Ossos',6,8,1998,'Editora Suma',13,13),(29,'O Apanhador de Sonhos',6,8,2001,'Editora Suma',13,13),(30,'Não Pisque',6,8,2025,'Editora Suma',13,13),(31,'Moby Dick',7,3,1851,'Companhia das Letras',13,13),(32,'O misterioso caso de Styles',3,3,1920,'Editora Record',13,13),(33,'Poirot investiga',3,4,1924,'Editora Record',13,13),(35,'Os crimes ABC',3,4,1936,'Nova Fronteira',13,13),(36,'É fácil matar',3,4,1939,'Nova Fronteira',13,12),(37,'Os cinco porquinhos',3,3,1942,'Editora Record',13,13),(38,'Ausência na primavera',3,3,1944,'L&PM Editores',13,13),(39,'Hora zero',3,3,1944,'HarperCollins Brasil',13,13),(40,'O Lustre',8,3,1946,'Nova Fronteira',13,13),(41,'A maçã no escuro',8,3,1961,'Editora Rocco',13,13),(42,'A Paixão Segundo G.H.',8,3,1964,'Editora Rocco',13,13),(43,'Papéis avulsos',5,9,1882,'Companhia das Letras',13,13),(44,'Várias histórias',5,9,1896,'Editora Martin Claret',13,13),(45,'50 Contos de Machado de Assis',5,9,2007,'Companhia das Letras',13,13),(46,'O Delírio',5,3,2010,'Companhia das Letras',13,12),(47,'A Rosa do Povo',9,10,1945,'Editora Record',13,13),(48,'Sentimento do Mundo',9,10,1940,'Editora Record',13,13),(49,'Amar se aprende amando',9,10,1985,'Editora Record',13,13),(50,'A terceira moça',3,3,1966,'Nova Fronteira',13,13);
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

-- Dump completed on 2026-08-23 17:38:12
