INSERT INTO `messagerie`.`virtual_domains`
(`id` ,`name`)
VALUES
('1', 'wt13.ephec-ti.be');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('1', '1', ENCRYPT('motDePasseDeToto', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'toto@wt13.ephec-ti.be', 'wt13.ephec-ti.be/toto/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('2', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'guillaume@wt13.ephec-ti.be', 'wt13.ephec-ti.be/guillaume/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('3', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'melvin@wt13.ephec-ti.be', 'wt13.ephec-ti.be/melvin/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('4', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'hubert@wt13.ephec-ti.be', 'wt13.ephec-ti.be/hubert/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('5', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'direction@wt13.ephec-ti.be', 'wt13.ephec-ti.be/direction/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('6', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'secretariat@wt13.ephec-ti.be', 'wt13.ephec-ti.be/secretariat/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('7', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'atelier@wt13.ephec-ti.be', 'wt13.ephec-ti.be/atelier/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('8', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'hangar@wt13.ephec-ti.be', 'wt13.ephec-ti.be/hangar/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('9', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'm.roux@wt13.ephec-ti.be', 'wt13.ephec-ti.be/m.roux/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('10', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'c.garcia@wt13.ephec-ti.be', 'wt13.ephec-ti.be/c.garcia/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('11', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'service-commercial@wt13.ephec-ti.be', 'wt13.ephec-ti.be/service-commercial/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('12', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'h.vandewalle@wt13.ephec-ti.be', 'wt13.ephec-ti.be/h.vandewalle/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('13', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'g.vandenherrewegen@wt13.ephec-ti.be', 'wt13.ephec-ti.be/g.vandenherrewegen/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('14', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'm.camposcasares@wt13.ephec-ti.be', 'wt13.ephec-ti.be/m.camposcasares/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('15', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'j.doe@wt13.ephec-ti.be', 'wt13.ephec-ti.be/j.doe/');

INSERT INTO `messagerie`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('16', '1', ENCRYPT('tortue', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'a.dupont@wt13.ephec-ti.be', 'wt13.ephec-ti.be/a.dupont/');
