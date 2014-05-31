/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "events" (
  "events_id" smallint(5) unsigned NOT NULL,
  "type" enum('conference_major','conference','seminar','workshop','guest','campaign','misc') NOT NULL DEFAULT 'misc',
  "date_start" date NOT NULL,
  "date_end" date NOT NULL,
  "logo" longblob,
  "event" varchar(255) DEFAULT NULL,
  "event_cont" varchar(255) DEFAULT NULL,
  "description" text,
  "slug_gallery" varchar(255) DEFAULT NULL,
  "slug_survey" varchar(255) DEFAULT NULL,
  "countries_iso_fk" smallint(6) DEFAULT NULL,
  "is_sticky" enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY ("events_id"),
  KEY "countries_iso_fk" ("countries_iso_fk"),
  CONSTRAINT "events_countries_iso_fk" FOREIGN KEY ("countries_iso_fk") REFERENCES "countries" ("countries_iso") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

