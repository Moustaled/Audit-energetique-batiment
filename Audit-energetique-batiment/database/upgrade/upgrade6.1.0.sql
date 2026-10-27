-- ---------------------------------------------------------------------------------------------------------------------
-- Avertissement : sauvegardez la base de données avant la mise à niveau
-- WARNING: BACKUP YOUR DATABASE BEFORE UPGRADING
-- Ce script sert uniquement à mettre à niveau5.12.0vers6.1.0
-- THIS SCRIPT IS ONLY FOR UPGRADING 5.12.0 TO 6.1.0
-- Le numéro de version actuel se trouve dans`myems_system_db`.`tbl_versions`
-- THE CURRENT VERSION CAN BE FOUND AT `myems_system_db`.`tbl_versions`
-- ---------------------------------------------------------------------------------------------------------------------

START TRANSACTION;

ALTER TABLE `myems_user_db`.`tbl_users`
ADD COLUMN `phone` VARCHAR(20) NULL UNIQUE AFTER `email`;

UPDATE `myems_system_db`.`tbl_versions` SET version='6.1.0', release_date='2026-01-28' WHERE id=1;

COMMIT;