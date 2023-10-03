# Insurance_Database_Management

## Introduction
This project aims to model an insurance company database system with multiple entities such as Company, Agent, Customer, Payment, Policy, Claim, Health, Car, Home, and more. The system allows us to analyze various scenarios and use cases related to the insurance domain.

## Entities and their Attributes
- **Company**: (Branch_ID, No_of_Employees, City, Zipcode)
- **Agent**: (Agent_ID, Email, Name, Phone_no, Branch_ID)
- **Customer**: (Customer_ID, DoB, Name, Phone_no, Email, Policy_type, City, Zipcode, Agent_ID)
- **Payment**: (Bank_acc_no, Billing_ID, Payment_date, Amount, Customer_ID)
- **Policy**: (Policy_no, Tenure, Start_date, End_date, Premium, Coverage, Branch_ID)
- **Claim**: (Claim_ID, Amount_issued, Status, Issued_date, Billing_ID)
- **Health**: (Health_ID, Medical_history, Associated_hospital, Treatment_insured, Policy_no)
- **Car**: (Car_no, Model, Registration_year, Policy_no)
- **Home**: (Home_no, Type, City, Zipcode, Year_built, Area, Policy_no)
- **Cust_Policy**: (Customer_ID, Policy_no)
- **Claim_Policy**: (Claim_ID, Policy_no)

## Use Cases
- Determine the number of customers and agents in a specific city.
- Identify the top 5 performing agents.
- List customers who have availed multiple policies.
- Analyze the annual change in the number of health insurances.
- Conduct a year-wise revenue analysis.
- Categorize insurances based on their premium amount and determine the customer count in each category.
- Investigate which age group of customers shows a higher inclination towards insurance.

## Setup and Usage
Detailed instructions on setting up the database and executing the SQL scripts can be found in the documentation provided in the repository.

## Feedback and Contributions
Feel free to provide feedback, raise issues, or make contributions to enhance the project.
"""
