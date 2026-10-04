-- ---------------------------------------------------------------------------------------------------------------------
-- Avertissement : sauvegardez la base de données avant la mise à niveau
-- WARNING: BACKUP YOUR DATABASE BEFORE UPGRADING
-- Ce script sert uniquement à mettre à niveau5.11.0vers5.12.0
-- THIS SCRIPT IS ONLY FOR UPGRADING 5.11.0 TO 5.12.0
-- Le numéro de version actuel se trouve dans`myems_system_db`.`tbl_versions`
-- THE CURRENT VERSION CAN BE FOUND AT `myems_system_db`.`tbl_versions`
-- ---------------------------------------------------------------------------------------------------------------------

START TRANSACTION;

CREATE INDEX idx_menus_hidden_parent ON myems_system_db.tbl_menus (is_hidden, parent_menu_id);
CREATE INDEX idx_menus_is_hidden ON myems_system_db.tbl_menus (is_hidden);
CREATE INDEX idx_menus_parent_id ON myems_system_db.tbl_menus (parent_menu_id);

-- UPDATE VERSION NUMBER
UPDATE `myems_system_db`.`tbl_versions` SET version='5.12.0', release_date='2025-12-26' WHERE id=1;

COMMIT;