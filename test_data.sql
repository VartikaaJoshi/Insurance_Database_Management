
-- Sample test data for the Insurance Database

-- Company test data
INSERT INTO Company (Branch_ID, No_of_Employees, City, Zipcode) VALUES
(1, 10, 'New York', '10001'),
(2, 15, 'Los Angeles', '90001');

-- Agent test data
INSERT INTO Agent (Agent_ID, Email, Name, Phone_no, Branch_ID) VALUES
(1, 'agent1@example.com', 'John Doe', '1234567890', 1),
(2, 'agent2@example.com', 'Jane Smith', '0987654321', 2);

-- Customer test data
INSERT INTO Customer (Customer_ID, DoB, Name, Phone_no, Email, Policy_type, City, Zipcode, Agent_ID) VALUES
(1, '1990-01-01', 'Alice Johnson', '1112223333', 'alice@example.com', 'Car', 'New York', '10001', 1),
(2, '1985-05-05', 'Bob Williams', '4445556666', 'bob@example.com', 'Health', 'Los Angeles', '90001', 2);

-- Payment test data
INSERT INTO Payment (Bank_acc_no, Billing_ID, Payment_date, Amount, Customer_ID) VALUES
('ACC123456', 1, '2023-01-01', 500.00, 1),
('ACC789012', 2, '2023-01-02', 750.00, 2);

-- Policy test data
INSERT INTO Policy (Policy_no, Tenure, Start_date, End_date, Premium, Coverage, Branch_ID) VALUES
(1, 12, '2023-01-01', '2024-01-01', 1000.00, 'Full Coverage', 1),
(2, 12, '2023-01-01', '2024-01-01', 1500.00, 'Partial Coverage', 2);

-- Additional test data for other tables can be added similarly
