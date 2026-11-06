CREATE DATABASE BankingAnalysis;

USE BankingAnalysis;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    age INT,
    city VARCHAR(50)
);

CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(30),
    balance DECIMAL(12,2),
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);

CREATE TABLE BankTransactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    amount DECIMAL(12,2),
    transaction_type VARCHAR(20),
    transaction_date DATE,
    FOREIGN KEY (account_id)
    REFERENCES Accounts(account_id)
);

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(12,2),
    loan_status VARCHAR(30),
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);

SHOW TABLES;
SELECT VERSION();
SHOW VARIABLES LIKE 'port';
SHOW DATABASES;




