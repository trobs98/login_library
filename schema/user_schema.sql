CREATE DATABASE  IF NOT EXISTS `UserSchema`
USE `UserSchema`;

--
-- Table structure for table `ResetPasswordToken`
--
DROP TABLE IF EXISTS `ResetPasswordToken`;
CREATE TABLE `ResetPasswordToken` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FK_userId` int NOT NULL,
  `hash_token` varchar(344) NOT NULL,
  `salt` varchar(344) NOT NULL,
  `expiration_date` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_userId_idx` (`FK_userId`),
  CONSTRAINT `FK_ResetPassword_userId` FOREIGN KEY (`FK_userId`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `User`
--
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hash_password` varchar(344) NOT NULL,
  `salt` varchar(344) NOT NULL,
  `create_date` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `UserAudit`
--
DROP TABLE IF EXISTS `UserAudit`;
CREATE TABLE `UserAudit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FK_userId` int NOT NULL,
  `login_date` varchar(25) NOT NULL,
  `login_IP` varchar(15) NOT NULL,
  `cookie` varchar(250) NOT NULL,
  `expiry_date` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_userId_UserAudit_idx` (`FK_userId`),
  CONSTRAINT `FK_userId` FOREIGN KEY (`FK_userId`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
