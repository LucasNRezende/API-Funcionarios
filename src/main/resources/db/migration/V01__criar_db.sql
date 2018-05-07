---- MySQL Workbench Forward Engineering
--
--SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
--SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
--SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
--
---- -----------------------------------------------------
---- Schema atos
---- -----------------------------------------------------
--
---- -----------------------------------------------------
---- Schema atos
---- -----------------------------------------------------
--CREATE SCHEMA IF NOT EXISTS `api` DEFAULT CHARACTER SET utf8 ;
--USE `api` ;
--
------ -----------------------------------------------------
------ Table `api`.`projeto`
------ -----------------------------------------------------
----CREATE TABLE IF NOT EXISTS `api`.`projeto` (
----  `idprojeto` INT NOT NULL AUTO_INCREMENT,
----  `nome_projeto` VARCHAR(100) NULL,
----  `cliente` VARCHAR(100) NULL,
----  `valor_projeto` VARCHAR(45) NULL,
----  `data_inicio` VARCHAR(45) NULL,
----  `data_fim` VARCHAR(45) NULL,
----  PRIMARY KEY (`idprojeto`))
----ENGINE = InnoDB;
--
--
---- -----------------------------------------------------
---- Table `api`.`funcionario`
---- -----------------------------------------------------
--CREATE TABLE IF NOT EXISTS `api`.`funcionario` (
--  `id` INT NOT NULL AUTO_INCREMENT,
--  `nome` VARCHAR(100) NULL,
--  `cpf` VARCHAR(45) NULL,
--  `salario` VARCHAR(45) NULL,
--  `cargo` VARCHAR(100) NULL,
--  `gerente` VARCHAR(100) NULL,
--  `habilidades` VARCHAR(500) NULL,
--  `certificacao` VARCHAR(500) NULL,
--  `projeto` VARCHAR(500) NULL,
--  `gcm` VARCHAR(45) NULL,
----  `projeto_idprojeto` INT NOT NULL,
--  PRIMARY KEY (`id`))
--ENGINE = InnoDB;
--
--USE `api` ;
--
--
--SET SQL_MODE=@OLD_SQL_MODE;
--SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
--SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;








-- MySQL Workbench Forward Engineering

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema api
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema api
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `api` DEFAULT CHARACTER SET utf8 ;
USE `api` ;

-- -----------------------------------------------------
-- Table `api`.`projeto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `api`.`projeto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome_projeto` VARCHAR(45) NULL,
  `cliente` VARCHAR(45) NULL,
  `valor_projeto` VARCHAR(45) NULL,
  `data_inicio` VARCHAR(45) NULL,
  `data_fim` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `api`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `api`.`funcionario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `cpf` VARCHAR(45) NULL,
  `salario` VARCHAR(45) NULL,
  `cargo` VARCHAR(45) NULL,
  `habilidades` VARCHAR(45) NULL,
  `certificacao` VARCHAR(45) NULL,
  `gcm` VARCHAR(45) NULL,
  `projeto_id` INT NOT NULL,
  PRIMARY KEY (`id`, `projeto_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
