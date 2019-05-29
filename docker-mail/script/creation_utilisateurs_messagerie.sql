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
