-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema first_flaskdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema first_flaskdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `first_flaskdb` DEFAULT CHARACTER SET utf8 ;
USE `first_flaskdb` ;

-- -----------------------------------------------------
-- Table `first_flaskdb`.`friends`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `first_flaskdb`.`friends` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `updated_at` DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW(),
  `first_name` VARCHAR(45) NOT NULL,
  `occupation` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
