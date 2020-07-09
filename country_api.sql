-- MySQL dump 10.13  Distrib 8.0.19, for osx10.12 (x86_64)
--
-- Host: localhost    Database: lerning_api
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_z_address`
--

DROP TABLE IF EXISTS `_z_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_address` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `line_1` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_2` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `line_3` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `apartment_no` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `building_name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plot_no` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `street_name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_id` int unsigned NOT NULL DEFAULT '1',
  `province_id` int unsigned NOT NULL DEFAULT '1',
  `city_id` int unsigned NOT NULL DEFAULT '1',
  `region_id` int unsigned NOT NULL DEFAULT '1',
  `subregion_id` int unsigned NOT NULL DEFAULT '1',
  `zip_or_postal` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `_z_address_country_id_foreign` (`country_id`),
  CONSTRAINT `_z_address_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `_z_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_address`
--

LOCK TABLES `_z_address` WRITE;
/*!40000 ALTER TABLE `_z_address` DISABLE KEYS */;
INSERT INTO `_z_address` VALUES (1,'','','','','','','',1,1,1,1,1,'','','',1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_address_type`
--

DROP TABLE IF EXISTS `_z_address_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_address_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int unsigned NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_address_type`
--

LOCK TABLES `_z_address_type` WRITE;
/*!40000 ALTER TABLE `_z_address_type` DISABLE KEYS */;
INSERT INTO `_z_address_type` VALUES (1,'Residential','',1,1593015303,1,1593015303,1,0),(2,'Work','',2,1593015303,1,1593015303,1,0),(3,'Billing','',3,1593015303,1,1593015303,1,0),(4,'Delivery','',4,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_address_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_country`
--

DROP TABLE IF EXISTS `_z_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_country` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `iso` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dname` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `iso3` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int unsigned NOT NULL,
  `numcode` smallint NOT NULL,
  `phonecode` mediumint NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `_z_country_iso_unique` (`iso`),
  UNIQUE KEY `_z_country_iso3_unique` (`iso3`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_country`
--

LOCK TABLES `_z_country` WRITE;
/*!40000 ALTER TABLE `_z_country` DISABLE KEYS */;
INSERT INTO `_z_country` VALUES (1,'XX','UNKNOWN','Unknown','XX',1,0,0,1593015303,1,1593015303,1,0),(2,'AF','AFGHANISTAN','Afghanistan','AFG',2,4,93,1593015303,1,1593015303,1,0),(3,'AL','ALBANIA','Albania','ALB',3,8,355,1593015303,1,1593015303,1,0),(4,'DZ','ALGERIA','Algeria','DZA',4,12,213,1593015303,1,1593015303,1,0),(5,'AS','AMERICAN SAMOA','American Samoa','ASM',5,16,1684,1593015303,1,1593015303,1,0),(6,'AD','ANDORRA','Andorra','AND',6,20,376,1593015303,1,1593015303,1,0),(7,'AO','ANGOLA','Angola','AGO',7,24,244,1593015303,1,1593015303,1,0),(8,'AI','ANGUILLA','Anguilla','AIA',8,660,1264,1593015303,1,1593015303,1,0),(9,'AQ','ANTARCTICA','Antarctica','AQ',9,0,0,1593015303,1,1593015303,1,0),(10,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',10,28,1268,1593015303,1,1593015303,1,0),(11,'AR','ARGENTINA','Argentina','ARG',11,32,54,1593015303,1,1593015303,1,0),(12,'AM','ARMENIA','Armenia','ARM',12,51,374,1593015303,1,1593015303,1,0),(13,'AW','ARUBA','Aruba','ABW',13,533,297,1593015303,1,1593015303,1,0),(14,'AU','AUSTRALIA','Australia','AUS',14,36,61,1593015303,1,1593015303,1,0),(15,'AT','AUSTRIA','Austria','AUT',15,40,43,1593015303,1,1593015303,1,0),(16,'AZ','AZERBAIJAN','Azerbaijan','AZE',16,31,994,1593015303,1,1593015303,1,0),(17,'BS','BAHAMAS','Bahamas','BHS',17,44,1242,1593015303,1,1593015303,1,0),(18,'BH','BAHRAIN','Bahrain','BHR',18,48,973,1593015303,1,1593015303,1,0),(19,'BD','BANGLADESH','Bangladesh','BGD',19,50,880,1593015303,1,1593015303,1,0),(20,'BB','BARBADOS','Barbados','BRB',20,52,1246,1593015303,1,1593015303,1,0),(21,'BY','BELARUS','Belarus','BLR',21,112,375,1593015303,1,1593015303,1,0),(22,'BE','BELGIUM','Belgium','BEL',22,56,32,1593015303,1,1593015303,1,0),(23,'BZ','BELIZE','Belize','BLZ',23,84,501,1593015303,1,1593015303,1,0),(24,'BJ','BENIN','Benin','BEN',24,204,229,1593015303,1,1593015303,1,0),(25,'BM','BERMUDA','Bermuda','BMU',25,60,1441,1593015303,1,1593015303,1,0),(26,'BT','BHUTAN','Bhutan','BTN',26,64,975,1593015303,1,1593015303,1,0),(27,'BO','BOLIVIA','Bolivia','BOL',27,68,591,1593015303,1,1593015303,1,0),(28,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',28,70,387,1593015303,1,1593015303,1,0),(29,'BW','BOTSWANA','Botswana','BWA',29,72,267,1593015303,1,1593015303,1,0),(30,'BV','BOUVET ISLAND','Bouvet Island','BV',30,0,0,1593015303,1,1593015303,1,0),(31,'BR','BRAZIL','Brazil','BRA',31,76,55,1593015303,1,1593015303,1,0),(32,'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory','IO',32,0,246,1593015303,1,1593015303,1,0),(33,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',33,96,673,1593015303,1,1593015303,1,0),(34,'BG','BULGARIA','Bulgaria','BGR',34,100,359,1593015303,1,1593015303,1,0),(35,'BF','BURKINA FASO','Burkina Faso','BFA',35,854,226,1593015303,1,1593015303,1,0),(36,'BI','BURUNDI','Burundi','BDI',36,108,257,1593015303,1,1593015303,1,0),(37,'KH','CAMBODIA','Cambodia','KHM',37,116,855,1593015303,1,1593015303,1,0),(38,'CM','CAMEROON','Cameroon','CMR',38,120,237,1593015303,1,1593015303,1,0),(39,'CA','CANADA','Canada','CAN',39,124,1,1593015303,1,1593015303,1,0),(40,'CV','CAPE VERDE','Cape Verde','CPV',40,132,238,1593015303,1,1593015303,1,0),(41,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',41,136,1345,1593015303,1,1593015303,1,0),(42,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',42,140,236,1593015303,1,1593015303,1,0),(43,'TD','CHAD','Chad','TCD',43,148,235,1593015303,1,1593015303,1,0),(44,'CL','CHILE','Chile','CHL',44,152,56,1593015303,1,1593015303,1,0),(45,'CN','CHINA','China','CHN',45,156,86,1593015303,1,1593015303,1,0),(46,'CX','CHRISTMAS ISLAND','Christmas Island','CX',46,0,61,1593015303,1,1593015303,1,0),(47,'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands','CC',47,0,672,1593015303,1,1593015303,1,0),(48,'CO','COLOMBIA','Colombia','COL',48,170,57,1593015303,1,1593015303,1,0),(49,'KM','COMOROS','Comoros','COM',49,174,269,1593015303,1,1593015303,1,0),(50,'CG','CONGO','Congo','COG',50,178,242,1593015303,1,1593015303,1,0),(51,'CD','CONGO','Congo','CD',51,0,0,1593015303,1,1593015303,1,0),(52,'CK','COOK ISLANDS','Cook Islands','COK',52,184,682,1593015303,1,1593015303,1,0),(53,'CR','COSTA RICA','Costa Rica','CRI',53,188,506,1593015303,1,1593015303,1,0),(54,'CI','COTE DIVOIRE','Cote DIvoire','CIV',54,384,225,1593015303,1,1593015303,1,0),(55,'HR','CROATIA','Croatia','HRV',55,191,385,1593015303,1,1593015303,1,0),(56,'CU','CUBA','Cuba','CUB',56,192,53,1593015303,1,1593015303,1,0),(57,'CY','CYPRUS','Cyprus','CYP',57,196,357,1593015303,1,1593015303,1,0),(58,'CZ','CZECH REPUBLIC','Czech Republic','CZE',58,203,420,1593015303,1,1593015303,1,0),(59,'DK','DENMARK','Denmark','DNK',59,208,45,1593015303,1,1593015303,1,0),(60,'DJ','DJIBOUTI','Djibouti','DJI',60,262,253,1593015303,1,1593015303,1,0),(61,'DM','DOMINICA','Dominica','DMA',61,212,1767,1593015303,1,1593015303,1,0),(62,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',62,214,1809,1593015303,1,1593015303,1,0),(63,'EC','ECUADOR','Ecuador','ECU',63,218,593,1593015303,1,1593015303,1,0),(64,'EG','EGYPT','Egypt','EGY',64,818,20,1593015303,1,1593015303,1,0),(65,'SV','EL SALVADOR','El Salvador','SLV',65,222,503,1593015303,1,1593015303,1,0),(66,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',66,226,240,1593015303,1,1593015303,1,0),(67,'ER','ERITREA','Eritrea','ERI',67,232,291,1593015303,1,1593015303,1,0),(68,'EE','ESTONIA','Estonia','EST',68,233,372,1593015303,1,1593015303,1,0),(69,'ET','ETHIOPIA','Ethiopia','ETH',69,231,251,1593015303,1,1593015303,1,0),(70,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',70,238,500,1593015303,1,1593015303,1,0),(71,'FO','FAROE ISLANDS','Faroe Islands','FRO',71,234,298,1593015303,1,1593015303,1,0),(72,'FJ','FIJI','Fiji','FJI',72,242,679,1593015303,1,1593015303,1,0),(73,'FI','FINLAND','Finland','FIN',73,246,358,1593015303,1,1593015303,1,0),(74,'FR','FRANCE','France','FRA',74,250,33,1593015303,1,1593015303,1,0),(75,'GF','FRENCH GUIANA','French Guiana','GUF',75,254,594,1593015303,1,1593015303,1,0),(76,'PF','FRENCH POLYNESIA','French Polynesia','PYF',76,258,689,1593015303,1,1593015303,1,0),(77,'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories','TF',77,0,0,1593015303,1,1593015303,1,0),(78,'GA','GABON','Gabon','GAB',78,266,241,1593015303,1,1593015303,1,0),(79,'GM','GAMBIA','Gambia','GMB',79,270,220,1593015303,1,1593015303,1,0),(80,'GE','GEORGIA','Georgia','GEO',80,268,995,1593015303,1,1593015303,1,0),(81,'DE','GERMANY','Germany','DEU',81,276,49,1593015303,1,1593015303,1,0),(82,'GH','GHANA','Ghana','GHA',82,288,233,1593015303,1,1593015303,1,0),(83,'GI','GIBRALTAR','Gibraltar','GIB',83,292,350,1593015303,1,1593015303,1,0),(84,'GR','GREECE','Greece','GRC',84,300,30,1593015303,1,1593015303,1,0),(85,'GL','GREENLAND','Greenland','GRL',85,304,299,1593015303,1,1593015303,1,0),(86,'GD','GRENADA','Grenada','GRD',86,308,1473,1593015303,1,1593015303,1,0),(87,'GP','GUADELOUPE','Guadeloupe','GLP',87,312,590,1593015303,1,1593015303,1,0),(88,'GU','GUAM','Guam','GUM',88,316,1671,1593015303,1,1593015303,1,0),(89,'GT','GUATEMALA','Guatemala','GTM',89,320,502,1593015303,1,1593015303,1,0),(90,'GN','GUINEA','Guinea','GIN',90,324,224,1593015303,1,1593015303,1,0),(91,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',91,624,245,1593015303,1,1593015303,1,0),(92,'GY','GUYANA','Guyana','GUY',92,328,592,1593015303,1,1593015303,1,0),(93,'HT','HAITI','Haiti','HTI',93,332,509,1593015303,1,1593015303,1,0),(94,'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands','HM',94,0,0,1593015303,1,1593015303,1,0),(95,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',95,336,39,1593015303,1,1593015303,1,0),(96,'HN','HONDURAS','Honduras','HND',96,340,504,1593015303,1,1593015303,1,0),(97,'HK','HONG KONG','Hong Kong','HKG',97,344,852,1593015303,1,1593015303,1,0),(98,'HU','HUNGARY','Hungary','HUN',98,348,36,1593015303,1,1593015303,1,0),(99,'IS','ICELAND','Iceland','ISL',99,352,354,1593015303,1,1593015303,1,0),(100,'IN','INDIA','India','IND',100,356,91,1593015303,1,1593015303,1,0),(101,'ID','INDONESIA','Indonesia','IDN',101,360,62,1593015303,1,1593015303,1,0),(102,'IR','IRAN','Iran','IR',102,0,0,1593015303,1,1593015303,1,0),(103,'IQ','IRAQ','Iraq','IRQ',103,368,964,1593015303,1,1593015303,1,0),(104,'IE','IRELAND','Ireland','IRL',104,372,353,1593015303,1,1593015303,1,0),(105,'IL','ISRAEL','Israel','ISR',105,376,972,1593015303,1,1593015303,1,0),(106,'IT','ITALY','Italy','ITA',106,380,39,1593015303,1,1593015303,1,0),(107,'JM','JAMAICA','Jamaica','JAM',107,388,1876,1593015303,1,1593015303,1,0),(108,'JP','JAPAN','Japan','JPN',108,392,81,1593015303,1,1593015303,1,0),(109,'JO','JORDAN','Jordan','JOR',109,400,962,1593015303,1,1593015303,1,0),(110,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',110,398,7,1593015303,1,1593015303,1,0),(111,'KE','KENYA','Kenya','KEN',111,404,254,1593015303,1,1593015303,1,0),(112,'KI','KIRIBATI','Kiribati','KIR',112,296,686,1593015303,1,1593015303,1,0),(113,'KP','KOREA','Korea','KP',113,0,0,1593015303,1,1593015303,1,0),(114,'KR','KOREA','Korea','KR',114,0,0,1593015303,1,1593015303,1,0),(115,'KW','KUWAIT','Kuwait','KWT',115,414,965,1593015303,1,1593015303,1,0),(116,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',116,417,996,1593015303,1,1593015303,1,0),(117,'LA','LAO PEOPLES DEMOCRATIC REPUBLIC','Lao Peoples Democratic Republic','LAO',117,418,856,1593015303,1,1593015303,1,0),(118,'LV','LATVIA','Latvia','LVA',118,428,371,1593015303,1,1593015303,1,0),(119,'LB','LEBANON','Lebanon','LBN',119,422,961,1593015303,1,1593015303,1,0),(120,'LS','LESOTHO','Lesotho','LSO',120,426,266,1593015303,1,1593015303,1,0),(121,'LR','LIBERIA','Liberia','LBR',121,430,231,1593015303,1,1593015303,1,0),(122,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',122,434,218,1593015303,1,1593015303,1,0),(123,'LI','LIECHTENSTEIN','Liechtenstein','LIE',123,438,423,1593015303,1,1593015303,1,0),(124,'LT','LITHUANIA','Lithuania','LTU',124,440,370,1593015303,1,1593015303,1,0),(125,'LU','LUXEMBOURG','Luxembourg','LUX',125,442,352,1593015303,1,1593015303,1,0),(126,'MO','MACAO','Macao','MAC',126,446,853,1593015303,1,1593015303,1,0),(127,'MK','MACEDONIA','Macedonia','MK',127,0,0,1593015303,1,1593015303,1,0),(128,'MG','MADAGASCAR','Madagascar','MDG',128,450,261,1593015303,1,1593015303,1,0),(129,'MW','MALAWI','Malawi','MWI',129,454,265,1593015303,1,1593015303,1,0),(130,'MY','MALAYSIA','Malaysia','MYS',130,458,60,1593015303,1,1593015303,1,0),(131,'MV','MALDIVES','Maldives','MDV',131,462,960,1593015303,1,1593015303,1,0),(132,'ML','MALI','Mali','MLI',132,466,223,1593015303,1,1593015303,1,0),(133,'MT','MALTA','Malta','MLT',133,470,356,1593015303,1,1593015303,1,0),(134,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',134,584,692,1593015303,1,1593015303,1,0),(135,'MQ','MARTINIQUE','Martinique','MTQ',135,474,596,1593015303,1,1593015303,1,0),(136,'MR','MAURITANIA','Mauritania','MRT',136,478,222,1593015303,1,1593015303,1,0),(137,'MU','MAURITIUS','Mauritius','MUS',137,480,230,1593015303,1,1593015303,1,0),(138,'YT','MAYOTTE','Mayotte','YT',138,0,269,1593015303,1,1593015303,1,0),(139,'MX','MEXICO','Mexico','MEX',139,484,52,1593015303,1,1593015303,1,0),(140,'FM','MICRONESIA','Micronesia','FM',140,0,0,1593015303,1,1593015303,1,0),(141,'MD','MOLDOVA','Moldova','MD',141,0,0,1593015303,1,1593015303,1,0),(142,'MC','MONACO','Monaco','MCO',142,492,377,1593015303,1,1593015303,1,0),(143,'MN','MONGOLIA','Mongolia','MNG',143,496,976,1593015303,1,1593015303,1,0),(144,'MS','MONTSERRAT','Montserrat','MSR',144,500,1664,1593015303,1,1593015303,1,0),(145,'MA','MOROCCO','Morocco','MAR',145,504,212,1593015303,1,1593015303,1,0),(146,'MZ','MOZAMBIQUE','Mozambique','MOZ',146,508,258,1593015303,1,1593015303,1,0),(147,'MM','MYANMAR','Myanmar','MMR',147,104,95,1593015303,1,1593015303,1,0),(148,'NA','NAMIBIA','Namibia','NAM',148,516,264,1593015303,1,1593015303,1,0),(149,'NR','NAURU','Nauru','NRU',149,520,674,1593015303,1,1593015303,1,0),(150,'NP','NEPAL','Nepal','NPL',150,524,977,1593015303,1,1593015303,1,0),(151,'NL','NETHERLANDS','Netherlands','NLD',151,528,31,1593015303,1,1593015303,1,0),(152,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',152,530,599,1593015303,1,1593015303,1,0),(153,'NC','NEW CALEDONIA','New Caledonia','NCL',153,540,687,1593015303,1,1593015303,1,0),(154,'NZ','NEW ZEALAND','New Zealand','NZL',154,554,64,1593015303,1,1593015303,1,0),(155,'NI','NICARAGUA','Nicaragua','NIC',155,558,505,1593015303,1,1593015303,1,0),(156,'NE','NIGER','Niger','NER',156,562,227,1593015303,1,1593015303,1,0),(157,'NG','NIGERIA','Nigeria','NGA',157,566,234,1593015303,1,1593015303,1,0),(158,'NU','NIUE','Niue','NIU',158,570,683,1593015303,1,1593015303,1,0),(159,'NF','NORFOLK ISLAND','Norfolk Island','NFK',159,574,672,1593015303,1,1593015303,1,0),(160,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',160,580,1670,1593015303,1,1593015303,1,0),(161,'NO','NORWAY','Norway','NOR',161,578,47,1593015303,1,1593015303,1,0),(162,'OM','OMAN','Oman','OMN',162,512,968,1593015303,1,1593015303,1,0),(163,'PK','PAKISTAN','Pakistan','PAK',163,586,92,1593015303,1,1593015303,1,0),(164,'PW','PALAU','Palau','PLW',164,585,680,1593015303,1,1593015303,1,0),(165,'PS','PALESTINIAN TERRITORY','Palestinian Territory','PS',165,0,0,1593015303,1,1593015303,1,0),(166,'PA','PANAMA','Panama','PAN',166,591,507,1593015303,1,1593015303,1,0),(167,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',167,598,675,1593015303,1,1593015303,1,0),(168,'PY','PARAGUAY','Paraguay','PRY',168,600,595,1593015303,1,1593015303,1,0),(169,'PE','PERU','Peru','PER',169,604,51,1593015303,1,1593015303,1,0),(170,'PH','PHILIPPINES','Philippines','PHL',170,608,63,1593015303,1,1593015303,1,0),(171,'PN','PITCAIRN','Pitcairn','PCN',171,612,0,1593015303,1,1593015303,1,0),(172,'PL','POLAND','Poland','POL',172,616,48,1593015303,1,1593015303,1,0),(173,'PT','PORTUGAL','Portugal','PRT',173,620,351,1593015303,1,1593015303,1,0),(174,'PR','PUERTO RICO','Puerto Rico','PRI',174,630,1787,1593015303,1,1593015303,1,0),(175,'QA','QATAR','Qatar','QAT',175,634,974,1593015303,1,1593015303,1,0),(176,'RE','REUNION','Reunion','REU',176,638,262,1593015303,1,1593015303,1,0),(177,'RO','ROMANIA','Romania','ROM',177,642,40,1593015303,1,1593015303,1,0),(178,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',178,643,70,1593015303,1,1593015303,1,0),(179,'RW','RWANDA','Rwanda','RWA',179,646,250,1593015303,1,1593015303,1,0),(180,'SH','SAINT HELENA','Saint Helena','SHN',180,654,290,1593015303,1,1593015303,1,0),(181,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',181,659,1869,1593015303,1,1593015303,1,0),(182,'LC','SAINT LUCIA','Saint Lucia','LCA',182,662,1758,1593015303,1,1593015303,1,0),(183,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',183,666,508,1593015303,1,1593015303,1,0),(184,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',184,670,1784,1593015303,1,1593015303,1,0),(185,'WS','SAMOA','Samoa','WSM',185,882,684,1593015303,1,1593015303,1,0),(186,'SM','SAN MARINO','San Marino','SMR',186,674,378,1593015303,1,1593015303,1,0),(187,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',187,678,239,1593015303,1,1593015303,1,0),(188,'SA','SAUDI ARABIA','Saudi Arabia','SAU',188,682,966,1593015303,1,1593015303,1,0),(189,'SN','SENEGAL','Senegal','SEN',189,686,221,1593015303,1,1593015303,1,0),(190,'CS','SERBIA AND MONTENEGRO','Serbia and Montenegro','CS',190,0,381,1593015303,1,1593015303,1,0),(191,'SC','SEYCHELLES','Seychelles','SYC',191,690,248,1593015303,1,1593015303,1,0),(192,'SL','SIERRA LEONE','Sierra Leone','SLE',192,694,232,1593015303,1,1593015303,1,0),(193,'SG','SINGAPORE','Singapore','SGP',193,702,65,1593015303,1,1593015303,1,0),(194,'SK','SLOVAKIA','Slovakia','SVK',194,703,421,1593015303,1,1593015303,1,0),(195,'SI','SLOVENIA','Slovenia','SVN',195,705,386,1593015303,1,1593015303,1,0),(196,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',196,90,677,1593015303,1,1593015303,1,0),(197,'SO','SOMALIA','Somalia','SOM',197,706,252,1593015303,1,1593015303,1,0),(198,'ZA','SOUTH AFRICA','South Africa','ZAF',198,710,27,1593015303,1,1593015303,1,0),(199,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands','GS',199,0,0,1593015303,1,1593015303,1,0),(200,'ES','SPAIN','Spain','ESP',200,724,34,1593015303,1,1593015303,1,0),(201,'LK','SRI LANKA','Sri Lanka','LKA',201,144,94,1593015303,1,1593015303,1,0),(202,'SD','SUDAN','Sudan','SDN',202,736,249,1593015303,1,1593015303,1,0),(203,'SR','SURINAME','Suriname','SUR',203,740,597,1593015303,1,1593015303,1,0),(204,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',204,744,47,1593015303,1,1593015303,1,0),(205,'SZ','SWAZILAND','Swaziland','SWZ',205,748,268,1593015303,1,1593015303,1,0),(206,'SE','SWEDEN','Sweden','SWE',206,752,46,1593015303,1,1593015303,1,0),(207,'CH','SWITZERLAND','Switzerland','CHE',207,756,41,1593015303,1,1593015303,1,0),(208,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',208,760,963,1593015303,1,1593015303,1,0),(209,'TW','TAIWAN','Taiwan','TW',209,0,0,1593015303,1,1593015303,1,0),(210,'TJ','TAJIKISTAN','Tajikistan','TJK',210,762,992,1593015303,1,1593015303,1,0),(211,'TZ','TANZANIA','Tanzania','TZ',211,0,0,1593015303,1,1593015303,1,0),(212,'TH','THAILAND','Thailand','THA',212,764,66,1593015303,1,1593015303,1,0),(213,'TL','TIMOR-LESTE','Timor-Leste','TL',213,0,670,1593015303,1,1593015303,1,0),(214,'TG','TOGO','Togo','TGO',214,768,228,1593015303,1,1593015303,1,0),(215,'TK','TOKELAU','Tokelau','TKL',215,772,690,1593015303,1,1593015303,1,0),(216,'TO','TONGA','Tonga','TON',216,776,676,1593015303,1,1593015303,1,0),(217,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',217,780,1868,1593015303,1,1593015303,1,0),(218,'TN','TUNISIA','Tunisia','TUN',218,788,216,1593015303,1,1593015303,1,0),(219,'TR','TURKEY','Turkey','TUR',219,792,90,1593015303,1,1593015303,1,0),(220,'TM','TURKMENISTAN','Turkmenistan','TKM',220,795,7370,1593015303,1,1593015303,1,0),(221,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',221,796,1649,1593015303,1,1593015303,1,0),(222,'TV','TUVALU','Tuvalu','TUV',222,798,688,1593015303,1,1593015303,1,0),(223,'UG','UGANDA','Uganda','UGA',223,800,256,1593015303,1,1593015303,1,0),(224,'UA','UKRAINE','Ukraine','UKR',224,804,380,1593015303,1,1593015303,1,0),(225,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',225,784,971,1593015303,1,1593015303,1,0),(226,'GB','UNITED KINGDOM','United Kingdom','GBR',226,826,44,1593015303,1,1593015303,1,0),(227,'US','UNITED STATES','United States','USA',227,840,1,1593015303,1,1593015303,1,0),(228,'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands','UM',228,0,1,1593015303,1,1593015303,1,0),(229,'UY','URUGUAY','Uruguay','URY',229,858,598,1593015303,1,1593015303,1,0),(230,'UZ','UZBEKISTAN','Uzbekistan','UZB',230,860,998,1593015303,1,1593015303,1,0),(231,'VU','VANUATU','Vanuatu','VUT',231,548,678,1593015303,1,1593015303,1,0),(232,'VE','VENEZUELA','Venezuela','VEN',232,862,58,1593015303,1,1593015303,1,0),(233,'VN','VIET NAM','Viet Nam','VNM',233,704,84,1593015303,1,1593015303,1,0),(234,'VG','VIRGIN ISLANDS','Virgin Islands','VG',234,0,0,1593015303,1,1593015303,1,0),(235,'VI','VIRGIN ISLANDS','Virgin Islands','VI',235,0,0,1593015303,1,1593015303,1,0),(236,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',236,876,681,1593015303,1,1593015303,1,0),(237,'EH','WESTERN SAHARA','Western Sahara','ESH',237,732,212,1593015303,1,1593015303,1,0),(238,'YE','YEMEN','Yemen','YEM',238,887,967,1593015303,1,1593015303,1,0),(239,'ZM','ZAMBIA','Zambia','ZMB',239,894,260,1593015303,1,1593015303,1,0),(240,'ZW','asdcadsc','Zimbabwe','ZWE',240,716,263,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_country_city`
--

DROP TABLE IF EXISTS `_z_country_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_country_city` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int unsigned NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xx',
  `position` int unsigned NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `_z_country_city_province_id_foreign` (`province_id`),
  CONSTRAINT `_z_country_city_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `_z_country_province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_country_city`
--

LOCK TABLES `_z_country_city` WRITE;
/*!40000 ALTER TABLE `_z_country_city` DISABLE KEYS */;
INSERT INTO `_z_country_city` VALUES (1,1,'Unknown','xx',1,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_country_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_country_province`
--

DROP TABLE IF EXISTS `_z_country_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_country_province` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int unsigned NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xx',
  `position` int unsigned NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `_z_country_province_country_id_foreign` (`country_id`),
  CONSTRAINT `_z_country_province_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `_z_country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_country_province`
--

LOCK TABLES `_z_country_province` WRITE;
/*!40000 ALTER TABLE `_z_country_province` DISABLE KEYS */;
INSERT INTO `_z_country_province` VALUES (1,1,'Unknown','xx',1,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_country_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_country_region`
--

DROP TABLE IF EXISTS `_z_country_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_country_region` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int unsigned NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xx',
  `position` int unsigned NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `_z_country_region_city_id_foreign` (`city_id`),
  CONSTRAINT `_z_country_region_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `_z_country_city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_country_region`
--

LOCK TABLES `_z_country_region` WRITE;
/*!40000 ALTER TABLE `_z_country_region` DISABLE KEYS */;
INSERT INTO `_z_country_region` VALUES (1,1,'Unknown','xx',1,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_country_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_country_subregion`
--

DROP TABLE IF EXISTS `_z_country_subregion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_country_subregion` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `region_id` int unsigned NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xx',
  `position` int unsigned NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `_z_country_subregion_region_id_foreign` (`region_id`),
  CONSTRAINT `_z_country_subregion_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `_z_country_region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_country_subregion`
--

LOCK TABLES `_z_country_subregion` WRITE;
/*!40000 ALTER TABLE `_z_country_subregion` DISABLE KEYS */;
INSERT INTO `_z_country_subregion` VALUES (1,1,'Unknown','xx',1,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_country_subregion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_family_relationship`
--

DROP TABLE IF EXISTS `_z_family_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_family_relationship` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int unsigned NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_family_relationship`
--

LOCK TABLES `_z_family_relationship` WRITE;
/*!40000 ALTER TABLE `_z_family_relationship` DISABLE KEYS */;
INSERT INTO `_z_family_relationship` VALUES (1,'Undefined','',1,1593015303,1,1593015303,1,0),(2,'Father','',2,1593015303,1,1593015303,1,0),(3,'Mother','',3,1593015303,1,1593015303,1,0),(4,'Guardian','',4,1593015303,1,1593015303,1,0),(5,'Grandfather','',5,1593015303,1,1593015303,1,0),(6,'Grandmother','',6,1593015303,1,1593015303,1,0),(7,'Uncle','',7,1593015303,1,1593015303,1,0),(8,'Aunt','',8,1593015303,1,1593015303,1,0),(9,'Brother','',9,1593015303,1,1593015303,1,0),(10,'Sister','',10,1593015303,1,1593015303,1,0),(11,'Brother-in-law','',11,1593015303,1,1593015303,1,0),(12,'Sister-in-law','',12,1593015303,1,1593015303,1,0),(13,'Niece','',13,1593015303,1,1593015303,1,0),(14,'Nephew','',14,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_family_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_marital_status`
--

DROP TABLE IF EXISTS `_z_marital_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_marital_status` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int unsigned NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_marital_status`
--

LOCK TABLES `_z_marital_status` WRITE;
/*!40000 ALTER TABLE `_z_marital_status` DISABLE KEYS */;
INSERT INTO `_z_marital_status` VALUES (1,'Undefined','',1,1593015303,1,1593015303,1,0),(2,'Married','This category includes persons whose opposite- or same-sex spouse is living, unless the couple is separated or a divorce has been obtained. Also included are persons in civil unions.',2,1593015303,1,1593015303,1,0),(3,'Widowed','This category includes persons who have lost their legally-married spouse through death and have not remarried. Those who live with a common-law partner are included in this category.',3,1593015303,1,1593015303,1,0),(4,'Separated','This category includes persons currently legally married but who are no longer living with their spouse (for any reason other than illness, work or school) and have not obtained a divorce. Those who live with a common-law partner are included in this category.',4,1593015303,1,1593015303,1,0),(5,'Divorced','This category includes persons who have obtained a legal divorce and have not remarried. Those who live with a common-law partner are included in this category.',5,1593015303,1,1593015303,1,0),(6,'Single','This category includes persons who have never married (including all persons less than 15 years of age). It also includes persons whose marriage has been legally annulled who were single before the annulled marriage and who have not remarried. Those who live with a common-law partner are included in this category.',6,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_marital_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_qualification`
--

DROP TABLE IF EXISTS `_z_qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_qualification` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `level_id` int unsigned NOT NULL DEFAULT '1',
  `title_id` int unsigned NOT NULL DEFAULT '1',
  `institute_id` int unsigned NOT NULL DEFAULT '1',
  `completed` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `_z_qualification_level_id_foreign` (`level_id`),
  KEY `_z_qualification_title_id_foreign` (`title_id`),
  KEY `_z_qualification_institute_id_foreign` (`institute_id`),
  CONSTRAINT `_z_qualification_institute_id_foreign` FOREIGN KEY (`institute_id`) REFERENCES `_z_single_data` (`id`),
  CONSTRAINT `_z_qualification_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `_z_single_data` (`id`),
  CONSTRAINT `_z_qualification_title_id_foreign` FOREIGN KEY (`title_id`) REFERENCES `_z_single_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_qualification`
--

LOCK TABLES `_z_qualification` WRITE;
/*!40000 ALTER TABLE `_z_qualification` DISABLE KEYS */;
INSERT INTO `_z_qualification` VALUES (1,1,1,1,NULL,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_single_category`
--

DROP TABLE IF EXISTS `_z_single_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_single_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int unsigned NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_single_category`
--

LOCK TABLES `_z_single_category` WRITE;
/*!40000 ALTER TABLE `_z_single_category` DISABLE KEYS */;
INSERT INTO `_z_single_category` VALUES (1,'Religion',1,1593015303,1,1593015303,1,0),(2,'Profession',2,1593015303,1,1593015303,1,0),(3,'Speciality',3,1593015303,1,1593015303,1,0),(4,'Qualification Level',4,1593015303,1,1593015303,1,0),(5,'Qualification Title',5,1593015303,1,1593015303,1,0),(6,'Institute',6,1593015303,1,1593015303,1,0),(7,'Organization',7,1593015303,1,1593015303,1,0),(8,'Department',8,1593015303,1,1593015303,1,0),(9,'Designation',9,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_single_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_single_data`
--

DROP TABLE IF EXISTS `_z_single_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_single_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `single_category_id` int unsigned NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int unsigned NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `_z_single_data_single_category_id_foreign` (`single_category_id`),
  CONSTRAINT `_z_single_data_single_category_id_foreign` FOREIGN KEY (`single_category_id`) REFERENCES `_z_single_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_single_data`
--

LOCK TABLES `_z_single_data` WRITE;
/*!40000 ALTER TABLE `_z_single_data` DISABLE KEYS */;
INSERT INTO `_z_single_data` VALUES (1,1,'Undefined',1,1593015303,1,1593015303,1,0),(2,1,'Islam',1,1593015303,1,1593015303,1,0),(3,1,'Christian',2,1593015303,1,1593015303,1,0),(4,1,'Hindu',3,1593015303,1,1593015303,1,0),(5,1,'Jew',4,1593015303,1,1593015303,1,0),(6,2,'Abstractor',1,1593015303,1,1593015303,1,0),(7,2,'Accounting Technician',2,1593015303,1,1593015303,1,0),(8,2,'Actor/Actress',3,1593015303,1,1593015303,1,0),(9,2,'Actuary',4,1593015303,1,1593015303,1,0),(10,2,'Acupuncturist',5,1593015303,1,1593015303,1,0),(11,2,'Advertising Account Manager',6,1593015303,1,1593015303,1,0),(12,2,'Advertising Copywriter',7,1593015303,1,1593015303,1,0),(13,2,'Advice Worker',8,1593015303,1,1593015303,1,0),(14,2,'Aeronautical Engineer',9,1593015303,1,1593015303,1,0),(15,2,'Agricultural Consultant/Adviser',10,1593015303,1,1593015303,1,0),(16,2,'Aid Worker/Humanitarian Worker',11,1593015303,1,1593015303,1,0),(17,2,'Air Cabin Crew',12,1593015303,1,1593015303,1,0),(18,2,'Air Traffic Controller',13,1593015303,1,1593015303,1,0),(19,2,'Airline Pilot',14,1593015303,1,1593015303,1,0),(20,2,'Analytical Chemist',15,1593015303,1,1593015303,1,0),(21,2,'Animal Breeder',16,1593015303,1,1593015303,1,0),(22,2,'Animator',17,1593015303,1,1593015303,1,0),(23,2,'Antiques Dealer',18,1593015303,1,1593015303,1,0),(24,2,'Arboriculturalist',19,1593015303,1,1593015303,1,0),(25,2,'Archaeologist',20,1593015303,1,1593015303,1,0),(26,2,'Architect',21,1593015303,1,1593015303,1,0),(27,2,'Archivist',22,1593015303,1,1593015303,1,0),(28,2,'Aromatherapist',23,1593015303,1,1593015303,1,0),(29,2,'Art Gallery Manager',24,1593015303,1,1593015303,1,0),(30,2,'Arts Administrator',25,1593015303,1,1593015303,1,0),(31,2,'Arts Agent/Promoter',26,1593015303,1,1593015303,1,0),(32,2,'Arts Therapist',27,1593015303,1,1593015303,1,0),(33,2,'Audiologist',28,1593015303,1,1593015303,1,0),(34,2,'Auditor',29,1593015303,1,1593015303,1,0),(35,2,'Automotive Engineer',30,1593015303,1,1593015303,1,0),(36,2,'Banker, Commercial/Corporate Lending',31,1593015303,1,1593015303,1,0),(37,2,'Banker, Investment, Corporate Finance',32,1593015303,1,1593015303,1,0),(38,2,'Barrister',33,1593015303,1,1593015303,1,0),(39,2,'Betting Shop Manager',34,1593015303,1,1593015303,1,0),(40,2,'Bilingual Secretary',35,1593015303,1,1593015303,1,0),(41,2,'Biochemical Engineer',36,1593015303,1,1593015303,1,0),(42,2,'Biochemist',37,1593015303,1,1593015303,1,0),(43,2,'Biomedical Engineer',38,1593015303,1,1593015303,1,0),(44,2,'Biomedical Scientist',39,1593015303,1,1593015303,1,0),(45,2,'Biotechnologist',40,1593015303,1,1593015303,1,0),(46,2,'Bookseller',41,1593015303,1,1593015303,1,0),(47,2,'Broadcaster',42,1593015303,1,1593015303,1,0),(48,2,'Building Services Engineer',43,1593015303,1,1593015303,1,0),(49,2,'Building Surveyor',44,1593015303,1,1593015303,1,0),(50,2,'Call Centre Manager',45,1593015303,1,1593015303,1,0),(51,2,'Careers Adviser',46,1593015303,1,1593015303,1,0),(52,2,'Cartographer',47,1593015303,1,1593015303,1,0),(53,2,'Catering Manager',48,1593015303,1,1593015303,1,0),(54,2,'Charity Officer',49,1593015303,1,1593015303,1,0),(55,2,'Chartered Accountant',50,1593015303,1,1593015303,1,0),(56,2,'Chartered Loss Adjuster',51,1593015303,1,1593015303,1,0),(57,2,'Chemical Development Engineer',52,1593015303,1,1593015303,1,0),(58,2,'Chiropractor',53,1593015303,1,1593015303,1,0),(59,2,'Choreographer',54,1593015303,1,1593015303,1,0),(60,2,'Cinema Manager',55,1593015303,1,1593015303,1,0),(61,2,'Civil Engineer',56,1593015303,1,1593015303,1,0),(62,2,'Civil Service Administrator/Manager',57,1593015303,1,1593015303,1,0),(63,2,'Clerical Assistant',58,1593015303,1,1593015303,1,0),(64,2,'Clinical Cytogeneticist',59,1593015303,1,1593015303,1,0),(65,2,'Clinical Researcher',60,1593015303,1,1593015303,1,0),(66,2,'Clothing/Textile Technologist',61,1593015303,1,1593015303,1,0),(67,2,'Commissioning Engineer',62,1593015303,1,1593015303,1,0),(68,2,'Commodity Broker',63,1593015303,1,1593015303,1,0),(69,2,'Communications Engineer',64,1593015303,1,1593015303,1,0),(70,2,'Community Arts Worker',65,1593015303,1,1593015303,1,0),(71,2,'Community Education Officer',66,1593015303,1,1593015303,1,0),(72,2,'Community Welfare Officer',67,1593015303,1,1593015303,1,0),(73,2,'Community Worker/Community Development Worker',68,1593015303,1,1593015303,1,0),(74,2,'Community/Retail Pharmacist',69,1593015303,1,1593015303,1,0),(75,2,'Company Secretary',70,1593015303,1,1593015303,1,0),(76,2,'Composer',71,1593015303,1,1593015303,1,0),(77,2,'Conference/Event Organiser',72,1593015303,1,1593015303,1,0),(78,2,'Conservator/Restorer',73,1593015303,1,1593015303,1,0),(79,2,'Consulting Engineer',74,1593015303,1,1593015303,1,0),(80,2,'Counsellor',75,1593015303,1,1593015303,1,0),(81,2,'Credit Analyst',76,1593015303,1,1593015303,1,0),(82,2,'Curator',77,1593015303,1,1593015303,1,0),(83,2,'Customs Officer',78,1593015303,1,1593015303,1,0),(84,2,'Database Administrator',79,1593015303,1,1593015303,1,0),(85,2,'Defence Forces',80,1593015303,1,1593015303,1,0),(86,2,'Dentist',81,1593015303,1,1593015303,1,0),(87,2,'Designer, Industrial Products',82,1593015303,1,1593015303,1,0),(88,2,'Designer/Maker',83,1593015303,1,1593015303,1,0),(89,2,'Dietician/Nutritionist',84,1593015303,1,1593015303,1,0),(90,2,'Diplomat',85,1593015303,1,1593015303,1,0),(91,2,'Doctor/Gp',86,1593015303,1,1593015303,1,0),(92,2,'Economist',87,1593015303,1,1593015303,1,0),(93,2,'Editor',88,1593015303,1,1593015303,1,0),(94,2,'Electrical Engineer',89,1593015303,1,1593015303,1,0),(95,2,'Electronic Engineer',90,1593015303,1,1593015303,1,0),(96,2,'Emergency Medical Technician (Paramedic)',91,1593015303,1,1593015303,1,0),(97,2,'Engineer, Manufacturing And Production',92,1593015303,1,1593015303,1,0),(98,2,'Engineer, Quality',93,1593015303,1,1593015303,1,0),(99,2,'Environmental Health Officer',94,1593015303,1,1593015303,1,0),(100,2,'Ergonomist',95,1593015303,1,1593015303,1,0),(101,2,'Estate Agent',96,1593015303,1,1593015303,1,0),(102,2,'Exhibition Organiser/Event Manager',97,1593015303,1,1593015303,1,0),(103,2,'Farm Manager',98,1593015303,1,1593015303,1,0),(104,2,'Fashion Designer',99,1593015303,1,1593015303,1,0),(105,2,'Field Trials Officer',100,1593015303,1,1593015303,1,0),(106,2,'Film/Tv Producer',101,1593015303,1,1593015303,1,0),(107,2,'Financial Accountant',102,1593015303,1,1593015303,1,0),(108,2,'Financial Regulator',103,1593015303,1,1593015303,1,0),(109,2,'Fine Artist',104,1593015303,1,1593015303,1,0),(110,2,'Firefighter',105,1593015303,1,1593015303,1,0),(111,2,'Fitness/Leisure Centre Manager',106,1593015303,1,1593015303,1,0),(112,2,'Forensic Scientist',107,1593015303,1,1593015303,1,0),(113,2,'Forestry Management',108,1593015303,1,1593015303,1,0),(114,2,'Fundraising Manager (Charity)',109,1593015303,1,1593015303,1,0),(115,2,'Furniture Designer',110,1593015303,1,1593015303,1,0),(116,2,'Geologist, Engineering',111,1593015303,1,1593015303,1,0),(117,2,'Geophysicist, Exploration',112,1593015303,1,1593015303,1,0),(118,2,'Graphic Designer',113,1593015303,1,1593015303,1,0),(119,2,'Guidance Counsellor, Second Level',114,1593015303,1,1593015303,1,0),(120,2,'Health And Safety Inspector',115,1593015303,1,1593015303,1,0),(121,2,'Health Education/Promotion Officer',116,1593015303,1,1593015303,1,0),(122,2,'Horticultural Consultant',117,1593015303,1,1593015303,1,0),(123,2,'Hotel Manager',118,1593015303,1,1593015303,1,0),(124,2,'Housing Manager/Officer',119,1593015303,1,1593015303,1,0),(125,2,'Human Resources Manager',120,1593015303,1,1593015303,1,0),(126,2,'Illustrator',121,1593015303,1,1593015303,1,0),(127,2,'Immigration Officer, Passport Control',122,1593015303,1,1593015303,1,0),(128,2,'Information Officer',123,1593015303,1,1593015303,1,0),(129,2,'Insurance Broker, Sales',124,1593015303,1,1593015303,1,0),(130,2,'Interior Designer',125,1593015303,1,1593015303,1,0),(131,2,'Interpreter',126,1593015303,1,1593015303,1,0),(132,2,'Investment Fund Administrator',127,1593015303,1,1593015303,1,0),(133,2,'Investment Fund Manager',128,1593015303,1,1593015303,1,0),(134,2,'It Project Manager',129,1593015303,1,1593015303,1,0),(135,2,'Journalist',130,1593015303,1,1593015303,1,0),(136,2,'Lecturer, Third Level',131,1593015303,1,1593015303,1,0),(137,2,'Legal Executive',132,1593015303,1,1593015303,1,0),(138,2,'Librarian',133,1593015303,1,1593015303,1,0),(139,2,'Loss Adjuster, Chartered',134,1593015303,1,1593015303,1,0),(140,2,'Make-Up Artist',135,1593015303,1,1593015303,1,0),(141,2,'Management Accountant',136,1593015303,1,1593015303,1,0),(142,2,'Management Consultant',137,1593015303,1,1593015303,1,0),(143,2,'Manager, Health Service',138,1593015303,1,1593015303,1,0),(144,2,'Market Researcher',139,1593015303,1,1593015303,1,0),(145,2,'Marketing Executive',140,1593015303,1,1593015303,1,0),(146,2,'Mechanical Engineer',141,1593015303,1,1593015303,1,0),(147,2,'Media Buyer/Planner',142,1593015303,1,1593015303,1,0),(148,2,'Medical Laboratory Scientist',143,1593015303,1,1593015303,1,0),(149,2,'Meteorologist',144,1593015303,1,1593015303,1,0),(150,2,'Microbiologist, Clinical',145,1593015303,1,1593015303,1,0),(151,2,'Midwife',146,1593015303,1,1593015303,1,0),(152,2,'Multimedia Designer',147,1593015303,1,1593015303,1,0),(153,2,'Museum Education Officer',148,1593015303,1,1593015303,1,0),(154,2,'Nature Conservation Officer',149,1593015303,1,1593015303,1,0),(155,2,'Network Engineer',150,1593015303,1,1593015303,1,0),(156,2,'Nurse',151,1593015303,1,1593015303,1,0),(157,2,'Occupational Hygienist',152,1593015303,1,1593015303,1,0),(158,2,'Occupational Psychologist',153,1593015303,1,1593015303,1,0),(159,2,'Occupational Therapist',154,1593015303,1,1593015303,1,0),(160,2,'Oceanographer',155,1593015303,1,1593015303,1,0),(161,2,'Optometrist',156,1593015303,1,1593015303,1,0),(162,2,'Patent Agent/Examiner',157,1593015303,1,1593015303,1,0),(163,2,'Personal Assistant/Secretary',158,1593015303,1,1593015303,1,0),(164,2,'Petroleum Engineer',159,1593015303,1,1593015303,1,0),(165,2,'Pharmacist (Hospital)',160,1593015303,1,1593015303,1,0),(166,2,'Pharmacologist',161,1593015303,1,1593015303,1,0),(167,2,'Photographer',162,1593015303,1,1593015303,1,0),(168,2,'Physicist',163,1593015303,1,1593015303,1,0),(169,2,'Physiotherapist',164,1593015303,1,1593015303,1,0),(170,2,'Picture Researcher/Editor',165,1593015303,1,1593015303,1,0),(171,2,'Police Officer/An Garda Síochána',166,1593015303,1,1593015303,1,0),(172,2,'Political Lobbyist',167,1593015303,1,1593015303,1,0),(173,2,'Presenter, Radio And Television',168,1593015303,1,1593015303,1,0),(174,2,'Print Production Manager/Assistant',169,1593015303,1,1593015303,1,0),(175,2,'Printmaker',170,1593015303,1,1593015303,1,0),(176,2,'Prison Officer',171,1593015303,1,1593015303,1,0),(177,2,'Probation And Welfare Officer',172,1593015303,1,1593015303,1,0),(178,2,'Production Manager/Planner',173,1593015303,1,1593015303,1,0),(179,2,'Programmer/Software Developer',174,1593015303,1,1593015303,1,0),(180,2,'Psychologist, Clinical',175,1593015303,1,1593015303,1,0),(181,2,'Psychologist, Educational',176,1593015303,1,1593015303,1,0),(182,2,'Psychologist, Sports',177,1593015303,1,1593015303,1,0),(183,2,'Psychotherapist',178,1593015303,1,1593015303,1,0),(184,2,'Public Relations Officer',179,1593015303,1,1593015303,1,0),(185,2,'Quality Assurance Manager',180,1593015303,1,1593015303,1,0),(186,2,'Quantity Surveyor',181,1593015303,1,1593015303,1,0),(187,2,'Radio Production',182,1593015303,1,1593015303,1,0),(188,2,'Radiographer, Diagnostic',183,1593015303,1,1593015303,1,0),(189,2,'Radiographer, Therapeutic',184,1593015303,1,1593015303,1,0),(190,2,'Records Manager',185,1593015303,1,1593015303,1,0),(191,2,'Recruitment Consultant',186,1593015303,1,1593015303,1,0),(192,2,'Recycling/Waste Disposal Officer',187,1593015303,1,1593015303,1,0),(193,2,'Retail Banker',188,1593015303,1,1593015303,1,0),(194,2,'Retail Buyer',189,1593015303,1,1593015303,1,0),(195,2,'Retail Manager',190,1593015303,1,1593015303,1,0),(196,2,'Retail Merchandiser',191,1593015303,1,1593015303,1,0),(197,2,'Risk Manager',192,1593015303,1,1593015303,1,0),(198,2,'Sales Executive',193,1593015303,1,1593015303,1,0),(199,2,'Scientist, Industrial R&D',194,1593015303,1,1593015303,1,0),(200,2,'Scientist, Quality Control',195,1593015303,1,1593015303,1,0),(201,2,'Scientist, Research',196,1593015303,1,1593015303,1,0),(202,2,'Social Researcher',197,1593015303,1,1593015303,1,0),(203,2,'Social Worker',198,1593015303,1,1593015303,1,0),(204,2,'Soil Scientist',199,1593015303,1,1593015303,1,0),(205,2,'Solicitor',200,1593015303,1,1593015303,1,0),(206,2,'Speech And Language Therapist',201,1593015303,1,1593015303,1,0),(207,2,'Sports Development Officer',202,1593015303,1,1593015303,1,0),(208,2,'Stage Manager, Theatre',203,1593015303,1,1593015303,1,0),(209,2,'Statistician',204,1593015303,1,1593015303,1,0),(210,2,'Stockbroker/Portfolio Manager',205,1593015303,1,1593015303,1,0),(211,2,'Structural Engineer',206,1593015303,1,1593015303,1,0),(212,2,'Systems Analyst/Business Analyst',207,1593015303,1,1593015303,1,0),(213,2,'Tax Adviser/Consultant',208,1593015303,1,1593015303,1,0),(214,2,'Tax Officer/Inspector',209,1593015303,1,1593015303,1,0),(215,2,'Teacher',210,1593015303,1,1593015303,1,0),(216,2,'Teacher, English As A Foreign Language',211,1593015303,1,1593015303,1,0),(217,2,'Teacher, Learning Support',212,1593015303,1,1593015303,1,0),(218,2,'Teacher, Primary Level',213,1593015303,1,1593015303,1,0),(219,2,'Teacher, Second Level',214,1593015303,1,1593015303,1,0),(220,2,'Teacher, Special Education',215,1593015303,1,1593015303,1,0),(221,2,'Technical Sales',216,1593015303,1,1593015303,1,0),(222,2,'Technical Sales Engineer',217,1593015303,1,1593015303,1,0),(223,2,'Technical Support',218,1593015303,1,1593015303,1,0),(224,2,'Telecommunications Engineer',219,1593015303,1,1593015303,1,0),(225,2,'Theatre Lighting Technician',220,1593015303,1,1593015303,1,0),(226,2,'Tourism Officer',221,1593015303,1,1593015303,1,0),(227,2,'Town Planner',222,1593015303,1,1593015303,1,0),(228,2,'Toxicologist',223,1593015303,1,1593015303,1,0),(229,2,'Training And Development Officer/Manager',224,1593015303,1,1593015303,1,0),(230,2,'Translator',225,1593015303,1,1593015303,1,0),(231,2,'Transport/Logistics Manager',226,1593015303,1,1593015303,1,0),(232,2,'Travel Agent',227,1593015303,1,1593015303,1,0),(233,2,'Veterinary Surgeon/Nurse',228,1593015303,1,1593015303,1,0),(234,2,'Web Developer',229,1593015303,1,1593015303,1,0),(235,2,'Writer, Radio/Tv/Film',230,1593015303,1,1593015303,1,0),(236,2,'Youth Worker',231,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_single_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_z_work_detail`
--

DROP TABLE IF EXISTS `_z_work_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_z_work_detail` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int unsigned NOT NULL DEFAULT '1',
  `department_id` int unsigned NOT NULL DEFAULT '1',
  `designation_id` int unsigned NOT NULL DEFAULT '1',
  `from` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int unsigned NOT NULL DEFAULT '1',
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `_z_work_detail_address_id_foreign` (`address_id`),
  KEY `_z_work_detail_organization_id_foreign` (`organization_id`),
  KEY `_z_work_detail_department_id_foreign` (`department_id`),
  KEY `_z_work_detail_designation_id_foreign` (`designation_id`),
  CONSTRAINT `_z_work_detail_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `_z_address` (`id`),
  CONSTRAINT `_z_work_detail_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `_z_single_data` (`id`),
  CONSTRAINT `_z_work_detail_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `_z_single_data` (`id`),
  CONSTRAINT `_z_work_detail_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `_z_single_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_z_work_detail`
--

LOCK TABLES `_z_work_detail` WRITE;
/*!40000 ALTER TABLE `_z_work_detail` DISABLE KEYS */;
INSERT INTO `_z_work_detail` VALUES (1,1,1,1,NULL,1,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `_z_work_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2018_09_26_163300_student_register',1),(3,'2019_08_19_000000_create_failed_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_academic_record`
--

DROP TABLE IF EXISTS `student_academic_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_academic_record` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `academic_session_id` int unsigned NOT NULL,
  `grade_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `house_id` int unsigned NOT NULL,
  `entry` enum('N','D','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_academic_record_student_id_academic_session_id_unique` (`student_id`,`academic_session_id`),
  CONSTRAINT `student_academic_record_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_register` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_academic_record`
--

LOCK TABLES `student_academic_record` WRITE;
/*!40000 ALTER TABLE `student_academic_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_academic_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_emergency_contact`
--

DROP TABLE IF EXISTS `student_emergency_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_emergency_contact` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `family_id` int unsigned NOT NULL DEFAULT '1',
  `relationship_id` int unsigned NOT NULL,
  `address_type_id` int unsigned NOT NULL DEFAULT '1',
  `address_id` int unsigned NOT NULL DEFAULT '1',
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `student_emergency_contact_family_id_foreign` (`family_id`),
  KEY `student_emergency_contact_relationship_id_foreign` (`relationship_id`),
  KEY `student_emergency_contact_address_type_id_foreign` (`address_type_id`),
  KEY `student_emergency_contact_address_id_foreign` (`address_id`),
  CONSTRAINT `student_emergency_contact_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `_z_address` (`id`),
  CONSTRAINT `student_emergency_contact_address_type_id_foreign` FOREIGN KEY (`address_type_id`) REFERENCES `_z_address_type` (`id`),
  CONSTRAINT `student_emergency_contact_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `student_family_id` (`id`),
  CONSTRAINT `student_emergency_contact_relationship_id_foreign` FOREIGN KEY (`relationship_id`) REFERENCES `_z_family_relationship` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_emergency_contact`
--

LOCK TABLES `student_emergency_contact` WRITE;
/*!40000 ALTER TABLE `student_emergency_contact` DISABLE KEYS */;
INSERT INTO `student_emergency_contact` VALUES (1,'Atif Naseem',1,2,1,1,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `student_emergency_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_family`
--

DROP TABLE IF EXISTS `student_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_family` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `relationship_id` int unsigned NOT NULL,
  `marital_status_id` int unsigned NOT NULL DEFAULT '1',
  `nationality` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `family_id` int unsigned NOT NULL,
  `mobile_phone` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nic` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_code` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profession_id` int unsigned NOT NULL DEFAULT '1',
  `q1` int unsigned NOT NULL DEFAULT '1',
  `q2` int unsigned NOT NULL DEFAULT '1',
  `w1` int unsigned NOT NULL DEFAULT '1',
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_family_nic_unique` (`nic`),
  UNIQUE KEY `student_family_card_code_unique` (`card_code`),
  KEY `student_family_relationship_id_foreign` (`relationship_id`),
  KEY `student_family_marital_status_id_foreign` (`marital_status_id`),
  KEY `student_family_family_id_foreign` (`family_id`),
  KEY `student_family_profession_id_foreign` (`profession_id`),
  KEY `student_family_q1_foreign` (`q1`),
  KEY `student_family_q2_foreign` (`q2`),
  KEY `student_family_w1_foreign` (`w1`),
  CONSTRAINT `student_family_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `student_family_id` (`id`),
  CONSTRAINT `student_family_marital_status_id_foreign` FOREIGN KEY (`marital_status_id`) REFERENCES `_z_marital_status` (`id`),
  CONSTRAINT `student_family_profession_id_foreign` FOREIGN KEY (`profession_id`) REFERENCES `_z_single_data` (`id`),
  CONSTRAINT `student_family_q1_foreign` FOREIGN KEY (`q1`) REFERENCES `_z_qualification` (`id`),
  CONSTRAINT `student_family_q2_foreign` FOREIGN KEY (`q2`) REFERENCES `_z_qualification` (`id`),
  CONSTRAINT `student_family_relationship_id_foreign` FOREIGN KEY (`relationship_id`) REFERENCES `_z_family_relationship` (`id`),
  CONSTRAINT `student_family_w1_foreign` FOREIGN KEY (`w1`) REFERENCES `_z_work_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_family`
--

LOCK TABLES `student_family` WRITE;
/*!40000 ALTER TABLE `student_family` DISABLE KEYS */;
INSERT INTO `student_family` VALUES (1,'Atif Naseem','','',2,2,'',1,'','','42101-1666','1','',1,1,1,1,1593015303,1,1593015303,1,0),(2,'Hina Atif','','',3,2,'',1,'','','42101-1677','2','',1,1,1,1,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `student_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_family_id`
--

DROP TABLE IF EXISTS `student_family_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_family_id` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `family_code` int unsigned NOT NULL,
  `address_type_id` int unsigned NOT NULL DEFAULT '1',
  `address_id` int unsigned NOT NULL DEFAULT '1',
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_family_id_family_code_unique` (`family_code`),
  KEY `student_family_id_address_type_id_foreign` (`address_type_id`),
  KEY `student_family_id_address_id_foreign` (`address_id`),
  CONSTRAINT `student_family_id_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `_z_address` (`id`),
  CONSTRAINT `student_family_id_address_type_id_foreign` FOREIGN KEY (`address_type_id`) REFERENCES `_z_address_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_family_id`
--

LOCK TABLES `student_family_id` WRITE;
/*!40000 ALTER TABLE `student_family_id` DISABLE KEYS */;
INSERT INTO `student_family_id` VALUES (1,180001,1,1,1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `student_family_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_register`
--

DROP TABLE IF EXISTS `student_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_register` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reg_id` int unsigned NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abridged_name` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `call_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` enum('g','b') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `religion_id` int unsigned NOT NULL DEFAULT '2',
  `academic_session_id` int unsigned NOT NULL,
  `academic_grade_id` int unsigned NOT NULL,
  `previous_school_name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_phone` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `facebook` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `linkedin` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `family_id` int unsigned NOT NULL,
  `status_id` int unsigned NOT NULL DEFAULT '2',
  `sibling_no` int unsigned NOT NULL DEFAULT '0',
  `active_sibling_no` int unsigned NOT NULL DEFAULT '0',
  `card_code` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` int unsigned NOT NULL,
  `register_by` int unsigned NOT NULL,
  `modified` int unsigned NOT NULL,
  `modified_by` int unsigned NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_register_reg_id_unique` (`reg_id`),
  UNIQUE KEY `student_register_card_code_unique` (`card_code`),
  KEY `student_register_family_id_foreign` (`family_id`),
  CONSTRAINT `student_register_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `student_family_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_register`
--

LOCK TABLES `student_register` WRITE;
/*!40000 ALTER TABLE `student_register` DISABLE KEYS */;
INSERT INTO `student_register` VALUES (1,180001,'S Atif','S Atif','S','','','b','2013-11-20','',2,1,7,'','','','','','',1,2,0,0,'18-0001',1593015303,1,1593015303,1,0),(2,180002,'D Atif','D Atif','D','','','b','2017-05-20','',2,1,6,'','','','','','',1,2,0,0,'18-0002',1593015303,1,1593015303,1,0);
/*!40000 ALTER TABLE `student_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Arturs','akotikovs7@gmail.com',NULL,'$2y$10$kYqwfgEAoY5XcTY7cTCHHu7BEgYkOUAGJARB76e4Z8MHLl9pAPCN6',NULL,'2020-06-24 15:53:12','2020-06-24 15:53:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-09 14:53:20
