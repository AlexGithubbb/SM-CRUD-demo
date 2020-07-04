CREATE database springmybatis;

USE springmybatis;

CREATE table employee
(
id INT(11) NOT NULL PROMARY KEY AUTO_INCREMENT;
	fullname VARCHAR(50) NOT NULL;
	email VARCHAR(50) NOT NULL;
	gender VARCHAR(50) NOT NULL;
	hobbies VARCHAR(50) NOT NULL;
	country VARCAHR(50) NOT NULL;
	address VARCHAR(50) NOT NULL;

)