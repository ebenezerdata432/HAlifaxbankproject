--SQL QUERY AND INDEXING

--Branch( showing branch and the total balance)
SELECT b.name AS branch, SUM(a.balance) AS total_balance
FROM branches b
JOIN accounts a ON b.branch_id = a.branch_id
GROUP BY b.name
ORDER BY total_balance DESC;

--Loans ( Lists of loan with customer with status)
SELECT c.name, l.amount, l.interest_rate, l.status
FROM loans l
JOIN customers c ON l.customer_id = c.customer_id
ORDER BY c.name;

--Top 3 customers with highest account balance
SELECT c.name, SUM(a.balance) AS total_balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id
ORDER BY total_balance DESC
LIMIT 3;

--Numbers of employees per branch
SELECT b.name AS branch_name, COUNT(e.employee_id) AS employee_count
FROM branches b
LEFT JOIN employees e ON b.branch_id = e.branch_id
GROUP BY b.name;


--view transactions for a given account
SELECT transaction_type, amount, transaction_date
FROM transactions
WHERE account_id = 1001
ORDER BY transaction_date DESC
LIMIT 3;


--INdexing for fast searchout

CREATE INDEX idx_customer_email ON customers(email);
CREATE INDEX idx_account_customer_id ON accounts(customer_id);
CREATE INDEX idx_transaction_account_id ON transactions(account_id);
CREATE INDEX idx_loan_status ON loans(status);
