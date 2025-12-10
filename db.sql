CREATE DATABASE prejoining_db;

USE prejoining_db;
CREATE TABLE employee_prejoining (
    employee_id              INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Part 1: Personal Information
    full_name                VARCHAR(150)      NOT NULL,   -- fullName
    date_of_birth            DATE              NOT NULL,   -- dob
    gender                   ENUM('Male','Female','Other','Prefer not to say'),
    mobile                   VARCHAR(20),                  -- mobile
    email                    VARCHAR(150),                 -- email
    current_address          TEXT,                         -- currentAddress
    permanent_address        TEXT,                         -- permanentAddress
    emergency_contact        VARCHAR(200),                 -- emergencyContact

    -- Part 2: Identification
    driving_license_no       VARCHAR(50),                  -- drivingLicense
    bike_registration        VARCHAR(50),                  -- bike
    aadhaar_no               VARCHAR(20),                  -- aadhaar
    pan_no                   VARCHAR(10),                  -- pan
    photo_file               VARCHAR(255),                 -- photo (file name / path)

    -- Part 3: Education & Employment
    resume_file              VARCHAR(255),                 -- resume (file)
    education_list           TEXT,                         -- educationList (text)
    experience_letters_files TEXT,                         -- experienceLetters (could be comma-separated file names)
    relieving_letter_file    VARCHAR(255),                 -- relievingLetter
    salary_slips_files       TEXT,                         -- salarySlips (multiple files)

    -- Part 4: Banking & Tax
    bank_account_no          VARCHAR(30),                  -- bankAccount
    bank_name_branch         VARCHAR(150),                 -- bankName
    ifsc_code                VARCHAR(15),                  -- ifsc
    tax_details              TEXT,                         -- taxDetails

    created_at               TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);