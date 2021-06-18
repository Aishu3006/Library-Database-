CREATE database Lib;

/* To check the databases present */
SHOW databases;

/* Which database to use? */
USE Lib;

/* Creating the Database */
CREATE TABLE Readers
(
Reader_ID varchar(10),
Fname varchar(30),
Mname varchar(30),
Lname varchar(30),
City varchar(15),
Phone_Number varchar(10),
Occupation varchar(10),
DOB DATE,
CONSTRAINT Readers_PK PRIMARY KEY(Reader_ID)
);

 /* Insert Data into the table */
INSERT INTO Readers VALUES('0001','Ramesh','Sharma','Mumbai','9574623845','Doctor','1976-12-19');
INSERT INTO Readers VALUES('0002','Lathika','Balasubramnayam','Chennai','9479632845','Engineer','1972-06-01');
INSERT INTO Readers VALUES('0003','Madhav','Chaudhary','Hyderabad','9568742365','Student','1998-12-11');
INSERT INTO Readers VALUES('0004','Vaani',null,'Mumbai','7569842365','Teacher','1968-05-23');
INSERT INTO Readers VALUES('0005','Ram','Chandra','Chennai','8457963214','Engineer','1995-04-15');
INSERT INTO Readers VALUES('0006','Gautham','Nanda','Hyderabad','9856974321','Student','2001-01-29');
INSERT INTO Readers VALUES('0007','Surekha',null,'Vizag','8426579135','Student','1999=11-07');
INSERT INTO Readers VALUES('0008','Ambica','Devi','Hyderabad','7942365841','Engineer','1992-09-05');
INSERT INTO Readers VALUES('0009','Vaibhav',null,'Hyderabad','7963148524','Doctor','1969-03-09');
INSERT INTO Readers VALUES('0010','Sam',null,'Bangalore','7639889599','Business','1989-05-20');
INSERT INTO Readers VALUES('0011','Jessie','Paul','Mumbai','9986648752','Student','1991-07-10');
INSERT INTO Readers VALUES('0012','Karthik','Aryan','Bangalore','8566541237','Business','1984-12-11');
 
 /* Fetch the table */
 SELECT * 
 FROM Readers;
 
 /* CREATE Another Table*/
 CREATE TABLE Book
 (
 Book_ID VARCHAR(6),
 Book_Name VARCHAR(40),
 Genre VARCHAR(30),
 CONSTRAINT Book_ID_PK PRIMARY KEY (Book_ID)
 );
 
 /* Add data into Book Table */
 INSERT INTO Book VALUES('356','Love Story','Romance');
 INSERT INTO Book VALUES('423','To Kill A Mockingbird','Thriller');
 INSERT INTO Book VALUES('152','The Krishna Key','Thriller');
 INSERT INTO Book VALUES('697','Mahabharatha','Mythology');
 INSERT INTO Book VALUES('824','Catastrophy','Sci-fi');
 INSERT INTO Book VALUES('928','Divergent','Young Adult');
 
 Select * FROM Book;
 
/* Using those Constraints*/
CREATE TABLE Active_Readers
(
Account_ID VARCHAR(6),
reader_ID VARCHAR(6),
book_ID VARCHAR(6),
Atype VARCHAR(10),
Astatus VARCHAR(10),
CONSTRAINT ActiveReaders_acnumber_PK PRIMARY KEY (Account_ID),
CONSTRAINT Account_ReaderID_FK FOREIGN KEY (reader_ID) REFERENCES Readers(Reader_ID) ,
CONSTRAINT Account_BookID_FK FOREIGN KEY (book_ID) REFERENCES Book(Book_ID)
);

INSERT INTO Active_Readers VALUES('A00001','0012','356','Premium','Active');
INSERT INTO Active_Readers VALUES('A00002','0007','152','Regular','Active');
INSERT INTO Active_Readers VALUES('A00003','0003','697','Regular','Active');
INSERT INTO Active_Readers VALUES('A00004','0009','423','Premium','Active');
INSERT INTO Active_Readers VALUES('A00005','0005','152','Premium','Suspended');
INSERT INTO Active_Readers VALUES('A00006','0002','824','Regular','Active');
INSERT INTO Active_Readers VALUES('A00007','0004','928','Premium','Active');
INSERT INTO Active_Readers VALUES('A00008','0001','423','Regular','Terminated');
INSERT INTO Active_Readers VALUES('A00009','0006','697','Premium','Terminated');
INSERT INTO Active_Readers VALUES('A00010','0008','824','Premium','Active');
INSERT INTO Active_Readers VALUES('A00011','0011','697','Regular','Supended');
INSERT INTO Active_Readers VALUES('A00012','0010','423','Premium','Active');

SELECT * FROM Active_Readers;
/* */
/* */
/* */
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 