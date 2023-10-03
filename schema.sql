
-- Creating tables for the Insurance Database

-- Company table
CREATE TABLE Company (
    Branch_ID INT PRIMARY KEY,
    No_of_Employees INT,
    City VARCHAR(100),
    Zipcode VARCHAR(10)
);

-- Agent table
CREATE TABLE Agent (
    Agent_ID INT PRIMARY KEY,
    Email VARCHAR(100),
    Name VARCHAR(150),
    Phone_no VARCHAR(15),
    Branch_ID INT,
    FOREIGN KEY (Branch_ID) REFERENCES Company(Branch_ID)
);

-- Customer table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    DoB DATE,
    Name VARCHAR(150),
    Phone_no VARCHAR(15),
    Email VARCHAR(100),
    Policy_type VARCHAR(50),
    City VARCHAR(100),
    Zipcode VARCHAR(10),
    Agent_ID INT,
    FOREIGN KEY (Agent_ID) REFERENCES Agent(Agent_ID)
);

-- Payment table
CREATE TABLE Payment (
    Bank_acc_no VARCHAR(20) PRIMARY KEY,
    Billing_ID INT,
    Payment_date DATE,
    Amount DECIMAL(10, 2),
    Customer_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

-- Policy table
CREATE TABLE Policy (
    Policy_no INT PRIMARY KEY,
    Tenure INT,
    Start_date DATE,
    End_date DATE,
    Premium DECIMAL(10, 2),
    Coverage TEXT,
    Branch_ID INT,
    FOREIGN KEY (Branch_ID) REFERENCES Company(Branch_ID)
);

-- Claim table
CREATE TABLE Claim (
    Claim_ID INT PRIMARY KEY,
    Amount_issued DECIMAL(10, 2),
    Status VARCHAR(50),
    Issued_date DATE,
    Billing_ID INT,
    FOREIGN KEY (Billing_ID) REFERENCES Payment(Billing_ID)
);

-- Health table
CREATE TABLE Health (
    Health_ID INT PRIMARY KEY,
    Medical_history TEXT,
    Associated_hospital VARCHAR(150),
    Treatment_insured VARCHAR(150),
    Policy_no INT,
    FOREIGN KEY (Policy_no) REFERENCES Policy(Policy_no)
);

-- Car table
CREATE TABLE Car (
    Car_no VARCHAR(20) PRIMARY KEY,
    Model VARCHAR(100),
    Registration_year INT,
    Policy_no INT,
    FOREIGN KEY (Policy_no) REFERENCES Policy(Policy_no)
);

-- Home table
CREATE TABLE Home (
    Home_no VARCHAR(20) PRIMARY KEY,
    Type VARCHAR(50),
    City VARCHAR(100),
    Zipcode VARCHAR(10),
    Year_built INT,
    Area DECIMAL(10, 2),
    Policy_no INT,
    FOREIGN KEY (Policy_no) REFERENCES Policy(Policy_no)
);

-- Cust_Policy table (Relationship between Customer and Policy)
CREATE TABLE Cust_Policy (
    Customer_ID INT,
    Policy_no INT,
    PRIMARY KEY (Customer_ID, Policy_no),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Policy_no) REFERENCES Policy(Policy_no)
);

-- Claim_Policy table (Relationship between Claim and Policy)
CREATE TABLE Claim_Policy (
    Claim_ID INT,
    Policy_no INT,
    PRIMARY KEY (Claim_ID, Policy_no),
    FOREIGN KEY (Claim_ID) REFERENCES Claim(Claim_ID),
    FOREIGN KEY (Policy_no) REFERENCES Policy(Policy_no)
);
