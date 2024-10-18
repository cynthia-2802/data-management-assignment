-- Create lawyer table
CREATE TABLE lawyer (
    lawyer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Create qualification table
CREATE TABLE qualification (
    qualification_id INT PRIMARY KEY,
    qualification_name VARCHAR(100) NOT NULL
);

-- Create lawyer_qualification table
CREATE TABLE lawyer_qualification (
    lawyer_qualification_id INT PRIMARY KEY,
    lawyer_id INT NOT NULL,
    qualification_id INT NOT NULL,
    FOREIGN KEY (lawyer_id) REFERENCES lawyer(lawyer_id),
    FOREIGN KEY (qualification_id) REFERENCES qualification(qualification_id)
);

-- Create case_type table
CREATE TABLE case_type (
    case_type_id INT PRIMARY KEY,
    case_type_name VARCHAR(50) NOT NULL,
    fixed_price DECIMAL(10,2) NOT NULL
);

-- Create lawyer_expertise table
CREATE TABLE lawyer_expertise (
    lawyer_expertise_id INT PRIMARY KEY,
    lawyer_id INT NOT NULL,
    case_type_id INT NOT NULL,
    FOREIGN KEY (lawyer_id) REFERENCES lawyer(lawyer_id),
    FOREIGN KEY (case_type_id) REFERENCES case_type(case_type_id)
);

-- Create client table
CREATE TABLE client (
    client_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    country VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Create case table
CREATE TABLE law_case (
    case_id INT PRIMARY KEY,
    client_id INT NOT NULL,
    case_type_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    case_details TEXT,
    FOREIGN KEY (client_id) REFERENCES client(client_id),
    FOREIGN KEY (case_type_id) REFERENCES case_type(case_type_id)
);

-- Create lawyer_case_assignment table
CREATE TABLE lawyer_case_assignment (
    assignment_id INT PRIMARY KEY,
    case_id INT NOT NULL,
    lawyer_id INT NOT NULL,
    role VARCHAR(20) NOT NULL,
    FOREIGN KEY (case_id) REFERENCES law_case(case_id),
    FOREIGN KEY (lawyer_id) REFERENCES lawyer(lawyer_id)
);

-- Create meeting_room table
CREATE TABLE meeting_room (
    room_id INT PRIMARY KEY,
    room_name VARCHAR(10) NOT NULL
);

-- Create meeting table
CREATE TABLE meeting (
    meeting_id INT PRIMARY KEY,
    case_id INT NOT NULL,
    room_id INT NOT NULL,
    start_datetime TIMESTAMP NOT NULL,
    end_datetime TIMESTAMP NOT NULL,
    purpose VARCHAR(100),
    FOREIGN KEY (case_id) REFERENCES law_case(case_id),
    FOREIGN KEY (room_id) REFERENCES meeting_room(room_id)
);

-- Create meeting_attendee table
CREATE TABLE meeting_attendee (
    meeting_attendee_id INT PRIMARY KEY,
    meeting_id INT NOT NULL,
    attendee_id INT NOT NULL,
    attendee_type VARCHAR(20) NOT NULL,
    FOREIGN KEY (meeting_id) REFERENCES meeting(meeting_id)
    -- Note: attendee_id references either lawyer(lawyer_id) or client(client_id) based on attendee_type
    -- This constraint should be enforced via application logic or additional database constraints if supported
);
