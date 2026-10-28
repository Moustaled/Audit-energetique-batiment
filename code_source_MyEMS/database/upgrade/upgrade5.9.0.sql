-- ---------------------------------------------------------------------------------------------------------------------
-- Avertissement : sauvegardez la base de données avant la mise à niveau
-- WARNING: BACKUP YOUR DATABASE BEFORE UPGRADING
-- Ce script sert uniquement à mettre à niveau5.8.0vers5.9.0
-- THIS SCRIPT IS ONLY FOR UPGRADING 5.8.0 TO 5.9.0
-- Le numéro de version actuel se trouve dans`myems_system_db`.`tbl_versions`
-- THE CURRENT VERSION CAN BE FOUND AT `myems_system_db`.`tbl_versions`
-- ---------------------------------------------------------------------------------------------------------------------

START TRANSACTION;

INSERT INTO myems_system_db.tbl_menus (id,name,route, parent_menu_id,is_hidden)
VALUES (214,'Equipment Comparison','/equipment/comparison',200,0);

CREATE TABLE IF NOT EXISTS `myems_system_db`.`tbl_iot_sim_cards` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `iccid` VARCHAR(255) NOT NULL,
  `imsi` VARCHAR(255),
  `operator` VARCHAR(255),
  `status` VARCHAR(255),
  `active_time` VARCHAR(255),
  `open_time` VARCHAR(255),
  `expiration_time` VARCHAR(255),
  `used_traffic` DECIMAL(21, 6),
  `total_traffic` DECIMAL(21, 6),
  `description` VARCHAR(255),
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_iot_sim_cards_index_1` ON `myems_system_db`.`tbl_iot_sim_cards` (`iccid`);

-- UPDATE VERSION NUMBER
UPDATE `myems_system_db`.`tbl_versions` SET version='5.9.0', release_date='2025-09-28' WHERE id=1;

COMMIT;