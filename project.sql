
-- create database if not exists project
CREATE DATABASE IF NOT EXISTS project;
USE project;
/*  syntax for creating table(
column1 	COLUMN1_DATATYPE(size) CONSTRAINTS,
column2 	COLUMN2_DATATYPE(size) CONSTRAINTS,

*/

CREATE TABLE IF NOT EXISTS user(
username VARCHAR(50) PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
password VARCHAR(50),
dob DATE,
phone VARCHAR(20)
);

DESCRIBE user;