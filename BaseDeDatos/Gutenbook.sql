-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tiendaLiTest
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema gutenbook
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gutenbook
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gutenbook` ;
USE `gutenbook` ;

-- -----------------------------------------------------
-- Table `gutenbook`.`libro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gutenbook`.`libro` (
  `libroID` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `autor` VARCHAR(100) NOT NULL,
  `url` VARCHAR(300) NOT NULL,
  `genero` VARCHAR(50) NOT NULL,
  `anoPublicacion` YEAR NOT NULL,
  `precio` FLOAT NOT NULL,
  `pais` VARCHAR(50) NOT NULL,
  `editorial` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`libroID`),
  UNIQUE INDEX `url_UNIQUE` (`url` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gutenbook`.`inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gutenbook`.`inventario` (
  `unidades` INT NOT NULL,
  `descripcion` VARCHAR(250) NULL,
  `libro_libroID` INT NOT NULL,
  PRIMARY KEY (`libro_libroID`),
  CONSTRAINT `fk_inventario_libro1`
    FOREIGN KEY (`libro_libroID`)
    REFERENCES `gutenbook`.`libro` (`libroID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gutenbook`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gutenbook`.`usuario` (
  `IDusuario` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(100) NOT NULL,
  `nombre` VARCHAR(75) NOT NULL,
  `correoElectronico` VARCHAR(250) NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  `contraseña` VARCHAR(100) NOT NULL,
  `administrador` VARCHAR(1) BINARY NOT NULL,
  PRIMARY KEY (`IDusuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gutenbook`.`direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gutenbook`.`direccion` (
  `NumeroOrden` INT NOT NULL AUTO_INCREMENT,
  `calle` VARCHAR(50) NOT NULL,
  `colonia` VARCHAR(75) NOT NULL,
  `delegacion/municipio` VARCHAR(55) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `codigoPostal` VARCHAR(45) NOT NULL,
  `usuario_IDusuario` INT NOT NULL,
  PRIMARY KEY (`NumeroOrden`, `usuario_IDusuario`),
  INDEX `fk_direccion_usuario1_idx` (`usuario_IDusuario` ASC) VISIBLE,
  CONSTRAINT `fk_direccion_usuario1`
    FOREIGN KEY (`usuario_IDusuario`)
    REFERENCES `gutenbook`.`usuario` (`IDusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gutenbook`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gutenbook`.`pedido` (
  `idpedido` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `total` FLOAT NOT NULL,
  `usuario_IDusuario` INT NOT NULL,
  PRIMARY KEY (`idpedido`, `usuario_IDusuario`),
  INDEX `fk_pedido_usuario1_idx` (`usuario_IDusuario` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_usuario1`
    FOREIGN KEY (`usuario_IDusuario`)
    REFERENCES `gutenbook`.`usuario` (`IDusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `gutenbook`.`pedido_has_libro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gutenbook`.`pedido_has_libro` (
  `pedido_idpedido` INT NOT NULL,
  `libro_libroID` INT NOT NULL,
  PRIMARY KEY (`pedido_idpedido`, `libro_libroID`),
  INDEX `fk_pedido_has_libro_libro1_idx` (`libro_libroID` ASC) VISIBLE,
  INDEX `fk_pedido_has_libro_pedido1_idx` (`pedido_idpedido` ASC) VISIBLE,
  CONSTRAINT `fk_pedido_has_libro_pedido1`
    FOREIGN KEY (`pedido_idpedido`)
    REFERENCES `gutenbook`.`pedido` (`idpedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_has_libro_libro1`
    FOREIGN KEY (`libro_libroID`)
    REFERENCES `gutenbook`.`libro` (`libroID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
