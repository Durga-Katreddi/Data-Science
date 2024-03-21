CREATE DATABASE petadoption2;
use petadoption2;
SHOW TABLES;

CREATE TABLE Shelter (
    ShelterID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ShelterName VARCHAR(50),
    ShelterAddress VARCHAR(100),
    ShelterPhone VARCHAR(20)
);

DROP TABLE IF EXISTS Staff;
CREATE TABLE Staff (
    StaffID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    StaffName VARCHAR(50),
    StaffTitle VARCHAR(50),
    StaffPhone VARCHAR(50),
    ShelterID INT,
    CONSTRAINT fk_ShelterID FOREIGN KEY (ShelterID) REFERENCES Shelter(ShelterID)
);

CREATE TABLE Veterinarian (
    VeterinarianID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VeterinarianName VARCHAR(50),
    VeterinarianPhone VARCHAR(20),
    VeterinarianEmail VARCHAR(20)
);


CREATE TABLE Donor (
  DonorID INT PRIMARY KEY AUTO_INCREMENT  NOT NULL ,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Phone VARCHAR(20),
  Email VARCHAR(255),
  DonationDate DATE,
  Amount DECIMAL(8,2)
);


CREATE TABLE Foster (
  FosterID INT PRIMARY KEY AUTO_INCREMENT  NOT NULL ,
  FosterName VARCHAR(50) NOT NULL,
  FosterPhone VARCHAR(20) NOT NULL,
  FosterEmail VARCHAR(50) NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE,
  FosterStatus VARCHAR(50) NOT NULL
);

CREATE TABLE pet (
  PetID INT PRIMARY KEY AUTO_INCREMENT  NOT NULL ,
  PetName VARCHAR(50) NOT NULL,
  PetBreed VARCHAR(20) NOT NULL,
  PetGender VARCHAR(10) NOT NULL,
  PetAge INT NOT NULL,
  ShelterID INT NOT NULL,
  FosterID INT,
  CONSTRAINT fk_pet_shelter
    FOREIGN KEY (ShelterID)
    REFERENCES Shelter(ShelterID),
  CONSTRAINT fk_pet_foster
    FOREIGN KEY (FosterID)
    REFERENCES Foster(FosterID)
);

CREATE TABLE AdoptionApplication (
    ApplicationID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ApplicantName VARCHAR(50),
    ApplicantAddress VARCHAR(100),
    ApplicantPhone VARCHAR(20),
    ApplicantEmail VARCHAR(50),
    Applicationstatus VARCHAR(20),
	petid INT,
    FOREIGN KEY (petid) REFERENCES pet(petid)
);

CREATE TABLE MedicalRecord (
    RecordID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    PetID INT NOT NULL,
    VeterinarianID INT NOT NULL,
    Vaccination VARCHAR(255),
    treatment VARCHAR(255),
    FOREIGN KEY (petid) REFERENCES Pet(petid),
    FOREIGN KEY ( VeterinarianID) REFERENCES Veterinarian( VeterinarianID)
);

-- insert
INSERT INTO Donor (FirstName, LastName, Phone, Email, DonationDate, Amount) VALUES 
('John', 'Doe', '555-1234', 'johndoe@gmail.com', '2023-05-01', 1000.00),
('Jane', 'Smith', '555-5678', 'janesmith@hotmail.com', '2023-04-15', 500.00),
('Mark', 'Johnson', '555-9012', 'markjohnson@yahoo.com', '2023-04-28', 250.00),
('Samantha', 'Lee', '555-3456', 'samlee@gmail.com', '2023-05-02', 50.00),
('David', 'Wilson', '555-7890', 'davidwilson@gmail.com', '2023-04-22', 100.00),
('Emily', 'Davis', '555-2345', 'emilydavis@yahoo.com', '2023-04-30', 75.00),
('Michael', 'Martinez', '555-6789', 'michaelmartinez@hotmail.com', '2023-05-05', 500.00),
('Stephanie', 'Rodriguez', '555-0123', 'stephanierodriguez@gmail.com', '2023-04-26', 200.00),
('Christopher', 'Garcia', '555-4567', 'christophergarcia@gmail.com', '2023-05-04', 100.00),
('Jessica', 'Davis', '555-8901', 'jessicadavis@yahoo.com', '2023-05-07', 150.00),
('Thomas', 'Taylor', '555-2345', 'thomastaylor@gmail.com', '2023-04-25', 50.00),
('Ashley', 'Brown', '555-6789', 'ashleybrown@hotmail.com', '2023-04-18', 25.00),
('Kevin', 'Anderson', '555-0123', 'kevinanderson@yahoo.com', '2023-04-29', 75.00),
('Amanda', 'Martin', '555-4567', 'amandamartin@gmail.com', '2023-05-03', 500.00),
('Jacob', 'Hernandez', '555-8901', 'jacobhernandez@hotmail.com', '2023-04-24', 100.00),
('Rachel', 'Davis', '555-2345', 'racheldavis@gmail.com', '2023-04-21', 50.00),
('Nicholas', 'Lopez', '555-6789', 'nicholaslopez@yahoo.com', '2023-04-20', 200.00),
('Melissa', 'Gonzalez', '555-0123', 'melissagonzalez@hotmail.com', '2023-05-06', 250.00),
('Eric', 'Nelson', '555-4567', 'ericnelson@gmail.com', '2023-05-02', 100.00),
('Kimberly', 'Carter', '555-8901', 'kimberlycarter@yahoo.com', '2023-04-19', 75.00);
select * from Donor; -- 1,20

INSERT INTO Shelter (ShelterName, ShelterAddress, ShelterPhone) VALUES
('Happy Tails Animal Shelter', '123 Main Street, Anytown, USA', '555-1234'),
('Paws & Claws Rescue', '456 Elm Street, Anytown, USA', '555-5678'),
('Animal Haven', '789 Oak Street, Anytown, USA', '555-9012'),
('Second Chance Animal Rescue', '111 Pine Street, Anytown, USA', '555-3456'),
('Furry Friends Adoption Center', '222 Maple Street, Anytown, USA', '555-7890'),
('Lucky Paws Animal Shelter', '333 Cedar Street, Anytown, USA', '555-2345'),
('Save-a-Pet Rescue', '444 Oak Street, Anytown, USA', '555-6789'),
('Homeless Pet Project', '555 Walnut Street, Anytown, USA', '555-1234'),
('No More Homeless Pets', '666 Pine Street, Anytown, USA', '555-5678'),
('Heavenly Paws Animal Shelter', '777 Cherry Street, Anytown, USA', '555-9012'),
('Adopt a Pet', '888 Maple Street, Anytown, USA', '555-3456'),
('Feline Friends Rescue', '999 Oak Street, Anytown, USA', '555-7890'),
('All Paws Rescue', '321 Main Street, Anytown, USA', '555-2345'),
('Animal Rescue League', '654 Elm Street, Anytown, USA', '555-6789'),
('Second Chance Pet Adoption', '987 Oak Street, Anytown, USA', '555-1234'),
('Rescue Me Pet Shelter', '111 Maple Street, Anytown, USA', '555-5678'),
('Pets Without Parents', '222 Oak Street, Anytown, USA', '555-9012'),
('The Pet Project', '333 Maple Street, Anytown, USA', '555-3456'),
('Animal Allies Rescue', '444 Oak Street, Anytown, USA', '555-7890'),
('Furry Feline Rescue', '555 Pine Street, Anytown, USA', '555-2345'),
('Hounds and Homes Rescue', '666 Oak Street, Anytown, USA', '555-6789'),
('Love of Paws Adoption Center', '777 Elm Street, Anytown, USA', '555-1234'),
('Pawsitive Vibes Animal Shelter', '888 Pine Street, Anytown, USA', '555-5678'),
('Purrfect Match Cat Adoption', '999 Oak Street, Anytown, USA', '555-9012'),
('Whisker City Animal Shelter', '321 Maple Street, Anytown, USA', '555-3456'),
('Hope Animal Rescue', '654 Oak Street, Anytown, USA', '555-7890'),
('The Lucky Dog Adoption Center', '987 Pine Street, Anytown, USA', '555-1234'),
('Forever Home Animal Shelter', '111 Maple Street, Anytown, USA', '555-5678'),
('Furry Tales Rescue', '222 Elm Street, Anytown, USA', '555-9012'),
('Lend a Paw Animal Shelter', '333 Oak Street, Anytown, USA', '555-3456');

select * from Shelter;-- 1, 30


INSERT INTO Staff (StaffName, StaffTitle, StaffPhone, ShelterID)
VALUES 
("John Smith", "Manager", "555-1234", 1),
("Jane Doe", "Animal Caregiver", "555-5678", 1),
("Mike Johnson", "Veterinarian", "555-9012", 2),
("Emily Brown", "Animal Caregiver", "555-3456", 2),
("David Lee", "Manager", "555-7890", 3),
("Sarah Kim", "Animal Caregiver", "555-2345", 3),
("Kevin Davis", "Veterinarian", "555-6789", 4),
("Jennifer White", "Animal Caregiver", "555-0123", 4),
("Brian Jones", "Manager", "555-4567", 5),
("Jessica Lee", "Animal Caregiver", "555-8901", 5),
("Chris Lee", "Veterinarian", "555-2345", 6),
("Melissa Brown", "Animal Caregiver", "555-6789", 6),
("Alex Johnson", "Manager", "555-0123", 7),
("Ashley Davis", "Animal Caregiver", "555-4567", 7),
("Sam Smith", "Veterinarian", "555-8901", 8),
("Amy Lee", "Animal Caregiver", "555-2345", 8),
("Mike Thompson", "Manager", "555-6789", 9),
("Linda Kim", "Animal Caregiver", "555-0123", 9),
("Olivia Davis", "Veterinarian", "555-4567", 10),
("Peter Lee", "Animal Caregiver", "555-8901", 10),
("Daniel Kim", "Manager", "555-2345", 11),
("Julia Lee", "Animal Caregiver", "555-6789", 11),
("Rachel Brown", "Veterinarian", "555-0123", 12),
("David Johnson", "Animal Caregiver", "555-4567", 12),
("Michelle Lee", "Manager", "555-8901", 13),
("Catherine Smith", "Animal Caregiver", "555-2345", 13),
("Mike White", "Veterinarian", "555-6789", 14),
("Lauren Kim", "Animal Caregiver", "555-0123", 14),
("Tom Davis", "Manager", "555-4567", 15),
("Karen Lee", "Animal Caregiver", "555-8901", 15);

select * from staff; -- 1,30


INSERT INTO Foster (FosterName, FosterPhone, FosterEmail, StartDate, EndDate, FosterStatus) VALUES
('John Smith', '555-1234', 'john.smith@example.com', '2022-01-01', '2022-01-30', 'Inactive'),
('Emily Johnson', '555-5678', 'emily.johnson@example.com', '2022-02-01', '2022-02-28', 'Active'),
('Michael Davis', '555-9012', 'michael.davis@example.com', '2022-03-01', NULL, 'Active'),
('Sarah Wilson', '555-3456', 'sarah.wilson@example.com', '2022-01-01', '2022-06-30', 'Inactive'),
('Daniel Garcia', '555-7890', 'daniel.garcia@example.com', '2022-01-01', NULL, 'Active'),
('Ashley Martinez', '555-2345', 'ashley.martinez@example.com', '2022-02-01', NULL, 'Active'),
('David Brown', '555-6789', 'david.brown@example.com', '2022-03-01', NULL, 'Active'),
('Jennifer Taylor', '555-0123', 'jennifer.taylor@example.com', '2022-04-01', '2022-07-31', 'Inactive'),
('Jessica Lee', '555-4567', 'jessica.lee@example.com', '2022-05-01', NULL, 'Active'),
('Brian Rodriguez', '555-8901', 'brian.rodriguez@example.com', '2022-01-01', '2022-06-30', 'Inactive'),
('Amanda Davis', '555-2345', 'amanda.davis@example.com', '2022-01-01', NULL, 'Active'),
('Robert Garcia', '555-6789', 'robert.garcia@example.com', '2022-02-01', NULL, 'Active'),
('Brittany Hernandez', '555-0123', 'brittany.hernandez@example.com', '2022-03-01', '2022-09-30', 'Inactive'),
('Christopher Wright', '555-4567', 'christopher.wright@example.com', '2022-04-01', NULL, 'Active'),
('Stephanie Martin', '555-8901', 'stephanie.martin@example.com', '2022-05-01', NULL, 'Active'),
('Charles Jackson', '555-2345', 'charles.jackson@example.com', '2022-06-01', NULL, 'Active'),
('Rebecca Lee', '555-6789', 'rebecca.lee@example.com', '2022-07-01', NULL, 'Active'),
('Nicholas King', '555-0123', 'nicholas.king@example.com', '2022-08-01', NULL, 'Active'),
('Laura Perez', '555-4567', 'laura.perez@example.com', '2022-09-01', NULL, 'Active'),
('Matthew Young', '555-8901', 'matthew.young@example.com', '2022-10-01', NULL, 'Active'),
('Samantha Allen', '555-2345', 'samantha.allen@example.com', '2022-01-01', NULL, 'Active');
select * from foster; -- 1,21

INSERT INTO pet (PetName, PetBreed, PetGender, PetAge, ShelterID, FosterID)
VALUES 
('Max', 'Labrador Retriever', 'Male', 2, 15, 3),
('Buddy', 'Golden Retriever', 'Male', 1, 7, 10),
('Bella', 'Poodle', 'Female', 3, 1, 2),
('Charlie', 'German Shepherd', 'Male', 4, 12, 13),
('Lucy', 'Chihuahua', 'Female', 2, 25, 7),
('Rocky', 'Boxer', 'Male', 3, 18, 6),
('Luna', 'Yorkshire Terrier', 'Female', 1, 22, 1),
('Coco', 'French Bulldog', 'Female', 2, 5, 4),
('Zeus', 'Siberian Husky', 'Male', 5, 10, 5),
('Molly', 'Beagle', 'Female', 3, 28, 17),
('Max', 'Labrador Retriever', 'Male', 1, 20, 8),
('Daisy', 'Boston Terrier', 'Female', 2, 3, 11),
('Simba', 'Ragdoll', 'Male', 1, 16, 15),
('Oscar', 'Siamese', 'Male', 2, 19, 14),
('Bear', 'Persian', 'Male', 4, 26, 12),
('Roxy', 'Sphynx', 'Female', 1, 23, 9),
('Loki', 'Bengal', 'Male', 3, 6, 20),
('Tiger', 'Maine Coon', 'Male', 2, 24, 21),
('Sasha', 'Savannah', 'Female', 1, 4, 16),
('Simba', 'Ragdoll', 'Male', 2, 14, 19),
('Nala', 'Sphynx', 'Female', 1, 8, 18),
('Rocky', 'Boxer', 'Male', 2, 2, 22),
('Luna', 'Yorkshire Terrier', 'Female', 3, 2, 23),
('Lucy', 'Chihuahua', 'Female', 1, 11, 26),
('Charlie', 'German Shepherd', 'Male', 4, 11, 28),
('Molly', 'Beagle', 'Female', 2, 27, 25),
('Coco', 'French Bulldog', 'Female', 1, 27, 29),
('Buddy', 'Golden Retriever', 'Male', 5, 17, 24),
('Max', 'Labrador Retriever', 'Male', 3, 17, 30),
('Zeus', 'Siberian Husky', 'Male', 1, 21, 27);
 select * from pet; -- 1, 30
 
 INSERT INTO Veterinarian (VeterinarianName, VeterinarianPhone, VeterinarianEmail)
VALUES 
    ('John Smith', '555-1234', 'jsmith@email.com'),
    ('Jane Doe', '555-5678', 'jdoe@email.com'),
    ('David Lee', '555-9012', 'dlee@email.com'),
    ('Samantha Lee', '555-3456', 'slee@email.com'),
    ('Richard Kim', '555-7890', 'rkim@email.com'),
    ('Michelle Park', '555-2345', 'mpark@email.com'),
    ('Daniel Kim', '555-6789', 'dkim@email.com'),
    ('Sarah Lee', '555-0123', 'slee2@email.com'),
    ('Brian Park', '555-4567', 'bpark@email.com'),
    ('Rachel Kim', '555-8901', 'rkim2@email.com'),
    ('Emily Lee', '555-2345', 'elee@email.com'),
    ('Kevin Park', '555-6789', 'kpark@email.com'),
    ('Kelly Kim', '555-0123', 'kkim@email.com'),
    ('Matthew Lee', '555-4567', 'mlee@email.com'),
    ('Lisa Park', '555-8901', 'lpark@email.com'),
    ('Chris Kim', '555-2345', 'ckim@email.com'),
    ('Sophia Lee', '555-6789', 'slee3@email.com'),
    ('Mark Park', '555-0123', 'mpark2@email.com'),
    ('Julia Kim', '555-4567', 'jkim@email.com'),
    ('Alex Lee', '555-8901', 'alee@email.com');
select * from veterinarian; -- 1, 20

INSERT INTO AdoptionApplication (ApplicantName, ApplicantAddress, ApplicantPhone, ApplicantEmail, Applicationstatus, petid)
VALUES
('John Doe', '123 Main St, Anytown USA', '555-1234', 'johndoe@email.com', 'Pending', 5),
('Jane Smith', '456 Elm St, Anytown USA', '555-5678', 'janesmith@email.com', 'Approved', 12),
('Bob Johnson', '789 Oak St, Anytown USA', '555-9012', 'bobjohnson@email.com', 'Denied', 17),
('Sarah Lee', '111 Cherry Ln, Anytown USA', '555-3456', 'sarahlee@email.com', 'Pending', 22),
('Mike Brown', '222 Pine St, Anytown USA', '555-7890', 'mikebrown@email.com', 'Approved', 8),
('Lisa Green', '333 Maple Ave, Anytown USA', '555-4321', 'lisagreen@email.com', 'Pending', 16),
('Tom Jones', '444 Cedar St, Anytown USA', '555-8765', 'tomjones@email.com', 'Denied', 2),
('Amy White', '555 Birch Rd, Anytown USA', '555-2109', 'amywhite@email.com', 'Pending', 19),
('Joe Black', '666 Walnut Blvd, Anytown USA', '555-6543', 'joeblack@email.com', 'Approved', 10),
('Samantha Brown', '777 Pinehurst Ave, Anytown USA', '555-0987', 'samanthabrown@email.com', 'Pending', 7),
('Brian Wilson', '888 Woodland Dr, Anytown USA', '555-5432', 'brianwilson@email.com', 'Denied', 26),
('Melissa Turner', '999 Hillcrest Ln, Anytown USA', '555-9876', 'melissaturner@email.com', 'Pending', 14),
('Tyler Lee', '222 Oak St, Anytown USA', '555-1234', 'tylerlee@email.com', 'Approved', 20),
('Rachel James', '444 Elm St, Anytown USA', '555-5678', 'racheljames@email.com', 'Pending', 27),
('David Brown', '666 Maple Ave, Anytown USA', '555-9012', 'davidbrown@email.com', 'Denied', 30),
('Emma Thompson', '888 Pine St, Anytown USA', '555-3456', 'emmathompson@email.com', 'Pending', 24),
('Ryan Williams', '111 Cedar St, Anytown USA', '555-7890', 'ryanwilliams@email.com', 'Approved', 11),
('Linda Davis', '333 Cherry Ln, Anytown USA', '555-4321', 'lindadavis@email.com', 'Pending', 18),
('Jake Smith', '555 Birch Rd, Anytown USA', '555-8765', 'jakesmith@email.com', 'Denied', 6),
('Tina Turner', '777 Walnut Blvd, Anytown USA', '555-2109', 'tinaturner@email.com', 'Pending', 23),
('Adam Wilson', '999 Pinehurst Ave, Anytown USA', '555-6543', 'adamwilson@email.com', 'Approved', 13),
('Katie Lee', '222 Woodland Dr, Anytown USA', '555-0987', 'katielee@email.com', 'Pending', 9);

select * from adoptionapplication; -- 1, 22


INSERT INTO MedicalRecord (PetID, VeterinarianID, Vaccination, treatment) VALUES
(1, 1, 'Rabies', 'Fever, medication'),
(1, 3, 'Distemper', 'Fever, medication'),
(2, 2, 'Rabies', 'Fever, medication'),
(3, 4, 'Parvo', 'Fever, medication'),
(4, 1, 'Rabies', 'Fever, medication'),
(5, 2, 'Distemper', 'Fever, medication'),
(6, 3, 'Parvo', 'Fever, medication'),
(7, 4, 'Rabies', 'Fever, medication'),
(8, 1, 'Distemper', 'Fever, medication'),
(9, 2, 'Parvo', 'Fever, medication'),
(10, 3, 'Rabies', 'Fever, medication'),
(11, 4, 'Distemper', 'Fever, medication'),
(12, 1, 'Parvo', 'Fever, medication'),
(13, 2, 'Rabies', 'Fever, medication'),
(14, 3, 'Distemper', 'Fever, medication'),
(15, 4, 'Parvo', 'Fever, medication'),
(16, 1, 'Rabies', 'Fever, medication'),
(17, 2, 'Distemper', 'Fever, medication'),
(18, 3, 'Parvo', 'Fever, medication'),
(19, 4, 'Rabies', 'Fever, medication'),
(20, 1, 'Distemper', 'Fever, medication'),
(21, 2, 'Parvo', 'Fever, medication'),
(22, 3, 'Rabies', 'Fever, medication'),
(23, 4, 'Distemper', 'Fever, medication'),
(24, 1, 'Parvo', 'Fever, medication'),
(25, 2, 'Rabies', 'Fever, medication');
select * from MedicalRecord; -- 1,26

SELECT pet.PetID, pet.PetName, pet.PetBreed, pet.PetGender, pet.PetAge, Shelter.ShelterName, Foster.FosterName
FROM pet
LEFT JOIN Shelter ON pet.ShelterID = Shelter.ShelterID
LEFT JOIN Foster ON pet.FosterID = Foster.FosterID;


SELECT AdoptionApplication.ApplicationID, AdoptionApplication.ApplicantName, pet.PetName, Shelter.ShelterName
FROM AdoptionApplication
INNER JOIN pet ON AdoptionApplication.petid = pet.PetID
INNER JOIN Shelter ON pet.ShelterID = Shelter.ShelterID;

SELECT MedicalRecord.RecordID, pet.PetName, Veterinarian.VeterinarianName, MedicalRecord.Vaccination, MedicalRecord.treatment
FROM MedicalRecord
INNER JOIN pet ON MedicalRecord.PetID = pet.PetID
INNER JOIN Veterinarian ON MedicalRecord.VeterinarianID = Veterinarian.VeterinarianID;

SELECT Donor.FirstName, Donor.LastName, Donor.Phone, Donor.Email, Donor.DonationDate, Donor.Amount
FROM Donor
WHERE Donor.Amount > 500;

SELECT Staff.StaffID, Staff.StaffName, Staff.StaffTitle, Staff.StaffPhone, Shelter.ShelterName
FROM Staff
INNER JOIN Shelter ON Staff.ShelterID = Shelter.ShelterID;

SELECT DISTINCT v.VeterinarianName, v.VeterinarianPhone
FROM Veterinarian v
INNER JOIN MedicalRecord mr ON v.VeterinarianID = mr.VeterinarianID;

SELECT DISTINCT f.FosterName, f.FosterPhone
FROM Foster f
INNER JOIN pet p ON f.FosterID = p.FosterID;

SELECT s.ShelterName, COUNT(*) AS NumPets
FROM Shelter s
INNER JOIN pet p ON s.ShelterID = p.ShelterID
GROUP BY s.ShelterName;

SELECT st.StaffName, st.StaffTitle
FROM Staff st
INNER JOIN Shelter s ON st.ShelterID = s.ShelterID
WHERE s.ShelterAddress LIKE '%street%';

SELECT d.FirstName, d.LastName, d.Email
FROM Donor d
WHERE d.Amount > 500;

COMMIT;
-- Write a query to find the top 5 shelters with the highest total donation amount received.
SELECT s.ShelterID, s.ShelterName, SUM(d.Amount) AS TotalDonationAmount
FROM Shelter s
LEFT JOIN pet p ON p.ShelterID = s.ShelterID
LEFT JOIN Donor d ON d.PetID = p.PetID
GROUP BY s.ShelterID, s.ShelterName
ORDER BY TotalDonationAmount DESC
LIMIT 5;

