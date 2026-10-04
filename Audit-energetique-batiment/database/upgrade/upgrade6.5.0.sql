-- ---------------------------------------------------------------------------------------------------------------------
-- Avertissement : sauvegardez la base de données avant la mise à niveau
-- WARNING: BACKUP YOUR DATABASE BEFORE UPGRADING
-- Ce script sert uniquement à mettre à niveau6.4.0vers6.5.0
-- THIS SCRIPT IS ONLY FOR UPGRADING 6.4.0 TO 6.5.0
-- Le numéro de version actuel se trouve dans`myems_system_db`.`tbl_versions`
-- THE CURRENT VERSION CAN BE FOUND AT `myems_system_db`.`tbl_versions`
-- ---------------------------------------------------------------------------------------------------------------------

START TRANSACTION;

INSERT INTO myems_system_db.tbl_menus (id,name,route, parent_menu_id,is_hidden)
VALUES
(216, 'Dashboard', '/equipment', 200, 0),
(329,'Offline Meter Prediction','/meter/offlinemeterprediction',300,1),
(413, 'Dashboard', '/tenant', 400, 0),
(512, 'Dashboard', '/store', 500, 0),
(612, 'Dashboard', '/shopfloor', 600, 0),
(715, 'Dashboard', '/combinedequipment', 700, 0);

UPDATE `myems_system_db`.`tbl_menus`
SET `route` = '/meter/virtualmeterprediction' WHERE `id` = 328;

UPDATE `myems_system_db`.`tbl_versions`
SET version='6.5.0', release_date='2026-05-26' WHERE id=1;

COMMIT;