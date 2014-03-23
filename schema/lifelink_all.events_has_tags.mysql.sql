/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "events_has_tags" (
  "events_has_tags_id" mediumint(8) unsigned NOT NULL,
  "events_id_fk" smallint(5) unsigned NOT NULL,
  "tags_id_fk" smallint(5) unsigned NOT NULL,
  PRIMARY KEY ("events_id_fk","tags_id_fk"),
  UNIQUE KEY "events_has_tags_id_UNIQUE" ("events_has_tags_id"),
  UNIQUE KEY "one_tag_per_event" ("events_id_fk","tags_id_fk"),
  KEY "events_has_tags_events_id_fk1" ("events_id_fk"),
  KEY "events_has_tags_tags_id_fk1" ("tags_id_fk"),
  CONSTRAINT "events_has_tags_events_id_fk1" FOREIGN KEY ("events_id_fk") REFERENCES "events" ("events_id") ON UPDATE CASCADE,
  CONSTRAINT "events_has_tags_tags_id_fk1" FOREIGN KEY ("tags_id_fk") REFERENCES "tags" ("tags_id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

