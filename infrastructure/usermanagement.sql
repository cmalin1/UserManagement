CREATE TABLE `usermanagement`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL DEFAULT 'null',
  `last_name` VARCHAR(45) NULL DEFAULT 'null',
  `user_name` VARCHAR(45) NULL DEFAULT 'null',
  `date_of_birth` DATE NULL DEFAULT '2002-01-01',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);

INSERT INTO `usermanagement`.`user` (`id`, `first_name`, `last_name`, `user_name`, `date_of_birth`) VALUES ('', 'Cathie', 'Malin', 'cmalin1', '2001-01-11');
INSERT INTO `usermanagement`.`user` (`id`, `first_name`, `last_name`, `user_name`, `date_of_birth`) VALUES ('', 'Sam', 'Nelson', 'snelson', '2002-02-22');
INSERT INTO `usermanagement`.`user` (`id`, `first_name`, `last_name`, `user_name`, `date_of_birth`) VALUES ('', 'Jesse', 'Smith', 'jsmith', '2003-03-30');
