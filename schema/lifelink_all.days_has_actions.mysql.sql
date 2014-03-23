/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "days_has_actions" (
  "days_has_actions_id" mediumint(8) unsigned NOT NULL,
  "days_id_fk" smallint(5) unsigned NOT NULL,
  "actions_number_fk" smallint(5) unsigned NOT NULL,
  PRIMARY KEY ("days_id_fk","actions_number_fk"),
  UNIQUE KEY "days_has_actions_id_UNIQUE" ("days_has_actions_id"),
  KEY "days_has_actions_days_id_fk" ("days_id_fk"),
  KEY "days_has_actions_actions_number_fk" ("actions_number_fk"),
  CONSTRAINT "days_has_actions_actions_number_fk" FOREIGN KEY ("actions_number_fk") REFERENCES "actions" ("actions_number") ON UPDATE CASCADE,
  CONSTRAINT "days_has_actions_days_id_fk" FOREIGN KEY ("days_id_fk") REFERENCES "days" ("days_id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

