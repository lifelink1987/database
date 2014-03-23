/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE "delicious_overview" (
  "delicious_id" tinyint NOT NULL,
  "url" tinyint NOT NULL,
  "title" tinyint NOT NULL,
  "description" tinyint NOT NULL,
  "datetime" tinyint NOT NULL,
  "tags" tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;
/*!50001 DROP TABLE IF EXISTS "delicious_overview"*/;
/*!50001 CREATE VIEW "delicious_overview" AS (select "d"."delicious_id" AS "delicious_id","d"."url" AS "url","d"."title" AS "title","d"."description" AS "description","d"."datetime" AS "datetime",group_concat(distinct "t"."tag" separator ',') AS "tags" from (("delicious" "d" left join "delicious_has_tags" "d2t" on(("d2t"."delicious_id_fk" = "d"."delicious_id"))) left join "tags" "t" on(("d2t"."tags_id_fk" = "t"."tags_id"))) group by "d"."delicious_id") */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

