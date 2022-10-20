CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE appDB;
CREATE TABLE IF NOT EXISTS users (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  login VARCHAR(20) NOT NULL,
  password VARCHAR(40) NOT NULL,
  PRIMARY KEY (ID)
);
CREATE TABLE IF NOT EXISTS afisha (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  film VARCHAR(20) NOT NULL,
  price INTEGER,
  PRIMARY KEY (ID)
);

INSERT INTO users (login, password)
SELECT * FROM (SELECT 'artem', '{SHA}QL0AFWMIX8NRZTKeof9cXsvbvu8=') AS tmp
WHERE NOT EXISTS (
    SELECT login FROM users WHERE login='artem' AND password='123'
) LIMIT 1;

INSERT INTO afisha (film, price)
SELECT * FROM (SELECT 'Spider-man', 400) AS tmp
WHERE NOT EXISTS (
    SELECT film FROM afisha WHERE film = 'Spider-man' AND price = 400
) LIMIT 1;

INSERT INTO afisha (film, price)
SELECT * FROM (SELECT 'Doctor Strange 2', 150) AS tmp
WHERE NOT EXISTS (
    SELECT film FROM afisha WHERE film = 'Doctor Strange 2' AND price = 150
) LIMIT 1;

INSERT INTO afisha (film, price)
SELECT * FROM (SELECT 'Gifted', 750) AS tmp
WHERE NOT EXISTS (
    SELECT film FROM afisha WHERE film = 'Gifted' AND price = 750
) LIMIT 1;

INSERT INTO afisha (film, price)
SELECT * FROM (SELECT 'Avengers 4', 1700) AS tmp
WHERE NOT EXISTS (
    SELECT film FROM afisha WHERE film = 'Avengers 4' AND price = 1700
) LIMIT 1;

INSERT INTO afisha (film, price)
SELECT * FROM (SELECT 'Thor 4', 300) AS tmp
WHERE NOT EXISTS (
    SELECT film FROM afisha WHERE film = 'Thor 4' AND price = 300
) LIMIT 1;

INSERT INTO afisha (film, price)
SELECT * FROM (SELECT 'Inception', 400) AS tmp
WHERE NOT EXISTS (
        SELECT film FROM afisha WHERE film = 'Inception' AND price = 400
) LIMIT 1;

INSERT INTO afisha (film, price)
SELECT * FROM (SELECT 'Zodiac', 200) AS tmp
WHERE NOT EXISTS (
        SELECT film FROM afisha WHERE film = 'Zodiac' AND price = 200
) LIMIT 1;

INSERT INTO afisha (film, price)
SELECT * FROM (SELECT 'Transformers', 300) AS tmp
WHERE NOT EXISTS (
        SELECT film FROM afisha WHERE film = 'Transformers' AND price = 300
) LIMIT 1;

INSERT INTO afisha (film, price)
SELECT * FROM (SELECT 'Togo', 120) AS tmp
WHERE NOT EXISTS (
        SELECT film FROM afisha WHERE film = 'Togo' AND price = 120
) LIMIT 1;

INSERT INTO afisha (film, price)
SELECT * FROM (SELECT 'Hulk', 500) AS tmp
WHERE NOT EXISTS (
        SELECT film FROM afisha WHERE film = 'Hulk' AND price = 500
) LIMIT 1;