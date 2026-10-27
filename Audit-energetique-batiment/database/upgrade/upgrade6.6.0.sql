-- ---------------------------------------------------------------------------------------------------------------------
-- Avertissement : sauvegardez la base de données avant la mise à niveau
-- WARNING: BACKUP YOUR DATABASE BEFORE UPGRADING
-- Ce script sert uniquement à mettre à niveau6.5.0vers6.6.0
-- THIS SCRIPT IS ONLY FOR UPGRADING 6.5.0 TO 6.6.0
-- Le numéro de version actuel se trouve dans`myems_system_db`.`tbl_versions`
-- THE CURRENT VERSION CAN BE FOUND AT `myems_system_db`.`tbl_versions`
-- ---------------------------------------------------------------------------------------------------------------------

START TRANSACTION;

UPDATE `myems_system_db`.`tbl_versions`
SET version='6.6.0', release_date='2026-06-26' WHERE id=1;

COMMIT;