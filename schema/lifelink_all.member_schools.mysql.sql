/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "member_schools" (
  "member_schools_number" smallint(5) unsigned NOT NULL,
  "school" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "address" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "address_zipcode" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "city" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "county" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "countries_iso_fk" smallint(6) NOT NULL,
  "coord_lat" float NOT NULL DEFAULT '0',
  "coord_lng" float NOT NULL DEFAULT '0',
  "coord_accuracy" smallint(6) NOT NULL DEFAULT '0',
  "tel" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "fax" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "email" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "website" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "contact_senior" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "email_contact_senior" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "contact_junior" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "email_contact_junior" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "students" smallint(5) unsigned DEFAULT NULL,
  "students_age" varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  "students_gender" enum('mf','m','f') COLLATE utf8_unicode_ci DEFAULT NULL,
  "teachers" smallint(5) unsigned DEFAULT NULL,
  "datetime_registration" datetime NOT NULL,
  "datetime_approval" datetime DEFAULT NULL,
  "datetime_update" datetime DEFAULT NULL,
  PRIMARY KEY ("member_schools_number"),
  KEY "countries_iso_fk" ("countries_iso_fk"),
  CONSTRAINT "member_schools_countries_iso_fk" FOREIGN KEY ("countries_iso_fk") REFERENCES "countries" ("countries_iso") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

