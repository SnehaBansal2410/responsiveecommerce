Create database TotalHomes;
USE TotalHomes;
CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone_no VARCHAR(20) NOT NULL UNIQUE,
    address TEXT NOT NULL
);
CREATE TABLE services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(100) NOT NULL,
    description TEXT,
    category VARCHAR(100)
);
INSERT INTO services (service_name, description, category) VALUES
('Cook', 'Professional chefs available to prepare daily meals or for special events.', 'Household'),
('Maid', 'Comprehensive cleaning services for maintaining your home.', 'Household'),
('Nanny', 'Qualified nannies to provide childcare and educational activities.', 'Household'),
('Health', 'Health services including medical consultations and wellness checks.', 'Health'),
('Beautician', 'Beauty and personal care services directly to your home.', 'Beauty');
CREATE TABLE cook_inquiries (
    inquiry_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL
);
CREATE TABLE maid_inquiries (
    inquiry_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL
);
CREATE TABLE beauty_inquiries (
    inquiry_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL
);
CREATE TABLE health_services_inquiries (
    inquiry_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    service_type ENUM('Consultation', 'Appointment', 'Buy', 'Rent') NOT NULL
);
-- Ensure you're using the correct database
USE TotalHomes;

-- Create the feedback table
CREATE TABLE feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    feedback_text TEXT NOT NULL
);
CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    payment_type ENUM('Cash on Delivery', 'Net Banking', 'Cards') NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    status ENUM('Pending', 'Completed', 'Failed') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);







