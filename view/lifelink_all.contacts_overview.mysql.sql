/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE "contacts_overview" (
  "contacts_id" tinyint NOT NULL,
  "contact" tinyint NOT NULL,
  "position" tinyint NOT NULL,
  "department" tinyint NOT NULL,
  "department_order" tinyint NOT NULL,
  "countries_iso_fk" tinyint NOT NULL,
  "nickname" tinyint NOT NULL,
  "email" tinyint NOT NULL,
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
  "coord_accuracy" tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;
/*!50001 DROP TABLE IF EXISTS "contacts_overview"*/;
/*!50001 CREATE VIEW "contacts_overview" AS (select "p"."contacts_id" AS "contacts_id","p"."contact" AS "contact","p"."position" AS "position","p"."department" AS "department","p"."department_order" AS "department_order","p"."countries_iso_fk" AS "countries_iso_fk","p"."nickname" AS "nickname","p"."email" AS "email","c"."country" AS "country","c"."country_short" AS "country_short","c"."country_se" AS "country_se","c"."countries_iso" AS "countries_iso","c"."iso3" AS "iso3","c"."iso2" AS "iso2","c"."phone" AS "phone","c"."adjectivals" AS "adjectivals","c"."demonyms" AS "demonyms","c"."demonyms_colloquial" AS "demonyms_colloquial","c"."coord_lat" AS "coord_lat","c"."coord_lng" AS "coord_lng",1 AS "coord_accuracy" from ("contacts" "p" left join "countries_overview" "c" on(("p"."countries_iso_fk" = "c"."countries_iso")))) */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

