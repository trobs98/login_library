
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema UserSchema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `UserSchema` ;
USE `UserSchema` ;

-- -----------------------------------------------------
-- Table `UserSchema`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UserSchema`.`User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `hash_password` VARCHAR(344) NOT NULL,
  `salt` VARCHAR(344) NOT NULL,
  `create_date` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `UserSchema`.`UserAudit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `UserSchema`.`UserAudit` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `FK_userId` INT NOT NULL,
  `login_date` DATETIME NOT NULL,
  `login_IP` VARCHAR(45) NOT NULL,
  `cookie_hash` VARCHAR(100) NOT NULL,
  `salt` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_userId_idx` (`FK_userId` ASC) VISIBLE,
  CONSTRAINT `FK_userId_UserAudit`
    FOREIGN KEY (`FK_userId`)
    REFERENCES `UserSchema`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

