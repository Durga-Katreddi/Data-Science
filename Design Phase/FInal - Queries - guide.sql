CREATE DATABASE petadoption1;
use petadoption1;
SHOW TABLES;
-- 1
SET FOREIGN_KEY_CHECKS=0;
-- 18
SET FOREIGN_KEY_CHECKS=1;

-- 2
DROP TABLE IF EXISTS MedicalRecord;
-- 3
CREATE TABLE MedicalRecord (
  RecordID INT PRIMARY KEY AUTO_INCREMENT,
  PetID INT NOT NULL,
  Vaccination VARCHAR(50),
  Treatment VARCHAR(50),
  FOREIGN KEY (PetID) REFERENCES Pet(PetID)
);

-- 4
DROP TABLE IF EXISTS pet;
-- 5
CREATE TABLE Pet (
  PetID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  Breed VARCHAR(50) NOT NULL,
  Age INT NOT NULL,
  Gender VARCHAR(10) NOT NULL,
  RecordID INT,
  ApplicationID INT,
  FosterID INT,
  ShelterID INT,
  FOREIGN KEY (RecordID) REFERENCES MedicalRecord(RecordID),
  FOREIGN KEY (ApplicationID) REFERENCES AdoptionApplication(ApplicationID),
  FOREIGN KEY (FosterID) REFERENCES Foster(FosterID),
  FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID)
);

-- 6
DROP TABLE IF EXISTS AdoptionApplication;
-- 7
CREATE TABLE AdoptionApplication (
  ApplicationID INT PRIMARY KEY AUTO_INCREMENT,
  ApplicantName VARCHAR(50) NOT NULL,
  ApplicantEmail VARCHAR(50) NOT NULL,
  ApplicantPhone VARCHAR(20) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  PetID INT NOT NULL,
  Status VARCHAR(20) NOT NULL,
  StaffID INT,
  FOREIGN KEY (PetID) REFERENCES Pet(PetID),
  FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);
-- 8
DROP TABLE IF EXISTS Shelter;
-- 9
CREATE TABLE Shelter (
  ShelterID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  Phone VARCHAR(20) NOT NULL
);
-- 10
DROP TABLE IF EXISTS Staff;
-- 11
CREATE TABLE Staff (
  StaffID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  Title VARCHAR(50) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Email VARCHAR(50) NOT NULL
);
-- 12
DROP TABLE IF EXISTS Veterinarian;
-- 13
CREATE TABLE Veterinarian (
  VetID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Email VARCHAR(50) NOT NULL
);
-- 14
DROP TABLE IF EXISTS  Foster;
-- 15
CREATE TABLE Foster (
  FosterID INT PRIMARY KEY,
  PetID INT NOT NULL,
  FosterName VARCHAR(50) NOT NULL,
  FosterPhone VARCHAR(20) NOT NULL,
  FosterEmail VARCHAR(50) NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE,
  Status VARCHAR(50) NOT NULL,
  FOREIGN KEY (PetID) REFERENCES Pet(PetID)
);
-- 16
DROP TABLE IF EXISTS  Donor;
-- 17
CREATE TABLE Donor (
  DonorID INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Email VARCHAR(255) NOT NULL,
  DonationDate DATE NOT NULL,
  Amount DECIMAL(8,2) NOT NULL
);

-- insert


DELETE FROM Pet;

-- INSERT INTO Pet (Name, Breed, Age, Gender, RecordID, ApplicationID, FosterID, ShelterID) VALUES


-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE Pet
-- SET PetID= 345
-- WHERE Name = 'Max';


-- 19

INSERT INTO Shelter (Name, Address, Phone)
VALUES ('Furry Friends Animal Rescue', '1010 Elm St, Anytown USA', '555-555-4545'),
('Second Chance Animal Shelter', '2020 Pine St, Anytown USA', '555-555-5656'),
('Pet Haven Adoption Center', '3030 Cedar St, Anytown USA', '555-555-6767'),
('Happy Tails Animal Sanctuary', '4040 Birch St, Anytown USA', '555-555-7878'),
('All Paws Animal Rescue', '5050 Oak St, Anytown USA', '555-555-8989'),
('Fur-Ever Home Animal Shelter', '6060 Maple Ave, Anytown USA', '555-555-0101'),
('Hopeful Hearts Animal Rescue', '7070 Elm St, Anytown USA', '555-555-1212'),
('Happy Paws Animal Shelter', '123 Main St, Anytown USA', '555-555-1212'),
('Animal Rescue League', '456 Oak St, Anytown USA', '555-555-2323'),
('Paws and Claws Adoption Center', '789 Maple Ave, Anytown USA', '555-555-3434'),
('Loving Hearts Animal Rescue', '1111 Pine St, Anytown USA', '555-555-4545'),
('Pawsitive Pet Adoption', '2222 Elm St, Anytown USA', '555-555-5656'),
('Rescue Me Animal Shelter', '3333 Cedar St, Anytown USA', '555-555-6767'),
('Forever Friends Adoption Center', '4444 Birch St, Anytown USA', '555-555-7878'),
('Safe Haven Animal Sanctuary', '5555 Oak St, Anytown USA', '555-555-8989'),
('Compassionate Care Animal Rescue', '6666 Maple Ave, Anytown USA', '555-555-0101'),
('Hopeful Tails Animal Shelter', '7777 Elm St, Anytown USA', '555-555-1212'),
('Paw Prints Rescue', '8888 Main St, Anytown USA', '555-555-2323'),
('Noahs Ark Animal Shelter', '9999 Pine St, Anytown USA', '555-555-3434'),
('Happy Hearts Adoption Center', '1010 Cedar St, Anytown USA', '555-555-4545');
select * from Shelter; -- 1, 20
-- 20
INSERT INTO Veterinarian (Name, Phone, Email)
VALUES ('Dr. John Smith', '555-555-1234', 'johnsmith@vetclinic.com'),
('Dr. Sarah Lee', '555-555-2345', 'sarahlee@vetclinic.com'),
('Dr. Michael Brown', '555-555-3456', 'michaelbrown@vetclinic.com'),
('Dr. Elizabeth Nguyen', '555-555-4567', 'elizabethnguyen@vetclinic.com'),
('Dr. David Kim', '555-555-5678', 'davidkim@vetclinic.com'),
('Dr. Amy Patel', '555-555-6789', 'amypatel@vetclinic.com'),
('Dr. Jennifer Miller', '555-555-7890', 'jennifermiller@vetclinic.com'),
('Dr. Daniel Wilson', '555-555-8901', 'danielwilson@vetclinic.com'),
('Dr. Emily Thompson', '555-555-9012', 'emilythompson@vetclinic.com'),
('Dr. Christopher Davis', '555-555-0123', 'christopherdavis@vetclinic.com'),
('Dr. Jessica Robinson', '555-555-1234', 'jessicarobinson@vetclinic.com'),
('Dr. Matthew Clark', '555-555-2345', 'matthewclark@vetclinic.com'),
('Dr. Ashley Turner', '555-555-3456', 'ashleyturner@vetclinic.com'),
('Dr. Andrew Stewart', '555-555-4567', 'andrewstewart@vetclinic.com'),
('Dr. Samantha White', '555-555-5678', 'samanthawhite@vetclinic.com'),
('Dr. William Lewis', '555-555-6789', 'williamlewis@vetclinic.com'),
('Dr. Olivia Adams', '555-555-7890', 'oliviaadams@vetclinic.com'),
('Dr. Ethan Martinez', '555-555-8901', 'ethanmartinez@vetclinic.com'),
('Dr. Sophia Hall', '555-555-9012', 'sophiahall@vetclinic.com'),
('Dr. Benjamin Rodriguez', '555-555-0123', 'benjaminrodriguez@vetclinic.com');

select * from Veterinarian; -- 1,20
-- 21
INSERT INTO Staff (Name, Title, Phone, Email)
VALUES ('John Smith', 'Manager', '555-555-1234', 'johnsmith@shelter.com'),
('Sarah Lee', 'Adoption Counselor', '555-555-2345', 'sarahlee@shelter.com'),
('Michael Brown', 'Foster Coordinator', '555-555-3456', 'michaelbrown@shelter.com'),
('Elizabeth Nguyen', 'Volunteer Coordinator', '555-555-4567', 'elizabethnguyen@shelter.com'),
('David Kim', 'Veterinarian', '555-555-5678', 'davidkim@shelter.com'),
('Amy Patel', 'Admin Assistant', '555-555-6789', 'amypatel@shelter.com'),
('Jennifer Miller', 'Animal Care Specialist', '555-555-7890', 'jennifermiller@staff.com'),
('Daniel Wilson', 'Trainer', '555-555-8901', 'danielwilson@staff.com'),
('Emily Thompson', 'Groomer', '555-555-9012', 'emilythompson@staff.com'),
('Christopher Davis', 'Event Coordinator', '555-555-0123', 'christopherdavis@staff.com'),
('Jessica Robinson', 'Fundraising Manager', '555-555-1234', 'jessicarobinson@staff.com'),
('Matthew Clark', 'Marketing Coordinator', '555-555-2345', 'matthewclark@staff.com'),
('Ashley Turner', 'Social Media Manager', '555-555-3456', 'ashleyturner@staff.com'),
('Andrew Stewart', 'Transport Coordinator', '555-555-4567', 'andrewstewart@staff.com'),
('Samantha White', 'Community Outreach Specialist', '555-555-5678', 'samanthawhite@staff.com'),
('William Lewis', 'IT Specialist', '555-555-6789', 'williamlewis@staff.com'),
('Olivia Adams', 'Public Relations Officer', '555-555-7890', 'oliviaadams@staff.com'),
('Ethan Martinez', 'Education Coordinator', '555-555-8901', 'ethanmartinez@staff.com'),
('Sophia Hall', 'Volunteer Supervisor', '555-555-9012', 'sophiahall@staff.com'),
('Benjamin Rodriguez', 'Facilities Manager', '555-555-0123', 'benjaminrodriguez@staff.com');

select * from Staff; -- 1,20

INSERT INTO Donor (FirstName, LastName, Phone, Email, DonationDate, Amount) 
VALUES ('John', 'Smith', '555-1234', 'john.smith@gmail.com', '2022-01-01', 100.00),
('Jane', 'Doe', '555-5678', 'jane.doe@yahoo.com', '2022-02-15', 50.00),
 ('Bob', 'Johnson', '555-9876', 'bob.johnson@hotmail.com', '2022-03-31', 75.00),
('Emily', 'Brown', '555-4321', 'emily.brown@gmail.com', '2022-04-15', 200.00),
('Mark', 'Lee', '555-8765', 'mark.lee@yahoo.com', '2022-05-01', 25.00),
('Sarah', 'Johnson', '555-2468', 'sarah.johnson@hotmail.com', '2022-06-15', 150.00),
 ('Tom', 'Davis', '555-3691', 'tom.davis@gmail.com', '2022-07-01', 100.00),
('Lucy', 'Chen', '555-1111', 'lucy.chen@yahoo.com', '2022-08-15', 50.00),
('Chris', 'Brown', '555-2222', 'chris.brown@hotmail.com', '2022-09-01', 75.00),
('Amy', 'Johnson', '555-3333', 'amy.johnson@gmail.com', '2022-10-15', 100.00),
 ('David', 'Lee', '555-4444', 'david.lee@yahoo.com', '2022-11-01', 50.00),
('Karen', 'Smith', '555-5555', 'karen.smith@hotmail.com', '2022-12-15', 25.00),
('Mike', 'Johnson', '555-6666', 'mike.johnson@gmail.com', '2023-01-01', 150.00),
( 'Lisa', 'Miller', '555-7777', 'lisa.miller@yahoo.com', '2023-02-15', 50.00),
( 'Steven', 'Wilson', '555-8888', 'steven.wilson@hotmail.com', '2023-03-31', 75.00),
( 'Michelle', 'Taylor', '555-9999', 'michelle.taylor@gmail.com', '2023-04-15', 200.00),
( 'Andrew', 'Clark', '555-0000', 'andrew.clark@yahoo.com', '2023-05-01', 25.00),
( 'Lauren', 'Robinson', '555-1234', 'lauren.robinson@hotmail.com', '2023-06-15', 150.00),
( 'Daniel', 'Martinez', '555-5678', 'daniel.martinez@gmail.com', '2023-07-01', 100.00),
( 'Emma', 'Adams', '555-9876', 'emma.adams@yahoo.com', '2023-08-15', 50.00);

select * from Donor;-- 1,20

INSERT INTO Pet (Name, Breed, Age, Gender)
VALUES ('Fluffy', 'Dog', 2, 'Female'),
       ('Whiskers', 'Cat', 3, 'Male'),
       ('Buddy', 'Dog', 5, 'Male'),
       ( 'Max', 'Dog', 4, 'Male'),
    ('Luna', 'Cat', 2, 'Female'),
    ('Charlie', 'Dog', 3, 'Male'),
    ('Lucy', 'Dog', 1, 'Female'),
    ('Oscar', 'Cat', 5, 'Male'),
    ('Daisy', 'Dog', 2, 'Female'),
    ('Leo', 'Cat', 4, 'Male'),
    ('Molly', 'Dog', 3, 'Female'),
    ('Rocky', 'Dog', 6, 'Male'),
    ('Lola', 'Cat', 1, 'Female'),
    ('Cooper', 'Dog', 3, 'Male'),
    ('Chloe', 'Cat', 2, 'Female'),
    ('Zeus', 'Dog', 5, 'Male'),
    ('Milo', 'Cat', 3, 'Male'),
    ('Bella', 'Dog', 2, 'Female'),
    ('Oliver', 'Cat', 4, 'Male'),
    ( 'Sophie', 'Dog', 3, 'Female'),
    ('Buddy', 'Golden Retriever', 2, 'Male'),
  ('Luna', 'Siamese', 1, 'Female'),
  ('Max', 'German Shepherd', 3, 'Male'),
  ('Coco', 'Persian', 4, 'Female'),
  ('Rocky', 'Labrador Retriever', 2, 'Male'),
  ('Kitty', 'Domestic Shorthair', 1, 'Female'),
  ('Charlie', 'Bulldog', 5, 'Male'),
  ('Mia', 'Maine Coon', 3, 'Female'),
  ('Oscar', 'Poodle', 2, 'Male'),
  ('Lucy', 'Ragdoll', 1, 'Female'),
  ('Sam', 'Boxer', 4, 'Male'),
  ('Tilly', 'British Shorthair', 2, 'Female'),
  ('Teddy', 'Cavalier King Charles Spaniel', 3, 'Male'),
  ('Smokey', 'Norwegian Forest Cat', 4, 'Male'),
  ('Daisy', 'Siberian Husky', 1, 'Female'),
  ('Rusty', 'Australian Shepherd', 3, 'Male'),
  ('Gracie', 'American Shorthair', 2, 'Female'),
  ('Leo', 'Doberman Pinscher', 4, 'Male'),
  ('Lily', 'Birman', 1, 'Female'),
  ('Zeus', 'Great Dane', 5, 'Male');

select * from Pet;-- 1,30


INSERT INTO Foster (FosterID,PetID, FosterName, FosterPhone, FosterEmail, StartDate, EndDate, Status)
VALUES
    (1,1, 'John Foster', '555-1234', 'john.foster@example.com', '2023-01-01', '2023-02-01', 'Active'),
    (2,1, 'Sarah Foster', '555-5678', 'sarah.foster@example.com', '2023-02-02', '2023-03-02', 'Inactive'),
    (3,2, 'Michael Foster', '555-9876', 'michael.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (4,2, 'Emily Foster', '555-4321', 'emily.foster@example.com', '2023-02-01', '2023-02-28', 'Active'),
    (5,3, 'David Foster', '555-1111', 'david.foster@example.com', '2023-02-10', '2023-02-20', 'Active'),
    (6,3, 'Jessica Foster', '555-2222', 'jessica.foster@example.com', '2023-03-01', NULL, 'Active'),
    (7,4, 'Mark Foster', '555-3333', 'mark.foster@example.com', '2023-01-10', '2023-02-10', 'Inactive'),
    (8,4, 'Laura Foster', '555-4444', 'laura.foster@example.com', '2023-02-15', '2023-03-15', 'Active'),
    (9,4, 'Chris Foster', '555-5555', 'chris.foster@example.com', '2023-03-20', NULL, 'Active'),
    (10,5, 'Alex Foster', '555-6666', 'alex.foster@example.com', '2023-01-05', '2023-02-05', 'Inactive'),
    (11,5, 'Michelle Foster', '555-7777', 'michelle.foster@example.com', '2023-03-10', NULL, 'Active'),
    (12,6, 'Jennifer Foster', '555-8888', 'jennifer.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (13,6, 'Daniel Foster', '555-9999', 'daniel.foster@example.com', '2023-02-01', '2023-03-01', 'Active'),
    (14,7, 'Stephanie Foster', '555-0000', 'stephanie.foster@example.com', '2023-02-10', '2023-02-25', 'Inactive'),
    (15,7, 'Andrew Foster', '555-1111', 'andrew.foster@example.com', '2023-03-01', NULL, 'Active'),
    (16,8, 'Melissa Foster', '555-2222', 'melissa.foster@example.com', '2023-01-10', '2023-02-10', 'Inactive'),
    (17,8, 'Brian Foster', '555-3333', 'brian.foster@example.com', '2023-02-15', '2023-03-15', 'Active'),
    (18,8, 'Rachel Foster', '555-4444', 'rachel.foster@example.com', '2023-03-20', NULL, 'Active'),
    (19,9, 'Jonathan Foster', '555-5555', 'jonathan.foster@example.com', '2023-01-05', '2023-02-05', 'Inactive'),
    (20,19, 'Nicole Foster', '555-6666', 'nicole.foster@example.com', '2023-03-10', NULL, 'Active'),
    (21,10, 'William Foster', '555-7777', 'william.foster@example.com', '2023-01-10', '2023-02-10', 'Inactive'),
    (22,11, 'Samantha Foster', '555-8888', 'samantha.foster@example.com', '2023-02-15', '2023-03-15', 'Active'),
    (23,13, 'Robert Foster', '555-9999', 'robert.foster@example.com', '2023-03-20', NULL, 'Active'),
    (24,12, 'Christopher Foster', '555-1111', 'christopher.foster@example.com', '2023-01-01', '2023-02-01', 'Active'),
    (25,14, 'Ashley Foster', '555-2222', 'ashley.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (26,13, 'Matthew Foster', '555-3333', 'matthew.foster@example.com', '2023-01-01', '2023-02-01', 'Active'),
    (27,14, 'Amanda Foster', '555-4444', 'amanda.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (28,15, 'Andrew Foster', '555-5555', 'andrew.foster@example.com', '2023-01-01', '2023-02-01', 'Active'),
    (29,16, 'Jessica Foster', '555-6666', 'jessica.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (30,17, 'Jason Foster', '555-7777', 'jason.foster@example.com', '2023-01-01', '2023-02-01', 'Active');

select * from Foster;-- 1,30


INSERT INTO MedicalRecord (PetID, Vaccination, Treatment)
VALUES
  (1, 'Rabies vaccine', 'Antibiotic treatment'),
  (1, 'Canine distemper vaccine', 'Deworming treatment'),
  (2, 'Feline leukemia vaccine', 'Flea prevention treatment'),
  (2, 'Rabies vaccine', 'Antibiotic treatment'),
  (3, 'Parvovirus vaccine', 'Pain management treatment'),
  (14, 'Rabies vaccine', 'Wound care treatment'),
  (14, 'Canine influenza vaccine', 'Steroid treatment'),
  (15, 'Feline viral rhinotracheitis vaccine', 'Antiparasitic treatment'),
  (15, 'Leptospirosis vaccine', 'Allergy treatment'),
  (16, 'Bordetella vaccine', 'Deworming treatment'),
  (16, 'Canine distemper vaccine', 'Pain management treatment'),
  (17, 'Rabies vaccine', 'Antibiotic treatment'),
  (17, 'Canine distemper vaccine', 'Deworming treatment'),
  (18, 'Feline leukemia vaccine', 'Flea prevention treatment'),
  (18, 'Rabies vaccine', 'Antibiotic treatment'),
  (19, 'Parvovirus vaccine', 'Pain management treatment'),
  (10, 'Rabies vaccine', 'Wound care treatment'),
  (10, 'Canine influenza vaccine', 'Steroid treatment'),
  (11, 'Feline viral rhinotracheitis vaccine', 'Antiparasitic treatment'),
  (21, 'Leptospirosis vaccine', 'Allergy treatment'),
  (22, 'Bordetella vaccine', 'Deworming treatment'),
  (22, 'Canine distemper vaccine', 'Pain management treatment'),
  (23, 'Rabies vaccine', 'Antibiotic treatment'),
  (24, 'Canine distemper vaccine', 'Deworming treatment'),
  (24, 'Feline leukemia vaccine', 'Flea prevention treatment'),
  (25, 'Feline viral rhinotracheitis vaccine', 'Antiparasitic treatment'),
  (25, 'Rabies vaccine', 'Wound care treatment'),
  (26, 'Canine distemper vaccine', 'Deworming treatment'),
  (26, 'Bordetella vaccine', 'Pain management treatment'),
  (27, 'Rabies vaccine', 'Antibiotic treatment'),
  (28, 'Canine distemper vaccine', 'Deworming treatment'),
  (28, 'Feline leukemia vaccine', 'Flea prevention treatment'),
  (29, 'Rabies vaccine', 'Antibiotic treatment'),
  (30, 'Canine distemper vaccine', 'Deworming treatment'),
  (30, 'Feline viral rhinotracheitis vaccine', 'Pain management treatment');

select * from medicalrecord; -- 1,35



INSERT INTO AdoptionApplication (ApplicantName, ApplicantEmail, ApplicantPhone, Address, PetID, Status, StaffID)
VALUES
('John Doe', 'john.doe@gmail.com', '555-1234', '123 Main St, Anytown, USA', 123, 'Pending', 1),
('Jane Smith', 'jane.smith@yahoo.com', '555-5678', '456 Oak St, Another Town, USA', 234, 'Approved', 2),
('Bob Johnson', 'bob.johnson@hotmail.com', '555-9876', '789 Maple St, Some City, USA', 345, 'Rejected', NULL),
('Alice Lee', 'alicelee@example.com', '555-2345', '321 Elm St', 4, 'Pending', 4),
('Mike Brown', 'mbrown@example.com', '555-6789', '654 Cedar Ln', 5, 'Approved', 3),
('Sara Garcia', 'sgarcia@example.com', '555-1112', '987 Pine Rd', 6, 'Pending', 2),
('Tom Wilson', 'twilson@example.com', '555-3456', '246 Oak Ave', 7, 'Rejected', 1),
('Emma Thompson', 'ethompson@example.com', '555-7890', '135 Maple St', 8, 'Approved', 4),
('Benjamin Kim', 'bkim@example.com', '555-1212', '864 Pine St', 9, 'Pending', 3),
('Olivia Davis', 'odavis@example.com', '555-4545', '753 Oak Ln', 10, 'Approved', 2),
('Liam Hernandez', 'lhernandez@example.com', '555-7878', '951 Elm Ave', 11, 'Rejected', 1),
('Avery Campbell', 'acampbell@example.com', '555-2323', '357 Maple Rd', 12, 'Pending', 4),
('Logan Evans', 'levans@example.com', '555-5656', '468 Cedar St', 13, 'Approved', 3),
('Chloe Jackson', 'cjackson@example.com', '555-8989', '579 Pine Ave', 14, 'Pending', 2),
('Ethan Ramirez', 'eramirez@example.com', '555-1313', '690 Oak Rd', 15, 'Rejected', 1),
('Aria Cooper', 'acooper@example.com', '555-4646', '802 Maple Ln', 16, 'Approved', 4),
('Mason Torres', 'mtorres@example.com', '555-7979', '913 Elm St', 17, 'Pending', 3),
('Mia Peterson', 'mpeterson@example.com', '555-0303', '124 Cedar Ave', 18, 'Approved', 2),
('Noah Gray', 'ngray@example.com', '555-3636', '235 Pine Rd', 19, 'Rejected', 1),
('Avery Powell', 'apowell@example.com', '555-6969', '346 Oak Ln', 20, 'Pending', 4);

select * from adoptionapplication;-- 1,20

-- 28 ---now based on the above index values....using different values...update fk in pet table
UPDATE Pet
SET RecordID = 10, ApplicationID = 2, FosterID = 6, ShelterID = 9
WHERE PetID = 10;

select * from donor;

SELECT p.Name, p.Breed, m.Vaccination, m.Treatment
FROM Pet p
LEFT JOIN MedicalRecord m ON p.RecordID = m.RecordID;


SELECT *
FROM AdoptionApplication
WHERE Status = 'Pending';

SELECT Name, Address, Phone
FROM Shelter;


SELECT p.Name, f.FosterName, f.FosterPhone, f.FosterEmail
FROM Pet p
INNER JOIN Foster f ON p.PetID = f.PetID;


SELECT FirstName, LastName, Phone, Email, DonationDate, Amount
FROM Donor
WHERE Amount > 50 AND DonationDate >= DATE_SUB(NOW(), INTERVAL 1 YEAR);
