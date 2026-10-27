-- ---------------------------------------------------------------------------------------------------------------------
-- Avertissement : sauvegardez la base de données avant la mise à niveau
-- WARNING: BACKUP YOUR DATABASE BEFORE UPGRADING
-- Ce script sert uniquement à mettre à niveau6.2.0vers6.3.0
-- THIS SCRIPT IS ONLY FOR UPGRADING 6.2.0 TO 6.3.0
-- Le numéro de version actuel se trouve dans`myems_system_db`.`tbl_versions`
-- THE CURRENT VERSION CAN BE FOUND AT `myems_system_db`.`tbl_versions`
-- ---------------------------------------------------------------------------------------------------------------------

START TRANSACTION;

-- Cette mise à niveau n''apporte aucun changement structurel substantiel à la base de données
-- There are no substantial changes to the database structure in this upgrade.

UPDATE `myems_system_db`.`tbl_versions` SET version='6.3.0', release_date='2026-03-28' WHERE id=1;

COMMIT;