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


INSERT INTO Shelter (ShelterID,Name, Address, Phone)
VALUES (11,'Furry Friends Animal Rescue', '1010 Elm St, Anytown USA', '555-555-4545'),
(12,'Second Chance Animal Shelter', '2020 Pine St, Anytown USA', '555-555-5656'),
(13,'Pet Haven Adoption Center', '3030 Cedar St, Anytown USA', '555-555-6767'),
(14,'Happy Tails Animal Sanctuary', '4040 Birch St, Anytown USA', '555-555-7878'),
(15,'All Paws Animal Rescue', '5050 Oak St, Anytown USA', '555-555-8989'),
(16,'Fur-Ever Home Animal Shelter', '6060 Maple Ave, Anytown USA', '555-555-0101'),
(17,'Hopeful Hearts Animal Rescue', '7070 Elm St, Anytown USA', '555-555-1212'),
(18,'Happy Paws Animal Shelter', '123 Main St, Anytown USA', '555-555-1212'),
(19,'Animal Rescue League', '456 Oak St, Anytown USA', '555-555-2323'),
(20,'Paws and Claws Adoption Center', '789 Maple Ave, Anytown USA', '555-555-3434'),
(21, 'Loving Hearts Animal Rescue', '1111 Pine St, Anytown USA', '555-555-4545'),
(22, 'Pawsitive Pet Adoption', '2222 Elm St, Anytown USA', '555-555-5656'),
(23, 'Rescue Me Animal Shelter', '3333 Cedar St, Anytown USA', '555-555-6767'),
(24, 'Forever Friends Adoption Center', '4444 Birch St, Anytown USA', '555-555-7878'),
(25, 'Safe Haven Animal Sanctuary', '5555 Oak St, Anytown USA', '555-555-8989'),
(26, 'Compassionate Care Animal Rescue', '6666 Maple Ave, Anytown USA', '555-555-0101'),
(27, 'Hopeful Tails Animal Shelter', '7777 Elm St, Anytown USA', '555-555-1212'),
(28, 'Paw Prints Rescue', '8888 Main St, Anytown USA', '555-555-2323'),
(29, 'Noahs Ark Animal Shelter', '9999 Pine St, Anytown USA', '555-555-3434'),
(30, 'Happy Hearts Adoption Center', '1010 Cedar St, Anytown USA', '555-555-4545');

select * from Shelter;


INSERT INTO Veterinarian (VetID,Name, Phone, Email)
VALUES (111,'Dr. John Smith', '555-555-1234', 'johnsmith@vetclinic.com'),
(112,'Dr. Sarah Lee', '555-555-2345', 'sarahlee@vetclinic.com'),
(113,'Dr. Michael Brown', '555-555-3456', 'michaelbrown@vetclinic.com'),
(114,'Dr. Elizabeth Nguyen', '555-555-4567', 'elizabethnguyen@vetclinic.com'),
(115,'Dr. David Kim', '555-555-5678', 'davidkim@vetclinic.com'),
(116,'Dr. Amy Patel', '555-555-6789', 'amypatel@vetclinic.com'),
(117, 'Dr. Jennifer Miller', '555-555-7890', 'jennifermiller@vetclinic.com'),
(118, 'Dr. Daniel Wilson', '555-555-8901', 'danielwilson@vetclinic.com'),
(119, 'Dr. Emily Thompson', '555-555-9012', 'emilythompson@vetclinic.com'),
(120, 'Dr. Christopher Davis', '555-555-0123', 'christopherdavis@vetclinic.com'),
(121, 'Dr. Jessica Robinson', '555-555-1234', 'jessicarobinson@vetclinic.com'),
(122, 'Dr. Matthew Clark', '555-555-2345', 'matthewclark@vetclinic.com'),
(123, 'Dr. Ashley Turner', '555-555-3456', 'ashleyturner@vetclinic.com'),
(124, 'Dr. Andrew Stewart', '555-555-4567', 'andrewstewart@vetclinic.com'),
(125, 'Dr. Samantha White', '555-555-5678', 'samanthawhite@vetclinic.com'),
(126, 'Dr. William Lewis', '555-555-6789', 'williamlewis@vetclinic.com'),
(127, 'Dr. Olivia Adams', '555-555-7890', 'oliviaadams@vetclinic.com'),
(128, 'Dr. Ethan Martinez', '555-555-8901', 'ethanmartinez@vetclinic.com'),
(129, 'Dr. Sophia Hall', '555-555-9012', 'sophiahall@vetclinic.com'),
(130, 'Dr. Benjamin Rodriguez', '555-555-0123', 'benjaminrodriguez@vetclinic.com');

select * from Veterinarian;

INSERT INTO Staff (StaffID,Name, Title, Phone, Email)
VALUES (1111,'John Smith', 'Manager', '555-555-1234', 'johnsmith@shelter.com'),
(1112,'Sarah Lee', 'Adoption Counselor', '555-555-2345', 'sarahlee@shelter.com'),
(1113,'Michael Brown', 'Foster Coordinator', '555-555-3456', 'michaelbrown@shelter.com'),
(1114,'Elizabeth Nguyen', 'Volunteer Coordinator', '555-555-4567', 'elizabethnguyen@shelter.com'),
(1115,'David Kim', 'Veterinarian', '555-555-5678', 'davidkim@shelter.com'),
(1116,'Amy Patel', 'Admin Assistant', '555-555-6789', 'amypatel@shelter.com'),
(1117, 'Jennifer Miller', 'Animal Care Specialist', '555-555-7890', 'jennifermiller@staff.com'),
(1118, 'Daniel Wilson', 'Trainer', '555-555-8901', 'danielwilson@staff.com'),
(1119, 'Emily Thompson', 'Groomer', '555-555-9012', 'emilythompson@staff.com'),
(1120, 'Christopher Davis', 'Event Coordinator', '555-555-0123', 'christopherdavis@staff.com'),
(1121, 'Jessica Robinson', 'Fundraising Manager', '555-555-1234', 'jessicarobinson@staff.com'),
(1122, 'Matthew Clark', 'Marketing Coordinator', '555-555-2345', 'matthewclark@staff.com'),
(1123, 'Ashley Turner', 'Social Media Manager', '555-555-3456', 'ashleyturner@staff.com'),
(1124, 'Andrew Stewart', 'Transport Coordinator', '555-555-4567', 'andrewstewart@staff.com'),
(1125, 'Samantha White', 'Community Outreach Specialist', '555-555-5678', 'samanthawhite@staff.com'),
(1126, 'William Lewis', 'IT Specialist', '555-555-6789', 'williamlewis@staff.com'),
(1127, 'Olivia Adams', 'Public Relations Officer', '555-555-7890', 'oliviaadams@staff.com'),
(1128, 'Ethan Martinez', 'Education Coordinator', '555-555-8901', 'ethanmartinez@staff.com'),
(1129, 'Sophia Hall', 'Volunteer Supervisor', '555-555-9012', 'sophiahall@staff.com'),
(1130, 'Benjamin Rodriguez', 'Facilities Manager', '555-555-0123', 'benjaminrodriguez@staff.com');

select * from Staff;
 
INSERT INTO Donor (DonorID,FirstName, LastName, Phone, Email, DonationDate, Amount) 
VALUES (11111,'John', 'Smith', '555-1234', 'john.smith@gmail.com', '2022-01-01', 100.00),
(11112,'Jane', 'Doe', '555-5678', 'jane.doe@yahoo.com', '2022-02-15', 50.00),
 (11113,'Bob', 'Johnson', '555-9876', 'bob.johnson@hotmail.com', '2022-03-31', 75.00),
(11114,'Emily', 'Brown', '555-4321', 'emily.brown@gmail.com', '2022-04-15', 200.00),
(11115,'Mark', 'Lee', '555-8765', 'mark.lee@yahoo.com', '2022-05-01', 25.00),
(11116,'Sarah', 'Johnson', '555-2468', 'sarah.johnson@hotmail.com', '2022-06-15', 150.00),
 (11117,'Tom', 'Davis', '555-3691', 'tom.davis@gmail.com', '2022-07-01', 100.00),
(11118,'Lucy', 'Chen', '555-1111', 'lucy.chen@yahoo.com', '2022-08-15', 50.00),
(11119,'Chris', 'Brown', '555-2222', 'chris.brown@hotmail.com', '2022-09-01', 75.00),
(11120,'Amy', 'Johnson', '555-3333', 'amy.johnson@gmail.com', '2022-10-15', 100.00),
 (11121,'David', 'Lee', '555-4444', 'david.lee@yahoo.com', '2022-11-01', 50.00),
(11122,'Karen', 'Smith', '555-5555', 'karen.smith@hotmail.com', '2022-12-15', 25.00),
(11123,'Mike', 'Johnson', '555-6666', 'mike.johnson@gmail.com', '2023-01-01', 150.00),
(11124, 'Lisa', 'Miller', '555-7777', 'lisa.miller@yahoo.com', '2023-02-15', 50.00),
(11125, 'Steven', 'Wilson', '555-8888', 'steven.wilson@hotmail.com', '2023-03-31', 75.00),
(11126, 'Michelle', 'Taylor', '555-9999', 'michelle.taylor@gmail.com', '2023-04-15', 200.00),
(11127, 'Andrew', 'Clark', '555-0000', 'andrew.clark@yahoo.com', '2023-05-01', 25.00),
(11128, 'Lauren', 'Robinson', '555-1234', 'lauren.robinson@hotmail.com', '2023-06-15', 150.00),
(11129, 'Daniel', 'Martinez', '555-5678', 'daniel.martinez@gmail.com', '2023-07-01', 100.00),
(11130, 'Emma', 'Adams', '555-9876', 'emma.adams@yahoo.com', '2023-08-15', 50.00);

select * from Donor;

INSERT INTO Pet (PetID,Name, Breed, Age, Gender)
VALUES (81,'Fluffy', 'Dog', 2, 'Female'),
       (82,'Whiskers', 'Cat', 3, 'Male'),
       (83,'Buddy', 'Dog', 5, 'Male'),
       (84, 'Max', 'Dog', 4, 'Male'),
    (85, 'Luna', 'Cat', 2, 'Female'),
    (86, 'Charlie', 'Dog', 3, 'Male'),
    (87, 'Lucy', 'Dog', 1, 'Female'),
    (88, 'Oscar', 'Cat', 5, 'Male'),
    (89, 'Daisy', 'Dog', 2, 'Female'),
    (90, 'Leo', 'Cat', 4, 'Male'),
    (91, 'Molly', 'Dog', 3, 'Female'),
    (92, 'Rocky', 'Dog', 6, 'Male'),
    (93, 'Lola', 'Cat', 1, 'Female'),
    (94, 'Cooper', 'Dog', 3, 'Male'),
    (95, 'Chloe', 'Cat', 2, 'Female'),
    (96, 'Zeus', 'Dog', 5, 'Male'),
    (97, 'Milo', 'Cat', 3, 'Male'),
    (98, 'Bella', 'Dog', 2, 'Female'),
    (99, 'Oliver', 'Cat', 4, 'Male'),
    (100, 'Sophie', 'Dog', 3, 'Female');

select * from Pet;

INSERT INTO Foster (FosterID, PetID, FosterName, FosterPhone, FosterEmail, StartDate, EndDate, Status)
VALUES
    (41, 81, 'John Foster', '555-1234', 'john.foster@example.com', '2023-01-01', '2023-02-01', 'Active'),
    (42, 81, 'Sarah Foster', '555-5678', 'sarah.foster@example.com', '2023-02-02', '2023-03-02', 'Inactive'),
    (43, 82, 'Michael Foster', '555-9876', 'michael.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (44, 82, 'Emily Foster', '555-4321', 'emily.foster@example.com', '2023-02-01', '2023-02-28', 'Active'),
    (45, 83, 'David Foster', '555-1111', 'david.foster@example.com', '2023-02-10', '2023-02-20', 'Active'),
    (46, 83, 'Jessica Foster', '555-2222', 'jessica.foster@example.com', '2023-03-01', NULL, 'Active'),
    (47, 84, 'Mark Foster', '555-3333', 'mark.foster@example.com', '2023-01-10', '2023-02-10', 'Inactive'),
    (48, 84, 'Laura Foster', '555-4444', 'laura.foster@example.com', '2023-02-15', '2023-03-15', 'Active'),
    (49, 84, 'Chris Foster', '555-5555', 'chris.foster@example.com', '2023-03-20', NULL, 'Active'),
    (50, 85, 'Alex Foster', '555-6666', 'alex.foster@example.com', '2023-01-05', '2023-02-05', 'Inactive'),
    (51, 85, 'Michelle Foster', '555-7777', 'michelle.foster@example.com', '2023-03-10', NULL, 'Active'),
    (53, 86, 'Jennifer Foster', '555-8888', 'jennifer.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (54, 86, 'Daniel Foster', '555-9999', 'daniel.foster@example.com', '2023-02-01', '2023-03-01', 'Active'),
    (55, 87, 'Stephanie Foster', '555-0000', 'stephanie.foster@example.com', '2023-02-10', '2023-02-25', 'Inactive'),
    (56, 87, 'Andrew Foster', '555-1111', 'andrew.foster@example.com', '2023-03-01', NULL, 'Active'),
    (57, 88, 'Melissa Foster', '555-2222', 'melissa.foster@example.com', '2023-01-10', '2023-02-10', 'Inactive'),
    (58, 88, 'Brian Foster', '555-3333', 'brian.foster@example.com', '2023-02-15', '2023-03-15', 'Active'),
    (59, 88, 'Rachel Foster', '555-4444', 'rachel.foster@example.com', '2023-03-20', NULL, 'Active'),
    (60, 89, 'Jonathan Foster', '555-5555', 'jonathan.foster@example.com', '2023-01-05', '2023-02-05', 'Inactive'),
    (61, 89, 'Nicole Foster', '555-6666', 'nicole.foster@example.com', '2023-03-10', NULL, 'Active'),
    (62, 90, 'William Foster', '555-7777', 'william.foster@example.com', '2023-01-10', '2023-02-10', 'Inactive'),
    (63, 90, 'Samantha Foster', '555-8888', 'samantha.foster@example.com', '2023-02-15', '2023-03-15', 'Active'),
    (64, 90, 'Robert Foster', '555-9999', 'robert.foster@example.com', '2023-03-20', NULL, 'Active'),
    (65, 91, 'Christopher Foster', '555-1111', 'christopher.foster@example.com', '2023-01-01', '2023-02-01', 'Active'),
    (66, 92, 'Ashley Foster', '555-2222', 'ashley.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (67, 93, 'Matthew Foster', '555-3333', 'matthew.foster@example.com', '2023-01-01', '2023-02-01', 'Active'),
    (68, 94, 'Amanda Foster', '555-4444', 'amanda.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (69, 95, 'Andrew Foster', '555-5555', 'andrew.foster@example.com', '2023-01-01', '2023-02-01', 'Active'),
    (70, 96, 'Jessica Foster', '555-6666', 'jessica.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (71, 97, 'Jason Foster', '555-7777', 'jason.foster@example.com', '2023-01-01', '2023-02-01', 'Active'),
    (72, 98, 'Emily Foster', '555-8888', 'emily.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (73, 99, 'Sarah Foster', '555-9999', 'sarah.foster@example.com', '2023-01-01', '2023-02-01', 'Active'),
	(74, 100, 'Michael Foster', '555-1111', 'michael.foster@example.com', '2023-01-01', '2023-01-15', 'Inactive'),
    (75, 100, 'Emily Foster', '555-2222', 'emily.foster@example.com', '2023-01-16', '2023-01-31', 'Active'),
    (76, 100, 'David Foster', '555-3333', 'david.foster@example.com', '2023-02-01', '2023-02-15', 'Active'),
    (77, 100, 'Jennifer Foster', '555-4444', 'jennifer.foster@example.com', '2023-02-16', '2023-02-28', 'Active'),
    (78, 100, 'Matthew Foster', '555-5555', 'matthew.foster@example.com', '2023-03-01', '2023-03-15', 'Active');
    
select * from Foster;

INSERT INTO MedicalRecord (RecordID,PetID, Vaccination, Treatment)
VALUES
  (221,81, 'Rabies vaccine', 'Antibiotic treatment'),
  (222,81, 'Canine distemper vaccine', 'Deworming treatment'),
  (223,82, 'Feline leukemia vaccine', 'Flea prevention treatment'),
  (224,82, 'Rabies vaccine', 'Antibiotic treatment'),
  (225,83, 'Parvovirus vaccine', 'Pain management treatment'),
  (226,84, 'Rabies vaccine', 'Wound care treatment'),
  (227,84, 'Canine influenza vaccine', 'Steroid treatment'),
  (228,85, 'Feline viral rhinotracheitis vaccine', 'Antiparasitic treatment'),
  (229,85, 'Leptospirosis vaccine', 'Allergy treatment'),
  (230,86, 'Bordetella vaccine', 'Deworming treatment'),
  (231,86, 'Canine distemper vaccine', 'Pain management treatment'),
  (232,87, 'Rabies vaccine', 'Antibiotic treatment'),
  (233,87, 'Canine distemper vaccine', 'Deworming treatment'),
  (234,88, 'Feline leukemia vaccine', 'Flea prevention treatment'),
  (235,88, 'Rabies vaccine', 'Antibiotic treatment'),
  (236,89, 'Parvovirus vaccine', 'Pain management treatment'),
  (237,90, 'Rabies vaccine', 'Wound care treatment'),
  (238,90, 'Canine influenza vaccine', 'Steroid treatment'),
  (239,91, 'Feline viral rhinotracheitis vaccine', 'Antiparasitic treatment'),
  (240,91, 'Leptospirosis vaccine', 'Allergy treatment'),
  (241,92, 'Bordetella vaccine', 'Deworming treatment'),
  (242,92, 'Canine distemper vaccine', 'Pain management treatment'),
  (243,93, 'Rabies vaccine', 'Antibiotic treatment'),
  (244,94, 'Canine distemper vaccine', 'Deworming treatment'),
  (245,94, 'Feline leukemia vaccine', 'Flea prevention treatment'),
  (246,95, 'Feline viral rhinotracheitis vaccine', 'Antiparasitic treatment'),
  (247,95, 'Rabies vaccine', 'Wound care treatment'),
  (248,96, 'Canine distemper vaccine', 'Deworming treatment'),
  (249,96, 'Bordetella vaccine', 'Pain management treatment'),
  (250,97, 'Rabies vaccine', 'Antibiotic treatment'),
  (251,98, 'Canine distemper vaccine', 'Deworming treatment'),
  (252,98, 'Feline leukemia vaccine', 'Flea prevention treatment'),
  (253,99, 'Rabies vaccine', 'Antibiotic treatment'),
  (254,100, 'Canine distemper vaccine', 'Deworming treatment'),
  (255,100, 'Feline viral rhinotracheitis vaccine', 'Pain management treatment');


INSERT INTO AdoptionApplication (ApplicantName, ApplicantEmail, ApplicantPhone, Address, PetID, Status, StaffID)
VALUES
('John Doe', 'john.doe@gmail.com', '555-1234', '123 Main St, Anytown, USA', 123, 'Pending', 1),
('Jane Smith', 'jane.smith@yahoo.com', '555-5678', '456 Oak St, Another Town, USA', 234, 'Approved', 2),
('Bob Johnson', 'bob.johnson@hotmail.com', '555-9876', '789 Maple St, Some City, USA', 345, 'Rejected', NULL);


