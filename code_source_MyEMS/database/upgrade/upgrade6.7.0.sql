-- ---------------------------------------------------------------------------------------------------------------------
-- Avertissement : sauvegardez la base de données avant la mise à niveau
-- WARNING: BACKUP YOUR DATABASE BEFORE UPGRADING
-- Ce script sert uniquement à mettre à niveau6.6.0vers6.7.0
-- THIS SCRIPT IS ONLY FOR UPGRADING 6.6.0 TO 6.7.0
-- Le numéro de version actuel se trouve dans`myems_system_db`.`tbl_versions`
-- THE CURRENT VERSION CAN BE FOUND AT `myems_system_db`.`tbl_versions`
-- ---------------------------------------------------------------------------------------------------------------------

START TRANSACTION;

CREATE TABLE IF NOT EXISTS `myems_production_db`.`tbl_equipment_hourly` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `equipment_id` BIGINT NOT NULL,
  `start_datetime_utc` DATETIME NOT NULL,
  `product_id` BIGINT NOT NULL,
  `product_count` DECIMAL(21, 6) NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_equipment_hourly_index_1`
ON `myems_production_db`.`tbl_equipment_hourly` (`equipment_id`, `product_id`, `start_datetime_utc`);

INSERT INTO myems_system_db.tbl_menus (id,name,route, parent_menu_id,is_hidden)
VALUES (117,'Dashboard','/space',100,0);

INSERT INTO myems_system_db.tbl_menus (id,name,route, parent_menu_id,is_hidden)
VALUES (330,'Dashboard','/meter',300,0);

UPDATE `myems_system_db`.`tbl_versions`

SET version='6.7.0', release_date='2026-07-26' WHERE id=1;

COMMIT;