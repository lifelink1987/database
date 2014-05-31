/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE "actions_overview" (
  "actions_number" tinyint NOT NULL,
  "actions_number_nice" tinyint NOT NULL,
  "action" tinyint NOT NULL,
  "description_theory" tinyint NOT NULL,
  "description_action" tinyint NOT NULL,
  "description_stepbystep" tinyint NOT NULL,
  "extra_title" tinyint NOT NULL,
  "extra_info" tinyint NOT NULL,
  "is_old" tinyint NOT NULL,
  "tags" tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;
/*!50001 DROP TABLE IF EXISTS "actions_overview"*/;
/*!50001 CREATE VIEW "actions_overview" AS (select "a"."actions_number" AS "actions_number",concat(left("a"."actions_number",1),':',right("a"."actions_number",2)) AS "actions_number_nice","a"."action" AS "action","a"."description_theory" AS "description_theory","a"."description_action" AS "description_action","a"."description_stepbystep" AS "description_stepbystep","a"."extra_title" AS "extra_title","a"."extra_info" AS "extra_info","a"."is_old" AS "is_old",group_concat(distinct "t"."tag" separator ',') AS "tags" from (("actions" "a" left join "actions_has_tags" "a2t" on(("a2t"."actions_number_fk" = "a"."actions_number"))) left join "tags" "t" on(("a2t"."tags_id_fk" = "t"."tags_id"))) group by "a"."actions_number") */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

