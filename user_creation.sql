-- User Creation in MySQL

-- Step 1: Create a new user
CREATE USER 'hr'@'localhost' IDENTIFIED BY 'your_password';

-- Step 2: Grant all privileges
GRANT ALL PRIVILEGES ON *.* TO 'hr'@'localhost';

-- Step 3: Apply changes
FLUSH PRIVILEGES;