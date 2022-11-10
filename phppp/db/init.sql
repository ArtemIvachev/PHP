CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT, DELETE ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE appDB;
CREATE TABLE IF NOT EXISTS users (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  login VARCHAR(20) NOT NULL,
  password VARCHAR(40) NOT NULL,
  PRIMARY KEY (ID)
);
CREATE TABLE IF NOT EXISTS products (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  price INTEGER,
  PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS orders (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  totalprice INTEGER,
  PRIMARY KEY (ID)
);

INSERT INTO users (login, password)
SELECT * FROM (SELECT 'artem', '{SHA}QL0AFWMIX8NRZTKeof9cXsvbvu8=') AS tmp
WHERE NOT EXISTS (
    SELECT login FROM users WHERE login='artem' AND password='123'
) LIMIT 1;

INSERT INTO products (name, price)
SELECT * FROM (SELECT 'Spider-man 3', 800) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM products WHERE name = 'Spider-man 3' AND price = 800
) LIMIT 1;

INSERT INTO products (name, price)
SELECT * FROM (SELECT 'Doctor Strange 2', 500) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM products WHERE name = 'Doctor Strange 2' AND price = 500
) LIMIT 1;

INSERT INTO products (name, price)
SELECT * FROM (SELECT 'Gifted', 300) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM products WHERE name = 'Gifted' AND price = 300
) LIMIT 1;

INSERT INTO products (name, price)
SELECT * FROM (SELECT 'Avengers 4', 1000) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM products WHERE name = 'Avengers 4' AND price = 1000
) LIMIT 1;

INSERT INTO products (name, price)
SELECT * FROM (SELECT 'Inception', 450) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM products WHERE name = 'Inception' AND price = 450
) LIMIT 1;

INSERT INTO orders (name,  totalprice)
SELECT * FROM (SELECT 'Artem', 10000) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM orders WHERE name = 'Artem' AND  totalprice = 10000
) LIMIT 1;

INSERT INTO orders (name,  totalprice)
SELECT * FROM (SELECT 'Sava', 7777) AS tmp
WHERE NOT EXISTS (
    SELECT name FROM orders WHERE name = 'Sava' AND  totalprice = 7777
) LIMIT 1;