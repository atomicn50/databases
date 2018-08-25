CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL
);

CREATE TABLE rooms (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  roomname VARCHAR(50) NOT NULL
);
--
CREATE TABLE messages (
  id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user INT NOT NULL,
  room INT NOT NULL,
  text VARCHAR(50) NOT NULL,
  created_at DATETIME,
  FOREIGN KEY(user) REFERENCES users(id),
  FOREIGN KEY (room) REFERENCES rooms (id)

);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/
