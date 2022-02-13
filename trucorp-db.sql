-- Database: Trucorp

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `Jabatan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'qwerty','Jl. A','Jabatan-A'),(2,'asdfgh','Jl. B','Jabatan-B'),(3,'zxcvbn','Jl. C','Jabatan-C');
UNLOCK TABLES;