/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE "days_overview" (
  "days_id" tinyint NOT NULL,
  "type" tinyint NOT NULL,
  "month_day" tinyint NOT NULL,
  "month" tinyint NOT NULL,
  "day" tinyint NOT NULL,
  "url" tinyint NOT NULL,
  "actions" tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;
/*!50001 DROP TABLE IF EXISTS "days_overview"*/;
/*!50001 CREATE VIEW "days_overview" AS (select "d"."days_id" AS "days_id","d"."type" AS "type","d"."month_day" AS "month_day","d"."month" AS "month","d"."day" AS "day","d"."url" AS "url",group_concat(distinct "d2a"."actions_number_fk" separator ',') AS "actions" from ("days" "d" left join "days_has_actions" "d2a" on(("d2a"."days_id_fk" = "d"."days_id"))) group by "d"."days_id") */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

