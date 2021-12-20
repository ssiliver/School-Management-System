-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-12-20 21:21:16.046

-- tables
-- Table: Courses
CREATE TABLE Courses (
    Course_id int NOT NULL DEFAULT 100,
    Course_name varchar NOT NULL DEFAULT 100,
    year int NOT NULL,
    Course_Desc varhcar NOT NULL DEFAULT 100,
    Course_fee double NOT NULL,
    CONSTRAINT Courses_pk PRIMARY KEY (Course_id)
);

-- Table: Instructor
CREATE TABLE Instructor (
    Instructor_ID int NOT NULL,
    fname varchar NOT NULL,
    lname varchar NOT NULL,
    Gender varchar NOT NULL,
    age int NOT NULL,
    Ins_Email varchar NOT NULL,
    CONSTRAINT Instructor_pk PRIMARY KEY (Instructor_ID)
);

-- Table: Schedule
CREATE TABLE Schedule (
    Sched_ID int NOT NULL,
    Day varhcar NOT NULL,
    Start_time_start time NOT NULL,
    End_time time NOT NULL,
    Student_student_id int NOT NULL,
    Courses_Course_id int NOT NULL,
    Instructor_Instructor_ID int NOT NULL,
    Subjects_Subject_id int NOT NULL
);

-- Table: Student
CREATE TABLE Student (
    student_id int NOT NULL,
    firstname varchar NOT NULL,
    lastname varchar NOT NULL,
    parentname varchar NOT NULL,
    gender varchar NOT NULL,
    Stud_email int NOT NULL,
    Instructor_Instructor_ID int NOT NULL,
    Subjects_Subject_id int NOT NULL,
    CONSTRAINT Student_pk PRIMARY KEY (student_id)
);

-- Table: Subjects
CREATE TABLE Subjects (
    Subject_id int NOT NULL,
    name varchar NOT NULL,
    Courses_Course_id int NOT NULL,
    CONSTRAINT Subjects_pk PRIMARY KEY (Subject_id)
);

-- Table: Transaction
CREATE TABLE Transaction (
    Trans_ID int NOT NULL,
    Trans_name varchar NOT NULL,
    trans_date date NOT NULL,
    Student_student_id int NOT NULL,
    CONSTRAINT Transaction_pk PRIMARY KEY (Trans_ID)
);

-- foreign keys
-- Reference: Schedule_Courses (table: Schedule)
ALTER TABLE Schedule ADD CONSTRAINT Schedule_Courses FOREIGN KEY Schedule_Courses (Courses_Course_id)
    REFERENCES Courses (Course_id);

-- Reference: Schedule_Instructor (table: Schedule)
ALTER TABLE Schedule ADD CONSTRAINT Schedule_Instructor FOREIGN KEY Schedule_Instructor (Instructor_Instructor_ID)
    REFERENCES Instructor (Instructor_ID);

-- Reference: Schedule_Student (table: Schedule)
ALTER TABLE Schedule ADD CONSTRAINT Schedule_Student FOREIGN KEY Schedule_Student (Student_student_id)
    REFERENCES Student (student_id);

-- Reference: Schedule_Subjects (table: Schedule)
ALTER TABLE Schedule ADD CONSTRAINT Schedule_Subjects FOREIGN KEY Schedule_Subjects (Subjects_Subject_id)
    REFERENCES Subjects (Subject_id);

-- Reference: Student_Instructor (table: Student)
ALTER TABLE Student ADD CONSTRAINT Student_Instructor FOREIGN KEY Student_Instructor (Instructor_Instructor_ID)
    REFERENCES Instructor (Instructor_ID);

-- Reference: Student_Subjects (table: Student)
ALTER TABLE Student ADD CONSTRAINT Student_Subjects FOREIGN KEY Student_Subjects (Subjects_Subject_id)
    REFERENCES Subjects (Subject_id);

-- Reference: Subjects_Courses (table: Subjects)
ALTER TABLE Subjects ADD CONSTRAINT Subjects_Courses FOREIGN KEY Subjects_Courses (Courses_Course_id)
    REFERENCES Courses (Course_id);

-- Reference: Transaction_Student (table: Transaction)
ALTER TABLE Transaction ADD CONSTRAINT Transaction_Student FOREIGN KEY Transaction_Student (Student_student_id)
    REFERENCES Student (student_id);

-- End of file.

