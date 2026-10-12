-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: mmd_staging_participacao
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `dados_curso_limpo`
--

DROP TABLE IF EXISTS `dados_curso_limpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dados_curso_limpo` (
  `MyUnknownColumn` int DEFAULT NULL,
  `COD_CURSO` text,
  `NOME_CURSO` text,
  `PROGRAMA` text,
  `CATEGORIA` text,
  `FORMATO` text,
  `DATA_INCLUSAO` text,
  `CARGA_HORARIA` int DEFAULT NULL,
  `MODALIDADE` text,
  `CURSO_REALIZADO` text,
  `VALOR` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_curso_limpo`
--

LOCK TABLES `dados_curso_limpo` WRITE;
/*!40000 ALTER TABLE `dados_curso_limpo` DISABLE KEYS */;
INSERT INTO `dados_curso_limpo` VALUES (0,'10001/2024','Cloud Computing Fundamentals','PDS','TÉCNICA','INTERNO','07/07/2024',40,'EAD','Sim',2150.75),(1,'10002/2024','Cybersecurity Advanced','PDS','TÉCNICA','EXTERNO','27/06/2024',32,'PRESENCIAL','Sim',3450.5),(2,'10003/2024','Machine Learning Essentials','PDS','TÉCNICA','INTERNO','16/10/2024',36,'EAD','Sim',2875.25),(3,'10004/2024','Português Avançado para Profissionais','PDL','PESSOAL','INTERNO','20/02/2024',30,'PRESENCIAL','Sim',1620),(4,'10005/2024','Redação Administrativa','PDL','PESSOAL','INTERNO','20/05/2024',28,'EAD','Não',1350.9),(5,'10006/2024','Strategic Leadership','PDL','GERENCIAL','INTERNO','04/01/2024',30,'PRESENCIAL','Sim',3280.4),(6,'10007/2024','Executive Decision Making','PDL','GERENCIAL','EXTERNO','05/06/2024',32,'PRESENCIAL','Sim',4500.75),(8,'10009/2024','Gestão Administrativa','PDL','GERENCIAL','EXTERNO','28/04/2024',32,'PRESENCIAL','Sim',3890.25),(9,'10010/2024','Liderança Situacional','PDL','GERENCIAL','INTERNO','18/01/2024',30,'EAD','Sim',2540.8),(11,'10012/2024','Team Building and Collaboration','PDL','TRANSVERSAL','INTERNO','12/02/2024',24,'PRESENCIAL','Sim',1850.6),(14,'10015/2024','Coordenação de Equipes','PDL','GERENCIAL','INTERNO','02/12/2024',30,'PRESENCIAL','Sim',2810.75),(15,'10016/2024','Database Administration','PDS','TÉCNICA','INTERNO','19/08/2024',32,'EAD','Sim',2640.25),(16,'10017/2024','Financial Management for IT','PDL','GERENCIAL','EXTERNO','06/12/2024',30,'PRESENCIAL','Sim',4125.9),(17,'10018/2024','Microservices Architecture','PDS','TÉCNICA','EXTERNO','10/07/2024',36,'PRESENCIAL','Sim',3780.4),(18,'10019/2024','Comunicação Escrita Efetiva','PDL','PESSOAL','INTERNO','21/08/2024',26,'PRESENCIAL','Sim',1520.5),(19,'10020/2024','Administração de Recursos Humanos','PDL','GERENCIAL','INTERNO','02/05/2024',32,'EAD','Sim',3150.8),(20,'10021/2024','Container Technology with Docker','PDS','TÉCNICA','INTERNO','12/06/2024',36,'EAD','Sim',2480.3),(21,'10022/2024','CIO Strategic Planning','PDL','GERENCIAL','EXTERNO','20/02/2024',40,'PRESENCIAL','Sim',5200.75),(22,'10023/2024','Kubernetes Administration','PDS','TÉCNICA','EXTERNO','27/03/2024',40,'PRESENCIAL','Sim',4320.5),(23,'10024/2024','Gestão de Processos','PDL','GERENCIAL','INTERNO','08/08/2024',35,'EAD','Sim',2890.25),(24,'10025/2024','Enterprise Architecture','PDL','GERENCIAL','INTERNO','05/03/2024',38,'PRESENCIAL','Sim',4560.4),(25,'10026/2024','Python Programming','PDS','TÉCNICA','EXTERNO','13/01/2024',40,'EAD','Não',2720.9),(26,'10027/2024','Desenvolvimento de Líderes','PDL','GERENCIAL','INTERNO','02/07/2024',32,'PRESENCIAL','Sim',3840.6),(27,'10028/2024','Português Técnico','PDL','PESSOAL','EXTERNO','09/03/2024',28,'EAD','Sim',1410.75),(28,'10029/2024','Java Development','PDS','TÉCNICA','INTERNO','01/03/2024',35,'EAD','Sim',2550.45),(29,'10030/2024','Supervisão e Liderança','PDL','GERENCIAL','EXTERNO','26/12/2024',36,'PRESENCIAL','Sim',4280.3),(30,'10031/2025','Full Stack Development','PDS','TÉCNICA','INTERNO','18/01/2025',40,'EAD','Sim',2650.75),(31,'10032/2025','Transformational Leadership','PDL','GERENCIAL','EXTERNO','08/02/2025',38,'PRESENCIAL','Sim',4920.5),(32,'10033/2025','Web Development with React','PDS','TÉCNICA','EXTERNO','27/04/2025',40,'PRESENCIAL','Sim',3680.25),(33,'10034/2025','Ortografia e Gramática para Escritório','PDL','PESSOAL','INTERNO','06/11/2025',24,'EAD','Sim',1350.8),(34,'10035/2025','Mobile App Development','PDS','TÉCNICA','INTERNO','13/01/2025',36,'EAD','Não',2840.4),(35,'10036/2025','Gestão de Conflitos no Ambiente Corporativo','PDL','GERENCIAL','INTERNO','14/03/2025',30,'PRESENCIAL','Sim',3210.6),(36,'10037/2025','API Development and Design','PDS','TÉCNICA','EXTERNO','04/12/2025',32,'EAD','Sim',2420.5),(37,'10038/2025','Planejamento Estratégico para Líderes','PDL','GERENCIAL','EXTERNO','20/03/2025',35,'PRESENCIAL','Sim',4350.75),(38,'10039/2025','Governance and Compliance','PDL','TRANSVERSAL','INTERNO','24/11/2025',30,'EAD','Sim',2680.25),(39,'10040/2025','Database Design and Optimization','PDS','TÉCNICA','INTERNO','14/04/2025',36,'PRESENCIAL','Sim',3120.9),(40,'10041/2025','Motivação e Engajamento de Equipes','PDL','GERENCIAL','INTERNO','26/03/2025',32,'EAD','Sim',2940.4),(41,'10042/2025','Digital Transformation','PDS','TÉCNICA','EXTERNO','17/07/2025',38,'PRESENCIAL','Sim',4680.3),(42,'10043/2025','IoT Solutions','PDS','TÉCNICA','INTERNO','26/01/2025',32,'EAD','Não',2390.75),(43,'10044/2025','5G Technology','PDS','TÉCNICA','EXTERNO','17/04/2025',40,'PRESENCIAL','Sim',5120.5),(44,'10045/2025','Software Development Lifecycle','PDS','TÉCNICA','INTERNO','14/12/2025',35,'EAD','Sim',2750.25),(45,'10046/2025','Agile Methodology','PDS','TÉCNICA','EXTERNO','04/08/2025',30,'PRESENCIAL','Sim',3280.6),(46,'10047/2025','Scrum Master Certification','PDS','TÉCNICA','INTERNO','24/10/2025',32,'EAD','Sim',2620.8),(47,'10048/2025','Project Management Fundamentals','PDS','GERENCIAL','EXTERNO','12/12/2025',36,'PRESENCIAL','Sim',4150.45),(48,'10049/2025','IT Service Management','PDS','TÉCNICA','INTERNO','08/03/2025',32,'EAD','Não',2480.9),(49,'10050/2026','Data Warehousing','PDS','TÉCNICA','EXTERNO','04/02/2026',40,'PRESENCIAL','Sim',3950.75);
/*!40000 ALTER TABLE `dados_curso_limpo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-12 13:00:23
