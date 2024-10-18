-- Insert data into lawyer table
INSERT INTO lawyer (lawyer_id, first_name, last_name, date_of_birth, email, phone_number) VALUES
(1, 'John', 'Doe', '1980-05-15', 'jdoe1@example.com', '555-1001'),
(2, 'Jane', 'Smith', '1975-08-22', 'jsmith2@example.com', '555-1002'),
(3, 'Emily', 'Clark', '1982-11-30', 'eclark3@example.com', '555-1003'),
(4, 'Michael', 'Brown', '1979-04-10', 'mbrown4@example.com', '555-1004'),
(5, 'Sarah', 'Davis', '1985-07-12', 'sdavis5@example.com', '555-1005'),
(6, 'David', 'Miller', '1981-03-08', 'dmiller6@example.com', '555-1006'),
(7, 'Laura', 'Wilson', '1983-09-25', 'lwilson7@example.com', '555-1007'),
(8, 'Robert', 'Taylor', '1978-12-19', 'rtaylor8@example.com', '555-1008'),
(9, 'Linda', 'Anderson', '1984-06-14', 'landerson9@example.com', '555-1009'),
(10, 'James', 'Thomas', '1976-11-05', 'jthomas10@example.com', '555-1010'),
(11, 'Patricia', 'Jackson', '1980-02-22', 'pjackson11@example.com', '555-1011'),
(12, 'Charles', 'White', '1977-08-30', 'cwhite12@example.com', '555-1012'),
(13, 'Barbara', 'Harris', '1985-05-18', 'bharris13@example.com', '555-1013'),
(14, 'Joseph', 'Martin', '1982-07-07', 'jmartin14@example.com', '555-1014'),
(15, 'Jessica', 'Thompson', '1979-10-20', 'jthompson15@example.com', '555-1015'),
(16, 'Daniel', 'Garcia', '1981-01-11', 'dgarcia16@example.com', '555-1016'),
(17, 'Karen', 'Martinez', '1983-04-27', 'kmartinez17@example.com', '555-1017'),
(18, 'Matthew', 'Robinson', '1980-09-13', 'mrobinson18@example.com', '555-1018'),
(19, 'Elizabeth', 'Clark', '1984-12-02', 'eclark19@example.com', '555-1019'),
(20, 'Anthony', 'Rodriguez', '1978-06-29', 'arodriguez20@example.com', '555-1020'),
(21, 'Susan', 'Lewis', '1982-08-16', 'slewis21@example.com', '555-1021'),
(22, 'Mark', 'Lee', '1977-03-05', 'mlee22@example.com', '555-1022'),
(23, 'Margaret', 'Walker', '1985-11-23', 'mwalker23@example.com', '555-1023'),
(24, 'Steven', 'Hall', '1981-07-09', 'shall24@example.com', '555-1024'),
(25, 'Kimberly', 'Allen', '1979-05-14', 'kallen25@example.com', '555-1025'),
(26, 'Paul', 'Young', '1983-02-28', 'pyoung26@example.com', '555-1026'),
(27, 'Lisa', 'Hernandez', '1980-08-21', 'lhernandez27@example.com', '555-1027'),
(28, 'Kevin', 'King', '1984-10-03', 'kking28@example.com', '555-1028'),
(29, 'Nancy', 'Wright', '1978-12-17', 'nwright29@example.com', '555-1029'),
(30, 'Brian', 'Lopez', '1982-06-06', 'blopez30@example.com', '555-1030'),
(31, 'Karen', 'Hill', '1985-09-26', 'khill31@example.com', '555-1031');

-- Insert data into qualification table
INSERT INTO qualification (qualification_id, qualification_name) VALUES
(1, 'JD'),
(2, 'LLM in Corporate Law'),
(3, 'LLM in Family Law'),
(4, 'LLM in Criminal Law'),
(5, 'LLM in Traffic Law'),
(6, 'PhD in Law');

-- Insert data into lawyer_qualification table

-- Lawyers specializing in Corporate cases (lawyer_id 1 to 10)
INSERT INTO lawyer_qualification (lawyer_qualification_id, lawyer_id, qualification_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 1),
(8, 4, 2),
(9, 5, 1),
(10, 5, 2),
(11, 6, 1),
(12, 6, 2),
(13, 7, 1),
(14, 7, 2),
(15, 8, 1),
(16, 8, 2),
(17, 9, 1),
(18, 9, 2),
(19, 10, 1),
(20, 10, 2),

-- Lawyers specializing in Family law (lawyer_id 11 to 15)
(21, 11, 1),
(22, 11, 3),
(23, 12, 1),
(24, 12, 3),
(25, 13, 1),
(26, 13, 3),
(27, 14, 1),
(28, 14, 3),
(29, 15, 1),
(30, 15, 3),

-- Lawyers specializing in Criminal cases (lawyer_id 16 to 20)
(31, 16, 1),
(32, 16, 4),
(33, 17, 1),
(34, 17, 4),
(35, 18, 1),
(36, 18, 4),
(37, 19, 1),
(38, 19, 4),
(39, 20, 1),
(40, 20, 4),

-- Lawyers specializing in Traffic cases (lawyer_id 21 to 23)
(41, 21, 1),
(42, 21, 5),
(43, 22, 1),
(44, 22, 5),
(45, 23, 1),
(46, 23, 5),

-- All-rounder lawyers (lawyer_id 24 to 31)
-- Assigning them basic qualification JD and PhD
(47, 24, 1),
(48, 24, 6),
(49, 25, 1),
(50, 25, 6),
(51, 26, 1),
(52, 26, 6),
(53, 27, 1),
(54, 27, 6),
(55, 28, 1),
(56, 28, 6),
(57, 29, 1),
(58, 29, 6),
(59, 30, 1),
(60, 30, 6),
(61, 31, 1),
(62, 31, 6);

-- Insert data into case_type table
INSERT INTO case_type (case_type_id, case_type_name, fixed_price) VALUES
(1, 'Corporate', 10000),
(2, 'Family', 1700),
(3, 'Traffic', 600),
(4, 'Criminal', 6000);

-- Insert data into lawyer_expertise table
-- Lawyers specializing in Corporate cases (lawyer_id 1 to 10)
INSERT INTO lawyer_expertise (lawyer_expertise_id, lawyer_id, case_type_id) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),

-- Lawyers specializing in Family law (lawyer_id 11 to 15)
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),

-- Lawyers specializing in Criminal cases (lawyer_id 16 to 20)
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),

-- Lawyers specializing in Traffic cases (lawyer_id 21 to 23)
(21, 21, 3),
(22, 22, 3),
(23, 23, 3);

-- All-rounder lawyers (lawyer_id 24 to 31)
-- These lawyers are assigned to all case types

-- Assigning all case types to each all-rounder lawyer
INSERT INTO lawyer_expertise (lawyer_expertise_id, lawyer_id, case_type_id) VALUES
(24, 24, 1),
(25, 24, 2),
(26, 24, 3),
(27, 24, 4),

(28, 25, 1),
(29, 25, 2),
(30, 25, 3),
(31, 25, 4),

(32, 26, 1),
(33, 26, 2),
(34, 26, 3),
(35, 26, 4),

(36, 27, 1),
(37, 27, 2),
(38, 27, 3),
(39, 27, 4),

(40, 28, 1),
(41, 28, 2),
(42, 28, 3),
(43, 28, 4),

(44, 29, 1),
(45, 29, 2),
(46, 29, 3),
(47, 29, 4),

(48, 30, 1),
(49, 30, 2),
(50, 30, 3),
(51, 30, 4),

(52, 31, 1),
(53, 31, 2),
(54, 31, 3),
(55, 31, 4);

-- Insert data into client table
INSERT INTO client (client_id, first_name, last_name, date_of_birth, country, email, phone_number) VALUES
(1, 'Alice', 'Johnson', '1990-03-10', 'USA', 'alicej@example.com', '555-2001'),
(2, 'Bob', 'Williams', '1985-11-05', 'Canada', 'bobw@example.com', '555-2002'),
(3, 'Carol', 'Davis', '1992-07-14', 'UK', 'carold@example.com', '555-2003'),
(4, 'David', 'Miller', '1988-01-22', 'Australia', 'davidm@example.com', '555-2004'),
(5, 'Eve', 'Wilson', '1995-09-18', 'USA', 'evew@example.com', '555-2005');

-- Insert data into case table
INSERT INTO law_case (case_id, client_id, case_type_id, start_date, end_date, case_details) VALUES
(1, 1, 2, '2023-01-15', NULL, 'Divorce proceedings'),
(2, 2, 3, '2023-02-20', NULL, 'Speeding violation'),
(3, 3, 1, '2023-03-10', NULL, 'Corporate merger consultation'),
(4, 4, 4, '2023-04-05', NULL, 'Criminal defense'),
(5, 5, 2, '2023-05-12', NULL, 'Child custody case');

-- Insert data into lawyer_case_assignment table

-- Case 1 (Family case): Assign a Family specialist as primary, and an all-rounder as support
INSERT INTO lawyer_case_assignment (assignment_id, case_id, lawyer_id, role) VALUES
(1, 1, 11, 'primary'),  -- Lawyer 11 is a Family specialist
(2, 1, 24, 'support');  -- Lawyer 24 is an all-rounder

-- Case 2 (Traffic case): Assign a Traffic specialist as primary
INSERT INTO lawyer_case_assignment (assignment_id, case_id, lawyer_id, role) VALUES
(3, 2, 21, 'primary');  -- Lawyer 21 is a Traffic specialist

-- Case 3 (Corporate case): Assign a Corporate specialist as primary, and an all-rounder as support
INSERT INTO lawyer_case_assignment (assignment_id, case_id, lawyer_id, role) VALUES
(4, 3, 1, 'primary'),   -- Lawyer 1 is a Corporate specialist
(5, 3, 25, 'support');  -- Lawyer 25 is an all-rounder

-- Case 4 (Criminal case): Assign a Criminal specialist as primary
INSERT INTO lawyer_case_assignment (assignment_id, case_id, lawyer_id, role) VALUES
(6, 4, 16, 'primary');  -- Lawyer 16 is a Criminal specialist

-- Case 5 (Family case): Assign a Family specialist as primary
INSERT INTO lawyer_case_assignment (assignment_id, case_id, lawyer_id, role) VALUES
(7, 5, 12, 'primary');  -- Lawyer 12 is a Family specialist

-- Insert data into meeting_room table
INSERT INTO meeting_room (room_id, room_name) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'G'),
(8, 'H'),
(9, 'I'),
(10, 'J');

-- Insert data into meeting table
INSERT INTO meeting (meeting_id, case_id, room_id, start_datetime, end_datetime, purpose) VALUES
(1, 1, 1, '2023-01-16 10:00:00', '2023-01-16 11:00:00', 'Initial Consultation'),
(2, 2, 2, '2023-02-21 14:00:00', '2023-02-21 15:30:00', 'Case Discussion'),
(3, 3, 3, '2023-03-12 09:00:00', '2023-03-12 10:30:00', 'Merger Planning'),
(4, 4, 4, '2023-04-10 13:00:00', '2023-04-10 14:30:00', 'Defense Strategy'),
(5, 5, 5, '2023-05-15 11:00:00', '2023-05-15 12:00:00', 'Custody Hearing Preparation');

-- Insert data into meeting_attendee table

-- Meeting 1 attendees: client 1, primary lawyer 11, support lawyer 24
INSERT INTO meeting_attendee (meeting_attendee_id, meeting_id, attendee_id, attendee_type) VALUES
(1, 1, 1, 'client'),    -- client_id = 1
(2, 1, 11, 'lawyer'),   -- lawyer_id = 11
(3, 1, 24, 'lawyer'),   -- lawyer_id = 24

-- Meeting 2 attendees: client 2, primary lawyer 21
(4, 2, 2, 'client'),    -- client_id = 2
(5, 2, 21, 'lawyer'),   -- lawyer_id = 21

-- Meeting 3 attendees: client 3, primary lawyer 1, support lawyer 25
(6, 3, 3, 'client'),    -- client_id = 3
(7, 3, 1, 'lawyer'),    -- lawyer_id = 1
(8, 3, 25, 'lawyer'),   -- lawyer_id = 25

-- Meeting 4 attendees: client 4, primary lawyer 16
(9, 4, 4, 'client'),    -- client_id = 4
(10, 4, 16, 'lawyer'),  -- lawyer_id = 16

-- Meeting 5 attendees: client 5, primary lawyer 12
(11, 5, 5, 'client'),   -- client_id = 5
(12, 5, 12, 'lawyer');  -- lawyer_id = 12

