/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "member_reports" (
  "member_reports_id" smallint(5) unsigned NOT NULL,
  "member_schools_number_fk" smallint(5) unsigned NOT NULL,
  "date" date NOT NULL,
  "date_days" smallint(5) unsigned DEFAULT '1',
  "description" text COLLATE utf8_unicode_ci NOT NULL,
  "students" smallint(5) unsigned DEFAULT NULL,
  "students_age" varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  "teachers" smallint(5) unsigned DEFAULT NULL,
  "parents" smallint(5) unsigned DEFAULT NULL,
  "contact" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "email_contact" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "attachments" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "datetime_registration" datetime NOT NULL,
  "datetime_approval" datetime DEFAULT NULL,
  "feedback" text COLLATE utf8_unicode_ci,
  PRIMARY KEY ("member_reports_id"),
  KEY "school" ("member_schools_number_fk"),
  KEY "member_reports_member_schools_number_fk" ("member_schools_number_fk"),
  CONSTRAINT "member_reports_member_schools_number_fk" FOREIGN KEY ("member_schools_number_fk") REFERENCES "member_schools" ("member_schools_number") ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

