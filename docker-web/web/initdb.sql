CREATE DATABASE IF NOT EXISTS woodytoys;

USE woodytoys;

CREATE TABLE IF NOT EXISTS toys(
    id int not null auto_increment,
    name varchar(64),
    quantity int not null,
    primary key(id)
);

INSERT INTO toys (name, quantity)
    VALUES 
        ('lego', 3),
        ('surface', 1),
        ('puzzle', 4);
