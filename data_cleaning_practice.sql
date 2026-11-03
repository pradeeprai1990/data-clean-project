-- MySQL Data Analyst Practice Dataset
-- Topic: Conditional Logic & Data Cleaning

CREATE DATABASE IF NOT EXISTS data_cleaning_practice;
USE data_cleaning_practice;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(30),
    city VARCHAR(50),
    country VARCHAR(50),
    signup_date VARCHAR(20),
    last_login VARCHAR(20),
    credit_limit VARCHAR(20),
    total_orders INT,
    total_spent VARCHAR(20),
    customer_status VARCHAR(20)
);

INSERT INTO customers
(customer_id, customer_name, email, phone, city, country,
 signup_date, last_login, credit_limit, total_orders,
 total_spent, customer_status)
VALUES
(101, '  Rahul Sharma  ', 'rahul@gmail.com', '9876543210', 'Delhi', 'India', '2025-01-15', '2026-09-20', '75000', 12, '85000', 'Active'),
(102, 'PRIYA SINGH', 'priya@gmail.com', NULL, 'mumbai', 'India', '2025-02-20', '2026-09-18', '45000', 8, '52000', 'active'),
(103, ' Amit Kumar ', NULL, '9988776655', 'BANGALORE', 'India', '2025-03-10', NULL, '120000', 25, '185000', 'ACTIVE'),
(104, 'Neha Verma', 'neha@gmail.com', '98765-43210', ' Delhi ', 'India', '2025-04-05', '2026-08-10', '30000', 3, '12000', 'Inactive'),
(105, '  rohit mehta', 'rohit@gmail.com', '', 'Pune', 'India', '2025-05-18', '2026-09-01', '60000', 10, '70000', 'active'),
(106, NULL, 'simran@gmail.com', '9876543211', 'Jaipur', 'India', '2025-06-25', '2026-09-15', '90000', 18, '110000', 'Active'),
(107, 'Karan Patel', 'karan@gmail.com', NULL, 'ahmedabad', 'India', '2025-07-12', '2026-07-20', '25000', 2, '5000', 'inactive'),
(108, '  ANJALI JAIN  ', 'anjali@gmail.com', '9998887776', 'DELHI', 'India', '2025-08-08', '2026-09-25', '150000', 30, '250000', 'ACTIVE'),
(109, 'Vikas Rao', 'vikas@gmail.com', '9876543212', 'Chennai', 'India', '2025-09-15', NULL, '0', 0, '0', 'Inactive'),
(110, '  Sneha Kapoor ', NULL, '98765-43211', 'mumbai ', 'India', '2025-10-10', '2026-08-30', '55000', 7, '48000', 'Active'),
(111, 'MOHIT SHAH', 'mohit@gmail.com', '9876543213', 'Kolkata', 'India', '2025-11-22', '2026-09-10', '80000', 15, '95000', 'ACTIVE'),
(112, 'Pooja Nair', 'pooja@gmail.com', '', 'Bangalore', 'India', '2025-12-01', '2026-09-05', '40000', 5, '25000', 'active'),
(113, '  Arjun Das', 'arjun@gmail.com', '9876543214', ' Hyderabad ', 'India', '2026-01-12', NULL, '100000', 20, '135000', 'Active'),
(114, 'Riya Gupta', NULL, NULL, 'JAIPUR', 'India', '2026-02-14', '2026-08-15', '35000', 4, '18000', 'inactive'),
(115, 'Sanjay Kumar', 'sanjay@gmail.com', '9876543215', 'Pune', 'India', '2026-03-20', '2026-09-28', '70000', 11, '90000', 'ACTIVE'),
(116, '  Meena Joshi  ', 'meena@gmail.com', '9876543216', 'delhi', 'India', '2026-04-10', '2026-09-22', '50000', 6, '45000', 'active'),
(117, NULL, NULL, '', 'Mumbai', 'India', '2026-05-05', NULL, '0', 0, '0', 'Inactive'),
(118, 'Varun Malhotra', 'varun@gmail.com', '9876543217', 'BANGALORE ', 'India', '2026-06-18', '2026-09-29', '110000', 22, '160000', 'Active'),
(119, '  Kavita Rao ', 'kavita@gmail.com', NULL, 'Chennai', 'India', '2026-07-01', '2026-09-12', '65000', 9, '72000', 'active'),
(120, 'AMAN KHAN', 'aman@gmail.com', '9876543218', 'Delhi', 'India', '2026-08-15', '2026-09-30', '200000', 40, '300000', 'ACTIVE');

-- PRACTICE QUESTIONS

-- SECTION A: BASIC
-- 1. Display all records.
-- 2. Display the structure of the customers table.
-- 3. Find the total number of customers.
-- 4. Find customers whose customer_name is NULL.
-- 5. Find customers whose email is NULL.
-- 6. Find customers whose phone is NULL or blank.

-- SECTION B: CASE WHEN
-- 7. Create credit_category: High >=100000, Medium 50000-99999, Low <50000.
-- 8. Create customer_category from total_spent: Premium >=200000, Regular >=50000, Basic <50000.
-- 9. Create order_category: High Orders >=20, Medium Orders 10-19, Low Orders <10.
-- 10. Create Active Customer / Inactive Customer from customer_status.
-- 11. Create spending_level: High >=100000, Medium 50000-99999, Low <50000.
-- 12. Create customer_type: VIP (credit_limit >=100000 AND total_orders >=20), Regular (orders >=5), otherwise New/Low Activity.

-- SECTION C: COALESCE
-- 13. Replace NULL customer names with 'Unknown Customer'.
-- 14. Replace NULL emails with 'No Email'.
-- 15. Replace NULL phone numbers with 'No Phone'.
-- 16. Replace NULL last_login with 'Never Logged In'.
-- 17. Create contact_information using phone, then email, then 'No Contact Information'.

-- SECTION D: NULLIF
-- 18. Find customers whose credit_limit is 0.
-- 19. Convert credit_limit 0 into NULL using NULLIF().
-- 20. Convert total_spent 0 into NULL using NULLIF().
-- 21. Calculate average spending per order using NULLIF() to prevent division by zero.
-- 22. Calculate average spending per order and display 0 instead of NULL.

-- SECTION E: STRING FUNCTIONS
-- 23. Remove leading/trailing spaces from customer_name.
-- 24. Convert customer_name to uppercase.
-- 25. Convert customer_name to lowercase.
-- 26. Display customer_name and its character length.
-- 27. Find names with exactly 10 characters after trimming.
-- 28. Trim and uppercase city names.
-- 29. Find Delhi customers regardless of capitalization/spaces.
-- 30. Remove hyphens from phone numbers.
-- 31. Create cleaned phone numbers by removing hyphens/spaces and handling NULL/blank values.
-- 32. Combine customer_name and email into full_contact.

-- SECTION F: DATE FUNCTIONS
-- 33. Convert signup_date from text to DATE.
-- 34. Display signup year.
-- 35. Display signup month.
-- 36. Display signup day.
-- 37. Find customers who signed up in 2026.
-- 38. Count customers by signup year.
-- 39. Calculate days between signup_date and last_login.
-- 40. Find customers who have not logged in for more than 30 days.

-- SECTION G: CASTING / CONVERSION
-- 41. Convert credit_limit from VARCHAR to numeric.
-- 42. Convert total_spent from VARCHAR to numeric.
-- 43. Calculate credit_limit - total_spent after conversion.
-- 44. Find customers with credit_limit > 100000.
-- 45. Calculate percentage of credit limit used and prevent division by zero.

-- SECTION H: COMPLETE DATA CLEANING
-- 46. Clean customer_name using TRIM and NULL handling.
-- 47. Clean city using TRIM and UPPER.
-- 48. Clean email using TRIM and NULL/blank handling.
-- 49. Clean phone by removing hyphens and handling NULL/blank values.
-- 50. Create a complete cleaned customer dataset.

-- SECTION I: INTERVIEW LEVEL
-- 51. Find customers whose total spending is greater than credit limit.
-- 52. Find top 5 customers by total spending.
-- 53. Find customers who have never logged in.
-- 54. Find customers with no email and no phone.
-- 55. Find customers with zero orders but non-zero credit limit.
-- 56. Find customers whose spending is more than 50% of credit limit.
-- 57. Find high-credit, low-order-activity customers.
-- 58. Count customers in each credit_category.
-- 59. Find total spending for each cleaned city.
-- 60. Calculate average spending per order and classify High/Medium/Low Value.

-- FINAL CHALLENGE
-- 61. Create a complete Customer Data Quality Report using:
-- CASE WHEN, COALESCE, NULLIF, TRIM, UPPER, LOWER, REPLACE,
-- LENGTH, CAST/CONVERT, YEAR, MONTH, DAY, DATEDIFF.
