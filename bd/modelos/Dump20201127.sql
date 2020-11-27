-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: eventos_cientificos
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `apresenta`
--

DROP TABLE IF EXISTS `apresenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apresenta` (
  `cpf` bigint NOT NULL,
  `codigo_atividade` int NOT NULL,
  PRIMARY KEY (`codigo_atividade`,`cpf`),
  UNIQUE KEY `ID_APRESENTA_IND` (`codigo_atividade`,`cpf`),
  KEY `EQU_APRES_Pales_IND` (`cpf`),
  CONSTRAINT `EQU_APRES_Pales_1` FOREIGN KEY (`codigo_atividade`) REFERENCES `palestra` (`codigo_atividade`),
  CONSTRAINT `EQU_APRES_Pales_FK` FOREIGN KEY (`cpf`) REFERENCES `palestrante` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apresenta`
--

LOCK TABLES `apresenta` WRITE;
/*!40000 ALTER TABLE `apresenta` DISABLE KEYS */;
INSERT INTO `apresenta` VALUES (43269456701,36),(43269456702,37),(43269456703,38),(43269456704,39),(43269456705,40);
/*!40000 ALTER TABLE `apresenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apresentado_em`
--

DROP TABLE IF EXISTS `apresentado_em`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apresentado_em` (
  `DOI` varchar(255) NOT NULL,
  `codigo_atividade` int NOT NULL,
  PRIMARY KEY (`DOI`,`codigo_atividade`),
  UNIQUE KEY `ID_APRESENTADO_EM_IND` (`DOI`,`codigo_atividade`),
  KEY `EQU_APRES_Sessa_IND` (`codigo_atividade`),
  CONSTRAINT `EQU_APRES_Artig` FOREIGN KEY (`DOI`) REFERENCES `artigo` (`DOI`),
  CONSTRAINT `EQU_APRES_Sessa_FK` FOREIGN KEY (`codigo_atividade`) REFERENCES `sessao_artigo` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apresentado_em`
--

LOCK TABLES `apresentado_em` WRITE;
/*!40000 ALTER TABLE `apresentado_em` DISABLE KEYS */;
INSERT INTO `apresentado_em` VALUES ('94RHFJFJKCO',20),('BDHFI3750RJM',20),('D55235CBANC',20),('H3546DKVHSJDO',20),('OE974YBNOAQOP',20);
/*!40000 ALTER TABLE `apresentado_em` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artigo`
--

DROP TABLE IF EXISTS `artigo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artigo` (
  `titulo` varchar(255) NOT NULL,
  `DOI` varchar(255) NOT NULL,
  `revista_publicacao` varchar(255) NOT NULL,
  `id_comite` int NOT NULL,
  PRIMARY KEY (`DOI`),
  UNIQUE KEY `ID_Artigo_IND` (`DOI`),
  KEY `EQU_Artig_Comit_IND` (`id_comite`),
  CONSTRAINT `EQU_Artig_Comit_FK` FOREIGN KEY (`id_comite`) REFERENCES `comite_programa` (`id_comite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigo`
--

LOCK TABLES `artigo` WRITE;
/*!40000 ALTER TABLE `artigo` DISABLE KEYS */;
INSERT INTO `artigo` VALUES ('Descobrindo caminhos na computação','94RHFJFJKCO','Revista Brasileira de Computação',1),('A vida de um cientista moderno','BDHFI3750RJM','Jornal Brasileiro de Tecnologia',1),('O impacto da tecnologia no mundo atual','D55235CBANC','New England Journal',1),('Demanda por desenvolvedores durante a pandemia','H3546DKVHSJDO','Jornal Brasileiro de Ciencia de Dados',1),('Aumento do processamento vs desempenho','OE974YBNOAQOP','Nature',1);
/*!40000 ALTER TABLE `artigo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atividade`
--

DROP TABLE IF EXISTS `atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atividade` (
  `nome` varchar(255) NOT NULL,
  `codigo_atividade` int NOT NULL AUTO_INCREMENT,
  `id_evento` int NOT NULL,
  `tipo_atividade` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo_atividade`),
  UNIQUE KEY `ID_Atividade_IND` (`codigo_atividade`),
  KEY `EQU_Ativi_Event_IND` (`id_evento`),
  CONSTRAINT `EQU_Ativi_Event_FK` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividade`
--

LOCK TABLES `atividade` WRITE;
/*!40000 ALTER TABLE `atividade` DISABLE KEYS */;
INSERT INTO `atividade` VALUES ('Workshop Inteligência Artificial com Sistemas HPCC',1,2,'Workshop'),('Sessão de Artigos sobre Machine Learning',2,2,'Sessão_Artigo'),('Palestra: Deep Learning no dia a dia ',3,2,'Palestra'),('Palestra: Arquitetura de Super Computadores',4,2,'Palestra'),('Workshop Computação Quântica',5,2,'Workshop'),('Jantar beneficente',6,2,'Atividade_social'),('Distribuição de brindes tecnológicos',7,2,'Atividade_social'),('Coffe Break analitico',8,3,'Atividade_social'),('Coquetel de abertura',9,2,'Atividade_social'),('Coquetel de encerramento com brindes',10,2,'Atividade_social'),('Elementos constituintes do ovo',11,1,'reuniao'),('Impostos e regulação fiscal',12,3,'reuniao'),('Modelos de Inteligência Artificial e Ética',13,2,'reuniao'),('Objetivos da computação quântica',14,2,'reuniao'),('Financiamento de um supercomputador brasileiro',15,2,'reuniao'),('Nutrição e coronavirus',16,1,'sessao_artigo'),('Lei orçamentaria',17,3,'sessao_artigo'),('Produção científica sobre sistemas complexos',18,2,'sessao_artigo'),('Papel da tecnologia na pandemia',19,2,'sessao_artigo'),('Apresentação dos artigos produzidos pelo Programa de Pós-Graduação em SI',20,2,'sessao_artigo'),('Workshop: alimentação saudavel',21,1,'workshop'),('Imposto de renda',22,3,'workshop'),('Workshop: Inteligência Artificial',23,2,'workshop'),('Workshop: IoT na modernidade',24,2,'workshop'),('Workshop: mercado de TI',25,2,'workshop'),('Concurso: melhor receita com beringela',26,1,'concurso'),('Concurso: melhor receita vegana',27,1,'concurso'),('Concurso: Visualização de dados',28,2,'concurso'),('Concurso: Desenvolver um site novo para a Sociedade Brasileira de Computação',29,2,'concurso'),('Concurso: crianças programadoras',30,2,'concurso'),('Tutoria: aprendendo a cozinhar legumes',31,1,'tutoria'),('Tutoria: Criando seu primeiro chatbot',32,2,'tutoria'),('Tutoria: Limpeza e preparação de dados',33,2,'tutoria'),('Aprenda a usar o Git e Github',34,2,'tutoria'),('Tutoria: arduíno na prática',35,2,'tutoria'),('Palestra: agronegócio e alimentação saudavel',36,1,'palestra'),('Palestra: mudanças tecnológicas',37,2,'palestra'),('Perspectivas tecnológicas para o futuro',38,2,'palestra'),('O impacto dos dados nas decisões corporativas',39,2,'palestra'),('Visão computacional',40,2,'palestra');
/*!40000 ALTER TABLE `atividade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atividade_social`
--

DROP TABLE IF EXISTS `atividade_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atividade_social` (
  `codigo_atividade` int NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `valor_convite` float NOT NULL,
  PRIMARY KEY (`codigo_atividade`),
  UNIQUE KEY `ID_Ativi_Ativi_IND` (`codigo_atividade`),
  CONSTRAINT `ID_Ativi_Ativi_FK` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atividade_social`
--

LOCK TABLES `atividade_social` WRITE;
/*!40000 ALTER TABLE `atividade_social` DISABLE KEYS */;
INSERT INTO `atividade_social` VALUES (6,'Jantar beneficente',10),(7,'Espaço do patrocinador',0),(8,'Coffee break',5),(9,'Coquetel',10),(10,'Coquetel',10);
/*!40000 ALTER TABLE `atividade_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor_artigo`
--

DROP TABLE IF EXISTS `autor_artigo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor_artigo` (
  `cpf` bigint NOT NULL,
  `minicurriculo` varchar(255) NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ID_Autor_Parti_IND` (`cpf`),
  CONSTRAINT `ID_Autor_Parti_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor_artigo`
--

LOCK TABLES `autor_artigo` WRITE;
/*!40000 ALTER TABLE `autor_artigo` DISABLE KEYS */;
INSERT INTO `autor_artigo` VALUES (43269456731,'minicurriculo.pdf'),(43269456732,'minicurriculo.pdf'),(43269456733,'minicurriculo.pdf'),(43269456734,'minicurriculo.pdf'),(43269456735,'minicurriculo.pdf');
/*!40000 ALTER TABLE `autor_artigo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliador`
--

DROP TABLE IF EXISTS `avaliador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliador` (
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ID_Avali_Parti_IND` (`cpf`),
  CONSTRAINT `ID_Avali_Parti_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliador`
--

LOCK TABLES `avaliador` WRITE;
/*!40000 ALTER TABLE `avaliador` DISABLE KEYS */;
INSERT INTO `avaliador` VALUES (43269456726),(43269456727),(43269456728),(43269456729),(43269456730);
/*!40000 ALTER TABLE `avaliador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canal_informativo`
--

DROP TABLE IF EXISTS `canal_informativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canal_informativo` (
  `Id_canal` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `Nome_caravana` varchar(255) NOT NULL,
  PRIMARY KEY (`Id_canal`),
  UNIQUE KEY `ID_Canal_informativo_IND` (`Id_canal`),
  KEY `FKINFORMA_SOBRE_IND` (`Nome_caravana`),
  CONSTRAINT `FKINFORMA_SOBRE_FK` FOREIGN KEY (`Nome_caravana`) REFERENCES `caravana` (`Nome_caravana`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canal_informativo`
--

LOCK TABLES `canal_informativo` WRITE;
/*!40000 ALTER TABLE `canal_informativo` DISABLE KEYS */;
INSERT INTO `canal_informativo` VALUES (1,'LinkedIn','linkedin.com/in/carnavana','carnavana'),(2,'Facebook','facebook.com/carnavana','carnavana'),(3,'LinkedIn','linkedin.com/in/caranida','caranida'),(4,'Facebook','facebook.com/caravana_fernandopolis','caravana fernandopolis'),(5,'Facebook','facebook.com/caravana-do-rodo','caravana do rodo'),(6,'Instagram','instagram.com/caravanadorodo','caravana do rodo'),(7,'Instagram','instagram.com/caravanadorodo','santavana');
/*!40000 ALTER TABLE `canal_informativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caravana`
--

DROP TABLE IF EXISTS `caravana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caravana` (
  `Nome_caravana` varchar(255) NOT NULL,
  `Data_saida` date NOT NULL,
  `Data_chegada` date NOT NULL,
  `Id_local` int NOT NULL,
  PRIMARY KEY (`Nome_caravana`),
  UNIQUE KEY `ID_Caravana_IND` (`Nome_caravana`),
  KEY `FKPARTE_DE_IND` (`Id_local`),
  CONSTRAINT `FKPARTE_DE_FK` FOREIGN KEY (`Id_local`) REFERENCES `local_origem` (`Id_local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caravana`
--

LOCK TABLES `caravana` WRITE;
/*!40000 ALTER TABLE `caravana` DISABLE KEYS */;
INSERT INTO `caravana` VALUES ('caranida','2020-11-13','2020-11-19',5),('caravana do rodo','2020-11-15','2020-11-17',2),('caravana fernandopolis','2020-11-16','2020-11-18',1),('carnavana','2020-11-12','2020-11-15',4),('santavana','2020-11-17','2020-11-18',3);
/*!40000 ALTER TABLE `caravana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificado`
--

DROP TABLE IF EXISTS `certificado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificado` (
  `titulo` varchar(255) NOT NULL,
  `numero_certificado` int NOT NULL AUTO_INCREMENT,
  `cpf` bigint NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `carga_horaria` int NOT NULL,
  `data_emissao` date NOT NULL,
  `cnpj` bigint NOT NULL,
  PRIMARY KEY (`numero_certificado`),
  UNIQUE KEY `SID_Certi_Parti_ID` (`cpf`),
  UNIQUE KEY `ID_Certificado_IND` (`numero_certificado`),
  UNIQUE KEY `SID_Certi_Parti_IND` (`cpf`),
  KEY `EQU_Certi_Organ_IND` (`cnpj`),
  CONSTRAINT `EQU_Certi_Organ_FK` FOREIGN KEY (`cnpj`) REFERENCES `organizadora` (`cnpj`),
  CONSTRAINT `SID_Certi_Parti_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=51535546 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificado`
--

LOCK TABLES `certificado` WRITE;
/*!40000 ALTER TABLE `certificado` DISABLE KEYS */;
INSERT INTO `certificado` VALUES ('Certificado de Participação',1234567,43269456703,'Certificado que prova a particação no evento \"CONBCON - Congresso Online Brasileiro de Contabilidade\"',6,'2020-09-25',11524184000187),('Certificado de Participação',12345677,43269456701,'Certificado que prova a particação no evento \"CONBRAN 2020 - XXVI Congresso Brasileiro de Nutrição\"',6,'2021-01-22',11524184000187),('Certificado de Participação',12345678,43269456702,'Certificado que prova a particação no evento \"XL Congresso da Sociedade Brasileira de Computação\"',6,'2020-11-20',11524184000187),('Certificado de Participação',23456781,43269456704,'Certificado que prova a particação no evento \"XXXIV Congresso Brasileiro de Direito Administrativo\"',6,'2020-11-07',11524184000187),('Certificado de Participação',51535545,43269456705,'Certificado que prova a particação no evento \"XVIII Congresso Brasileiro do Sono\"',6,'2021-06-05',11524184000187);
/*!40000 ALTER TABLE `certificado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comite_programa`
--

DROP TABLE IF EXISTS `comite_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comite_programa` (
  `id_comite` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_comite`),
  UNIQUE KEY `ID_Comite_Programa_IND` (`id_comite`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comite_programa`
--

LOCK TABLES `comite_programa` WRITE;
/*!40000 ALTER TABLE `comite_programa` DISABLE KEYS */;
INSERT INTO `comite_programa` VALUES (1),(2),(3),(4),(5);
/*!40000 ALTER TABLE `comite_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compoe`
--

DROP TABLE IF EXISTS `compoe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compoe` (
  `id_comite` int NOT NULL,
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`id_comite`,`cpf`),
  UNIQUE KEY `ID_COMPOE_IND` (`id_comite`,`cpf`),
  KEY `REF_COMPO_Organ_IND` (`cpf`),
  CONSTRAINT `EQU_COMPO_Comit` FOREIGN KEY (`id_comite`) REFERENCES `comite_programa` (`id_comite`),
  CONSTRAINT `REF_COMPO_Organ_FK` FOREIGN KEY (`cpf`) REFERENCES `organizador` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compoe`
--

LOCK TABLES `compoe` WRITE;
/*!40000 ALTER TABLE `compoe` DISABLE KEYS */;
INSERT INTO `compoe` VALUES (1,43269456716),(2,43269456716),(3,43269456717),(5,43269456718),(5,43269456719),(4,43269456720);
/*!40000 ALTER TABLE `compoe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concurso`
--

DROP TABLE IF EXISTS `concurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concurso` (
  `codigo_atividade` int NOT NULL,
  `tema` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_atividade`),
  UNIQUE KEY `ID_Concu_Ativi_IND` (`codigo_atividade`),
  CONSTRAINT `ID_Concu_Ativi_FK` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concurso`
--

LOCK TABLES `concurso` WRITE;
/*!40000 ALTER TABLE `concurso` DISABLE KEYS */;
INSERT INTO `concurso` VALUES (26,'Receita com beringela'),(27,'Receitas veganas'),(28,'Construindo visualizações para dados de reembolsos de alimentação dos deputados federais'),(29,'Criando um novo site para a Sociedade Brasileira de Computação'),(30,'Gincana de algoritmos básicos para crianças');
/*!40000 ALTER TABLE `concurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conduz`
--

DROP TABLE IF EXISTS `conduz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conduz` (
  `codigo_atividade` int NOT NULL,
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`codigo_atividade`,`cpf`),
  UNIQUE KEY `ID_CONDUZ_IND` (`codigo_atividade`,`cpf`),
  KEY `EQU_CONDU_Instr_IND` (`cpf`),
  CONSTRAINT `EQU_CONDU_Instr_FK` FOREIGN KEY (`cpf`) REFERENCES `instrutor` (`cpf`),
  CONSTRAINT `EQU_CONDU_Works` FOREIGN KEY (`codigo_atividade`) REFERENCES `workshop` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conduz`
--

LOCK TABLES `conduz` WRITE;
/*!40000 ALTER TABLE `conduz` DISABLE KEYS */;
INSERT INTO `conduz` VALUES (21,43269456706),(22,43269456707),(23,43269456708),(24,43269456709),(25,43269456710);
/*!40000 ALTER TABLE `conduz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrata`
--

DROP TABLE IF EXISTS `contrata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrata` (
  `cpf` bigint NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `cnpj` bigint NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ID_CONTR_Organ_IND` (`cpf`),
  KEY `EQU_CONTR_Organ_IND` (`cnpj`),
  CONSTRAINT `EQU_CONTR_Organ_FK` FOREIGN KEY (`cnpj`) REFERENCES `organizadora` (`cnpj`),
  CONSTRAINT `ID_CONTR_Organ_FK` FOREIGN KEY (`cpf`) REFERENCES `organizador` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrata`
--

LOCK TABLES `contrata` WRITE;
/*!40000 ALTER TABLE `contrata` DISABLE KEYS */;
INSERT INTO `contrata` VALUES (43269456716,'2021-01-19','2022-01-22',11524184000187),(43269456717,'2020-11-16','2022-11-20',11524184000187),(43269456718,'2020-09-21','2021-03-25',11524184000187),(43269456719,'2020-11-04','2021-04-07',11524184000187),(43269456720,'2021-06-03','2022-04-05',11524184000187),(43269456731,'2020-08-01','2021-06-15',11524184000187),(43269456733,'2021-01-22','2021-06-09',11524184000187),(43269456734,'2021-03-14','2021-07-11',11524184000187);
/*!40000 ALTER TABLE `contrata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `id_contrato` int NOT NULL AUTO_INCREMENT,
  `representante_evento` varchar(255) NOT NULL,
  `representante_patrocinadora` varchar(255) NOT NULL,
  `taxa_patrocinio` float NOT NULL,
  `plano_patrocinio` varchar(255) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `cnpj` bigint NOT NULL,
  `C_O_cnpj` bigint NOT NULL,
  PRIMARY KEY (`id_contrato`),
  UNIQUE KEY `ID_Contrato_IND` (`id_contrato`),
  KEY `EQU_Contr_Patro_IND` (`cnpj`),
  KEY `REF_Contr_Organ_IND` (`C_O_cnpj`),
  CONSTRAINT `EQU_Contr_Patro_FK` FOREIGN KEY (`cnpj`) REFERENCES `patrocinadora` (`cnpj`),
  CONSTRAINT `REF_Contr_Organ_FK` FOREIGN KEY (`C_O_cnpj`) REFERENCES `organizadora` (`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,'Edson Arantes do Nascimento','Zinedine Zidane',30,'Basico','2021-01-19','2021-01-22',17359434000511,11524184000187),(2,'Luis Figo','Lionel Messi',20,'Bronze','2020-11-16','2020-11-20',22259434000333,29532264000178),(3,'Paolo Maldini','Cristiano Ronaldo',20,'Bronze','2020-09-21','2020-09-25',12359434000321,14578574000156),(4,'Thierry Henry','Ronaldo Nazario',10,'Prata','2020-11-04','2020-11-07',55559434000432,27349772000111),(5,'Claude Makélélée','Diego Armando Maradona',0,'Gold','2021-06-03','2021-06-05',25559434000522,7755256000158);
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divulga`
--

DROP TABLE IF EXISTS `divulga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divulga` (
  `Id_canal` int NOT NULL,
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`cpf`,`Id_canal`),
  UNIQUE KEY `ID_DIVULGA_IND` (`cpf`,`Id_canal`),
  KEY `FKDIV_Can_IND` (`Id_canal`),
  CONSTRAINT `FKDIV_Can_FK` FOREIGN KEY (`Id_canal`) REFERENCES `canal_informativo` (`Id_canal`),
  CONSTRAINT `FKDIV_Org` FOREIGN KEY (`cpf`) REFERENCES `organizador` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divulga`
--

LOCK TABLES `divulga` WRITE;
/*!40000 ALTER TABLE `divulga` DISABLE KEYS */;
INSERT INTO `divulga` VALUES (1,43269456716),(2,43269456720),(3,43269456717),(4,43269456716),(4,43269456719),(5,43269456718);
/*!40000 ALTER TABLE `divulga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidade`
--

DROP TABLE IF EXISTS `entidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entidade` (
  `cnpj` bigint NOT NULL,
  `end_logradouro` varchar(255) NOT NULL,
  `end_cidade` varchar(255) NOT NULL,
  `end_estado` varchar(255) NOT NULL,
  `end_cep` varchar(255) NOT NULL,
  `end_numero` varchar(255) NOT NULL,
  `nome_entidade` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `Promotora` tinyint(1) DEFAULT NULL,
  `Patrocinadora` tinyint(1) DEFAULT NULL,
  `Organizadora` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cnpj`),
  UNIQUE KEY `ID_Entidade_IND` (`cnpj`),
  CONSTRAINT `LSTONE_Entidade` CHECK (((`Promotora` is not null) or (`Organizadora` is not null) or (`Patrocinadora` is not null)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidade`
--

LOCK TABLES `entidade` WRITE;
/*!40000 ALTER TABLE `entidade` DISABLE KEYS */;
INSERT INTO `entidade` VALUES (7755256000158,'Rua Aparecida','Rio de Janeiro','Rio de Janeiro','94443-434','37562','RJ Eventos','rjeventos@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',0,0,1),(11524184000187,'Rua Almeida','Rio de Janeiro','Rio de Janeiro','94446-446','27','Zalinha Eventos','zalinhaventos@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',0,0,1),(12359434000321,'Avenida Pompéia','São Paulo','São Paulo','05022-000','1030','Tecnologia e Segurança Privada S.A','tecseguranca@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',0,1,0),(14578574000156,'Rua Hernandes','São Paulo','São Paulo','05567-456','493','Dalaz Eventos','dalazeventos@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',0,0,1),(17359434000511,'Avenida Paulista','São Paulo','São Paulo','01310-940','900','Pneus S.A','pneus@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',0,1,0),(19741351000141,'Rua Operação','São Paulo','São Paulo','05655-130','99','Promotora Cubatão Eventos','cubataoeventos@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',1,0,0),(21246221000199,'Avenida Paulista','São Paulo','São Paulo','03619-130','100','Promotora de Eventos SP','eventossp@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',1,0,0),(22259434000333,'Avenida Brigadeiro Faria Lima','São Paulo','São Paulo','05426-200','1000','Planos de Saude S.A','saude@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',0,1,0),(25559434000522,'Avenida Assis Ribeiro','São Paulo','São Paulo','03717-002','1600','Carreta Furacão Siga em Frente','carretaEventos@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',0,1,0),(27349772000111,'Rua Fernandópolis','Fernandópolis','São Paulo','95867-456','3793','Biro Eventos','biroeventos@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',0,0,1),(29532264000178,'Avenida Operária','São Paulo','São Paulo','03567-456','17','Zen Eventos','zeneventos@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',0,0,1),(37159434000115,'Avenida dos Imigrantes','Bragança Paulista','São Paulo','12903-130','150','Promotora de Eventos S.A','eventossa@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',1,0,0),(39716013000120,'Rua Teresópolis','Rio de Janeiro','Rio de Janeiro','94443-456','37','Promotora Confort Eventos','conforteventos@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',1,0,0),(55559434000432,'Avenida Alcântara Machado','São Paulo','São Paulo','03302-000','3456','Elétrica Segurança','eletricsecurity@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',0,1,0),(84963187000151,'Rua das Maritacas','Bragança Paulista','São Paulo','12903-160','100','Promotora Bragança Eventos','brageventos@contato.br','$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i',1,0,0);
/*!40000 ALTER TABLE `entidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamento`
--

DROP TABLE IF EXISTS `equipamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamento` (
  `nome` varchar(255) NOT NULL,
  `codigo_equipamento` int NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL,
  `codigo_local` int NOT NULL,
  PRIMARY KEY (`codigo_equipamento`),
  UNIQUE KEY `ID_Equipamento_IND` (`codigo_equipamento`),
  KEY `REF_Equip_Local_IND` (`codigo_local`),
  CONSTRAINT `REF_Equip_Local_FK` FOREIGN KEY (`codigo_local`) REFERENCES `local_atividade` (`codigo_local`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamento`
--

LOCK TABLES `equipamento` WRITE;
/*!40000 ALTER TABLE `equipamento` DISABLE KEYS */;
INSERT INTO `equipamento` VALUES ('Microfone',1,400,3),('Microfone',2,400,4),('Computador',3,3,5),('Projetor',4,700,1),('Projetor',5,700,2);
/*!40000 ALTER TABLE `equipamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `tema` varchar(255) NOT NULL,
  `id_evento` int NOT NULL AUTO_INCREMENT,
  `edicao` tinyint NOT NULL,
  `nome` varchar(255) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `cnpj` bigint NOT NULL,
  `PRO_cnpj` bigint NOT NULL,
  PRIMARY KEY (`id_evento`),
  UNIQUE KEY `ID_Evento_IND` (`id_evento`),
  KEY `EQU_Event_Organ_IND` (`cnpj`),
  KEY `EQU_Event_Promo_IND` (`PRO_cnpj`),
  CONSTRAINT `EQU_Event_Organ_FK` FOREIGN KEY (`cnpj`) REFERENCES `organizadora` (`cnpj`),
  CONSTRAINT `EQU_Event_Promo_FK` FOREIGN KEY (`PRO_cnpj`) REFERENCES `promotora` (`cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES ('Nutricao',1,26,'CONBRAN 2020 - XXVI Congresso Brasileiro de Nutrição','2021-01-19','2021-01-22',11524184000187,37159434000115),('Computacao',2,40,'XL Congresso da Sociedade Brasileira de Computação','2020-11-16','2020-11-20',29532264000178,21246221000199),('Contabilidade',3,1,'CONBCON - Congresso Online Brasileiro de Contabilidade','2020-09-21','2020-09-25',14578574000156,84963187000151),('Direito',4,34,'XXXIV Congresso Brasileiro de Direito Administrativo','2020-11-04','2020-11-07',27349772000111,19741351000141),('Psicologia',5,18,'XVIII Congresso Brasileiro do Sono','2021-06-03','2021-06-05',7755256000158,39716013000120),('Computacao',6,6,'VI Evento de Computacao','2021-01-19','2021-01-22',11524184000187,37159434000115),('Computacao',7,16,'Semana de Sistemas de informação','2020-11-16','2020-11-20',29532264000178,21246221000199),('Contabilidade',8,44,'Congresso Brasileiro de Contabilidade','2020-09-21','2020-09-25',14578574000156,84963187000151),('Direito',9,26,'XXVI Congresso Brasileiro de Direito','2020-11-04','2020-11-07',27349772000111,19741351000141),('Engenharia',10,15,'XV Congresso Brasileiro do De Petróleo','2021-06-03','2021-06-05',7755256000158,39716013000120);
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faz_locacao`
--

DROP TABLE IF EXISTS `faz_locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faz_locacao` (
  `id_contrato` int NOT NULL,
  `id_evento` int NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `valor` float NOT NULL,
  `id_local` int NOT NULL,
  PRIMARY KEY (`id_contrato`),
  UNIQUE KEY `SID_FAZ_L_Event_ID` (`id_evento`),
  UNIQUE KEY `ID_FAZ_LOCACAO_IND` (`id_contrato`),
  UNIQUE KEY `SID_FAZ_L_Event_IND` (`id_evento`),
  KEY `EQU_FAZ_L_Local_IND` (`id_local`),
  CONSTRAINT `EQU_FAZ_L_Local_FK` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`),
  CONSTRAINT `SID_FAZ_L_Event_FK` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faz_locacao`
--

LOCK TABLES `faz_locacao` WRITE;
/*!40000 ALTER TABLE `faz_locacao` DISABLE KEYS */;
INSERT INTO `faz_locacao` VALUES (1,1,'2021-01-19','2021-01-22',500,1),(2,2,'2020-11-16','2020-11-20',10,2),(3,3,'2020-09-21','2020-09-25',500,3),(4,4,'2020-11-04','2020-11-07',500,4),(5,5,'2021-06-03','2021-06-05',20,5),(6,6,'2020-05-19','2021-01-22',5000,11),(7,7,'2019-04-19','2021-02-05',550,12),(8,8,'2020-11-19','2021-12-14',0,13),(9,9,'2021-09-19','2022-10-25',40,14),(10,10,'2021-07-19','2022-04-02',555,15);
/*!40000 ALTER TABLE `faz_locacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresso`
--

DROP TABLE IF EXISTS `ingresso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingresso` (
  `numero_ingresso` int NOT NULL AUTO_INCREMENT,
  `numero_lote` tinyint NOT NULL,
  `data` date NOT NULL,
  `desconto` float NOT NULL,
  `forma_pagamento` varchar(255) NOT NULL,
  `cpf` bigint NOT NULL,
  `id_evento` int NOT NULL,
  PRIMARY KEY (`numero_ingresso`),
  UNIQUE KEY `SID_INGRE_Lote_ID` (`numero_lote`),
  UNIQUE KEY `ID_INGRESSO_IND` (`numero_ingresso`),
  UNIQUE KEY `SID_INGRE_Lote_IND` (`numero_lote`),
  KEY `EQU_INGRE_Parti_IND` (`cpf`),
  KEY `REF_INGRE_Event_IND` (`id_evento`),
  CONSTRAINT `EQU_INGRE_Parti_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`),
  CONSTRAINT `REF_INGRE_Event_FK` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`),
  CONSTRAINT `SID_INGRE_Lote_FK` FOREIGN KEY (`numero_lote`) REFERENCES `lote` (`numero_lote`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresso`
--

LOCK TABLES `ingresso` WRITE;
/*!40000 ALTER TABLE `ingresso` DISABLE KEYS */;
INSERT INTO `ingresso` VALUES (11,1,'2021-01-19',50,'dinheiro',43269456701,1),(22,2,'2020-11-16',40,'dinheiro',43269456702,2),(33,3,'2020-09-21',30,'boleto',43269456703,3),(44,4,'2020-11-04',20,'cartão',43269456704,4),(55,5,'2021-06-03',10,'dinheiro',43269456705,5);
/*!40000 ALTER TABLE `ingresso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscreve`
--

DROP TABLE IF EXISTS `inscreve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscreve` (
  `codigo_atividade` int NOT NULL,
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`codigo_atividade`,`cpf`),
  UNIQUE KEY `ID_INSCREVE_IND` (`codigo_atividade`,`cpf`),
  KEY `REF_INSCR_Ouvin_IND` (`cpf`),
  CONSTRAINT `REF_INSCR_Ativi` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`),
  CONSTRAINT `REF_INSCR_Ouvin_FK` FOREIGN KEY (`cpf`) REFERENCES `ouvinte` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscreve`
--

LOCK TABLES `inscreve` WRITE;
/*!40000 ALTER TABLE `inscreve` DISABLE KEYS */;
INSERT INTO `inscreve` VALUES (1,43269456701),(2,43269456701),(3,43269456701),(4,43269456701),(5,43269456701),(6,43269456701),(7,43269456701),(8,43269456701),(9,43269456701),(10,43269456701),(11,43269456701),(20,43269456701),(22,43269456701),(32,43269456701),(39,43269456701),(40,43269456701),(9,43269456702),(10,43269456702),(11,43269456702),(12,43269456702),(13,43269456702),(14,43269456702),(15,43269456702),(16,43269456702),(22,43269456702),(25,43269456702),(27,43269456702),(30,43269456702),(32,43269456702),(40,43269456702),(17,43269456703),(18,43269456703),(19,43269456703),(20,43269456703),(21,43269456703),(22,43269456703),(23,43269456703),(24,43269456703),(25,43269456703),(27,43269456703),(30,43269456703),(39,43269456703),(40,43269456703),(10,43269456704),(11,43269456704),(25,43269456704),(26,43269456704),(27,43269456704),(28,43269456704),(29,43269456704),(30,43269456704),(31,43269456704),(32,43269456704),(39,43269456704),(40,43269456704),(2,43269456705),(10,43269456705),(23,43269456705),(27,43269456705),(28,43269456705),(30,43269456705),(33,43269456705),(34,43269456705),(35,43269456705),(36,43269456705),(37,43269456705),(38,43269456705),(39,43269456705),(40,43269456705),(1,43269456706),(2,43269456706),(3,43269456706),(4,43269456706),(5,43269456706),(6,43269456706),(7,43269456706),(8,43269456706),(10,43269456706),(27,43269456706),(33,43269456706),(35,43269456706),(39,43269456706),(40,43269456706),(1,43269456707),(7,43269456707),(9,43269456707),(10,43269456707),(11,43269456707),(12,43269456707),(13,43269456707),(14,43269456707),(15,43269456707),(16,43269456707),(20,43269456707),(27,43269456707),(33,43269456707),(39,43269456707),(40,43269456707),(1,43269456708),(7,43269456708),(17,43269456708),(18,43269456708),(19,43269456708),(20,43269456708),(21,43269456708),(22,43269456708),(23,43269456708),(24,43269456708),(27,43269456708),(29,43269456708),(33,43269456708),(39,43269456708),(40,43269456708),(7,43269456709),(11,43269456709),(20,43269456709),(22,43269456709),(25,43269456709),(26,43269456709),(27,43269456709),(28,43269456709),(29,43269456709),(30,43269456709),(31,43269456709),(32,43269456709),(33,43269456709),(34,43269456709),(36,43269456709),(37,43269456709),(39,43269456709),(40,43269456709),(1,43269456710),(7,43269456710),(10,43269456710),(27,43269456710),(30,43269456710),(31,43269456710),(33,43269456710),(34,43269456710),(35,43269456710),(36,43269456710),(37,43269456710),(38,43269456710),(39,43269456710),(40,43269456710),(1,43269456731),(2,43269456731),(3,43269456731),(4,43269456731),(5,43269456731),(6,43269456731),(7,43269456731),(8,43269456731),(11,43269456731),(21,43269456731),(27,43269456731),(30,43269456731),(33,43269456731),(39,43269456731),(40,43269456731),(9,43269456732),(10,43269456732),(11,43269456732),(12,43269456732),(13,43269456732),(14,43269456732),(15,43269456732),(16,43269456732),(19,43269456732),(27,43269456732),(29,43269456732),(39,43269456732),(40,43269456732),(1,43269456733),(7,43269456733),(17,43269456733),(18,43269456733),(19,43269456733),(20,43269456733),(21,43269456733),(22,43269456733),(23,43269456733),(24,43269456733),(27,43269456733),(28,43269456733),(33,43269456733),(39,43269456733),(40,43269456733),(1,43269456734),(7,43269456734),(22,43269456734),(25,43269456734),(26,43269456734),(27,43269456734),(28,43269456734),(29,43269456734),(30,43269456734),(31,43269456734),(32,43269456734),(33,43269456734),(39,43269456734),(40,43269456734),(7,43269456735),(27,43269456735),(29,43269456735),(30,43269456735),(33,43269456735),(34,43269456735),(35,43269456735),(36,43269456735),(37,43269456735),(38,43269456735),(39,43269456735),(40,43269456735);
/*!40000 ALTER TABLE `inscreve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrutor`
--

DROP TABLE IF EXISTS `instrutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instrutor` (
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ID_Instr_Parti_IND` (`cpf`),
  CONSTRAINT `ID_Instr_Parti_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrutor`
--

LOCK TABLES `instrutor` WRITE;
/*!40000 ALTER TABLE `instrutor` DISABLE KEYS */;
INSERT INTO `instrutor` VALUES (43269456706),(43269456707),(43269456708),(43269456709),(43269456710);
/*!40000 ALTER TABLE `instrutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `julga`
--

DROP TABLE IF EXISTS `julga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `julga` (
  `codigo_atividade` int NOT NULL,
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`codigo_atividade`,`cpf`),
  UNIQUE KEY `ID_JULGA_IND` (`codigo_atividade`,`cpf`),
  KEY `EQU_JULGA_Avali_IND` (`cpf`),
  CONSTRAINT `EQU_JULGA_Avali_FK` FOREIGN KEY (`cpf`) REFERENCES `avaliador` (`cpf`),
  CONSTRAINT `EQU_JULGA_Concu` FOREIGN KEY (`codigo_atividade`) REFERENCES `concurso` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `julga`
--

LOCK TABLES `julga` WRITE;
/*!40000 ALTER TABLE `julga` DISABLE KEYS */;
INSERT INTO `julga` VALUES (26,43269456726),(27,43269456727),(28,43269456728),(29,43269456729),(30,43269456730);
/*!40000 ALTER TABLE `julga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local` (
  `nome` varchar(255) NOT NULL,
  `id_local` int NOT NULL AUTO_INCREMENT,
  `valor_locacao` float NOT NULL,
  `Local_online` tinyint(1) DEFAULT NULL,
  `Local_presencial` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_local`),
  UNIQUE KEY `ID_Local_IND` (`id_local`),
  CONSTRAINT `LSTONE_Local` CHECK (((`Local_presencial` is not null) or (`Local_online` is not null)))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES ('YouTube',1,500,1,0),('Universidade Federal de Mato Grosso',2,10,0,1),('Google Meets',3,500,1,0),('YouTube',4,500,1,0),('Centro de Convenções Frei Caneca',5,20,0,1),('Twitch',6,500,1,0),('Zoom',7,500,1,0),('Pavilhão Anhembi',8,20,0,1),('São Paulo Expo',9,20,0,1),('Expo Center Norte',10,20,0,1),('Universidade Federal do Ceará',11,0,0,1),('Universidade Federal de Alagoas',12,0,0,1),('Centro de Eventos do Ceará',13,1000,0,1),('Universidade Federal de Sergipe',14,25,0,1),('Fundação Oswaldo Cruz - Ceará',15,0,0,1);
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_atividade`
--

DROP TABLE IF EXISTS `local_atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_atividade` (
  `nome` varchar(255) NOT NULL,
  `capacidade` int NOT NULL,
  `codigo_local` int NOT NULL AUTO_INCREMENT,
  `id_local` int NOT NULL,
  PRIMARY KEY (`codigo_local`),
  UNIQUE KEY `ID_Local_atividade_IND` (`codigo_local`),
  KEY `EQU_Local_Local_IND` (`id_local`),
  CONSTRAINT `EQU_Local_Local_FK` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_atividade`
--

LOCK TABLES `local_atividade` WRITE;
/*!40000 ALTER TABLE `local_atividade` DISABLE KEYS */;
INSERT INTO `local_atividade` VALUES ('Sala 121',70,1,2),('Sala 122',70,2,2),('Auditório Azul',200,3,2),('Auditório Verde',250,4,2),('Laboratório 13',70,5,2);
/*!40000 ALTER TABLE `local_atividade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_online`
--

DROP TABLE IF EXISTS `local_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_online` (
  `id_local` int NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id_local`),
  UNIQUE KEY `ID_Local_Local_1_IND` (`id_local`),
  CONSTRAINT `ID_Local_Local_1_FK` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_online`
--

LOCK TABLES `local_online` WRITE;
/*!40000 ALTER TABLE `local_online` DISABLE KEYS */;
INSERT INTO `local_online` VALUES (1,'https://www.youtube.com/watch?v=WmKrw7pT-7s'),(3,'https://meet.google.com/amc-jtyw-rel'),(4,'https://www.youtube.com/watch?v=YhTry7pT-6r'),(6,'http://twitch.tv/congresso_jogos'),(7,'https://us02web.zoom.us/j/82815666367?pwd=RDVnYUR5Um54b0pmUGVCYjRWRklFdz09');
/*!40000 ALTER TABLE `local_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_origem`
--

DROP TABLE IF EXISTS `local_origem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_origem` (
  `Id_local` int NOT NULL AUTO_INCREMENT,
  `Logradouro` varchar(255) NOT NULL,
  `Cidade` varchar(255) NOT NULL,
  `Estado` varchar(255) NOT NULL,
  `CEP` int NOT NULL,
  `Numero` varchar(255) NOT NULL,
  PRIMARY KEY (`Id_local`),
  UNIQUE KEY `ID_Local_origem_IND` (`Id_local`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_origem`
--

LOCK TABLES `local_origem` WRITE;
/*!40000 ALTER TABLE `local_origem` DISABLE KEYS */;
INSERT INTO `local_origem` VALUES (1,'Rua do Flamingo','Fernandopolis','SP',15600000,'156'),(2,'Avenida guga','Fernando de Noronha','RJ',15420000,'245'),(3,'Rua do santinho','Montes Claros','MG',12765000,'27'),(4,'Rua do Poze do rodo','Favela do Rodo','RJ',98456000,'144'),(5,'Avenida ave nida','Criciúma','SC',38415020,'755');
/*!40000 ALTER TABLE `local_origem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_presencial`
--

DROP TABLE IF EXISTS `local_presencial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_presencial` (
  `id_local` int NOT NULL,
  `end_logradouro` varchar(255) NOT NULL,
  `end_cidade` varchar(255) NOT NULL,
  `end_estado` varchar(255) NOT NULL,
  `end_cep` varchar(255) NOT NULL,
  `end_numero` varchar(255) NOT NULL,
  `capacidade` int NOT NULL,
  `area` float NOT NULL,
  PRIMARY KEY (`id_local`),
  UNIQUE KEY `ID_Local_Local_IND` (`id_local`),
  CONSTRAINT `ID_Local_Local_FK` FOREIGN KEY (`id_local`) REFERENCES `local` (`id_local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_presencial`
--

LOCK TABLES `local_presencial` WRITE;
/*!40000 ALTER TABLE `local_presencial` DISABLE KEYS */;
INSERT INTO `local_presencial` VALUES (2,'Rua Quarenta e Nove - Boa Esperança','Cuiabá','Mato Grosso','78060-900','2367',1000,149),(5,'Rua Frei Caneca - Consolação','São Paulo','São Paulo','01307-001','569',3800,10.5),(8,'Avenida Olavo Fontoura - Santana','São Paulo','São Paulo','02012-021','1209',30000,100),(9,'Rod. dos Imigrantes - Vila Água Funda','São Paulo','São Paulo','04329-900','1,5',7810,14),(10,'Rua José Bernardo Pinto - Vila Guilherme','São Paulo','São Paulo','02055-000','333',4500,98),(11,'Avenida da Universidade','Fortaleza','Ceará','06640-450','2853',1200,259),(12,'Av. Lourival Melo Mota','Maceió','Alagoas','45807-001','1000',3800,1400),(13,'Av. Washington Soares','Fortaleza','Ceará','25982-741','999',30000,100),(14,'Av. Marechal Rondon','Maceió','Alagoas','65129-954','15',7810,14),(15,'Rua São José','Fortaleza','Ceará','05544-201','3240',4500,98);
/*!40000 ALTER TABLE `local_presencial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lote`
--

DROP TABLE IF EXISTS `lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lote` (
  `numero_lote` tinyint NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`numero_lote`),
  UNIQUE KEY `ID_Lote_IND` (`numero_lote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lote`
--

LOCK TABLES `lote` WRITE;
/*!40000 ALTER TABLE `lote` DISABLE KEYS */;
INSERT INTO `lote` VALUES (1,50),(2,60),(3,70),(4,80),(5,90);
/*!40000 ALTER TABLE `lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ministra`
--

DROP TABLE IF EXISTS `ministra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ministra` (
  `codigo_atividade` int NOT NULL,
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`codigo_atividade`,`cpf`),
  UNIQUE KEY `ID_MINISTRA_IND` (`codigo_atividade`,`cpf`),
  KEY `EQU_MINIS_Minis_IND` (`cpf`),
  CONSTRAINT `EQU_MINIS_Minis_FK` FOREIGN KEY (`cpf`) REFERENCES `ministrante_tutoria` (`cpf`),
  CONSTRAINT `EQU_MINIS_Tutor` FOREIGN KEY (`codigo_atividade`) REFERENCES `tutoria` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ministra`
--

LOCK TABLES `ministra` WRITE;
/*!40000 ALTER TABLE `ministra` DISABLE KEYS */;
INSERT INTO `ministra` VALUES (31,43269456721),(32,43269456722),(33,43269456723),(34,43269456724),(35,43269456725);
/*!40000 ALTER TABLE `ministra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ministrante_tutoria`
--

DROP TABLE IF EXISTS `ministrante_tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ministrante_tutoria` (
  `cpf` bigint NOT NULL,
  `afiliacao` varchar(255) NOT NULL,
  `minicurriculo` varchar(255) NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ID_Minis_Parti_IND` (`cpf`),
  CONSTRAINT `ID_Minis_Parti_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ministrante_tutoria`
--

LOCK TABLES `ministrante_tutoria` WRITE;
/*!40000 ALTER TABLE `ministrante_tutoria` DISABLE KEYS */;
INSERT INTO `ministrante_tutoria` VALUES (43269456705,'XIITEX','minicurriculo.pdf'),(43269456721,'DEFREX','minicurriculo.pdf'),(43269456722,'LOTHOZ','minicurriculo.pdf'),(43269456723,'DANFREX','minicurriculo.pdf'),(43269456724,'FETIZ','minicurriculo.pdf'),(43269456725,'XIETEX','minicurriculo.pdf');
/*!40000 ALTER TABLE `ministrante_tutoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobilizador_caravana`
--

DROP TABLE IF EXISTS `mobilizador_caravana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobilizador_caravana` (
  `CPF` bigint NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Telefone` int NOT NULL,
  `CEP` int NOT NULL,
  `Nome_caravana` varchar(255) NOT NULL,
  `cnpj` bigint NOT NULL,
  `COO_CPF` bigint NOT NULL,
  `Id_canal` int NOT NULL,
  PRIMARY KEY (`CPF`),
  UNIQUE KEY `ID_Mobilizador_caravana_IND` (`CPF`),
  KEY `FKResponsavel_por_IND` (`Nome_caravana`),
  KEY `FKTERCEIRIZA_IND` (`cnpj`),
  KEY `FKADMINISTRA_IND` (`Id_canal`),
  KEY `FKCOORDENA_IND` (`COO_CPF`),
  CONSTRAINT `FKADMINISTRA_FK` FOREIGN KEY (`Id_canal`) REFERENCES `canal_informativo` (`Id_canal`),
  CONSTRAINT `FKCOORDENA_FK` FOREIGN KEY (`COO_CPF`) REFERENCES `organizador` (`cpf`),
  CONSTRAINT `FKResponsavel_por_FK` FOREIGN KEY (`Nome_caravana`) REFERENCES `caravana` (`Nome_caravana`),
  CONSTRAINT `FKTERCEIRIZA_FK` FOREIGN KEY (`cnpj`) REFERENCES `organizadora` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobilizador_caravana`
--

LOCK TABLES `mobilizador_caravana` WRITE;
/*!40000 ALTER TABLE `mobilizador_caravana` DISABLE KEYS */;
INSERT INTO `mobilizador_caravana` VALUES (43269456736,'Daniel Orivaldo da Silva',1192345678,51216531,'caravana do rodo',7755256000158,43269456716,1),(43269456737,'Carlos alberto de Nóbrega',1192345768,51216443,'carnavana',7755256000158,43269456718,5),(43269456738,'Ednaldo Pereira',1192543608,33416581,'caravana fernandopolis',7755256000158,43269456720,3),(43269456739,'Tristão alenídio Soares',1193354698,78516441,'santavana',7755256000158,43269456719,4),(43269456740,'Uzumaki Naruto',1192445798,85216531,'caranida',7755256000158,43269456716,2),(43269456741,'João das Couves',1199741238,51216531,'caravana do rodo',7755256000158,43269456717,1);
/*!40000 ALTER TABLE `mobilizador_caravana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentacao_financeira`
--

DROP TABLE IF EXISTS `movimentacao_financeira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimentacao_financeira` (
  `tipo` varchar(255) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `codigo_movimentacao` int NOT NULL AUTO_INCREMENT,
  `valor_a_pagar` float NOT NULL,
  `quantidade` int NOT NULL,
  `id_evento` int NOT NULL,
  PRIMARY KEY (`codigo_movimentacao`),
  UNIQUE KEY `ID_Movimentacao_Financeira_IND` (`codigo_movimentacao`),
  KEY `EQU_Movim_Event_IND` (`id_evento`),
  CONSTRAINT `EQU_Movim_Event_FK` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentacao_financeira`
--

LOCK TABLES `movimentacao_financeira` WRITE;
/*!40000 ALTER TABLE `movimentacao_financeira` DISABLE KEYS */;
INSERT INTO `movimentacao_financeira` VALUES ('Despesa','aluguel_local',1,10,1,2),('Receita','ingressos_pre_venda',2,70,100,2),('Despesa','premiacao_concurso',3,1,5,2),('Despesa','aluguel_cadeiras',4,3,1,2),('Receita','ingresos_primeiro_lote',5,80,200,2);
/*!40000 ALTER TABLE `movimentacao_financeira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_fiscal`
--

DROP TABLE IF EXISTS `nota_fiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota_fiscal` (
  `numero_nota` int NOT NULL AUTO_INCREMENT,
  `codigo_movimentacao` int NOT NULL,
  `cnpj_emissor` bigint NOT NULL,
  `nome_razao_social` varchar(255) NOT NULL,
  `inscricao_municipal` varchar(255) NOT NULL,
  `codigo_verificacao` varchar(255) NOT NULL,
  `valor` float NOT NULL,
  `data_emissao` date NOT NULL,
  PRIMARY KEY (`numero_nota`),
  UNIQUE KEY `SID_Nota__Movim_ID` (`codigo_movimentacao`),
  UNIQUE KEY `ID_Nota_Fiscal_IND` (`numero_nota`),
  UNIQUE KEY `SID_Nota__Movim_IND` (`codigo_movimentacao`),
  CONSTRAINT `SID_Nota__Movim_FK` FOREIGN KEY (`codigo_movimentacao`) REFERENCES `movimentacao_financeira` (`codigo_movimentacao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_fiscal`
--

LOCK TABLES `nota_fiscal` WRITE;
/*!40000 ALTER TABLE `nota_fiscal` DISABLE KEYS */;
INSERT INTO `nota_fiscal` VALUES (1,1,15461510000133,'Universidade Federal de Mato Grosso','79241589','WCA-7MKD',10,'2020-09-15'),(2,2,21246221000199,'Promotora Root','25416899','PKE-5BDE',7,'2020-04-25'),(3,3,15436940000103,'Amazon','29871659','WKY-7LBJ',1,'2020-09-09'),(4,4,16428221000140,'Cadeiras Conforto','24539811','KFD-DFW',3,'2020-09-10'),(5,5,21246221000199,'Promotora Root','25416899','CDG-4RFD',16,'2020-09-25');
/*!40000 ALTER TABLE `nota_fiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organiza`
--

DROP TABLE IF EXISTS `organiza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organiza` (
  `codigo_atividade` int NOT NULL,
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`codigo_atividade`,`cpf`),
  UNIQUE KEY `ID_ORGANIZA_IND` (`codigo_atividade`,`cpf`),
  KEY `EQU_ORGAN_Staff_IND` (`cpf`),
  CONSTRAINT `EQU_ORGAN_Ativi` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`),
  CONSTRAINT `EQU_ORGAN_Staff_FK` FOREIGN KEY (`cpf`) REFERENCES `staff` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organiza`
--

LOCK TABLES `organiza` WRITE;
/*!40000 ALTER TABLE `organiza` DISABLE KEYS */;
INSERT INTO `organiza` VALUES (1,43269456711),(2,43269456711),(3,43269456711),(4,43269456711),(5,43269456711),(6,43269456711),(7,43269456711),(8,43269456711),(9,43269456712),(10,43269456712),(11,43269456712),(12,43269456712),(13,43269456712),(14,43269456712),(15,43269456712),(16,43269456712),(17,43269456713),(18,43269456713),(19,43269456713),(20,43269456713),(21,43269456713),(22,43269456713),(23,43269456713),(24,43269456713),(25,43269456714),(26,43269456714),(27,43269456714),(28,43269456714),(29,43269456714),(30,43269456714),(31,43269456714),(32,43269456714),(33,43269456715),(34,43269456715),(35,43269456715),(36,43269456715),(37,43269456715),(38,43269456715),(39,43269456715),(40,43269456715);
/*!40000 ALTER TABLE `organiza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizador`
--

DROP TABLE IF EXISTS `organizador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizador` (
  `cpf` bigint NOT NULL,
  `remuneracao` float NOT NULL,
  `carga_horaria` float NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ID_Organ_Parti_IND` (`cpf`),
  CONSTRAINT `ID_Organ_Parti_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizador`
--

LOCK TABLES `organizador` WRITE;
/*!40000 ALTER TABLE `organizador` DISABLE KEYS */;
INSERT INTO `organizador` VALUES (43269456716,700,8),(43269456717,750,8),(43269456718,730,8),(43269456719,720,8),(43269456720,725,8),(43269456731,720,8),(43269456733,720,8),(43269456734,720,8);
/*!40000 ALTER TABLE `organizador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizadora`
--

DROP TABLE IF EXISTS `organizadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizadora` (
  `cnpj` bigint NOT NULL,
  PRIMARY KEY (`cnpj`),
  UNIQUE KEY `ID_Organ_Entid_IND` (`cnpj`),
  CONSTRAINT `ID_Organ_Entid_FK` FOREIGN KEY (`cnpj`) REFERENCES `entidade` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizadora`
--

LOCK TABLES `organizadora` WRITE;
/*!40000 ALTER TABLE `organizadora` DISABLE KEYS */;
INSERT INTO `organizadora` VALUES (7755256000158),(11524184000187),(14578574000156),(27349772000111),(29532264000178);
/*!40000 ALTER TABLE `organizadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ouvinte`
--

DROP TABLE IF EXISTS `ouvinte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ouvinte` (
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ID_Ouvin_Parti_IND` (`cpf`),
  CONSTRAINT `ID_Ouvin_Parti_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ouvinte`
--

LOCK TABLES `ouvinte` WRITE;
/*!40000 ALTER TABLE `ouvinte` DISABLE KEYS */;
INSERT INTO `ouvinte` VALUES (43269456701),(43269456702),(43269456703),(43269456704),(43269456705),(43269456706),(43269456707),(43269456708),(43269456709),(43269456710),(43269456731),(43269456732),(43269456733),(43269456734),(43269456735);
/*!40000 ALTER TABLE `ouvinte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `palestra`
--

DROP TABLE IF EXISTS `palestra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `palestra` (
  `codigo_atividade` int NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `publico_alvo` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_atividade`),
  UNIQUE KEY `ID_Pales_Ativi_IND` (`codigo_atividade`),
  CONSTRAINT `ID_Pales_Ativi_FK` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `palestra`
--

LOCK TABLES `palestra` WRITE;
/*!40000 ALTER TABLE `palestra` DISABLE KEYS */;
INSERT INTO `palestra` VALUES (36,'A relação do agronegócio e da alimentação saudável','Geral'),(37,'Mudanças nas tecnologias atuais','Computação'),(38,'Previsões das tecnologias do futuro','Computação'),(39,'Dados no mundo corporativo','Cientistas de Dados'),(40,'Visão na Computação','Computação');
/*!40000 ALTER TABLE `palestra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `palestrante`
--

DROP TABLE IF EXISTS `palestrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `palestrante` (
  `cpf` bigint NOT NULL,
  `filiacao` varchar(255) NOT NULL,
  `minicurriculo` varchar(255) NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ID_Pales_Parti_IND` (`cpf`),
  CONSTRAINT `ID_Pales_Parti_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `palestrante`
--

LOCK TABLES `palestrante` WRITE;
/*!40000 ALTER TABLE `palestrante` DISABLE KEYS */;
INSERT INTO `palestrante` VALUES (43269456701,'DEFREX','minicurriculo.pdf'),(43269456702,'FLY','minicurriculo.pdf'),(43269456703,'FREG','minicurriculo.pdf'),(43269456704,'XIAM','minicurriculo.pdf'),(43269456705,'AMAZIN','minicurriculo.pdf'),(43269456725,'AMUZIN','minicurriculo.pdf');
/*!40000 ALTER TABLE `palestrante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participante`
--

DROP TABLE IF EXISTS `participante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participante` (
  `nome` varchar(255) NOT NULL,
  `cpf` bigint NOT NULL,
  `cep` int NOT NULL,
  `senha` varchar(255) NOT NULL,
  `e_mail` varchar(255) NOT NULL,
  `telefone` int NOT NULL,
  `Staff` tinyint(1) DEFAULT NULL,
  `Palestrante` tinyint(1) DEFAULT NULL,
  `Ouvinte` tinyint(1) DEFAULT NULL,
  `Organizador` tinyint(1) DEFAULT NULL,
  `Ministrante_tutoria` tinyint(1) DEFAULT NULL,
  `Instrutor` tinyint(1) DEFAULT NULL,
  `Avaliador` tinyint(1) DEFAULT NULL,
  `Autor_Artigo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ID_Participante_IND` (`cpf`),
  CONSTRAINT `LSTONE_Participante` CHECK (((`Organizador` is not null) or (`Instrutor` is not null) or (`Avaliador` is not null) or (`Autor_Artigo` is not null) or (`Staff` is not null) or (`Ministrante_tutoria` is not null) or (`Palestrante` is not null) or (`Ouvinte` is not null)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participante`
--

LOCK TABLES `participante` WRITE;
/*!40000 ALTER TABLE `participante` DISABLE KEYS */;
INSERT INTO `participante` VALUES ('Fernando Alburqueque',29169407291,1027001,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','fernando.alburqueque@usp.br',997246684,0,1,1,0,0,0,0,0),('Helena Matsuda',35712439866,1015001,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','hmatsuda@usp.br',981650032,0,1,1,0,0,0,0,0),('Luciana Karmizec',39720465821,1679001,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','karmizec@usp.br',945459966,0,1,1,0,0,0,0,0),('Kleberson Gonçalves',43269456701,34504231,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','kleberson@contato.com',458490931,0,1,1,0,0,0,0,0),('Adelia Silva',43269456702,34504232,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','adelia@contato.com',458490932,0,1,1,0,0,0,0,0),('Matheus Felix',43269456703,34504233,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','matheus@contato.com',458490933,0,1,1,0,0,0,0,0),('Dayane Silva',43269456704,34504234,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','dayane@contato.com',458490934,0,1,1,0,0,0,0,0),('Ricardo Pereira',43269456705,34504235,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','Ricardo@contato.com',458490935,0,1,1,0,1,0,0,0),('Kleber Silva',43269456706,34504236,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','kleber@contato.com',458490936,0,0,1,0,0,1,0,0),('Marjure Gonçalves',43269456707,34504237,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','marjure@contato.com',458490937,0,0,1,0,0,1,0,0),('André Felix',43269456708,34504238,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','andre@contato.com',458490938,0,0,1,0,0,1,0,0),('Victoria Silva',43269456709,34504239,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','victoria@contato.com',458490939,0,0,1,0,0,1,0,0),('Reginaldo Pereira',43269456710,34504240,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','Reginaldo@contato.com',458490940,0,0,1,0,0,1,0,0),('Amanda Silva',43269456711,34504241,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','amanda@contato.com',458490941,1,0,0,0,0,0,0,0),('Adriana Gonçalves',43269456712,34504242,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','adriana@contato.com',458490942,1,0,0,0,0,0,0,0),('Bianca Felix',43269456713,34504243,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','bianca@contato.com',458490943,1,0,0,0,0,0,0,0),('Barbara Silva',43269456714,34504244,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','barbara@contato.com',458490944,1,0,0,0,0,0,0,0),('Bruna Pereira',43269456715,34504245,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','bruna@contato.com',458490945,1,0,0,0,0,0,0,0),('Carol Silva',43269456716,34504246,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','carol@contato.com',458490946,0,0,0,1,0,0,0,0),('Eduardo Gonçalves',43269456717,34504247,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','eduardo@contato.com',458490947,0,0,0,1,0,0,0,0),('Eduarda Felix',43269456718,34504248,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','eduarda@contato.com',458490948,0,0,0,1,0,0,0,0),('Edmundo Silva',43269456719,34504249,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','edmundo@contato.com',458490949,0,0,0,1,0,0,0,0),('Felipe Pereira',43269456720,34504250,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','felipe@contato.com',458490950,0,0,0,1,0,0,0,0),('Felix Silva',43269456721,34504251,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','felix@contato.com',458490951,0,0,0,0,1,0,0,0),('Fernando Gonçalves',43269456722,34504252,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','fernando@contato.com',458490952,0,0,0,0,1,0,0,0),('Fernanda Felix',43269456723,34504253,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','fernanda@contato.com',458490953,0,0,0,0,1,0,0,0),('Fátima Silva',43269456724,34504254,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','fátima@contato.com',458490954,0,0,0,0,1,0,0,0),('Fagner Pereira',43269456725,34504255,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','fagner@contato.com',458490955,0,1,0,0,1,0,0,0),('Gabriel Silva',43269456726,34504256,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','gabriel@contato.com',458490956,0,0,0,0,0,0,1,0),('Gabriela Gonçalves',43269456727,34504257,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','gabriela@contato.com',458490957,0,0,0,0,0,0,1,0),('Gustavo Felix',43269456728,34504258,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','gustavo@contato.com',458490958,0,0,0,0,0,0,1,0),('Giovanna Silva',43269456729,34504259,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','giovanna@contato.com',458490959,0,0,0,0,0,0,1,0),('Giovanne Pereira',43269456730,34504260,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','giovanne@contato.com',458490960,0,0,0,1,0,0,1,0),('Hannah Silva',43269456731,34504261,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','hannah@contato.com',458490961,0,0,1,1,0,0,0,1),('Helise Gonçalves',43269456732,34504262,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','helise@contato.com',458490962,0,0,1,0,0,0,0,1),('Heliana Felix',43269456733,34504263,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','heliana@contato.com',458490963,0,0,1,1,0,0,0,1),('Helio Silva',43269456734,34504264,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','helio@contato.com',458490964,0,0,1,1,0,0,0,1),('Ian Pereira',43269456735,34504265,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','ian@contato.com',458490965,0,0,1,0,0,0,0,1),('Bianca Dias',62207591338,1014001,'$2b$10$TM0wdHsCY4xZIe1BH/Jp0uny9Kr7Sv461myqmcaalJY8CEi0XOg.i','biancadias@usp.br',996324472,0,1,1,0,0,0,0,0);
/*!40000 ALTER TABLE `participante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participante_caravana`
--

DROP TABLE IF EXISTS `participante_caravana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participante_caravana` (
  `cpf` bigint NOT NULL,
  `Valor_passagem` float NOT NULL,
  `Nome_caravana` varchar(255) NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `FKPar_Par_IND` (`cpf`),
  KEY `FKPARTICIPA_IND` (`Nome_caravana`),
  CONSTRAINT `FKPar_Par_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`),
  CONSTRAINT `FKPARTICIPA_FK` FOREIGN KEY (`Nome_caravana`) REFERENCES `caravana` (`Nome_caravana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participante_caravana`
--

LOCK TABLES `participante_caravana` WRITE;
/*!40000 ALTER TABLE `participante_caravana` DISABLE KEYS */;
INSERT INTO `participante_caravana` VALUES (43269456708,110.7,'carnavana'),(43269456711,230.25,'caravana fernandopolis'),(43269456713,270.65,'santavana'),(43269456721,382.3,'caranida'),(43269456725,350.45,'caravana do rodo'),(43269456728,382.3,'caranida'),(43269456735,230.25,'caravana fernandopolis');
/*!40000 ALTER TABLE `participante_caravana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantes_concurso`
--

DROP TABLE IF EXISTS `participantes_concurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantes_concurso` (
  `codigo_atividade` int NOT NULL,
  `nome_participante` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_atividade`,`nome_participante`),
  UNIQUE KEY `ID_participantes_concurso_IND` (`codigo_atividade`,`nome_participante`),
  CONSTRAINT `EQU_parti_Concu` FOREIGN KEY (`codigo_atividade`) REFERENCES `concurso` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes_concurso`
--

LOCK TABLES `participantes_concurso` WRITE;
/*!40000 ALTER TABLE `participantes_concurso` DISABLE KEYS */;
INSERT INTO `participantes_concurso` VALUES (28,'Adolfo Ferreira'),(28,'Amanda Silva'),(28,'Ana Maria Braga'),(28,'Beatriz Viveiros'),(28,'Eloisa Mendes'),(28,'Fatima Bernardes'),(28,'Gracyane Barbosa'),(28,'Jonas Serafim'),(28,'Noemia Silva'),(29,'Dorime Maria Souza'),(29,'Jair Eustaquio'),(29,'Olivia Pope'),(30,'Eduardo Souza'),(30,'Enzo Bonner'),(30,'Guilherme Boulos'),(30,'Marina Rosa'),(30,'Moises Felipe'),(30,'Otavio Fernandes'),(30,'Pedro Cabral');
/*!40000 ALTER TABLE `participantes_concurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantes_reuniao`
--

DROP TABLE IF EXISTS `participantes_reuniao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantes_reuniao` (
  `codigo_atividade` int NOT NULL,
  `nome_participante` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_atividade`,`nome_participante`),
  UNIQUE KEY `ID_participantes_reuniao_IND` (`codigo_atividade`,`nome_participante`),
  CONSTRAINT `EQU_parti_Reuni` FOREIGN KEY (`codigo_atividade`) REFERENCES `reuniao` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes_reuniao`
--

LOCK TABLES `participantes_reuniao` WRITE;
/*!40000 ALTER TABLE `participantes_reuniao` DISABLE KEYS */;
INSERT INTO `participantes_reuniao` VALUES (13,'Chris Rock'),(13,'Gracyane Barbosa'),(13,'Naruto Uzumaki'),(13,'Rochelle Rock'),(13,'Tonya Rock');
/*!40000 ALTER TABLE `participantes_reuniao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrocina`
--

DROP TABLE IF EXISTS `patrocina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patrocina` (
  `cnpj` bigint NOT NULL,
  `id_evento` int NOT NULL,
  PRIMARY KEY (`id_evento`,`cnpj`),
  UNIQUE KEY `ID_PATROCINA_IND` (`id_evento`,`cnpj`),
  KEY `EQU_PATRO_Patro_IND` (`cnpj`),
  CONSTRAINT `EQU_PATRO_Patro_FK` FOREIGN KEY (`cnpj`) REFERENCES `patrocinadora` (`cnpj`),
  CONSTRAINT `REF_PATRO_Event` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrocina`
--

LOCK TABLES `patrocina` WRITE;
/*!40000 ALTER TABLE `patrocina` DISABLE KEYS */;
INSERT INTO `patrocina` VALUES (12359434000321,3),(12359434000321,6),(12359434000321,7),(17359434000511,1),(17359434000511,6),(22259434000333,2),(22259434000333,6),(22259434000333,7),(22259434000333,8),(25559434000522,5),(25559434000522,6),(25559434000522,7),(25559434000522,8),(25559434000522,9),(55559434000432,4),(55559434000432,6),(55559434000432,7),(55559434000432,9),(55559434000432,10);
/*!40000 ALTER TABLE `patrocina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrocinadora`
--

DROP TABLE IF EXISTS `patrocinadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patrocinadora` (
  `cnpj` bigint NOT NULL,
  PRIMARY KEY (`cnpj`),
  UNIQUE KEY `ID_Patro_Entid_IND` (`cnpj`),
  CONSTRAINT `ID_Patro_Entid_FK` FOREIGN KEY (`cnpj`) REFERENCES `entidade` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrocinadora`
--

LOCK TABLES `patrocinadora` WRITE;
/*!40000 ALTER TABLE `patrocinadora` DISABLE KEYS */;
INSERT INTO `patrocinadora` VALUES (12359434000321),(17359434000511),(22259434000333),(25559434000522),(55559434000432);
/*!40000 ALTER TABLE `patrocinadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premiacao_concurso`
--

DROP TABLE IF EXISTS `premiacao_concurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premiacao_concurso` (
  `codigo_atividade` int NOT NULL,
  `premio` varchar(255) NOT NULL,
  `colocacao` int NOT NULL,
  PRIMARY KEY (`codigo_atividade`,`premio`,`colocacao`),
  UNIQUE KEY `ID_premiacao_concurso_IND` (`codigo_atividade`,`premio`,`colocacao`),
  CONSTRAINT `EQU_premi_Concu` FOREIGN KEY (`codigo_atividade`) REFERENCES `concurso` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premiacao_concurso`
--

LOCK TABLES `premiacao_concurso` WRITE;
/*!40000 ALTER TABLE `premiacao_concurso` DISABLE KEYS */;
INSERT INTO `premiacao_concurso` VALUES (28,'Console PS5',1),(28,'Ipad',2),(28,'Us$100',3),(29,'Macbook air',1),(29,'Us$200',2),(30,'Console PS4',2),(30,'Console PS5',1),(30,'Tablet Samsumg',3);
/*!40000 ALTER TABLE `premiacao_concurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotora`
--

DROP TABLE IF EXISTS `promotora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotora` (
  `cnpj` bigint NOT NULL,
  PRIMARY KEY (`cnpj`),
  UNIQUE KEY `ID_Promo_Entid_IND` (`cnpj`),
  CONSTRAINT `ID_Promo_Entid_FK` FOREIGN KEY (`cnpj`) REFERENCES `entidade` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotora`
--

LOCK TABLES `promotora` WRITE;
/*!40000 ALTER TABLE `promotora` DISABLE KEYS */;
INSERT INTO `promotora` VALUES (19741351000141),(21246221000199),(37159434000115),(39716013000120),(84963187000151);
/*!40000 ALTER TABLE `promotora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publica`
--

DROP TABLE IF EXISTS `publica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publica` (
  `cpf` bigint NOT NULL,
  `DOI` varchar(255) NOT NULL,
  PRIMARY KEY (`DOI`,`cpf`),
  UNIQUE KEY `ID_PUBLICA_IND` (`DOI`,`cpf`),
  KEY `EQU_PUBLI_Autor_IND` (`cpf`),
  CONSTRAINT `EQU_PUBLI_Artig` FOREIGN KEY (`DOI`) REFERENCES `artigo` (`DOI`),
  CONSTRAINT `EQU_PUBLI_Autor_FK` FOREIGN KEY (`cpf`) REFERENCES `autor_artigo` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publica`
--

LOCK TABLES `publica` WRITE;
/*!40000 ALTER TABLE `publica` DISABLE KEYS */;
INSERT INTO `publica` VALUES (43269456731,'94RHFJFJKCO'),(43269456732,'BDHFI3750RJM'),(43269456733,'D55235CBANC'),(43269456734,'H3546DKVHSJDO'),(43269456735,'OE974YBNOAQOP');
/*!40000 ALTER TABLE `publica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rede_social`
--

DROP TABLE IF EXISTS `rede_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rede_social` (
  `nome` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `id_evento` int NOT NULL,
  `cnpj` bigint NOT NULL,
  PRIMARY KEY (`url`),
  UNIQUE KEY `ID_Rede_Social_IND` (`url`),
  KEY `EQU_Rede__Event_IND` (`id_evento`),
  KEY `EQU_Rede__Promo_IND` (`cnpj`),
  CONSTRAINT `EQU_Rede__Event_FK` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id_evento`),
  CONSTRAINT `EQU_Rede__Promo_FK` FOREIGN KEY (`cnpj`) REFERENCES `promotora` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rede_social`
--

LOCK TABLES `rede_social` WRITE;
/*!40000 ALTER TABLE `rede_social` DISABLE KEYS */;
INSERT INTO `rede_social` VALUES ('LinkedIn','https://br.linkedin.com','Evento Ultra Mega Show',5,37159434000115),('facebook','https://www.facebook.com','Evento Ultra Mega Show',1,37159434000115),('instagram','https://www.instagram.com','Evento Ultra Mega Show',3,37159434000115),('twitter','https://www.twitter.com','Evento Ultra Mega Show',4,37159434000115),('youtube','https://www.youtube.com','Evento Ultra Mega Show',2,37159434000115);
/*!40000 ALTER TABLE `rede_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regras_concurso`
--

DROP TABLE IF EXISTS `regras_concurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regras_concurso` (
  `codigo_atividade` int NOT NULL,
  `regra` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_atividade`,`regra`),
  UNIQUE KEY `ID_regras_concurso_IND` (`codigo_atividade`,`regra`),
  CONSTRAINT `EQU_regra_Concu` FOREIGN KEY (`codigo_atividade`) REFERENCES `concurso` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regras_concurso`
--

LOCK TABLES `regras_concurso` WRITE;
/*!40000 ALTER TABLE `regras_concurso` DISABLE KEYS */;
INSERT INTO `regras_concurso` VALUES (28,'Critério de desempate: votação online nas redes sociais do evento'),(29,'Critério de desempate: votação online nas redes sociais do evento'),(29,'Será avaliado o melhor layout, de acordo com os juízes'),(30,'Apenas crianças de até 12 anos'),(30,'Critério de desempate: o primeiro a responder a pergunta final'),(30,'Participação deve ser utorizada pelos pais ou responsáveis');
/*!40000 ALTER TABLE `regras_concurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representa`
--

DROP TABLE IF EXISTS `representa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `representa` (
  `cnpj` bigint NOT NULL,
  `cpf_representante` bigint NOT NULL,
  PRIMARY KEY (`cpf_representante`,`cnpj`),
  UNIQUE KEY `ID_REPRESENTA_IND` (`cpf_representante`,`cnpj`),
  KEY `EQU_REPRE_Entid_IND` (`cnpj`),
  CONSTRAINT `EQU_REPRE_Entid_FK` FOREIGN KEY (`cnpj`) REFERENCES `entidade` (`cnpj`),
  CONSTRAINT `EQU_REPRE_Repre` FOREIGN KEY (`cpf_representante`) REFERENCES `representante` (`cpf_representante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representa`
--

LOCK TABLES `representa` WRITE;
/*!40000 ALTER TABLE `representa` DISABLE KEYS */;
INSERT INTO `representa` VALUES (7755256000158,53269456705),(11524184000187,53269456701),(14578574000156,53269456703),(27349772000111,53269456704),(29532264000178,53269456702);
/*!40000 ALTER TABLE `representa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante`
--

DROP TABLE IF EXISTS `representante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `representante` (
  `cpf_representante` bigint NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` int NOT NULL,
  PRIMARY KEY (`cpf_representante`),
  UNIQUE KEY `ID_Representante_IND` (`cpf_representante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante`
--

LOCK TABLES `representante` WRITE;
/*!40000 ALTER TABLE `representante` DISABLE KEYS */;
INSERT INTO `representante` VALUES (53269456701,'Zinedine Zidane','zidane@contato.com',12345678),(53269456702,'Lionel Messi','messi@contato.com',12345677),(53269456703,'Cristiano Ronaldo','cr07@contato.com',12345676),(53269456704,'Ronaldo Nazario','ronaldo09@contato.com',12345675),(53269456705,'Diego Armando Maradona','maradona_rei_delas@contato.com',12345674);
/*!40000 ALTER TABLE `representante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reuniao`
--

DROP TABLE IF EXISTS `reuniao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reuniao` (
  `codigo_atividade` int NOT NULL,
  `objetivo` varchar(500) NOT NULL,
  PRIMARY KEY (`codigo_atividade`),
  UNIQUE KEY `ID_Reuni_Ativi_IND` (`codigo_atividade`),
  CONSTRAINT `ID_Reuni_Ativi_FK` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reuniao`
--

LOCK TABLES `reuniao` WRITE;
/*!40000 ALTER TABLE `reuniao` DISABLE KEYS */;
INSERT INTO `reuniao` VALUES (11,'Discutir a composição do ovo'),(12,'Discutir uma nova regulação fiscal'),(13,'Discutir o papel da ética nos modelos de IA'),(14,'Fomentar a discussao sobre computação quântica'),(15,'Discutir o financiamento para um supercomputador brasileiro');
/*!40000 ALTER TABLE `reuniao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessao`
--

DROP TABLE IF EXISTS `sessao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessao` (
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  `codigo_atividade` int NOT NULL,
  `codigo_local` int NOT NULL,
  PRIMARY KEY (`codigo_atividade`),
  UNIQUE KEY `SID_Sessao_ID` (`data_inicio`),
  UNIQUE KEY `SID_Sessao_IND` (`data_inicio`),
  KEY `EQU_Sessa_Ativi_IND` (`codigo_atividade`),
  KEY `REF_Sessa_Local_IND` (`codigo_local`),
  CONSTRAINT `EQU_Sessa_Ativi_FK` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`),
  CONSTRAINT `REF_Sessa_Local_FK` FOREIGN KEY (`codigo_local`) REFERENCES `local_atividade` (`codigo_local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessao`
--

LOCK TABLES `sessao` WRITE;
/*!40000 ALTER TABLE `sessao` DISABLE KEYS */;
INSERT INTO `sessao` VALUES ('2020-11-16','2020-11-16',1,1),('2020-11-18','2020-11-18',2,2),('2020-11-20','2020-11-20',3,3),('2020-11-19','2020-11-19',4,4),('2020-11-17','2020-11-20',5,5);
/*!40000 ALTER TABLE `sessao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessao_artigo`
--

DROP TABLE IF EXISTS `sessao_artigo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessao_artigo` (
  `codigo_atividade` int NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `numero_sessoes` int NOT NULL,
  `responsavel` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_atividade`),
  UNIQUE KEY `ID_Sessa_Ativi_IND` (`codigo_atividade`),
  CONSTRAINT `ID_Sessa_Ativi_FK` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessao_artigo`
--

LOCK TABLES `sessao_artigo` WRITE;
/*!40000 ALTER TABLE `sessao_artigo` DISABLE KEYS */;
INSERT INTO `sessao_artigo` VALUES (16,'nutrição',1,'Marcelo Ribeiro'),(17,'Finanças publicas',1,'Renata Flores'),(18,'Computação',1,'Vitoria Regia'),(19,'Computação',1,'Gisele Silva'),(20,'PPG-SI',1,'Joao Marx');
/*!40000 ALTER TABLE `sessao_artigo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `cpf` bigint NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ID_Staff_Parti_IND` (`cpf`),
  CONSTRAINT `ID_Staff_Parti_FK` FOREIGN KEY (`cpf`) REFERENCES `participante` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (43269456711),(43269456712),(43269456713),(43269456714),(43269456715);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_participante`
--

DROP TABLE IF EXISTS `tipo_participante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_participante` (
  `numero_certificado` int NOT NULL,
  `tipo_participante` char(255) NOT NULL,
  PRIMARY KEY (`numero_certificado`,`tipo_participante`),
  UNIQUE KEY `ID_tipo_participante_IND` (`numero_certificado`,`tipo_participante`),
  CONSTRAINT `EQU_tipo__Certi` FOREIGN KEY (`numero_certificado`) REFERENCES `certificado` (`numero_certificado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_participante`
--

LOCK TABLES `tipo_participante` WRITE;
/*!40000 ALTER TABLE `tipo_participante` DISABLE KEYS */;
INSERT INTO `tipo_participante` VALUES (1234567,'ouvinte'),(12345677,'ouvinte'),(12345678,'ouvinte'),(23456781,'ouvinte'),(51535545,'ouvinte');
/*!40000 ALTER TABLE `tipo_participante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutoria`
--

DROP TABLE IF EXISTS `tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutoria` (
  `codigo_atividade` int NOT NULL,
  `valor_inscricao` float NOT NULL,
  `tema` varchar(255) NOT NULL,
  `publico_alvo` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_atividade`),
  UNIQUE KEY `ID_Tutor_Ativi_IND` (`codigo_atividade`),
  CONSTRAINT `ID_Tutor_Ativi_FK` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutoria`
--

LOCK TABLES `tutoria` WRITE;
/*!40000 ALTER TABLE `tutoria` DISABLE KEYS */;
INSERT INTO `tutoria` VALUES (31,15,'Aprenda a cozinhar diversos legumes','Geral'),(32,20,'Aprendendo fazer um chatbot no Telegram','Conhecimento básico em programação'),(33,1,'Limpeza e preparação dos dados na prática','Geral'),(34,50,'Aprendendo a usar o Git - Github','Conhecimento básico em programação'),(35,60,'Arduíno na prática','Conhecimento básico em programação');
/*!40000 ALTER TABLE `tutoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utiliza`
--

DROP TABLE IF EXISTS `utiliza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utiliza` (
  `codigo_atividade` int NOT NULL,
  `codigo_equipamento` int NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`codigo_equipamento`,`codigo_atividade`),
  UNIQUE KEY `ID_UTILIZA_IND` (`codigo_equipamento`,`codigo_atividade`),
  KEY `REF_UTILI_Ativi_IND` (`codigo_atividade`),
  CONSTRAINT `REF_UTILI_Ativi_FK` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`),
  CONSTRAINT `REF_UTILI_Equip` FOREIGN KEY (`codigo_equipamento`) REFERENCES `equipamento` (`codigo_equipamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utiliza`
--

LOCK TABLES `utiliza` WRITE;
/*!40000 ALTER TABLE `utiliza` DISABLE KEYS */;
INSERT INTO `utiliza` VALUES (3,1,3),(4,2,3),(5,3,20),(1,4,1),(2,5,1);
/*!40000 ALTER TABLE `utiliza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `Codigo_veiculo` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(255) NOT NULL,
  `Valor_passagem` float NOT NULL,
  `Nome_companhia` varchar(255) NOT NULL,
  `Nome_caravana` varchar(255) NOT NULL,
  PRIMARY KEY (`Codigo_veiculo`),
  UNIQUE KEY `ID_Veiculo_IND` (`Codigo_veiculo`),
  KEY `FKTRANSPORTA_IND` (`Nome_caravana`),
  CONSTRAINT `FKTRANSPORTA_FK` FOREIGN KEY (`Nome_caravana`) REFERENCES `caravana` (`Nome_caravana`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'Ônibus',350.45,'Gontijo','caravana do rodo'),(2,'Van',110.7,'Vanzaum do pedro','carnavana'),(3,'Ônibus',382.3,'bujão','caranida'),(4,'Avião',230.25,'AirBNB','caravana fernandopolis'),(5,'van',270.65,'Van gogh','santavana');
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop`
--

DROP TABLE IF EXISTS `workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workshop` (
  `codigo_atividade` int NOT NULL,
  `valor_inscricao` float NOT NULL,
  `tema` varchar(255) NOT NULL,
  `publico_alvo` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo_atividade`),
  UNIQUE KEY `ID_Works_Ativi_IND` (`codigo_atividade`),
  CONSTRAINT `ID_Works_Ativi_FK` FOREIGN KEY (`codigo_atividade`) REFERENCES `atividade` (`codigo_atividade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop`
--

LOCK TABLES `workshop` WRITE;
/*!40000 ALTER TABLE `workshop` DISABLE KEYS */;
INSERT INTO `workshop` VALUES (21,250,'Como ter uma alimentação saudável atualmente','Geral'),(22,120,'Como declarar o imposto de renda','Adultos'),(23,250,'Imersão na inteligência Artificial','Cientistas de dados'),(24,120,'IoT na modernidade','Adultos'),(25,150,'Soft skills para o mercado em TI','Geral');
/*!40000 ALTER TABLE `workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'eventos_cientificos'
--

--
-- Dumping routines for database 'eventos_cientificos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-27 17:15:36
