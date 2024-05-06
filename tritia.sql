CREATE DATABASE student_1;
USE student_1;
CREATE TABLE student(NAME VARCHAR(30),id INT (10),address VARCHAR (30),phone_number VARCHAR (30), PRIMARY KEY(id));
SELECT * FROM  student;
INSERT INTO student (NAME ,id,address,phone_number)VALUES ('hasem',1011,'Badda','01799849438'),
('Mahin',1012,'Badda','01799849438'),('Kasem',1010,'Badda','01799849438'),
('Rahim',1013,'Badda','01799849438'),
('bashir',1014,'Badda','01799849438');


CREATE TABLE student_info(NAME VARCHAR(30),std_id INT (10),address VARCHAR (30),phone_number VARCHAR (30),FOREIGN KEY (std_id) REFERENCES student(id));
SELECT * FROM  student_info;
INSERT INTO student_info (NAME ,std_id,address,phone_number)VALUES ('bahar',1011,'kuril','01799849438'),
('Mahin',1012,'BAshunadhara','01716171819'),('Kasem',1010,'mirpur','01308383668'),
('Rahim',1013,'baridhara','01618687897'),
('bashir',1014,'uttara','123131231');


CREATE TABLE student_info1(NAME VARCHAR(30),std1_id INT (10),address VARCHAR (30),phone_number VARCHAR (30),FOREIGN KEY (std1_id) REFERENCES student(id));
SELECT * FROM  student_info1;
INSERT INTO student_info1 (NAME ,std1_id,address,phone_number)VALUES ('Sakir',1011,'rampura','01799849432'),
('sagor',1012,'gulsan','01716171833'),('nusrat',1010,'Banani','01308383655'),
('ali',1013,'Tongi','01618687834'),
('harun',1014,'Gazipur','123131235');
 
 
 SELECT tb1.id,tb2.std_id,tb3.std1_id
 
 FROM student AS tb1, student_info AS tb2,student_info1 AS tb3
 WHERE tb1.id= tb2.std_id AND tb2.std_id= tb3.std1_id;
 
 