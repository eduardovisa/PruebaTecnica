-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema clientesdb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema clientesdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema clientesdb
-- -----------------------------------------------------

DROP DATABASE IF EXISTS clientesdb;

CREATE SCHEMA IF NOT EXISTS `clientesdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `clientesdb` ;

-- -----------------------------------------------------
-- Table `clientesdb`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clientesdb`.`cliente` (
  `cliente_id` INT NOT NULL AUTO_INCREMENT,
  `nombre_usuario` VARCHAR(50) NOT NULL,
  `contrasena` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `correo_electronico` VARCHAR(45) NOT NULL,
  `edad` INT NOT NULL,
  `estatura` FLOAT NOT NULL,
  `peso` VARCHAR(45) NOT NULL,
  `imc` VARCHAR(45) NOT NULL,
  `geb` VARCHAR(45) NOT NULL,
  `eta` VARCHAR(45) NOT NULL,
  `fecha_creacion` DATE NOT NULL,
  `fecha_actualizacion` DATE NOT NULL,
  PRIMARY KEY (`cliente_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
