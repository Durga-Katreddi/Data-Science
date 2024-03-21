CREATE DATABASE petadoption1;
use petadoption1;
DROP TABLE IF EXISTS MedicalRecord;
SHOW TABLES;
SET FOREIGN_KEY_CHECKS=0;
SET FOREIGN_KEY_CHECKS=1;
CREATE TABLE MedicalRecord (
  RecordID INT PRIMARY KEY AUTO_INCREMENT,
  PetID INT NOT NULL,
  Vaccination VARCHAR(50),
  Treatment VARCHAR(50),
  FOREIGN KEY (PetID) REFERENCES Pet(PetID)
);
DROP TABLE IF EXISTS pet;
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
DROP TABLE IF EXISTS AdoptionApplication;
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
DROP TABLE IF EXISTS Shelter;
CREATE TABLE Shelter (
  ShelterID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  Phone VARCHAR(20) NOT NULL
);
DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff (
  StaffID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  Title VARCHAR(50) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Email VARCHAR(50) NOT NULL
);
DROP TABLE IF EXISTS Veterinarian;
CREATE TABLE Veterinarian (
  VetID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Email VARCHAR(50) NOT NULL
);
DROP TABLE IF EXISTS  Foster;
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
DROP TABLE IF EXISTS  Donor;
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
INSERT INTO Pet (Name, Breed, Age, Gender) VALUES
  ('Fluffy', 'Persian', 3, 'Female'),
  ('Buddy', 'Labrador Retriever', 2, 'Male'),
  ('Max', 'German Shepherd', 1, 'Male');
  SET SQL_SAFE_UPDATES = 0;
UPDATE Pet
SET PetID= 345
WHERE Name = 'Max';

  
select * from Pet;

INSERT INTO Shelter (Name, Address, Phone)
VALUES ('Furry Friends Animal Rescue', '1010 Elm St, Anytown USA', '555-555-4545'),
('Second Chance Animal Shelter', '2020 Pine St, Anytown USA', '555-555-5656'),
('Pet Haven Adoption Center', '3030 Cedar St, Anytown USA', '555-555-6767'),
('Happy Tails Animal Sanctuary', '4040 Birch St, Anytown USA', '555-555-7878'),
('All Paws Animal Rescue', '5050 Oak St, Anytown USA', '555-555-8989'),
('Fur-Ever Home Animal Shelter', '6060 Maple Ave, Anytown USA', '555-555-0101'),
('Hopeful Hearts Animal Rescue', '7070 Elm St, Anytown USA', '555-555-1212');
INSERT INTO Shelter (Name, Address, Phone)
VALUES ('Happy Paws Animal Shelter', '123 Main St, Anytown USA', '555-555-1212'),
('Animal Rescue League', '456 Oak St, Anytown USA', '555-555-2323'),
('Paws and Claws Adoption Center', '789 Maple Ave, Anytown USA', '555-555-3434');


INSERT INTO Veterinarian (Name, Phone, Email)
VALUES ('Dr. John Smith', '555-555-1234', 'johnsmith@vetclinic.com'),
('Dr. Sarah Lee', '555-555-2345', 'sarahlee@vetclinic.com'),
('Dr. Michael Brown', '555-555-3456', 'michaelbrown@vetclinic.com'),
('Dr. Elizabeth Nguyen', '555-555-4567', 'elizabethnguyen@vetclinic.com'),
('Dr. David Kim', '555-555-5678', 'davidkim@vetclinic.com'),
('Dr. Amy Patel', '555-555-6789', 'amypatel@vetclinic.com');

INSERT INTO Staff (Name, Title, Phone, Email)
VALUES ('John Smith', 'Manager', '555-555-1234', 'johnsmith@shelter.com'),
('Sarah Lee', 'Adoption Counselor', '555-555-2345', 'sarahlee@shelter.com'),
('Michael Brown', 'Foster Coordinator', '555-555-3456', 'michaelbrown@shelter.com'),
('Elizabeth Nguyen', 'Volunteer Coordinator', '555-555-4567', 'elizabethnguyen@shelter.com'),
('David Kim', 'Veterinarian', '555-555-5678', 'davidkim@shelter.com'),
 ('Amy Patel', 'Admin Assistant', '555-555-6789', 'amypatel@shelter.com');
 
 select * from shelter;
INSERT INTO Foster (FosterID, PetID, FosterName, FosterPhone, FosterEmail, StartDate, EndDate, Status) 
VALUES
  (1, 123, 'John Smith', '555-1234', 'john.smith@gmail.com', '2022-01-01', '2022-02-01', 'Completed'),
  (2, 234, 'Jane Doe', '555-5678', 'jane.doe@yahoo.com', '2022-03-01', NULL, 'In Progress'),
  (3, 345, 'Bob Johnson', '555-9876', 'bob.johnson@hotmail.com', '2022-04-01', '2022-05-01', 'Completed');
  INSERT INTO Foster (FosterID, PetID, FosterName, FosterPhone, FosterEmail, StartDate, EndDate, Status) 
VALUES
  (4, 345, 'Baby Justin', '555-9888', 'baby.justin@hotmail.com', '2022-05-01', '2022-07-01', 'In Progress');
   INSERT INTO Foster (FosterID, PetID, FosterName, FosterPhone, FosterEmail, StartDate, EndDate, Status) 
VALUES
  (5, 123, 'Baby Justin', '555-9888', 'baby.justin@hotmail.com', '2022-05-01', '2022-07-01', 'In Progress');




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
('Mike', 'Johnson', '555-6666', 'mike.johnson@gmail.com', '2023-01-01', 150.00);


INSERT INTO MedicalRecord (PetID, Vaccination, Treatment) VALUES
(123, 'Rabies', 'Antibiotics'),
(234, 'Distemper', 'Surgery'),
(345, NULL, 'Antifungal medication');

INSERT INTO AdoptionApplication (ApplicantName, ApplicantEmail, ApplicantPhone, Address, PetID, Status, StaffID)
VALUES
('John Doe', 'john.doe@gmail.com', '555-1234', '123 Main St, Anytown, USA', 123, 'Pending', 1),
('Jane Smith', 'jane.smith@yahoo.com', '555-5678', '456 Oak St, Another Town, USA', 234, 'Approved', 2),
('Bob Johnson', 'bob.johnson@hotmail.com', '555-9876', '789 Maple St, Some City, USA', 345, 'Rejected', NULL);

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
