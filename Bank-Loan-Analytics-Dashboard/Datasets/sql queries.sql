
USE BankingAnalysis;
INSERT INTO Customers VALUES
(1, 'Aarav Sharma', 24, 'Indore'),
(2, 'Priya Verma', 29, 'Bhopal'),
(3, 'Rahul Gupta', 35, 'Mumbai'),
(4, 'Sneha Patel', 27, 'Pune'),
(5, 'Rohan Mehta', 42, 'Delhi'),
(6, 'Ananya Singh', 31, 'Indore'),
(7, 'Karan Joshi', 38, 'Jaipur'),
(8, 'Neha Jain', 26, 'Bhopal'),
(9, 'Arjun Rao', 45, 'Hyderabad'),
(10, 'Isha Kapoor', 33, 'Mumbai');
SELECT * FROM Customers;


INSERT INTO Accounts VALUES
(101, 1, 'Savings', 45000),
(102, 2, 'Current', 85000),
(103, 3, 'Savings', 120000),
(104, 4, 'Savings', 65000),
(105, 5, 'Current', 200000),
(106, 6, 'Savings', 55000),
(107, 7, 'Current', 150000),
(108, 8, 'Savings', 35000),
(109, 9, 'Savings', 175000),
(110, 10, 'Current', 95000);
SELECT * FROM Accounts;

INSERT INTO BankTransactions VALUES
(1001, 101, 5000, 'Deposit', '2026-01-05'),
(1002, 101, 2000, 'Withdrawal', '2026-01-10'),
(1003, 102, 10000, 'Deposit', '2026-01-15'),
(1004, 103, 15000, 'Deposit', '2026-02-02'),
(1005, 104, 3000, 'Withdrawal', '2026-02-08'),
(1006, 105, 25000, 'Deposit', '2026-02-12'),
(1007, 106, 7000, 'Deposit', '2026-03-01'),
(1008, 107, 12000, 'Withdrawal', '2026-03-05'),
(1009, 108, 4000, 'Deposit', '2026-03-10'),
(1010, 109, 20000, 'Deposit', '2026-03-15'),
(1011, 110, 8000, 'Withdrawal', '2026-04-01'),
(1012, 102, 6000, 'Withdrawal', '2026-04-05'),
(1013, 103, 9000, 'Deposit', '2026-04-10'),
(1014, 105, 11000, 'Withdrawal', '2026-04-15'),
(1015, 109, 5000, 'Deposit', '2026-05-01');
SELECT * FROM BankTransactions;

INSERT INTO Loans VALUES
(201, 1, 200000, 'Approved'),
(202, 2, 350000, 'Pending'),
(203, 3, 500000, 'Approved'),
(204, 4, 150000, 'Rejected'),
(205, 5, 800000, 'Approved'),
(206, 6, 250000, 'Pending'),
(207, 7, 400000, 'Approved'),
(208, 8, 100000, 'Rejected'),
(209, 9, 600000, 'Approved'),
(210, 10, 300000, 'Pending');
SELECT * FROM Loans;

SELECT *
FROM Customers
WHERE city = 'Indore';

SELECT
    c.customer_name,
    a.balance
FROM Customers c
INNER JOIN Accounts a
ON c.customer_id = a.customer_id; 

SELECT
    city,
    COUNT(customer_id) AS total_customers
FROM Customers
GROUP BY city;

  -- transaction query -- 
SELECT
    a.customer_id,
    SUM(t.amount) AS total_transaction
FROM Accounts a
JOIN BankTransactions t
ON a.account_id = t.account_id
GROUP BY a.customer_id
ORDER BY total_transaction DESC;
-- cutomer without bank account -- 
INSERT INTO Customers VALUES
(11, 'Meera Sharma', 28, 'Indore');

SELECT
    c.customer_name,
    a.balance
FROM Customers c
LEFT JOIN Accounts a
ON c.customer_id = a.customer_id;
