--INSERT DATA INTO TABLES
--INsert account
INSERT INTO accounts (account_id, customer_id, branch_id, account_type, balance, created_at ) VALUES
(1001, 001, 1, 'Savings', 5000.00, '2025-01-15'),
(1002, 002, 2, 'Checking', 1500.00, '2025-02-20'),
(1003, 003, 3, 'Savings', 7000.00, '2025-01-15'),
(1004, 004, 4, 'Checking', 9000.00, '2025-02-10'),
(1005, 005, 5, 'Savings', 15000.00, '2025-01-19');


INSERT INTO accounts (account_id, customer_id, branch_id, account_type, balance, created_at ) VALUES
(1006, 006, 6, 'Checking', 2500.00, '2025-02-22'),
(1007, 007, 7, 'Savings', 9600.00, '2025-02-18'),
(1008, 008, 8, 'Checking', 10000.00, '2025-01-31'),
(1009, 009, 9, 'Savings', 20000.00, '2025-02-15'),
(1010, 010, 10, 'Checking', 1000.00, '2025-02-13');

-- INSERT customers
INSERT INTO customers (customer_id, name, address, phone, email)
VALUES
(001, 'Alice Johnson', '123 Main St, Springfield', '555-1234', 'alice@example.com'),
(002, 'Bob Smith', '456 Oak Ave, Springfield', '555-5678', 'bob@example.com');



INSERT INTO customers(customer_id, name, address, phone, email)
VALUES
(003, 'Liberty Peter', '22 settle St, gateway', '555-122309', 'liberty@gmail.com.com'),
(004, 'Messy Bliss', '105 babaride close, Essex', '234-567890', 'messy@gmail.com.com'),
(005, 'Emmanuel bill', '499 Bintu Ave, berger', '234-78456', 'emmanuelbill@gmail.com.com');


INSERT INTO Branches (branch_id, name, address)
VALUES
(1, 'Downtown Branch', '789 Central Blvd, Springfield'),
(2, 'Northside Branch', '321 North St, Breentwood'),
(3, 'Eastside Branch', '402 Central Blvd, Middlesex'),
(4, 'westlondon Branch', '389 Central Blvd, Aliphax'),
(5, 'Westham Branch', '113 Central Blvd, Southsea');


--INsert employee table

INSERT INTO Employees (employee_id, name, position, branch_id)
VALUES
(1, 'Emmanuel brown', 'Manager', 1),
(2, 'John Bobmarley', 'Teller', 2),
(3, 'Bola weyola', 'Cashier', 3),
(4, 'John Bobmarley', 'IT officer', 4),
(5, 'Emmanuel brown', 'Accountant', 5);

--insert transactions

INSERT INTO Transactions (transaction_id, account_id, amount, transaction_type, transaction_date)
VALUES
(501, 1001, 1000.00, 'Credit', '2025-03-11'),
(502, 1002, 200.00, 'Debit', '2025-03-07'),
(503, 1003, 3000.00, 'Credit', '2025-03-05'),
(504, 1004, 1450.00, 'Credit', '2025-03-02'),
(505, 1005, 5000.00, 'Credit', '2025-03-06');

--INsert loan

INSERT INTO Loans (loan_id, customer_id, branch_id, amount, interest_rate, issue_date, status)
VALUES
(301, 1, 001, 10000.00, 8.0, '2025-04-01', 'Approved'),
(302, 2, 002, 5000.00, 8.0, '2025-04-10', 'Pending'),
(303, 3, 003, 50000.00, 9.5, '2025-04-01', 'Approved'),
(304, 4, 004, 7000.00, 12.0, '2025-04-10', 'Pending'),
(305, 5, 005, 90000.00, 11.5, '2025-04-01', 'Approved');


