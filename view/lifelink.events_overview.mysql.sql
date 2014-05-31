/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE "events_overview" (
  "events_id" tinyint NOT NULL,
  "type" tinyint NOT NULL,
  "date_start" tinyint NOT NULL,
  "year_start" tinyint NOT NULL,
  "date_end" tinyint NOT NULL,
  "year_end" tinyint NOT NULL,
  "logo" tinyint NOT NULL,
  "event" tinyint NOT NULL,
  "event_cont" tinyint NOT NULL,
  "description" tinyint NOT NULL,
  "slug_gallery" tinyint NOT NULL,
  "slug_survey" tinyint NOT NULL,
  "countries_iso_fk" tinyint NOT NULL,
  "is_sticky" tinyint NOT NULL,
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
  "tag" tinyint NOT NULL,
  "actions" tinyint NOT NULL,
  "tags" tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;
/*!50001 DROP TABLE IF EXISTS "events_overview"*/;
/*!50001 CREATE VIEW "events_overview" AS (select "e"."events_id" AS "events_id","e"."type" AS "type","e"."date_start" AS "date_start",year("e"."date_start") AS "year_start","e"."date_end" AS "date_end",year("e"."date_end") AS "year_end","e"."logo" AS "logo","e"."event" AS "event","e"."event_cont" AS "event_cont","e"."description" AS "description","e"."slug_gallery" AS "slug_gallery","e"."slug_survey" AS "slug_survey","e"."countries_iso_fk" AS "countries_iso_fk","e"."is_sticky" AS "is_sticky","c"."country" AS "country","c"."country_short" AS "country_short","c"."country_se" AS "country_se","c"."countries_iso" AS "countries_iso","c"."iso3" AS "iso3","c"."iso2" AS "iso2","c"."phone" AS "phone","c"."adjectivals" AS "adjectivals","c"."demonyms" AS "demonyms","c"."demonyms_colloquial" AS "demonyms_colloquial","c"."coord_lat" AS "coord_lat","c"."coord_lng" AS "coord_lng",1 AS "coord_accuracy","t"."tag" AS "tag",group_concat(distinct "e2a"."actions_number_fk" separator ',') AS "actions",group_concat(distinct "t"."tag" separator ',') AS "tags" from (((("events" "e" left join "countries_overview" "c" on(("c"."countries_iso" = "e"."countries_iso_fk"))) left join "events_has_actions" "e2a" on(("e2a"."events_id_fk" = "e"."events_id"))) left join "events_has_tags" "e2t" on(("e2t"."events_id_fk" = "e"."events_id"))) left join "tags" "t" on(("e2t"."tags_id_fk" = "t"."tags_id"))) group by "e"."events_id") */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

