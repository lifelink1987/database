/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "contacts" (
  "contacts_id" smallint(5) unsigned NOT NULL,
  "contact" varchar(255) NOT NULL,
  "position" varchar(255) DEFAULT NULL,
  "department" enum('Board','Consultants','Secretary','International Advisors') NOT NULL DEFAULT 'Board',
  "department_order" smallint(5) unsigned NOT NULL DEFAULT '0',
  "countries_iso_fk" smallint(6) DEFAULT NULL,
  "nickname" varchar(255) DEFAULT NULL,
  "email" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("contacts_id"),
  KEY "countries_iso_fk" ("countries_iso_fk"),
  CONSTRAINT "contacts_countries_iso_fk" FOREIGN KEY ("countries_iso_fk") REFERENCES "countries" ("countries_iso") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

