CREATE DATABASE Bank;
USE Bank;
CREATE TABLE Payment(
customer_id INT PRIMARY KEY,
customer VARCHAR(50),
mode VARCHAR(50),
city VARCHAR(20)
);
INSERT INTO payment
(customer_id,customer,mode,city)
VALUES
(101, "Olivia Barrett", "Netbanking","Portland"),
(102, "Ethan sinclair", "Credit card", "Miami"),
(103, "Maya hernandez", "Credit card", "Seattle"),
(104, "Liam donovan", "Net banking", "Denver"),
(105, "Sophia Nguyen", "Credit card", "New orleans"),
(106, "Caleb Foster", "Debit card", "Minneapolis"),
(107, "Ava Patel", "Debit card", "Phoenix"),
(108, "Lucas Carter" , "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit card", "Boston");
USE Bank;
SELECT mode, count(customer) FROM payment GROUP BY mode;

