/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "member_reports_has_actions" (
  "member_reports_has_actions_id" mediumint(8) unsigned NOT NULL,
  "member_reports_id_fk" smallint(5) unsigned NOT NULL,
  "actions_number_fk" smallint(5) unsigned NOT NULL,
  PRIMARY KEY ("member_reports_id_fk","actions_number_fk"),
  UNIQUE KEY "member_reports_has_actions_id_UNIQUE" ("member_reports_has_actions_id"),
  KEY "member_reports_has_actions_actions_number_fk" ("actions_number_fk"),
  KEY "member_reports_has_actions_member_reports_id_fk" ("member_reports_id_fk"),
  CONSTRAINT "member_reports_has_actions_actions_number_fk" FOREIGN KEY ("actions_number_fk") REFERENCES "actions" ("actions_number") ON UPDATE CASCADE,
  CONSTRAINT "member_reports_has_actions_member_reports_id_fk" FOREIGN KEY ("member_reports_id_fk") REFERENCES "member_reports" ("member_reports_id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

