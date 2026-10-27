-- ---------------------------------------------------------------------------------------------------------------------
-- Avertissement : sauvegardez la base de données avant la mise à niveau
-- WARNING: BACKUP YOUR DATABASE BEFORE UPGRADING
-- Ce script sert uniquement à mettre à niveau6.1.0vers6.2.0
-- THIS SCRIPT IS ONLY FOR UPGRADING 6.1.0 TO 6.2.0
-- Le numéro de version actuel se trouve dans`myems_system_db`.`tbl_versions`
-- THE CURRENT VERSION CAN BE FOUND AT `myems_system_db`.`tbl_versions`
-- ---------------------------------------------------------------------------------------------------------------------

START TRANSACTION;

ALTER TABLE `myems_system_db`.`tbl_combined_equipments`
ADD `efficiency_indicator` DECIMAL(21, 6) DEFAULT 0.000000 NOT NULL AFTER cost_center_id;

ALTER TABLE `myems_system_db`.`tbl_equipments`
ADD `efficiency_indicator` DECIMAL(21, 6) DEFAULT 0.000000 NOT NULL AFTER cost_center_id;

UPDATE `myems_system_db`.`tbl_versions` SET version='6.2.0', release_date='2026-02-08' WHERE id=1;

COMMIT;