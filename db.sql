-- MySQL Workbench Forward Engineering
show tables;
drop table countries;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema crud_paises
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema crud_paises
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `crud_paises` DEFAULT CHARACTER SET utf8mb4 ;
USE `crud_paises` ;

-- -----------------------------------------------------
-- Table `crud_paises`.`countries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `crud_paises`.`countries` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `flag` VARCHAR(45) NOT NULL,
  `capital` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `crud_paises`.`school`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `crud_paises`.`school` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `pais_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_school_pais1_idx` (`pais_id` ASC) ,
  CONSTRAINT `fk_school_pais1`
    FOREIGN KEY (`pais_id`)
    REFERENCES `crud_paises`.`pais` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `crud_paises`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `crud_paises`.`pais` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  `flag` VARCHAR(45) NULL,
  `capital` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `crud_paises`.`school`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `crud_paises`.`school` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `pais_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_school_pais1_idx` (`pais_id` ASC),
  CONSTRAINT `fk_school_pais1`
    FOREIGN KEY (`pais_id`)
    REFERENCES `crud_paises`.`pais` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `crud_paises`.`departaments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `crud_paises`.`departaments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `pais_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_departaments_pais1_idx` (`pais_id` ASC),
  CONSTRAINT `fk_departaments_pais1`
    FOREIGN KEY (`pais_id`)
    REFERENCES `crud_paises`.`pais` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `crud_paises`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `crud_paises`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `lastname` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `date_birth` VARCHAR(45) NULL,
  `school_id` INT NOT NULL,
  `departaments_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_users_school1_idx` (`school_id` ASC) ,
  INDEX `fk_users_departaments1_idx` (`departaments_id` ASC) ,
  CONSTRAINT `fk_users_school1`
    FOREIGN KEY (`school_id`)
    REFERENCES `crud_paises`.`school` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_departaments1`
    FOREIGN KEY (`departaments_id`)
    REFERENCES `crud_paises`.`departaments` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
