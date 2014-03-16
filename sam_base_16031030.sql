-- MySQL dump 10.13  Distrib 5.5.30, for Win32 (x86)
--
-- Host: localhost    Database: sam_base
-- ------------------------------------------------------
-- Server version	5.5.30-log

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
-- Table structure for table `Action`
--

DROP TABLE IF EXISTS `Action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `property_type_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_type_id` (`property_type_id`),
  KEY `property_id` (`property_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `action_ibfk_1` FOREIGN KEY (`property_type_id`) REFERENCES `actionpropertytype` (`id`) ON DELETE CASCADE,
  CONSTRAINT `action_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `actionproperty` (`id`) ON DELETE CASCADE,
  CONSTRAINT `action_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Действие';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Action`
--

LOCK TABLES `Action` WRITE;
/*!40000 ALTER TABLE `Action` DISABLE KEYS */;
/*!40000 ALTER TABLE `Action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ActionProperty`
--

DROP TABLE IF EXISTS `ActionProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActionProperty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL COMMENT 'Наименование',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `actionproperty_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `actionpropertytype` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COMMENT='Значение свойства действия';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionProperty`
--

LOCK TABLES `ActionProperty` WRITE;
/*!40000 ALTER TABLE `ActionProperty` DISABLE KEYS */;
INSERT INTO `ActionProperty` VALUES (1,2,'нет'),(2,2,'отец'),(3,2,'мать'),(4,2,'брат'),(5,2,' сестра'),(6,2,'бабушка'),(7,2,'дедушка'),(8,2,'дядя'),(9,2,'тетя'),(10,2,'племянники'),(11,2,'сын'),(12,2,'дочь'),(13,2,'внук/внучка'),(14,3,'рабочий'),(15,3,'служащий'),(16,3,'пенсионер'),(17,3,'учащийся'),(18,4,'- нет сведений'),(19,4,'- отдельная квартира, дом'),(20,4,'- комната в коммунальной квартире'),(21,4,'- общежитие'),(22,4,'- съемная квартира, дом'),(23,5,'- нет сведений'),(24,5,'- да'),(25,5,'- есть'),(26,6,'- нет сведений'),(27,6,'- да'),(28,6,'- нет'),(29,7,'- нет сведений'),(30,7,'- да'),(31,7,'- нет'),(32,8,'- нет сведений'),(33,8,'- указать количество'),(34,10,'- январь'),(35,10,'- февраль'),(36,10,'- март'),(37,10,'- апрель'),(38,10,'- май'),(39,10,'- июнь'),(40,10,'- июль'),(41,10,'- август'),(42,10,'- сентябрь'),(43,10,'- октябрь'),(44,10,'- ноябрь'),(45,10,'- декабрь'),(46,11,'- нет сведний'),(47,11,'- до 1 недели'),(48,11,'- от 1 недели до 1 месяца'),(49,11,'- от 1 месяца до 1 года'),(50,11,'- от 1 года до 5 лет'),(51,11,'- от 5 лет до 10 лет'),(52,11,'- от 10 лет и более'),(53,12,'- волосистая часть головы;'),(54,12,'- локти и колени;'),(55,12,'- верхние конечности;'),(56,12,'- нижние конечности;'),(57,12,'- туловище;'),(58,12,'- лицо;'),(59,12,'- ладони и подошвы;'),(60,12,'- крупные складки;'),(61,12,'- область гениталий;'),(62,12,'- перианальная область;'),(63,12,'- наружный слуховой проход;'),(64,12,'- ногтевые пластинки;'),(65,12,'- поражения суставов'),(66,14,'- тонзиллит'),(67,14,'- синусит'),(68,14,'- хронический пиелонефрит'),(69,14,'- аднексит'),(70,14,'- холецистит'),(71,15,'- дерматофитии'),(72,15,'- аллергические дерматозы'),(73,15,'- гнойничковые заболевания кожи'),(74,15,'- болезни соединительной ткани'),(75,15,'- вирусные дерматозы'),(76,15,'- эритематозно-папулезно-сквамозные дерматозы'),(77,16,'1 раз в 10 лет;'),(78,16,'1 раз в 5 лет;'),(79,16,'1 раз в 2-3 года;'),(80,16,'впервые'),(81,16,'- нет сведений'),(82,16,'- 1 раз в 4 – 5 лет'),(83,16,'- 1 раз в 2- 3 года'),(84,16,'- 1 раз в год'),(85,16,'-2 и более раз в год'),(86,16,'-реже 1 раза в год'),(87,17,'- нет'),(88,17,'- зимний'),(89,17,'- осенний'),(90,17,'- весенний'),(91,17,'- летний'),(92,17,'- независимо от сезона'),(93,20,'- январь'),(94,20,'- февраль'),(95,20,'- март'),(96,20,'- апрель'),(97,20,'- май'),(98,20,'- июнь'),(99,20,'- июль'),(100,20,'- август'),(101,20,'- сентябрь'),(102,20,'- октябрь'),(103,20,'- ноябрь'),(104,20,'- декабрь'),(105,21,'- полная ремиссия (разрешение всех элементов);'),(106,21,'- неполная ремиссия (частичное разрешение элементов);'),(107,21,'- спонтанная ремиссия'),(108,22,'- нет сведений'),(109,22,'- менее месяца'),(110,22,'- от 1 до 6 месяцев'),(111,22,'- от 6 месяцев до 1 года'),(112,22,'- от 1 года до 2 лет'),(113,22,'- от 3 до 5 лет'),(114,22,'- от 5 и более лет'),(115,23,'- нет сведений'),(116,23,'- менее месяца'),(117,23,'- от 1 до 6 месяцев'),(118,23,'- от 6 месяцев до 1 года'),(119,23,'- от 1 года до 2 лет'),(120,23,'- от 3 до 5 лет'),(121,23,'- от 5 и более лет'),(122,26,'-реже 1 раза в год;'),(123,26,'-2 и более раза в год'),(124,27,'- волосистая часть головы;'),(125,27,'- локти и колени;'),(126,27,'- верхние конечности;'),(127,27,'- нижние конечности;'),(128,27,'- туловище;'),(129,27,'- лицо;'),(130,27,'- ладони и подошвы;'),(131,27,'- крупные складки;'),(132,27,'- область гениталий;'),(133,27,'- перианальная область;'),(134,27,'- наружный слуховой проход;'),(135,27,'- ногтевые пластинки;'),(136,27,'- поражены суставы'),(137,28,'- нет сведений'),(138,28,'- в первые месяцы  и недели'),(139,28,'- в течение полугода'),(140,28,'- в течение первого года'),(141,28,'- более 1 года'),(142,29,'- нет сведений'),(143,29,'- отсутствуют'),(144,29,'- умеренный зуд'),(145,29,'- сильный зуд'),(146,29,'- жжение'),(147,29,'- чувство стягивания кожи'),(148,29,'- боль в суставах'),(149,29,'- скованность движений'),(150,30,'- ограниченный'),(151,30,'- диссеминированный'),(152,30,'- генерализованный'),(153,31,'- папулезный'),(154,31,'- папулезно – бляшечный'),(155,31,'- бляшечный'),(156,31,'- крупнобляшечный'),(157,31,'- диффузный'),(158,31,'- эритродермия'),(159,32,'- артралгия;'),(160,32,'- синовиальная;'),(161,32,'- синовиально-костная;'),(162,32,'- по типу болезни Бехтерева'),(163,33,'- слизистая оболочка полости рта (вкл.: язык, нёбо, десна, слизистая щёк)'),(164,33,'- слизистая оболчка носовой полости;'),(165,33,'- область красной каймы губ'),(166,33,'- гортань, голосовые связки'),(167,34,'Наружная терапия (топические ГКС, преп. сод-е витD3), гипосенсибилизирующие препараты;'),(168,34,'фототерапия (ПУВА-терапия, узкопол.срдневолн.), системная терапия (метотрексат, ацитретин(неотигазон), циклоспорин (сандиммуннеорал),'),(169,34,'био. препараты (инфликсимаб)'),(170,38,'- веррукозная'),(171,38,'- интертригинозный'),(172,38,'- рупиоидная'),(173,38,'- фолликулярная'),(174,39,'- зимний'),(175,39,'- летний'),(176,39,'- внесезонный'),(177,41,'-прогрессирования'),(178,41,'- стабилизации'),(179,41,'- регрессирования'),(180,42,'- эндокринопатии (сахарный диабет, ожирение; заболевания щитовидной железы);'),(181,42,'- заболевания сердечно-сосудистой  системы (ИБС, артериальная гипертензия);'),(182,42,'- заболевания ЖКТ (хрон. гастрит, язвенная болезнь желудка и 12-й кишки, хрон.гепатит,хрон. панкреатит, хрон. холецистит);'),(183,42,'- заболевания бронхо-легочной системы (тонзиллит, пневмония, хрон. бронхит, туберкулез легких, бронхиальная астма)'),(184,42,'- заболевания почек и мочевыделительной системы (хрон. пиелонефрит);'),(185,42,'- онкозаболевания;'),(186,42,'- алкогольная, наркотическая зависимость ?'),(187,42,'- ВИЧ – инфекция'),(188,43,'- нет'),(189,43,'- аллергическая реакция на препараты (указать  '),(190,43,'  препарат)'),(191,43,'- бронхиальня астма'),(192,43,'- аллергический ринит'),(193,43,'- аллергический конъюнктивит'),(194,43,'- прочие'),(195,44,'- стеаринового пятна'),(196,44,'- терминальной пленки'),(197,44,'- точечного кровотечения'),(198,45,'- нет сведений'),(199,45,'- да'),(200,45,'- нет');
/*!40000 ALTER TABLE `ActionProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ActionPropertyType`
--

DROP TABLE IF EXISTS `ActionPropertyType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActionPropertyType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL COMMENT 'Наименование',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='Тип свойства действия';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionPropertyType`
--

LOCK TABLES `ActionPropertyType` WRITE;
/*!40000 ALTER TABLE `ActionPropertyType` DISABLE KEYS */;
INSERT INTO `ActionPropertyType` VALUES (1,'Наследственная предрасположенность'),(2,'Семейный, близкородственный анамнез заболевания (в семье, из родственников псориазом болеют)'),(3,'Социальный состав'),(4,'Жилищно-бытовые условия'),(5,'Профессиональные вредности'),(6,'Смена профессии, места работы'),(7,'Было ли причиной смена места работы, профессии заболевание псориазом'),(8,'Сколько раз больной госпитализировался в дерматологический стационар'),(9,'Год начала заболевания'),(10,'Месяц возникновения заболевания'),(11,'Срок давности заболевания'),(12,'Первые высыпания (локализация):'),(13,'Предполагаемая причина со слов больного:'),(14,'Фокальная инфекция'),(15,'Связь псориаза с другими дерматозами'),(16,'Частота рецидивов'),(17,'Сезонность рецидивовзаболевания'),(18,'Причины рецидивов или факторы    провоцирующие возникновение рецидивов'),(19,'Год наступления последнего рецидива'),(20,'Месяц наступления последнего рецидива'),(21,'Ремиссия:'),(22,'Средняя продолжительность ремиссии:'),(23,'Продолжительность последней ремиссии'),(24,'Начало длительной ремиссии'),(25,'Окончание длительной ремиссии'),(26,'Обострение:'),(27,'Локализация высыпаний на моментобследования'),(28,'Указать длительность с момента появления  первых высыпаний до диссеминации  псориатического процесса (для больных с  псориатическим артритом - до появ'),(29,'Субъективные признаки'),(30,'Распространенность поражения кожи'),(31,'Распространенность поражения кожи по характеру морфологических элементов'),(32,'Поражения суставов:'),(33,'Поражения слизистой оболочки:'),(34,'Эффект от ранее проводимого лечения'),(35,'Проведенная терапия в момент последнего обострения'),(36,'Площадь поражения: PASI'),(37,'Формы псориаза:'),(38,'Атипичные формы:'),(39,'Тип псориаза:'),(40,'Развернутый клинический диагноз'),(41,'Стадии заболевания:'),(42,'Сопутствующие заболевания:'),(43,'Аллергологический анамнез'),(44,'Наличие псориатической триады'),(45,'Феномен Кебнера');
/*!40000 ALTER TABLE `ActionPropertyType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(30) NOT NULL COMMENT 'Фамилия',
  `firstName` varchar(30) NOT NULL COMMENT 'Имя',
  `patrName` varchar(30) NOT NULL COMMENT 'Отчество',
  `birthDate` date NOT NULL COMMENT 'Дата рождения',
  `sex` tinyint(4) NOT NULL COMMENT 'Пол (0-неопределено, 1-М, 2-Ж)',
  `work` text COMMENT 'Место работы',
  `real_status` int(11) DEFAULT NULL COMMENT '0-неопределено, 1-холост, 2-женат, 3-не замужем, 4-замужем',
  `national` text COMMENT 'Национальность',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1260 COMMENT='Главная запись пациента';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'Тестовый','Тест','Тестович','1990-01-10',1,NULL,NULL,NULL),(2,'Test','Test','Test','1990-01-10',1,NULL,NULL,NULL),(3,'Иванов','Иван','Иванович','2001-01-01',1,NULL,NULL,NULL),(4,'Петров','Пётр','Петрович','1961-01-01',1,NULL,NULL,NULL),(5,'Егоров','Дмитрий','Генадиевич','1984-04-01',1,NULL,NULL,NULL),(6,'Попыгин','Константин','Александрович','1984-05-01',1,NULL,NULL,NULL),(7,'Иванов','Иван','Иванович','1991-01-01',1,NULL,NULL,NULL),(8,'Иванов','Иван','Иванович','1992-01-10',1,NULL,NULL,NULL),(9,'Егоров','Иван','Александрович','1987-01-10',1,NULL,NULL,NULL),(10,'Егоров','Константин','Петрович','1987-12-04',1,NULL,NULL,NULL),(11,'Александрова','Татьяна','Александровна','1985-03-12',2,NULL,NULL,NULL),(12,'Петрова','Анастасия','Дмитриевна','1995-07-03',2,NULL,NULL,NULL),(13,'Яблочкин','Игорь','Генадиевич','1967-11-06',1,NULL,NULL,NULL),(14,'Тест','Татьяна','Александровна','2014-03-12',2,NULL,NULL,NULL),(15,'Иванов','Дмитрий','Генадиевич','1961-10-14',1,'ООО \"Интек\"',1,'русский');
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event`
--

DROP TABLE IF EXISTS `Event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL COMMENT 'Идентификатор Пациента',
  `type_id` int(11) NOT NULL COMMENT 'Идентификатор Типа События',
  `begDate` date NOT NULL COMMENT 'Дата начала события',
  `endDate` date NOT NULL COMMENT 'Дата окончания события',
  `number` int(11) DEFAULT NULL COMMENT 'Номер истории',
  PRIMARY KEY (`id`),
  KEY `FK_Event_Type_id` (`type_id`),
  KEY `FK_Event_Client_id` (`client_id`),
  CONSTRAINT `FK_Event_Client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `FK_Event_Type_id` FOREIGN KEY (`type_id`) REFERENCES `eventtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='Медицинские карты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
INSERT INTO `Event` VALUES (1,1,1,'2014-03-04','2014-03-13',243),(5,10,1,'2014-03-09','0000-00-00',NULL),(6,10,1,'2014-03-07','0000-00-00',NULL),(7,10,1,'2014-03-08','0000-00-00',NULL),(8,2,1,'2014-03-05','0000-00-00',NULL),(9,10,1,'2014-03-04','2014-03-13',NULL),(10,2,1,'2014-03-07','0000-00-00',NULL),(11,2,1,'2014-02-04','0000-00-00',NULL);
/*!40000 ALTER TABLE `Event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EventType`
--

DROP TABLE IF EXISTS `EventType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EventType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT 'Название',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventType`
--

LOCK TABLES `EventType` WRITE;
/*!40000 ALTER TABLE `EventType` DISABLE KEYS */;
INSERT INTO `EventType` VALUES (1,'Псориаз');
/*!40000 ALTER TABLE `EventType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sam_base'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-16 10:28:05
