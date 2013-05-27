SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
SHOW WARNINGS;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `paciente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `paciente` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `paciente` (
  `idpaciente` INT NOT NULL AUTO_INCREMENT ,
  `Nombre` VARCHAR(50) NOT NULL ,
  `Apellido` VARCHAR(50) NOT NULL ,
  `DUI` CHAR(10) NOT NULL ,
  `Email` VARCHAR(100) NULL ,
  `Genero` ENUM('M','F') NOT NULL ,
  `FechaNac` DATE NOT NULL ,
  `LugarOrigen` VARCHAR(100) NOT NULL ,
  `EstadoCivil` VARCHAR(45) NOT NULL ,
  `Direccion` TEXT NOT NULL ,
  `idmunicipio` INT NOT NULL ,
  `Telefono` CHAR(10) NOT NULL ,
  `Celular` CHAR(10) NULL ,
  PRIMARY KEY (`idpaciente`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usuario` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT ,
  `usuario` VARCHAR(45) NULL ,
  `contrasena` VARCHAR(100) NULL ,
  `tipousuario` VARCHAR(25) NULL,
  PRIMARY KEY (`idusuario`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `administrador_clinica`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `administrador_clinica` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `administrador_clinica` (
  `idadministrador` INT NOT NULL AUTO_INCREMENT ,
  `Nombre` VARCHAR(45) NULL ,
  `Apeliido` VARCHAR(45) NULL ,
  `idusuario` INT NULL ,
  PRIMARY KEY (`idadministrador`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `medicamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `medicamento` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `medicamento` (
  `idmedicamento` INT NOT NULL AUTO_INCREMENT ,
  `Nombre` VARCHAR(45) NULL ,
  `Marca` VARCHAR(45) NULL ,
  `Fecha_Elaboracion` DATETIME NULL ,
  `Fecha_Vencimiento` DATETIME NULL ,
  `Existencia` INT NULL ,
  PRIMARY KEY (`idmedicamento`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `receta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `receta` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `receta` (
  `idreceta` INT NOT NULL ,
  `idconsulta` INT NOT NULL ,
  PRIMARY KEY (`idreceta`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `receta_medicamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `receta_medicamento` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `receta_medicamento` (
  `idreceta` INT NOT NULL ,
  `idmedicamento` VARCHAR(45) NOT NULL )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `doctor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `doctor` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `doctor` (
  `iddoctor` INT NOT NULL ,
  `Nombre` VARCHAR(45) NULL ,
  `Apellido` VARCHAR(45) NULL ,
  `jvpm` VARCHAR(45) NULL ,
  PRIMARY KEY (`iddoctor`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `consulta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `consulta` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `consulta` (
  `idconsulta` INT NOT NULL ,
  `Fecha` DATETIME NOT NULL ,
  `idDoctor` INT NULL ,
  `idHorario` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idconsulta`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `horario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `horario` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `horario` (
  `idhorario` INT NOT NULL ,
  `Fecha` DATE NULL ,
  `Hora` TIME NULL ,
  `idDoctor` INT NULL ,
  PRIMARY KEY (`idhorario`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `departamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `departamento` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `departamento` (
  `iddepartamento` INT NOT NULL ,
  `Descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`iddepartamento`) )
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `municipio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `municipio` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `municipio` (
  `idmunicipio` INT NOT NULL ,
  `Descripcion` VARCHAR(100) NULL ,
  `iddepto` INT NULL ,
  `departamento_iddepartamento` INT NOT NULL ,
  PRIMARY KEY (`idmunicipio`, `departamento_iddepartamento`) )
ENGINE = InnoDB;

SHOW WARNINGS;
USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
