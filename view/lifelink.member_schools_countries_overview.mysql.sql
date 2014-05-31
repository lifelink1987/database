/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE "member_schools_countries_overview" (
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
  "count_schools" tinyint NOT NULL,
  "date_report_first" tinyint NOT NULL,
  "date_report_last" tinyint NOT NULL,
  "count_reports" tinyint NOT NULL,
  "count_actions" tinyint NOT NULL,
  "tags" tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;
/*!50001 DROP TABLE IF EXISTS "member_schools_countries_overview"*/;
/*!50001 CREATE VIEW "member_schools_countries_overview" AS (select "c"."country" AS "country","c"."country_short" AS "country_short","c"."country_se" AS "country_se","c"."countries_iso" AS "countries_iso","c"."iso3" AS "iso3","c"."iso2" AS "iso2","c"."phone" AS "phone","c"."adjectivals" AS "adjectivals","c"."demonyms" AS "demonyms","c"."demonyms_colloquial" AS "demonyms_colloquial","c"."coord_lat" AS "coord_lat","c"."coord_lng" AS "coord_lng",1 AS "coord_accuracy",count(distinct "s"."member_schools_number") AS "count_schools",min("r"."date") AS "date_report_first",max("r"."date") AS "date_report_last",count("r"."member_reports_id") AS "count_reports",count(distinct "r2a"."actions_number_fk") AS "count_actions",group_concat(distinct "t"."tag" separator ',') AS "tags" from ((((("member_schools" "s" join "member_reports" "r" on(("r"."member_schools_number_fk" = "s"."member_schools_number"))) join "member_reports_has_actions" "r2a" on(("r2a"."member_reports_id_fk" = "r"."member_reports_id"))) join "countries_overview" "c" on(("c"."countries_iso" = "s"."countries_iso_fk"))) left join "member_schools_has_tags" "s2t" on(("s2t"."member_schools_number_fk" = "s"."member_schools_number"))) left join "tags" "t" on(("s2t"."tags_id_fk" = "t"."tags_id"))) group by "s"."countries_iso_fk") */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

