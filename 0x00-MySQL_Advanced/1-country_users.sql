-- Script that creates a table users if it doesn't exist:
-- id, email, name, country(enumeration of US, CO and TN)
CREATE TABLE IF NOT EXISTS users(
	id int NOT NULL PRIMARY_KEY AUTO_INCREMENT,
	email varchar(255) NOT NULL UNIQUE,
	name varchar(255),
	country ENUM('US', 'CO', 'TN') DEFAULT 'US' NOT NULL
);
