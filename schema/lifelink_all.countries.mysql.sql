/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "countries" (
  "countries_iso" smallint(6) NOT NULL COMMENT 'Code (ISO 3166-1 numeric)',
  "country" varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name',
  "country_se" varchar(255) CHARACTER SET ucs2 DEFAULT NULL COMMENT 'Name (Swedish)',
  "iso3" varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Code (ISO 3166-1 alpha-3)',
  "iso2" varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Code (ISO 3166-1 alpha-2)',
  "phone" smallint(6) DEFAULT NULL COMMENT 'Phone (ITU-T E.164)',
  "adjectivals" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "demonyms" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "demonyms_colloquial" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "coord_lat" float NOT NULL DEFAULT '0',
  "coord_lng" float NOT NULL DEFAULT '0',
  PRIMARY KEY ("countries_iso"),
  UNIQUE KEY "name_se" ("country_se"),
  KEY "name" ("country")
);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

