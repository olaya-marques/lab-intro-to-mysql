-- CHALLENGE 2
CREATE DATABASE lab_mysql;
USE lab_mysql;

-- CARS
CREATE TABLE cars(
ID INT AUTO_INCREMENT,
VIN INT NOT NULL,
MANUFACTURER VARCHAR(30) NOT NULL,
MODEL VARCHAR(30) NOT NULL,
C_YEAR INT  NOT NULL,
COLOR VARCHAR(20) NOT NULL,
PRIMARY KEY (VIN)
);

-- CUSTOMER
CREATE TABLE customer(
ID INT AUTO_INCREMENT,
CUSTOMER_ID INT NOT NULL,
C_NAME VARCHAR(30) NOT NULL,
PHONE_NUMBER INT,
EMAIL VARCHAR(30),
ADDRESS VARCHAR(30),
CITY VARCHAR(30),
STATE_PROVINCE VARCHAR(30),
COUNTRY VARCHAR(30),
POSTAL CHAR(5),
PRIMARY KEY(CUSTOMER_ID)
);

-- SALES PERSON
CREATE TABLE sales_person(
ID INT AUTO_INCREMENT,
STAFF_ID VARCHAR(30) NOT NULL, 
SP_NAME VARCHAR (30) NOT NULL,
STORE VARCHAR(30) NOT NULL,
PRIMARY KEY(STAFF_ID)
);

-- INVOICES
CREATE TABLE invoices(
ID INT AUTO_INCREMENT,
INVOICE_NUMBER INT NOT NULL,
IN_DATE DATE NOT NULL,
CAR INT NOT NULL,
CUSTOMER INT NOT NULL,
SALES_PERSON INT NOT NULL,
PRIMARY KEY (INVOICE_NUMBER),
FOREIGN KEY (CAR) REFERENCES cars(ID) ON DELETE CASCADE,
FOREIGN KEY (CUSTOMER) REFERENCES customer(CUSTOMER_ID) ON DELETE CASCADE,
FOREIGN KEY (SALES_PERSON) REFERENCES sales_person(STAFF_ID) ON DELETE CASCADE
);