-- ---------------------------------------------------------------------------------------------------------------------
-- Avertissement : sauvegardez la base de données avant la mise à niveau
-- WARNING: BACKUP YOUR DATABASE BEFORE UPGRADING
-- Ce script sert uniquement à mettre à niveau5.6.0vers5.7.1
-- THIS SCRIPT IS ONLY FOR UPGRADING 5.6.0 TO 5.7.1
-- Le numéro de version actuel se trouve dans`myems_system_db`.`tbl_versions`
-- THE CURRENT VERSION CAN BE FOUND AT `myems_system_db`.`tbl_versions`
-- ---------------------------------------------------------------------------------------------------------------------

START TRANSACTION;

DROP TABLE IF EXISTS `myems_system_db`.`tbl_energy_storage_containers_sensors`;

CREATE TABLE IF NOT EXISTS `myems_system_db`.`tbl_energy_storage_containers_data_sources` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `energy_storage_container_id` BIGINT NOT NULL,
  `data_source_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_energy_storage_containers_data_sources_index_1`
ON `myems_system_db`.`tbl_energy_storage_containers_data_sources` (`energy_storage_container_id`);

CREATE TABLE IF NOT EXISTS `myems_system_db`.`tbl_microgrids_data_sources` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `microgrid_id` BIGINT NOT NULL,
  `data_source_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_microgrids_data_sources_index_1`
ON `myems_system_db`.`tbl_microgrids_data_sources` (`microgrid_id`);

CREATE TABLE IF NOT EXISTS `myems_system_db`.`tbl_photovoltaic_power_stations_data_sources` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `photovoltaic_power_station_id` BIGINT NOT NULL,
  `data_source_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`));
CREATE INDEX `tbl_photovoltaic_power_stations_data_sources_index_1`
ON `myems_system_db`.`tbl_photovoltaic_power_stations_data_sources` (`photovoltaic_power_station_id`);

-- UPDATE VERSION NUMBER
UPDATE `myems_system_db`.`tbl_versions` SET version='5.7.1', release_date='2025-08-02' WHERE id=1;

COMMIT;