-- ---------------------------------------------------------------------------------------------------------------------
-- Avertissement : sauvegardez la base de données avant la mise à niveau
-- WARNING: BACKUP YOUR DATABASE BEFORE UPGRADING
-- Ce script sert uniquement à mettre à niveau6.3.0vers6.4.0
-- THIS SCRIPT IS ONLY FOR UPGRADING 6.3.0 TO 6.4.0
-- Le numéro de version actuel se trouve dans`myems_system_db`.`tbl_versions`
-- THE CURRENT VERSION CAN BE FOUND AT `myems_system_db`.`tbl_versions`
-- ---------------------------------------------------------------------------------------------------------------------

START TRANSACTION;

INSERT INTO myems_system_db.tbl_menus (id,name,route, parent_menu_id,is_hidden)
VALUES
(215,'Prediction','/equipment/prediction',200,1),
(327,'Meter Prediction','/meter/meterprediction',300,1),
(328,'Virtual Meter Prediction','/meter/virtualprediction',300,1),
(412,'Prediction','/tenant/prediction',400,1),
(511,'Prediction','/store/prediction',500,1),
(611,'Prediction','/shopfloor/prediction',600,1),
(714,'Prediction','/combinedequipment/prediction',700,1);

UPDATE `myems_system_db`.`tbl_versions` SET version='6.4.0', release_date='2026-04-26' WHERE id=1;

COMMIT;