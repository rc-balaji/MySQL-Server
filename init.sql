-- Drop the existing database if it exists
DROP DATABASE IF EXISTS mydatabase;

-- Create a new database
CREATE DATABASE mydatabase;

-- Use the newly created database
USE mydatabase;

-- Create your tables or modify schema as needed
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

-- Optionally, you can add initial data if necessary:
INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com');
