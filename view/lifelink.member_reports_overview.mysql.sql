/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE "member_reports_overview" (
  "member_reports_id" tinyint NOT NULL,
  "member_schools_number_fk" tinyint NOT NULL,
  "date" tinyint NOT NULL,
  "date_days" tinyint NOT NULL,
  "description" tinyint NOT NULL,
  "students" tinyint NOT NULL,
  "students_age" tinyint NOT NULL,
  "teachers" tinyint NOT NULL,
  "parents" tinyint NOT NULL,
  "contact" tinyint NOT NULL,
  "email_contact" tinyint NOT NULL,
  "attachments" tinyint NOT NULL,
  "datetime_registration" tinyint NOT NULL,
  "datetime_approval" tinyint NOT NULL,
  "feedback" tinyint NOT NULL,
  "member_schools_number" tinyint NOT NULL,
  "school" tinyint NOT NULL,
  "city" tinyint NOT NULL,
  "county" tinyint NOT NULL,
  "country" tinyint NOT NULL,
  "country_short" tinyint NOT NULL,
  "country_se" tinyint NOT NULL,
  "countries_iso" tinyint NOT NULL,
  "iso3" tinyint NOT NULL,
  "iso2" tinyint NOT NULL,
  "phone" tinyint NOT NULL,
  "adjectivals" tinyint NOT NULL,
  "demonyms" tinyint NOT NULL,
  "demonyms_colloquial" tinyint NOT NULL,
  "coord_lat" tinyint NOT NULL,
  "coord_lng" tinyint NOT NULL,
  "coord_accuracy" tinyint NOT NULL,
  "actions" tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;
/*!50001 DROP TABLE IF EXISTS "member_reports_overview"*/;
/*!50001 CREATE VIEW "member_reports_overview" AS (select "r"."member_reports_id" AS "member_reports_id","r"."member_schools_number_fk" AS "member_schools_number_fk","r"."date" AS "date","r"."date_days" AS "date_days","r"."description" AS "description","r"."students" AS "students","r"."students_age" AS "students_age","r"."teachers" AS "teachers","r"."parents" AS "parents","r"."contact" AS "contact","r"."email_contact" AS "email_contact","r"."attachments" AS "attachments","r"."datetime_registration" AS "datetime_registration","r"."datetime_approval" AS "datetime_approval","r"."feedback" AS "feedback","s"."member_schools_number" AS "member_schools_number","s"."school" AS "school","s"."city" AS "city","s"."county" AS "county","c"."country" AS "country","c"."country_short" AS "country_short","c"."country_se" AS "country_se","c"."countries_iso" AS "countries_iso","c"."iso3" AS "iso3","c"."iso2" AS "iso2","c"."phone" AS "phone","c"."adjectivals" AS "adjectivals","c"."demonyms" AS "demonyms","c"."demonyms_colloquial" AS "demonyms_colloquial",if(("s"."coord_accuracy" = 0),"c"."coord_lat","s"."coord_lat") AS "coord_lat",if(("s"."coord_accuracy" = 0),"c"."coord_lng","s"."coord_lng") AS "coord_lng",if(("s"."coord_accuracy" = 0),1,"s"."coord_accuracy") AS "coord_accuracy",group_concat(distinct "r2a"."actions_number_fk" separator ',') AS "actions" from ((("member_reports" "r" join "member_schools" "s" on(("r"."member_schools_number_fk" = "s"."member_schools_number"))) join "member_reports_has_actions" "r2a" on(("r2a"."member_reports_id_fk" = "r"."member_reports_id"))) join "countries_overview" "c" on(("c"."countries_iso" = "s"."countries_iso_fk"))) group by "r"."member_reports_id") */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

