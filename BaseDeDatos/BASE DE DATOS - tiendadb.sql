-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tiendadb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tiendadb
-- -----------------------------------------------------

DROP DATABASE IF EXISTS tiendadb;

CREATE SCHEMA IF NOT EXISTS `tiendadb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema tiendadb
-- -----------------------------------------------------
USE `tiendadb` ;

-- -----------------------------------------------------
-- Table `tiendadb`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tiendadb`.`Productos` (
  `Producto` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  `Precio` FLOAT NOT NULL,
  PRIMARY KEY (`Producto`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `tiendadb`.`Cajeros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tiendadb`.`Cajeros` (
  `Cajero` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Cajero`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `tiendadb`.`Maquinas_Registradoras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tiendadb`.`Maquinas_Registradoras` (
  `Maquina` INT NOT NULL AUTO_INCREMENT,
  `Piso` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Maquina`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `tiendadb`.`Ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tiendadb`.`Ventas` (
  `Productos_Producto` INT NOT NULL,
  `Cajeros_Cajero` INT NOT NULL,
  `Maquinas_Registradoras_Maquina` INT NOT NULL,
  PRIMARY KEY (`Productos_Producto`, `Cajeros_Cajero`),
  INDEX `fk_Productos_has_Cajeros_Cajeros1_idx` (`Cajeros_Cajero` ASC) VISIBLE,
  INDEX `fk_Productos_has_Cajeros_Productos_idx` (`Productos_Producto` ASC) VISIBLE,
  INDEX `fk_Ventas_Maquinas_Registradoras1_idx` (`Maquinas_Registradoras_Maquina` ASC) VISIBLE,
  CONSTRAINT `fk_Productos_has_Cajeros_Productos`
    FOREIGN KEY (`Productos_Producto`)
    REFERENCES `tiendadb`.`Productos` (`Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Productos_has_Cajeros_Cajeros1`
    FOREIGN KEY (`Cajeros_Cajero`)
    REFERENCES `tiendadb`.`Cajeros` (`Cajero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ventas_Maquinas_Registradoras1`
    FOREIGN KEY (`Maquinas_Registradoras_Maquina`)
    REFERENCES `tiendadb`.`Maquinas_Registradoras` (`Maquina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- ==========================================================================================================================
-- ==========================================================================================================================
-- ==========================================================================================================================
-- ==========================================================================================================================
-- ==========================================================================================================================

-- 1. Generar script para poblar todas las tablas.

-- Insert de cajeros
INSERT INTO cajeros (Cajero, Nombre) VALUES (0, "Eduardo");
INSERT INTO cajeros (Cajero, Nombre) VALUES (0, "Andrea");
INSERT INTO cajeros (Cajero, Nombre) VALUES (0, "Santiago");
INSERT INTO cajeros (Cajero, Nombre) VALUES (0, "Juan");

-- Insert de maquinas_registradoras
INSERT INTO maquinas_registradoras (Maquina, Piso) VALUES (0, "Piso muebles");
INSERT INTO maquinas_registradoras (Maquina, Piso) VALUES (0, "Piso ropa");
INSERT INTO maquinas_registradoras (Maquina, Piso) VALUES (0, "Piso comida");
INSERT INTO maquinas_registradoras (Maquina, Piso) VALUES (0, "Piso tecnología");

-- Insert de productos
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Cama matrimonial", 1000);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Sillón", 700);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Mesa de exterior", 300);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Silla", 100);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Playera blanca", 100);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Zapátos negros", 150);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Traje negro", 1500);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Bolso de mano", 250);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Chocolate", 25);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Manzana", 10);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Huevos", 80);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Pizza", 190);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Pollo", 70);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Smart TV", 2300);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Bocinas", 700);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Tablet", 1000);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Celular Xiaomi", 3000);
INSERT INTO productos (Producto, Nombre, Precio) VALUES (0, "Cámara fotográfica", 1000);

-- Insert de productos
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (14, 1, 4);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (16, 1, 4);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (17, 1, 4);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (7, 1, 2);

INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (6, 2, 2);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (7, 2, 2);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (2, 2, 1);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (11, 2, 3);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (8, 2, 2);

INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (11, 3, 3);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (7, 3, 2);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (1, 3, 1);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (8, 3, 2);

INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (10, 4, 3);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (12, 4, 3);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (13, 4, 3);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (11, 4, 3);
INSERT INTO ventas (Productos_Producto, Cajeros_Cajero, Maquinas_Registradoras_Maquina) VALUES (4, 4, 1);

-- ==========================================================================================================================
-- ==========================================================================================================================
-- ==========================================================================================================================
-- ==========================================================================================================================
-- ==========================================================================================================================

-- 2. Mostrar el número de ventas de cada producto, ordenado de más a menos ventas.
SELECT productos.Nombre, COUNT(ventas.Productos_Producto) AS 'Cantidad'
FROM ventas
INNER JOIN productos
ON ventas.Productos_Producto = productos.Producto
GROUP BY productos.Producto
ORDER BY COUNT(ventas.Productos_Producto) DESC;

-- 3. Obtener un informe completo de ventas, indicando el nombre del cajero que realizo la venta, nombre 
-- y precios de los productos vendidos, y el piso en el que se encuentra la máquina registradora donde se realizó la venta.
SELECT cajeros.Nombre, productos.Nombre, productos.Precio, maquinas_registradoras.Piso
FROM ventas
INNER JOIN productos
INNER JOIN cajeros
INNER JOIN maquinas_registradoras
ON ventas.Productos_Producto = productos.Producto && ventas.Cajeros_Cajero = cajeros.Cajero && ventas.Maquinas_Registradoras_Maquina = maquinas_registradoras.Maquina
ORDER BY cajeros.Nombre ASC;

-- 4. Obtener las ventas totales realizadas en cada piso.
SELECT maquinas_registradoras.Piso, SUM(productos.precio) AS 'Total'
FROM ventas
INNER JOIN productos
INNER JOIN maquinas_registradoras
ON ventas.Productos_Producto = productos.Producto && ventas.Maquinas_Registradoras_Maquina = maquinas_registradoras.Maquina
GROUP BY maquinas_registradoras.Maquina
ORDER BY SUM(productos.precio) DESC;

-- 5.	Obtener el código y nombre de cada cajero junto con el importe total de sus ventas.
SELECT cajeros.Cajero, cajeros.Nombre, SUM(productos.precio) AS 'Total'
FROM ventas
INNER JOIN productos
INNER JOIN cajeros
ON ventas.Productos_Producto = productos.Producto && ventas.Cajeros_Cajero = cajeros.Cajero
GROUP BY cajeros.Cajero
ORDER BY SUM(productos.precio) DESC;

-- 6.	Obtener el código y nombre de aquellos cajeros que hayan realizado ventas en pisos cuyas ventas totales 
-- sean inferiores a los 5000 pesos.
SELECT cajeros.Cajero, cajeros.Nombre, SUM(productos.precio) AS 'Total', maquinas_registradoras.Piso
FROM ventas
INNER JOIN productos
INNER JOIN cajeros
INNER JOIN maquinas_registradoras
ON ventas.Productos_Producto = productos.Producto && ventas.Cajeros_Cajero = cajeros.Cajero && ventas.Maquinas_Registradoras_Maquina = maquinas_registradoras.Maquina
GROUP BY cajeros.Cajero, maquinas_registradoras.Piso
HAVING (SUM(productos.precio) < 5000)
ORDER BY SUM(productos.precio) DESC;