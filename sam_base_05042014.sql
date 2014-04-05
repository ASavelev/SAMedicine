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
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_type_id` (`property_type_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `action_ibfk_1` FOREIGN KEY (`property_type_id`) REFERENCES `actionpropertytype` (`id`) ON DELETE CASCADE,
  CONSTRAINT `action_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Действие';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Action`
--

LOCK TABLES `Action` WRITE;
/*!40000 ALTER TABLE `Action` DISABLE KEYS */;
INSERT INTO `Action` VALUES (1,1,1,'Нет'),(2,1,2,'40'),(3,1,3,'51');
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
  `typeName` varchar(255) NOT NULL COMMENT 'Тип Свойства типа действия',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='Тип свойства действия';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionPropertyType`
--

LOCK TABLES `ActionPropertyType` WRITE;
/*!40000 ALTER TABLE `ActionPropertyType` DISABLE KEYS */;
INSERT INTO `ActionPropertyType` VALUES (1,'Наследственная предрасположенность','TEXT',NULL),(2,'Семейный, близкородственный анамнез заболевания (в семье, из родственников псориазом болеют)','Constructor','1_01'),(3,'Социальный состав','String','1_02'),(4,'Жилищно-бытовые условия','String','1_03'),(5,'Профессиональные вредности','String','1_04'),(6,'Смена профессии, места работы','String','1_05'),(7,'Было ли причиной смена места работы, профессии заболевание псориазом','String','1_06'),(8,'Сколько раз больной госпитализировался в дерматологический стационар','String','1_07'),(9,'Год начала заболевания','TEXT',NULL),(10,'Месяц возникновения заболевания','String','1_08'),(11,'Срок давности заболевания','String','1_09'),(12,'Первые высыпания (локализация):','Constructor','1_10'),(13,'Предполагаемая причина со слов больного:','TEXT',NULL),(14,'Фокальная инфекция','Constructor','1_11'),(15,'Связь псориаза с другими дерматозами','Constructor','1_12'),(16,'Частота рецидивов','String','1_13'),(17,'Сезонность рецидивовзаболевания','Constructor','1_14'),(18,'Причины рецидивов или факторы    провоцирующие возникновение рецидивов','TEXT',NULL),(19,'Год наступления последнего рецидива','TEXT',NULL),(20,'Месяц наступления последнего рецидива','String','1_15'),(21,'Ремиссия:','String','1_16'),(22,'Средняя продолжительность ремиссии:','String','1_17'),(23,'Продолжительность последней ремиссии','String','1_18'),(24,'Начало длительной ремиссии','TEXT',NULL),(25,'Окончание длительной ремиссии','TEXT',NULL),(26,'Обострение:','String','1_19'),(27,'Локализация высыпаний на моментобследования','Constructor','1_20'),(28,'Указать длительность с момента появления  первых высыпаний до диссеминации  псориатического процесса (для больных с  псориатическим артритом - до появ','String','1_21'),(29,'Субъективные признаки','Constructor','1_22'),(30,'Распространенность поражения кожи','Constructor','1_23'),(31,'Распространенность поражения кожи по характеру морфологических элементов','Constructor','1_24'),(32,'Поражения суставов:','Constructor','1_25'),(33,'Поражения слизистой оболочки:','Constructor','1_26'),(34,'Эффект от ранее проводимого лечения','Constructor','1_27'),(35,'Проведенная терапия в момент последнего обострения','TEXT',NULL),(36,'Площадь поражения: PASI','TEXT',NULL),(37,'Формы псориаза:','TEXT',NULL),(38,'Атипичные формы:','Constructor','1_28'),(39,'Тип псориаза:','String','1_29'),(40,'Развернутый клинический диагноз','TEXT',NULL),(41,'Стадии заболевания:','Constructor','1_30'),(42,'Сопутствующие заболевания:','Constructor','1_31'),(43,'Аллергологический анамнез','Constructor','1_32'),(44,'Наличие псориатической триады','Constructor','1_33'),(45,'Феномен Кебнера','String','1_34');
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
  `real_status` int(11) NOT NULL DEFAULT '0' COMMENT '0-неопределено, 1-холост, 2-женат, 3-не замужем, 4-замужем',
  `national` text COMMENT 'Национальность',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1092 COMMENT='Главная запись пациента';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'Иванов','Иван','Иванович','2014-03-01',1,'ООО \"Интек\"',1,'русский');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='Медицинские карты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
INSERT INTO `Event` VALUES (1,1,1,'2014-03-11','2014-03-18',26532435);
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
-- Table structure for table `rbPrice`
--

DROP TABLE IF EXISTS `rbPrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbPrice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT 'КОД',
  `name` varchar(450) DEFAULT NULL COMMENT 'Наименование',
  `frequency` double DEFAULT NULL COMMENT 'Частота применения по умолчанию',
  `multiplisity` double DEFAULT NULL COMMENT 'Кратность применения',
  `summ` double DEFAULT NULL COMMENT 'Цена',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='Прайс';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbPrice`
--

LOCK TABLES `rbPrice` WRITE;
/*!40000 ALTER TABLE `rbPrice` DISABLE KEYS */;
INSERT INTO `rbPrice` VALUES (1,'1','Врач-дерматовенеролог Первичный прием Высшая к.м.н. (д.м.н.)',1,1,390.794),(2,'2','Врач-дерматовенеролог Первичный прием Высшая',1,1,305.549),(3,'3','Врач-дерматовенеролог Первичный прием 1 категория',1,1,241.1),(4,'4','Врач-дерматовенеролог Первичный прием Без категории',1,1,206.185),(5,'5','Врач-дерматовенеролог Повторный прием Высшая к.м.н. (д.м.н.)',1,18,316.86),(6,'6','Врач-дерматовенеролог Повторный прием Высшая',1,18,230.414),(7,'7','Врач-дерматовенеролог Повторный прием 1 категория',1,18,192.88),(8,'8','Врач-дерматовенеролог Повторный прием Без категории',1,18,163.03),(9,'9','Врач-терапевт  Первичный прием Высшая к.м.н. (д.м.н.)',0.5,1,390.794),(10,'10','Врач-терапевт  Первичный прием Высшая',0.5,1,305.549),(11,'11','Врач-терапевт  Первичный прием 1 категория',0.5,1,241.1),(12,'12','Врач-терапевт  Первичный прием Без категории',0.5,1,206.185),(13,'13','Врач-терапевт  Повторный прием Высшая к.м.н. (д.м.н.)',0.2,1,316.86),(14,'14','Врач-терапевт  Повторный прием Высшая',0.2,1,230.414),(15,'15','Врач-терапевт  Повторный прием 1 категория',0.2,1,192.88),(16,'16','Врач-терапевт  Повторный прием Без категории',0.2,1,163),(17,'17','Врач-офтальмолог Первичный прием Высшая к.м.н. (д.м.н.)',0.5,1,390.794),(18,'18','Врач-офтальмолог Первичный прием Высшая',0.5,1,305.549),(19,'19','Врач-офтальмолог Первичный прием 1 категория',0.5,1,241.1),(20,'20','Врач-офтальмолог Первичный прием Без категории',0.5,1,206.185),(21,'21','Врач-эндокринолог Первичный прием Высшая к.м.н. (д.м.н.)',0.5,1,390.794),(22,'22','Врач-эндокринолог Первичный прием Высшая',0.5,1,305.549),(23,'23','Врач-эндокринолог Первичный прием 1 категория',0.5,1,241.1),(24,'24','Врач-эндокринолог Первичный прием Без категории',0.5,1,206.185),(25,'25','Врач-акушер-гинеколог Первичный прием Высшая к.м.н. (д.м.н.)',0.25,1,390.794),(26,'26','Врач-акушер-гинеколог Первичный прием Высшая',0.25,1,305.549),(27,'27','Врач-акушер-гинеколог Первичный прием 1 категория',0.25,1,241.1),(28,'28','Врач-акушер-гинеколог Первичный прием Без категории',0.25,1,206.185),(29,'29','Врач-фтизиатр Первичный прием Высшая к.м.н. (д.м.н.)',0.045,1,390.794),(30,'30','Врач-фтизиатр Первичный прием Высшая',0.045,1,305.549),(31,'31','Врач-фтизиатр Первичный прием 1 категория',0.045,1,241.1),(32,'32','Врач-фтизиатр Первичный прием Без категории',0.045,1,206.185),(33,'33','Врач-фтизиатр Повторный прием Высшая к.м.н. (д.м.н.)',0.045,1,316.86),(34,'34','Врач-фтизиатр Повторный прием Высшая',0.045,1,230.414),(35,'35','Врач-фтизиатр Повторный прием 1 категория',0.045,1,192.88),(36,'36','Врач-фтизиатр Повторный прием Без категории',0.045,1,163),(37,'37','Врач-ревматолог Первичный прием Высшая к.м.н. (д.м.н.)',0.1,1,390.794),(38,'38','Врач-ревматолог Первичный прием Высшая',0.1,1,305.549),(39,'39','Врач-ревматолог Первичный прием 1 категория',0.1,1,241.1),(40,'40','Врач-ревматолог Первичный прием Без категории',0.1,1,206.185),(41,'41','Врач-ревматолог Повторный прием Высшая к.м.н. (д.м.н.)',0.05,1,316.86),(42,'42','Врач-ревматолог Повторный прием Высшая',0.05,1,230.414),(43,'43','Врач-ревматолог Повторный прием 1 категория',0.05,1,192.88),(44,'44','Врач-ревматолог Повторный прием Без категории',0.05,1,163),(45,'45','Врач-физиотерапевт Первичный прием Высшая к.м.н. (д.м.н.)',0.6,3,390.794),(46,'46','Врач-физиотерапевт Первичный прием Высшая',0.6,3,305.549),(47,'47','Врач-физиотерапевт Первичный прием 1 категория',0.6,3,241.1),(48,'48','Врач-физиотерапевт Первичный прием Без категории',0.6,3,206.185),(49,'49','Выбор врача по просьбе пациента  ',1,1,308.7);
/*!40000 ALTER TABLE `rbPrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rbThesaurus`
--

DROP TABLE IF EXISTS `rbThesaurus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rbThesaurus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 COMMENT='Тезаурус:';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rbThesaurus`
--

LOCK TABLES `rbThesaurus` WRITE;
/*!40000 ALTER TABLE `rbThesaurus` DISABLE KEYS */;
INSERT INTO `rbThesaurus` VALUES (1,NULL,'1','Карта'),(2,1,'1_01','Семейный, близкородственный анамнез заболевания (в семье, из родственников псориазом болеют)'),(3,1,'1_02','Социальный состав'),(4,1,'1_03','Жилищно-бытовые условия'),(5,1,'1_04','Профессиональные вредности'),(6,1,'1_05','Смена профессии, места работы'),(7,1,'1_06','Было ли причиной смена места работы, профессии заболевание псориазом'),(8,1,'1_07','Сколько раз больной госпитализировался в дерматологический стационар'),(9,1,'1_08','Месяц возникновения заболевания'),(10,1,'1_09','Срок давности заболевания'),(11,1,'1_10','Первые высыпания (локализация):'),(12,1,'1_11','Фокальная инфекция'),(13,1,'1_12','Связь псориаза с другими дерматозами'),(14,1,'1_13','Частота рецидивов'),(15,1,'1_14','Сезонность рецидивовзаболевания'),(16,1,'1_15','Месяц наступления последнего рецидива'),(17,1,'1_16','Ремиссия:'),(18,1,'1_17','Средняя продолжительность ремиссии:'),(19,1,'1_18','Продолжительность последней ремиссии'),(20,1,'1_19','Обострение:'),(21,1,'1_20','Локализация высыпаний на моментобследования'),(22,1,'1_21','Указать длительность с момента появления  первых высыпаний до диссеминации  псориатического процесса (для больных с  псориатическим артритом - до появ'),(23,1,'1_22','Субъективные признаки'),(24,1,'1_23','Распространенность поражения кожи'),(25,1,'1_24','Распространенность поражения кожи по характеру морфологических элементов'),(26,1,'1_25','Поражения суставов:'),(27,1,'1_26','Поражения слизистой оболочки:'),(28,1,'1_27','Эффект от ранее проводимого лечения'),(29,1,'1_28','Атипичные формы:'),(30,1,'1_29','Тип псориаза:'),(31,1,'1_30','Стадии заболевания:'),(32,1,'1_31','Сопутствующие заболевания:'),(33,1,'1_32','Аллергологический анамнез'),(34,1,'1_33','Наличие псориатической триады'),(36,1,'1_34','Феномен Кебнера'),(37,2,'','нет'),(38,2,'','отец'),(39,2,'','мать'),(40,2,'','брат'),(41,2,'',' сестра'),(42,2,'','бабушка'),(43,2,'','дедушка'),(44,2,'','дядя'),(45,2,'','тетя'),(46,2,'','племянники'),(47,2,'','сын'),(48,2,'','дочь'),(49,2,'','внук/внучка'),(50,3,'','рабочий'),(51,3,'','служащий'),(52,3,'','пенсионер'),(53,3,'','учащийся'),(54,4,'','- нет сведений'),(55,4,'','- отдельная квартира, дом'),(56,4,'','- комната в коммунальной квартире'),(57,4,'','- общежитие'),(58,4,'','- съемная квартира, дом'),(59,5,'','- нет сведений'),(60,5,'','- да'),(61,5,'','- есть'),(62,6,'','- нет сведений'),(63,6,'','- да'),(64,6,'','- нет'),(65,7,'','- нет сведений'),(66,7,'','- да'),(67,7,'','- нет'),(68,8,'','- нет сведений'),(69,8,'','- указать количество'),(70,9,'','- январь'),(71,9,'','- февраль'),(72,9,'','- март'),(73,9,'','- апрель'),(74,9,'','- май'),(75,9,'','- июнь'),(76,9,'','- июль'),(77,9,'','- август'),(78,9,'','- сентябрь'),(79,9,'','- октябрь'),(80,9,'','- ноябрь'),(81,9,'','- декабрь'),(82,10,'','- нет сведний'),(83,10,'','- до 1 недели'),(84,10,'','- от 1 недели до 1 месяца'),(85,10,'','- от 1 месяца до 1 года'),(86,10,'','- от 1 года до 5 лет'),(87,10,'','- от 5 лет до 10 лет'),(88,10,'','- от 10 лет и более'),(89,11,'','- волосистая часть головы;'),(90,11,'','- локти и колени;'),(91,11,'','- верхние конечности;'),(92,11,'','- нижние конечности;'),(93,11,'','- туловище;'),(94,11,'','- лицо;'),(95,11,'','- ладони и подошвы;'),(96,11,'','- крупные складки;'),(97,11,'','- область гениталий;'),(98,11,'','- перианальная область;'),(99,11,'','- наружный слуховой проход;'),(100,11,'','- ногтевые пластинки;'),(101,11,'','- поражения суставов'),(102,12,'','- тонзиллит'),(103,12,'','- синусит'),(104,12,'','- хронический пиелонефрит'),(105,12,'','- аднексит'),(106,12,'','- холецистит'),(107,13,'','- дерматофитии'),(108,13,'','- аллергические дерматозы'),(109,13,'','- гнойничковые заболевания кожи'),(110,13,'','- болезни соединительной ткани'),(111,13,'','- вирусные дерматозы'),(112,13,'','- эритематозно-папулезно-сквамозные дерматозы'),(113,14,'','1 раз в 10 лет;'),(114,14,'','1 раз в 5 лет;'),(115,14,'','1 раз в 2-3 года;'),(116,14,'','впервые'),(117,14,'','- нет сведений'),(118,14,'','- 1 раз в 4 – 5 лет'),(119,14,'','- 1 раз в 2- 3 года'),(120,14,'','- 1 раз в год'),(121,14,'','-2 и более раз в год'),(122,14,'','-реже 1 раза в год'),(123,15,'','- нет'),(124,15,'','- зимний'),(125,15,'','- осенний'),(126,15,'','- весенний'),(127,15,'','- летний'),(128,15,'','- независимо от сезона'),(129,16,'','- январь'),(130,16,'','- февраль'),(131,16,'','- март'),(132,16,'','- апрель'),(133,16,'','- май'),(134,16,'','- июнь'),(135,16,'','- июль'),(136,16,'','- август'),(137,16,'','- сентябрь'),(138,16,'','- октябрь'),(139,16,'','- ноябрь'),(140,16,'','- декабрь'),(141,17,'','- полная ремиссия (разрешение всех элементов);'),(142,17,'','- неполная ремиссия (частичное разрешение элементов);'),(143,17,'','- спонтанная ремиссия'),(144,18,'','- нет сведений'),(145,18,'','- менее месяца'),(146,18,'','- от 1 до 6 месяцев'),(147,18,'','- от 6 месяцев до 1 года'),(148,18,'','- от 1 года до 2 лет'),(149,18,'','- от 3 до 5 лет'),(150,18,'','- от 5 и более лет'),(151,19,'','- нет сведений'),(152,19,'','- менее месяца'),(153,19,'','- от 1 до 6 месяцев'),(154,19,'','- от 6 месяцев до 1 года'),(155,19,'','- от 1 года до 2 лет'),(156,19,'','- от 3 до 5 лет'),(157,19,'','- от 5 и более лет'),(158,20,'','-реже 1 раза в год;'),(159,20,'','-2 и более раза в год'),(160,21,'','- волосистая часть головы;'),(161,21,'','- локти и колени;'),(162,21,'','- верхние конечности;'),(163,21,'','- нижние конечности;'),(164,21,'','- туловище;'),(165,21,'','- лицо;'),(166,21,'','- ладони и подошвы;'),(167,21,'','- крупные складки;'),(168,21,'','- область гениталий;'),(169,21,'','- перианальная область;'),(170,21,'','- наружный слуховой проход;'),(171,21,'','- ногтевые пластинки;'),(172,21,'','- поражены суставы'),(173,22,'','- нет сведений'),(174,22,'','- в первые месяцы  и недели'),(175,22,'','- в течение полугода'),(176,22,'','- в течение первого года'),(177,22,'','- более 1 года'),(178,23,'','- нет сведений'),(179,23,'','- отсутствуют'),(180,23,'','- умеренный зуд'),(181,23,'','- сильный зуд'),(182,23,'','- жжение'),(183,23,'','- чувство стягивания кожи'),(184,23,'','- боль в суставах'),(185,23,'','- скованность движений'),(186,24,'','- ограниченный'),(187,24,'','- диссеминированный'),(188,24,'','- генерализованный'),(189,25,'','- папулезный'),(190,25,'','- папулезно – бляшечный'),(191,25,'','- бляшечный'),(192,25,'','- крупнобляшечный'),(193,25,'','- диффузный'),(194,25,'','- эритродермия'),(195,26,'','- артралгия;'),(196,26,'','- синовиальная;'),(197,26,'','- синовиально-костная;'),(198,26,'','- по типу болезни Бехтерева'),(199,27,'','- слизистая оболочка полости рта (вкл.: язык, нёбо, десна, слизистая щёк)'),(200,27,'','- слизистая оболчка носовой полости;'),(201,27,'','- область красной каймы губ'),(202,27,'','- гортань, голосовые связки'),(203,28,'','Наружная терапия (топические ГКС, преп. сод-е витD3), гипосенсибилизирующие препараты;'),(204,28,'','фототерапия (ПУВА-терапия, узкопол.срдневолн.), системная терапия (метотрексат, ацитретин(неотигазон), циклоспорин (сандиммуннеорал),'),(205,28,'','био. препараты (инфликсимаб)'),(206,29,'','- веррукозная'),(207,29,'','- интертригинозный'),(208,29,'','- рупиоидная'),(209,29,'','- фолликулярная'),(210,30,'','- зимний'),(211,30,'','- летний'),(212,30,'','- внесезонный'),(213,31,'','-прогрессирования'),(214,31,'','- стабилизации'),(215,31,'','- регрессирования'),(216,32,'','- эндокринопатии (сахарный диабет, ожирение; заболевания щитовидной железы);'),(217,32,'','- заболевания сердечно-сосудистой  системы (ИБС, артериальная гипертензия);'),(218,32,'','- заболевания ЖКТ (хрон. гастрит, язвенная болезнь желудка и 12-й кишки, хрон.гепатит,хрон. панкреатит, хрон. холецистит);'),(219,32,'','- заболевания бронхо-легочной системы (тонзиллит, пневмония, хрон. бронхит, туберкулез легких, бронхиальная астма)'),(220,32,'','- заболевания почек и мочевыделительной системы (хрон. пиелонефрит);'),(221,32,'','- онкозаболевания;'),(222,32,'','- алкогольная, наркотическая зависимость ?'),(223,32,'','- ВИЧ – инфекция'),(224,33,'','- нет'),(225,33,'','- аллергическая реакция на препараты (указать  '),(226,33,'','  препарат)'),(227,33,'','- бронхиальня астма'),(228,33,'','- аллергический ринит'),(229,33,'','- аллергический конъюнктивит'),(230,33,'','- прочие'),(231,34,'','- стеаринового пятна'),(232,34,'','- терминальной пленки'),(233,34,'','- точечного кровотечения'),(234,36,'','- нет сведений'),(235,36,'','- да'),(236,36,'','- нет');
/*!40000 ALTER TABLE `rbThesaurus` ENABLE KEYS */;
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

-- Dump completed on 2014-04-05 21:17:09
