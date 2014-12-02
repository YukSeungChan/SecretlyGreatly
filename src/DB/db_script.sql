-- MySQL Script generated by MySQL Workbench
-- Mon Nov 24 20:22:44 2014
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Company`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Company` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Company` (
  `name` INT NOT NULL,
  PRIMARY KEY (`name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`user` ;

CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `user_id` INT NOT NULL,
  `nickname` VARCHAR(45) NULL,
  `profile_pic` BLOB NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_Department_Company`
    FOREIGN KEY ()
    REFERENCES `mydb`.`Company` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`movie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`movie` ;

CREATE TABLE IF NOT EXISTS `mydb`.`movie` (
  `maker_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `maker_pic` BLOB NULL,
  `type` CHAR(1) NOT NULL,
  `genre` VARCHAR(45) NULL,
  PRIMARY KEY (`maker_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`genre`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`genre` ;

CREATE TABLE IF NOT EXISTS `mydb`.`genre` (
  `movie_id` INT NOT NULL,
  `genre_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`movie_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`maker`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`maker` ;

CREATE TABLE IF NOT EXISTS `mydb`.`maker` (
  `maker_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `maker_pic` BLOB NULL,
  PRIMARY KEY (`maker_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`evaluation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`evaluation` ;

CREATE TABLE IF NOT EXISTS `mydb`.`evaluation` (
  `user_user_id` INT NOT NULL,
  `movie_maker_id` INT NOT NULL,
  `point` DECIMAL(2,1) NULL,
  `sns` VARCHAR(200) NULL,
  PRIMARY KEY (`user_user_id`, `movie_maker_id`),
  CONSTRAINT `fk_user_has_movie_user1`
    FOREIGN KEY (`user_user_id`)
    REFERENCES `mydb`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_movie_movie1`
    FOREIGN KEY (`movie_maker_id`)
    REFERENCES `mydb`.`movie` (`maker_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`evaluation_info`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`evaluation_info` ;

CREATE TABLE IF NOT EXISTS `mydb`.`evaluation_info` (
  `movie_info` INT NOT NULL,
  `user_id(email)` VARCHAR(45) NULL,
  `avg_count` DOUBLE NULL,
  `comment` VARCHAR(100) NULL,
  PRIMARY KEY (`movie_info`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`User_has_moive_maker`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`User_has_moive_maker` ;

CREATE TABLE IF NOT EXISTS `mydb`.`User_has_moive_maker` (
  `User_user_id(email)` VARCHAR(100) NOT NULL,
  `moive_maker_movie_id` INT NOT NULL,
  PRIMARY KEY (`User_user_id(email)`, `moive_maker_movie_id`),
  CONSTRAINT `fk_User_has_moive_maker_User1`
    FOREIGN KEY (`User_user_id(email)`)
    REFERENCES `mydb`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_has_moive_maker_moive_maker1`
    FOREIGN KEY (`moive_maker_movie_id`)
    REFERENCES `mydb`.`maker` (`maker_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_User_has_moive_maker_moive_maker1_idx` ON `mydb`.`User_has_moive_maker` (`moive_maker_movie_id` ASC);

CREATE INDEX `fk_User_has_moive_maker_User1_idx` ON `mydb`.`User_has_moive_maker` (`User_user_id(email)` ASC);


-- -----------------------------------------------------
-- Table `mydb`.`user_has_maker`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`user_has_maker` ;

CREATE TABLE IF NOT EXISTS `mydb`.`user_has_maker` (
  `maker_maker_id` INT NOT NULL,
  `maker_type` CHAR(1) NOT NULL,
  PRIMARY KEY (`maker_maker_id`, `maker_type`),
  CONSTRAINT `fk_user_has_maker_maker1`
    FOREIGN KEY (`maker_maker_id` , `maker_type`)
    REFERENCES `mydb`.`maker` (`maker_id` , `type`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_user_has_maker_maker1_idx` ON `mydb`.`user_has_maker` (`maker_maker_id` ASC, `maker_type` ASC);


-- -----------------------------------------------------
-- Table `mydb`.`maker`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`maker` ;

CREATE TABLE IF NOT EXISTS `mydb`.`maker` (
  `maker_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `maker_pic` BLOB NULL,
  PRIMARY KEY (`maker_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`evaluation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`evaluation` ;

CREATE TABLE IF NOT EXISTS `mydb`.`evaluation` (
  `user_user_id` INT NOT NULL,
  `movie_maker_id` INT NOT NULL,
  `point` DECIMAL(2,1) NULL,
  `sns` VARCHAR(200) NULL,
  PRIMARY KEY (`user_user_id`, `movie_maker_id`),
  CONSTRAINT `fk_user_has_movie_user1`
    FOREIGN KEY (`user_user_id`)
    REFERENCES `mydb`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_movie_movie1`
    FOREIGN KEY (`movie_maker_id`)
    REFERENCES `mydb`.`movie` (`maker_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`movie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`movie` ;

CREATE TABLE IF NOT EXISTS `mydb`.`movie` (
  `maker_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `maker_pic` BLOB NULL,
  `type` CHAR(1) NOT NULL,
  `genre` VARCHAR(45) NULL,
  PRIMARY KEY (`maker_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`evaluation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`evaluation` ;

CREATE TABLE IF NOT EXISTS `mydb`.`evaluation` (
  `user_user_id` INT NOT NULL,
  `movie_maker_id` INT NOT NULL,
  `point` DECIMAL(2,1) NULL,
  `sns` VARCHAR(200) NULL,
  PRIMARY KEY (`user_user_id`, `movie_maker_id`),
  CONSTRAINT `fk_user_has_movie_user1`
    FOREIGN KEY (`user_user_id`)
    REFERENCES `mydb`.`user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_has_movie_movie1`
    FOREIGN KEY (`movie_maker_id`)
    REFERENCES `mydb`.`movie` (`maker_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_user_has_movie_movie1_idx` ON `mydb`.`evaluation` (`movie_maker_id` ASC);

CREATE INDEX `fk_user_has_movie_user1_idx` ON `mydb`.`evaluation` (`user_user_id` ASC);


-- -----------------------------------------------------
-- Table `mydb`.`maker_making_movie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`maker_making_movie` ;

CREATE TABLE IF NOT EXISTS `mydb`.`maker_making_movie` (
  `maker_maker_id` INT NOT NULL,
  `movie_maker_id` INT NOT NULL,
  `type` CHAR(1) NOT NULL,
  PRIMARY KEY (`maker_maker_id`, `movie_maker_id`),
  CONSTRAINT `fk_maker_has_movie_maker1`
    FOREIGN KEY (`maker_maker_id`)
    REFERENCES `mydb`.`maker` (`maker_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_maker_has_movie_movie1`
    FOREIGN KEY (`movie_maker_id`)
    REFERENCES `mydb`.`movie` (`maker_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_maker_has_movie_movie1_idx` ON `mydb`.`maker_making_movie` (`movie_maker_id` ASC);

CREATE INDEX `fk_maker_has_movie_maker1_idx` ON `mydb`.`maker_making_movie` (`maker_maker_id` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
