

/*
delete from Appointment
delete from Doctor
delete from Patient
delete from Department
delete from OtherStaff
delete from LoginTable
*/

USE DBProject
GO


INSERT INTO LoginTable(Email, Password, Type) VALUES ('admin@clinic.com' ,'admin' ,   3)
INSERT INTO LoginTable(Email, Password, Type) VALUES ('quangquang@clinic.com' ,'admin' ,   3)


--DEPARTMENT INSERTION
insert into department values(1 , 'Cardiology' , 'We have the best heart specialists in town .Each one of them is very competent and experienced.')
insert into department values(2 , 'Orthopaedics' , 'Orthopedic surgeons use surgical means to treat musculoskeletal trauma, infections, tumors. We believe in the best.')
insert into department values(3 , 'Ears Nose Throat' , 'They are gentle. And are trained to handle kids as well as adults.')
insert into department values(4 , 'Physiotherapy ',' Physiotherapists work through physical therapies such as exercise, and manipulation of bones, joints and muscle tissues.' )
insert into department values(5 , 'Neurology', 'A medical speciality dealing with disorders of the nervous system. It deals with the diagnosis and treatment of all categories of disease.')



--LOGIN TABLE INSERTIION
INSERT INTO LoginTable(Email, Password, Type) VALUES('trung@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('phuong@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('linh@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('minh@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('anh@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('tuan@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('duc@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('hanh@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('thuy@gmail.com', 'abc', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('vu@gmail.com', 'abc', 2)

INSERT INTO LoginTable(Email, Password, Type) VALUES('thanh@gmail.com', 'abc', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('hoang@gmail.com', 'abc', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('hung@gmail.com', 'abc', 1)

--DOCTOR INSERTIONS
DECLARE @ID INT
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'trung@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Trung Nguyen', '156133213', 'Enjoy, Hanoi', '4-12-1996', 'M', 1, 2500, 30000, 4, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'phuong@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Phuong Tran', '156133213', 'Enjoy, Hanoi', '12-12-1996', 'M', 1, 3000, 25000, 3.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'linh@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Linh Nguyen', '156133213', 'Enjoy, Hanoi', '12-12-1996', 'M', 1, 1500, 20000, 5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'minh@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Minh Nguyen', '156133213', 'Enjoy, Hanoi', '05-04-1990', 'M', 1, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'tuan@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Tuan Le', '156133213', 'Enjoy, Hanoi', '05-04-1990', 'M', 2, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'duc@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Duc Pham', '156133213', 'Enjoy, Hanoi', '05-04-1990', 'M', 2, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'hanh@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Hanh Vu', '156133213', 'Enjoy, Hanoi', '05-04-1990', 'M', 3, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'thuy@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Thuy Nguyen', '156133213', 'Enjoy, Hanoi', '05-04-1990', 'M', 3, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'vu@gmail.com'
INSERT INTO Doctor VALUES(@ID, 'Vu Tran', '156133213', 'Enjoy, Hanoi', '05-04-1990', 'M', 4, 1000, 15000, 4.5, 0, 'PHD IN EVERY FIELD KNOWN TO MAN', 'ENJOY', 10, 1)

--PATIENT INSERTIONS
DECLARE @P_ID INT
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='thanh@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'Thanh', '61536516', 'ENJOY, HANOI', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='hoang@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'Hoang', '61536516', 'ENJOY, HANOI', '4-4-1996', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='hung@gmail.com'
INSERT INTO Patient VALUES(@P_ID, 'Hung', '61536516', 'ENJOY, HANOI', '4-4-1996', 'M')

--select * from OtherStaff

insert into OtherStaff values ('Bao', '03227561002','Hoan Kiem, Hanoi', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Trong', '03227561002','Hoan Kiem, Hanoi', 'Sweeper', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Lan', '03227561002','Hoan Kiem, Hanoi', 'Security', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Anh', '03227561002','Hoan Kiem, Hanoi', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Kieu', '03227561002','Hoan Kiem, Hanoi', 'Guard', 'M', '05-04-1990', 'Matric',5000)
insert into OtherStaff values ('Huong', '03227561002','Hoan Kiem, Hanoi', 'Guard', 'M', '05-04-1990', 'Matric',5000)







--Because I have inserted the date and time in a particular format in the appointment table and that format has to be maintained
--for proper working

/*
--APPOINTMENT INSERTIONS 
DECLARE @DOCTOR_ID INT
DECLARE @PATIENT_ID INT
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 10:00:00', 3)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 12:00:00', 1)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='hassaan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 16:00:00', 3)
*/

