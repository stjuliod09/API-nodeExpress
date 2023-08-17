CREATE DATABASE database_links;
use database_links;

--users table
CREATE TABLE users(
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

DESCRIBE users;


--links table
CREATE TABLE links(
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    title varchar (150) NOT NULL,
    url VARCHAR(255) NOT NULL ,
    description TEXT,
    user_id int(11),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)

);

DESCRIBE links;
