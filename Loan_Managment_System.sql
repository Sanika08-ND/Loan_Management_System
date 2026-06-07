create database LMS;
use LMS;
-- T1 Branches details :-
CREATE TABLE Branches (
 branch_id INT PRIMARY KEY AUTO_INCREMENT, 
 branch_name VARCHAR(50), 
 city VARCHAR(50), 
 phone VARCHAR(15) 
);
select * from Branches;
INSERT INTO Branches (branch_name, city, phone) VALUES
('Chennai Central Branch','Chennai','9000000001'),('Anna Nagar Branch','Chennai','9000000002'),('Tambaram Branch','Chennai','9000000003'),('Velachery Branch','Chennai','9000000004'),('T Nagar Branch','Chennai','9000000005'),('Coimbatore Main Branch','Coimbatore','9000000006'),('RS Puram Branch','Coimbatore','9000000007'),('Gandhipuram Branch','Coimbatore','9000000008'),('Madurai Main Branch','Madurai','9000000009'),('Anna Bus Stand Branch','Madurai','9000000010'),
('Trichy Central Branch','Trichy','9000000011'),('Srirangam Branch','Trichy','9000000012'),('Salem Main Branch','Salem','9000000013'),('Erode Branch','Erode','9000000014'),('Tirunelveli Branch','Tirunelveli','9000000015'),('Thoothukudi Branch','Thoothukudi','9000000016'),('Vellore Branch','Vellore','9000000017'),('Kanchipuram Branch','Kanchipuram','9000000018'),('Cuddalore Branch','Cuddalore','9000000019'),('Nagapattinam Branch','Nagapattinam','9000000020'),
('Bangalore Main Branch','Bangalore','9000000021'),('Whitefield Branch','Bangalore','9000000022'),('Electronic City Branch','Bangalore','9000000023'),('Mysore Branch','Mysore','9000000024'),('Hubli Branch','Hubli','9000000025'),('Mangalore Branch','Mangalore','9000000026'),('Hyderabad Main Branch','Hyderabad','9000000027'),('Secunderabad Branch','Hyderabad','9000000028'),('Gachibowli Branch','Hyderabad','9000000029'),('Warangal Branch','Warangal','9000000030'),
('Vijayawada Branch','Vijayawada','9000000031'),('Visakhapatnam Branch','Visakhapatnam','9000000032'),('Guntur Branch','Guntur','9000000033'),('Nellore Branch','Nellore','9000000034'),('Mumbai Central Branch','Mumbai','9000000035'),('Andheri Branch','Mumbai','9000000036'),('Bandra Branch','Mumbai','9000000037'),('Navi Mumbai Branch','Mumbai','9000000038'),('Pune Main Branch','Pune','9000000039'),('Nagpur Branch','Nagpur','9000000040'),
('Delhi Central Branch','Delhi','9000000041'),('Karol Bagh Branch','Delhi','9000000042'),('Dwarka Branch','Delhi','9000000043'),('Noida Branch','Noida','9000000044'),('Gurgaon Branch','Gurgaon','9000000045'),('Kolkata Main Branch','Kolkata','9000000046'),('Howrah Branch','Kolkata','9000000047'),('Durgapur Branch','Durgapur','9000000048'),('Ahmedabad Branch','Ahmedabad','9000000049'),('Surat Branch','Surat','9000000050'),
('Vadodara Branch','Vadodara','9000000051'),('Rajkot Branch','Rajkot','9000000052'),('Jaipur Branch','Jaipur','9000000053'),('Jodhpur Branch','Jodhpur','9000000054'),('Udaipur Branch','Udaipur','9000000055'),('Lucknow Branch','Lucknow','9000000056'),('Kanpur Branch','Kanpur','9000000057'),('Varanasi Branch','Varanasi','9000000058'),('Prayagraj Branch','Prayagraj','9000000059'),('Bhopal Branch','Bhopal','9000000060'),
('Indore Branch','Indore','9000000061'),('Gwalior Branch','Gwalior','9000000062'),('Patna Branch','Patna','9000000063'),('Ranchi Branch','Ranchi','9000000064'),('Jamshedpur Branch','Jamshedpur','9000000065'),('Bhubaneswar Branch','Bhubaneswar','9000000066'),('Cuttack Branch','Cuttack','9000000067'),('Chandigarh Branch','Chandigarh','9000000068'),('Amritsar Branch','Amritsar','9000000069'),('Ludhiana Branch','Ludhiana','9000000070'),
('Dehradun Branch','Dehradun','9000000071'),('Haridwar Branch','Haridwar','9000000072'),('Shimla Branch','Shimla','9000000073'),('Jammu Branch','Jammu','9000000074'),('Srinagar Branch','Srinagar','9000000075'),('Kochi Branch','Kochi','9000000076'),('Trivandrum Branch','Trivandrum','9000000077'),('Kozhikode Branch','Kozhikode','9000000078'),('Panaji Branch','Panaji','9000000079'),('Raipur Branch','Raipur','9000000080'),
('Bilaspur Branch','Bilaspur','9000000081'),('Agra Branch','Agra','9000000082'),('Meerut Branch','Meerut','9000000083'),('Aligarh Branch','Aligarh','9000000084'),('Nashik Branch','Nashik','9000000085'),('Aurangabad Branch','Aurangabad','9000000086'),('Kolhapur Branch','Kolhapur','9000000087'),('Siliguri Branch','Siliguri','9000000088'),('Gangtok Branch','Gangtok','9000000089'),('Shillong Branch','Shillong','9000000090'),
('Imphal Branch','Imphal','9000000091'),('Aizawl Branch','Aizawl','9000000092'),('Itanagar Branch','Itanagar','9000000093'),('Kohima Branch','Kohima','9000000094'),('Agartala Branch','Agartala','9000000095'),('Port Blair Branch','Port Blair','9000000096'),('Leh Branch','Leh','9000000097'),('Kargil Branch','Kargil','9000000098'),('Daman Branch','Daman','9000000099'),('Diu Branch','Diu','9000000100');
drop table if exists Branches;
drop table if exists Customers;
drop table if exists Customer_Address;
drop table if exists loan_applications;
drop table if exists loan_approvals;
drop table if exists employees;


-- T2 Customers details :-
CREATE TABLE Customers (
 customer_id INT PRIMARY KEY AUTO_INCREMENT, 
 customer_name VARCHAR(100), 
 gender VARCHAR(10), 
 dob DATE, 
 phone VARCHAR(15), 
 email VARCHAR(100), 
 branch_id INT, FOREIGN KEY (branch_id) REFERENCES Branches(branch_id) );
 INSERT INTO Customers(customer_name,gender,dob,phone,email,branch_id) VALUES 
  ('Aarav Sharma','Male','1995-05-12','9876500001','aarav.sharma@gmail.com',1),('Ananya Iyer','Female','1998-08-21','9876500002','ananya.iyer@gmail.com',2),('Rohan Kumar','Male','1994-03-15','9876500003','rohan.kumar@gmail.com',3),('Priya Nair','Female','1997-07-11','9876500004','priya.nair@gmail.com',4),('Vikram Singh','Male','1993-09-25','9876500005','vikram.singh@gmail.com',5),('Meera Patel','Female','1999-01-19','9876500006','meera.patel@gmail.com',6),('Arjun Reddy','Male','1996-04-08','9876500007','arjun.reddy@gmail.com',7),('Sneha Gupta','Female','1998-12-17','9876500008','sneha.gupta@gmail.com',8),('Karthik Raj','Male','1995-06-30','9876500009','karthik.raj@gmail.com',9),('Divya Menon','Female','1997-11-13','9876500010','divya.menon@gmail.com',10),
('Rahul Verma','Male','1992-02-05','9876500011','rahul.verma@gmail.com',11),('Pooja Sharma','Female','1996-10-10','9876500012','pooja.sharma@gmail.com',12),('Sanjay Das','Male','1991-07-22','9876500013','sanjay.das@gmail.com',13),('Nisha Rao','Female','1998-05-27','9876500014','nisha.rao@gmail.com',14),('Ajay Kumar','Male','1994-09-09','9876500015','ajay.kumar@gmail.com',15),('Lavanya S','Female','1999-03-14','9876500016','lavanya.s@gmail.com',16),('Deepak Jain','Male','1993-12-03','9876500017','deepak.jain@gmail.com',17),('Keerthana P','Female','1997-06-16','9876500018','keerthana.p@gmail.com',18),('Manoj Babu','Male','1995-08-20','9876500019','manoj.babu@gmail.com',19),('Aishwarya R','Female','1998-01-28','9876500020','aishwarya.r@gmail.com',20),
('Harish Kumar','Male','1992-11-11','9876500021','harish.kumar@gmail.com',21),('Gayathri Devi','Female','1996-02-18','9876500022','gayathri.devi@gmail.com',22),('Surya Prakash','Male','1993-07-07','9876500023','surya.prakash@gmail.com',23),('Ramya K','Female','1999-04-12','9876500024','ramya.k@gmail.com',24),('Praveen Raj','Male','1995-09-01','9876500025','praveen.raj@gmail.com',25),('Sathish Kumar','Male','1994-03-09','9876500026','sathish.kumar@gmail.com',26),('Bhavya Reddy','Female','1997-10-30','9876500027','bhavya.reddy@gmail.com',27),('Naveen Kumar','Male','1992-05-18','9876500028','naveen.kumar@gmail.com',28),('Monika Jain','Female','1998-08-08','9876500029','monika.jain@gmail.com',29),('Kiran Kumar','Male','1993-01-25','9876500030','kiran.kumar@gmail.com',30),
('Shruthi N','Female','1999-12-12','9876500031','shruthi.n@gmail.com',31),('Abhishek Singh','Male','1995-06-05','9876500032','abhishek.singh@gmail.com',32),('Neha Kapoor','Female','1997-02-22','9876500033','neha.kapoor@gmail.com',33),('Varun S','Male','1994-10-14','9876500034','varun.s@gmail.com',34),('Ritika Sharma','Female','1998-03-06','9876500035','ritika.sharma@gmail.com',35),('Ashwin Kumar','Male','1993-08-17','9876500036','ashwin.kumar@gmail.com',36),('Kavya Nair','Female','1999-09-29','9876500037','kavya.nair@gmail.com',37),('Mohan Raj','Male','1992-04-21','9876500038','mohan.raj@gmail.com',38),('Shalini P','Female','1996-11-15','9876500039','shalini.p@gmail.com',39),('Dinesh Kumar','Male','1995-07-04','9876500040','dinesh.kumar@gmail.com',40),
('Anitha R','Female','1998-06-26','9876500041','anitha.r@gmail.com',41),('Rajesh Kumar','Male','1993-01-31','9876500042','rajesh.kumar@gmail.com',42),('Priyanka S','Female','1997-05-23','9876500043','priyanka.s@gmail.com',43),('Ganesh B','Male','1994-12-07','9876500044','ganesh.b@gmail.com',44),('Swathi K','Female','1999-02-13','9876500045','swathi.k@gmail.com',45),('Vignesh R','Male','1995-11-20','9876500046','vignesh.r@gmail.com',46),('Harini M','Female','1998-07-03','9876500047','harini.m@gmail.com',47),('Saravanan T','Male','1992-09-18','9876500048','saravanan.t@gmail.com',48),('Nandhini V','Female','1997-04-27','9876500049','nandhini.v@gmail.com',49),('Lokesh Kumar','Male','1994-08-11','9876500050','lokesh.kumar@gmail.com',50),
('Aravind Kumar','Male','1993-05-17','9876500051','aravind.kumar@gmail.com',51),('Preethi Nair','Female','1998-07-22','9876500052','preethi.nair@gmail.com',52),('Kishore Reddy','Male','1995-01-14','9876500053','kishore.reddy@gmail.com',53),('Deepika Sharma','Female','1997-09-03','9876500054','deepika.sharma@gmail.com',54),('Balaji S','Male','1994-11-28','9876500055','balaji.s@gmail.com',55),('Haritha Rao','Female','1999-04-11','9876500056','haritha.rao@gmail.com',56),('Nithin Kumar','Male','1992-06-25','9876500057','nithin.kumar@gmail.com',57),('Shreya Patel','Female','1998-02-19','9876500058','shreya.patel@gmail.com',58),('Vinod Kumar','Male','1993-12-08','9876500059','vinod.kumar@gmail.com',59),('Aparna Iyer','Female','1997-10-27','9876500060','aparna.iyer@gmail.com',60),
('Senthil Raj','Male','1995-08-16','9876500061','senthil.raj@gmail.com',61),('Pavithra M','Female','1999-03-30','9876500062','pavithra.m@gmail.com',62),('Gokul Krishna','Male','1994-07-12','9876500063','gokul.krishna@gmail.com',63),('Reshma Nair','Female','1998-05-05','9876500064','reshma.nair@gmail.com',64),('Karthika Devi','Female','1996-01-21','9876500065','karthika.devi@gmail.com',65),('Prakash Kumar','Male','1992-09-14','9876500066','prakash.kumar@gmail.com',66),('Harsha Vardhan','Male','1995-11-09','9876500067','harsha.vardhan@gmail.com',67),('Nivetha R','Female','1997-06-18','9876500068','nivetha.r@gmail.com',68),('Yogesh Kumar','Male','1994-04-26','9876500069','yogesh.kumar@gmail.com',69),('Sowmya S','Female','1998-08-01','9876500070','sowmya.s@gmail.com',70),
('Murali Krishna','Male','1993-03-13','9876500071','murali.krishna@gmail.com',71),('Janani K','Female','1999-10-24','9876500072','janani.k@gmail.com',72),('Rakesh Sharma','Male','1995-12-02','9876500073','rakesh.sharma@gmail.com',73),('Haripriya N','Female','1997-07-15','9876500074','haripriya.n@gmail.com',74),('Madhan Kumar','Male','1994-02-06','9876500075','madhan.kumar@gmail.com',75),('Keerthi Raj','Female','1998-11-17','9876500076','keerthi.raj@gmail.com',76),('Dharun Kumar','Male','1993-05-29','9876500077','dharun.kumar@gmail.com',77),('Bhavana Reddy','Female','1996-09-10','9876500078','bhavana.reddy@gmail.com',78),('Vasanth Kumar','Male','1992-08-22','9876500079','vasanth.kumar@gmail.com',79),('Anusha P','Female','1999-01-08','9876500080','anusha.p@gmail.com',80),
('Ravi Teja','Male','1995-04-03','9876500081','ravi.teja@gmail.com',81),('Meghana S','Female','1997-12-19','9876500082','meghana.s@gmail.com',82),('Suresh Babu','Male','1993-06-07','9876500083','suresh.babu@gmail.com',83),('Harini Devi','Female','1998-10-12','9876500084','harini.devi@gmail.com',84),('Lokanath R','Male','1994-07-27','9876500085','lokanath.r@gmail.com',85),('Nandita Sharma','Female','1999-05-16','9876500086','nandita.sharma@gmail.com',86),('Pradeep Kumar','Male','1992-02-28','9876500087','pradeep.kumar@gmail.com',87),('Swetha R','Female','1997-08-14','9876500088','swetha.r@gmail.com',88),('Dhanush K','Male','1995-11-23','9876500089','dhanush.k@gmail.com',89),('Akhila Nair','Female','1998-03-09','9876500090','akhila.nair@gmail.com',90),
('Sankar Narayan','Male','1993-01-30','9876500091','sankar.narayan@gmail.com',91),('Ranjani M','Female','1999-09-25','9876500092','ranjani.m@gmail.com',92),('Mithun Raj','Male','1994-12-11','9876500093','mithun.raj@gmail.com',93),('Priyadharshini K','Female','1997-04-17','9876500094','priyadharshini.k@gmail.com',94),('Arul Kumar','Male','1992-06-04','9876500095','arul.kumar@gmail.com',95),('Divyabharathi S','Female','1998-07-29','9876500096','divyabharathi.s@gmail.com',96),('Sarath Chandran','Male','1995-10-18','9876500097','sarath.chandran@gmail.com',97),('Vaishnavi R','Female','1999-02-13','9876500098','vaishnavi.r@gmail.com',98),('Naveen Raj','Male','1993-08-07','9876500099','naveen.raj@gmail.com',99),('Akshaya Priya','Female','1997-11-21','9876500100','akshaya.priya@gmail.com',100);
select * from Customers;

-- T3 Customer_Address details :-
CREATE TABLE Customer_Address (
address_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
address_line VARCHAR(200),
city VARCHAR(50),
state VARCHAR(50),
pincode VARCHAR(10),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Customer_Address(customer_id,address_line,city,state,pincode) VALUES
(1,'12 Gandhi Road','Chennai','Tamil Nadu','600001'),(2,'45 Anna Nagar West','Chennai','Tamil Nadu','600040'),(3,'78 MG Road','Coimbatore','Tamil Nadu','641001'),(4,'23 Lake View Street','Madurai','Tamil Nadu','625001'),(5,'56 Temple Road','Trichy','Tamil Nadu','620001'),(6,'89 Park Avenue','Salem','Tamil Nadu','636001'),(7,'14 Market Street','Erode','Tamil Nadu','638001'),(8,'67 Beach Road','Thoothukudi','Tamil Nadu','628001'),(9,'90 Green Park','Vellore','Tamil Nadu','632001'),(10,'11 Railway Colony','Kanchipuram','Tamil Nadu','631501'),
(11,'22 River View','Cuddalore','Tamil Nadu','607001'),(12,'34 Bus Stand Road','Nagapattinam','Tamil Nadu','611001'),(13,'77 Brigade Road','Bangalore','Karnataka','560001'),(14,'18 Whitefield Main Road','Bangalore','Karnataka','560066'),(15,'41 Electronic City Phase 1','Bangalore','Karnataka','560100'),(16,'63 Palace Road','Mysore','Karnataka','570001'),(17,'25 Station Road','Hubli','Karnataka','580020'),(18,'52 MG Road','Mangalore','Karnataka','575001'),(19,'86 Jubilee Hills','Hyderabad','Telangana','500033'),(20,'31 Secunderabad Main','Hyderabad','Telangana','500003'),
(21,'15 Gachibowli Street','Hyderabad','Telangana','500032'),(22,'92 Hanamkonda Road','Warangal','Telangana','506001'),(23,'44 Benz Circle','Vijayawada','Andhra Pradesh','520010'),(24,'73 RK Beach Road','Visakhapatnam','Andhra Pradesh','530001'),(25,'29 Brodipet','Guntur','Andhra Pradesh','522002'),(26,'64 Trunk Road','Nellore','Andhra Pradesh','524001'),(27,'101 Marine Drive','Mumbai','Maharashtra','400001'),(28,'35 Andheri East','Mumbai','Maharashtra','400069'),(29,'48 Bandra West','Mumbai','Maharashtra','400050'),(30,'81 Vashi Sector 17','Navi Mumbai','Maharashtra','400703'),
(31,'27 FC Road','Pune','Maharashtra','411004'),(32,'53 Sitabuldi','Nagpur','Maharashtra','440012'),(33,'91 Connaught Place','Delhi','Delhi','110001'),(34,'14 Karol Bagh Market','Delhi','Delhi','110005'),(35,'72 Dwarka Sector 10','Delhi','Delhi','110075'),(36,'39 Sector 18','Noida','Uttar Pradesh','201301'),(37,'58 Cyber City','Gurgaon','Haryana','122002'),(38,'84 Park Street','Kolkata','West Bengal','700016'),(39,'16 Howrah Maidan','Howrah','West Bengal','711101'),(40,'42 City Centre','Durgapur','West Bengal','713216'),
(41,'87 Ashram Road','Ahmedabad','Gujarat','380009'),(42,'23 Ring Road','Surat','Gujarat','395002'),(43,'51 Alkapuri','Vadodara','Gujarat','390007'),(44,'68 Yagnik Road','Rajkot','Gujarat','360001'),(45,'11 MI Road','Jaipur','Rajasthan','302001'),(46,'32 Residency Road','Jodhpur','Rajasthan','342001'),(47,'79 Fateh Sagar Road','Udaipur','Rajasthan','313001'),(48,'55 Hazratganj','Lucknow','Uttar Pradesh','226001'),(49,'17 Civil Lines','Kanpur','Uttar Pradesh','208001'),(50,'61 Lanka Road','Varanasi','Uttar Pradesh','221005'),
(51,'88 Civil Lines','Prayagraj','Uttar Pradesh','211001'),(52,'26 MP Nagar','Bhopal','Madhya Pradesh','462011'),(53,'43 Vijay Nagar','Indore','Madhya Pradesh','452010'),(54,'71 City Center','Gwalior','Madhya Pradesh','474001'),(55,'18 Fraser Road','Patna','Bihar','800001'),(56,'54 Main Road','Ranchi','Jharkhand','834001'),(57,'82 Bistupur','Jamshedpur','Jharkhand','831001'),(58,'25 Janpath','Bhubaneswar','Odisha','751001'),(59,'47 Link Road','Cuttack','Odisha','753001'),(60,'91 Sector 17','Chandigarh','Chandigarh','160017'),
(61,'12 Hall Bazaar','Amritsar','Punjab','143001'),(62,'38 Model Town','Ludhiana','Punjab','141002'),(63,'75 Rajpur Road','Dehradun','Uttarakhand','248001'),(64,'21 Har Ki Pauri Road','Haridwar','Uttarakhand','249401'),(65,'49 Mall Road','Shimla','Himachal Pradesh','171001'),(66,'67 Residency Road','Jammu','Jammu and Kashmir','180001'),(67,'84 Lal Chowk','Srinagar','Jammu and Kashmir','190001'),(68,'14 MG Road','Kochi','Kerala','682016'),(69,'36 Kowdiar','Trivandrum','Kerala','695003'),(70,'58 Beach Road','Kozhikode','Kerala','673001'),
(71,'73 Church Street','Panaji','Goa','403001'),(72,'25 GE Road','Raipur','Chhattisgarh','492001'),(73,'46 Link Road','Bilaspur','Chhattisgarh','495001'),(74,'88 Taj Road','Agra','Uttar Pradesh','282001'),(75,'31 Abu Lane','Meerut','Uttar Pradesh','250001'),(76,'57 Civil Lines','Aligarh','Uttar Pradesh','202001'),(77,'92 College Road','Nashik','Maharashtra','422005'),(78,'28 Jalna Road','Aurangabad','Maharashtra','431001'),(79,'63 Rajarampuri','Kolhapur','Maharashtra','416008'),(80,'44 Hill Cart Road','Siliguri','West Bengal','734001'),
(81,'19 MG Marg','Gangtok','Sikkim','737101'),(82,'74 Police Bazar','Shillong','Meghalaya','793001'),(83,'33 Thangal Bazar','Imphal','Manipur','795001'),(84,'52 Zarkawt','Aizawl','Mizoram','796001'),(85,'81 Ganga Market','Itanagar','Arunachal Pradesh','791111'),(86,'16 Circular Road','Kohima','Nagaland','797001'),(87,'65 Palace Compound','Agartala','Tripura','799001'),(88,'27 Aberdeen Bazaar','Port Blair','Andaman and Nicobar','744101'),(89,'49 Fort Road','Leh','Ladakh','194101'),(90,'83 Main Market','Kargil','Ladakh','194103'),
(91,'22 Nani Daman','Daman','Daman and Diu','396210'),(92,'47 Fort Area','Diu','Daman and Diu','362520'),(93,'68 Green Avenue','Chennai','Tamil Nadu','600078'),(94,'35 Lotus Street','Coimbatore','Tamil Nadu','641045'),(95,'72 Rose Garden','Madurai','Tamil Nadu','625020'),(96,'14 Lake Colony','Trichy','Tamil Nadu','620020'),(97,'59 Sunrise Nagar','Salem','Tamil Nadu','636007'),(98,'81 Pearl Residency','Erode','Tamil Nadu','638011'),(99,'26 Temple View','Vellore','Tamil Nadu','632009'),(100,'91 Golden Enclave','Chennai','Tamil Nadu','600100');
select * from Customer_Address;
-- 4. Employees
CREATE TABLE Employees (
employee_id INT PRIMARY KEY AUTO_INCREMENT,
employee_name VARCHAR(100),
designation VARCHAR(50),
salary DECIMAL(10,2),
branch_id INT,
FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);

INSERT INTO Employees(employee_name,designation,salary,branch_id) VALUES
('Ramesh Kumar','Branch Manager',85000.00,1),('Priya Sharma','Loan Officer',55000.00,2),('Arun Prakash','Cashier',35000.00,3),('Divya Nair','Relationship Manager',60000.00,4),('Karthik Raj','Loan Officer',52000.00,5),('Sneha Gupta','Cashier',34000.00,6),('Vignesh Kumar','Branch Manager',88000.00,7),('Anitha Reddy','Loan Officer',56000.00,8),('Suresh Babu','Cashier',36000.00,9),('Meena Patel','Relationship Manager',62000.00,10),
('Rahul Verma','Branch Manager',87000.00,11),('Pooja Nair','Loan Officer',54000.00,12),('Deepak Jain','Cashier',35500.00,13),('Lavanya S','Relationship Manager',61000.00,14),('Manoj Kumar','Loan Officer',53000.00,15),('Aishwarya R','Cashier',34500.00,16),('Harish Kumar','Branch Manager',89000.00,17),('Gayathri Devi','Loan Officer',57000.00,18),('Surya Prakash','Cashier',36500.00,19),('Ramya K','Relationship Manager',63000.00,20),
('Praveen Raj','Branch Manager',86000.00,21),('Sathish Kumar','Loan Officer',55000.00,22),('Bhavya Reddy','Cashier',35000.00,23),('Naveen Kumar','Relationship Manager',60000.00,24),('Monika Jain','Loan Officer',52500.00,25),('Kiran Kumar','Cashier',34000.00,26),('Shruthi N','Branch Manager',87500.00,27),('Abhishek Singh','Loan Officer',56500.00,28),('Neha Kapoor','Cashier',35500.00,29),('Varun S','Relationship Manager',61500.00,30),
('Ritika Sharma','Branch Manager',88500.00,31),('Ashwin Kumar','Loan Officer',54500.00,32),('Kavya Nair','Cashier',34500.00,33),('Mohan Raj','Relationship Manager',60500.00,34),('Shalini P','Loan Officer',53500.00,35),('Dinesh Kumar','Cashier',35000.00,36),('Anitha R','Branch Manager',89500.00,37),('Rajesh Kumar','Loan Officer',57500.00,38),('Priyanka S','Cashier',36500.00,39),('Ganesh B','Relationship Manager',62500.00,40),
('Swathi K','Branch Manager',86500.00,41),('Lokesh Kumar','Loan Officer',55500.00,42),('Aravind Kumar','Cashier',35500.00,43),('Preethi Nair','Relationship Manager',61000.00,44),('Kishore Reddy','Loan Officer',54000.00,45),('Deepika Sharma','Cashier',34500.00,46),('Balaji S','Branch Manager',88000.00,47),('Haritha Rao','Loan Officer',56500.00,48),('Nithin Kumar','Cashier',36000.00,49),('Shreya Patel','Relationship Manager',62000.00,50),
('Vinod Kumar','Branch Manager',87000.00,51),('Aparna Iyer','Loan Officer',55000.00,52),('Senthil Raj','Cashier',35000.00,53),('Pavithra M','Relationship Manager',60500.00,54),('Gokul Krishna','Loan Officer',53000.00,55),('Reshma Nair','Cashier',34000.00,56),('Karthika Devi','Branch Manager',89000.00,57),('Prakash Kumar','Loan Officer',57000.00,58),('Harsha Vardhan','Cashier',36500.00,59),('Nivetha R','Relationship Manager',63000.00,60),
('Yogesh Kumar','Branch Manager',87500.00,61),('Sowmya S','Loan Officer',54500.00,62),('Murali Krishna','Cashier',35500.00,63),('Janani K','Relationship Manager',61500.00,64),('Rakesh Sharma','Loan Officer',53500.00,65),('Haripriya N','Cashier',34500.00,66),('Madhan Kumar','Branch Manager',88500.00,67),('Keerthi Raj','Loan Officer',56500.00,68),('Dharun Kumar','Cashier',36000.00,69),('Bhavana Reddy','Relationship Manager',62500.00,70),
('Vasanth Kumar','Branch Manager',86500.00,71),('Anusha P','Loan Officer',55500.00,72),('Ravi Teja','Cashier',35000.00,73),('Meghana S','Relationship Manager',61000.00,74),('Suresh Babu','Loan Officer',54000.00,75),('Harini Devi','Cashier',34500.00,76),('Lokanath R','Branch Manager',88000.00,77),('Nandita Sharma','Loan Officer',57000.00,78),('Pradeep Kumar','Cashier',36500.00,79),('Swetha R','Relationship Manager',62000.00,80),
('Dhanush K','Branch Manager',87000.00,81),('Akhila Nair','Loan Officer',55000.00,82),('Sankar Narayan','Cashier',35500.00,83),('Ranjani M','Relationship Manager',60500.00,84),('Mithun Raj','Loan Officer',53500.00,85),('Priyadharshini K','Cashier',34000.00,86),('Arul Kumar','Branch Manager',89000.00,87),('Divyabharathi S','Loan Officer',56500.00,88),('Sarath Chandran','Cashier',36000.00,89),('Vaishnavi R','Relationship Manager',62500.00,90),
('Naveen Raj','Branch Manager',87500.00,91),('Akshaya Priya','Loan Officer',55500.00,92),('Sanjana R','Cashier',35000.00,93),('Rohit Sharma','Relationship Manager',61500.00,94),('Keerthika V','Loan Officer',54000.00,95),('Ajith Kumar','Cashier',34500.00,96),('Naveena P','Branch Manager',88500.00,97),('Harsha K','Loan Officer',57000.00,98),('Manisha R','Cashier',36500.00,99),('Vetrivel S','Relationship Manager',63000.00,100);
select * from Employees;

-- 5. Loan_Types
CREATE TABLE Loan_Types (
loan_type_id INT PRIMARY KEY AUTO_INCREMENT,
loan_type_name VARCHAR(50),
interest_rate DECIMAL(5,2),
max_amount DECIMAL(12,2)
);
INSERT INTO Loan_Types(loan_type_name,interest_rate,max_amount) VALUES
('Home Loan',8.50,5000000.00),('Car Loan',9.00,1000000.00),('Education Loan',7.50,1500000.00),('Personal Loan',11.00,500000.00),('Business Loan',10.00,3000000.00),
('Gold Loan',8.75,2000000.00),('Agriculture Loan',6.50,2500000.00),('Vehicle Loan',9.25,1500000.00),('Mortgage Loan',8.25,10000000.00),('Consumer Durable Loan',12.00,300000.00);
select * from Loan_Types;

-- T6 Loan_Applications
CREATE TABLE Loan_Applications (
application_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
loan_type_id INT,
application_date DATE,
requested_amount DECIMAL(12,2),
status VARCHAR(20),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (loan_type_id) REFERENCES Loan_Types(loan_type_id)
);
INSERT INTO Loan_Applications(customer_id,loan_type_id,application_date,requested_amount,status) VALUES
(1,1,'2025-01-05',2500000.00,'Approved'),(2,2,'2025-01-06',600000.00,'Approved'),(3,3,'2025-01-07',450000.00,'Approved'),(4,4,'2025-01-08',200000.00,'Approved'),(5,5,'2025-01-09',1800000.00,'Approved'),
(6,6,'2025-01-10',350000.00,'Approved'),(7,7,'2025-01-11',1200000.00,'Approved'),(8,8,'2025-01-12',700000.00,'Approved'),(9,9,'2025-01-13',5000000.00,'Approved'),(10,10,'2025-01-14',150000.00,'Approved'),
(11,1,'2025-01-15',3000000.00,'Approved'),(12,2,'2025-01-16',800000.00,'Approved'),(13,3,'2025-01-17',500000.00,'Approved'),(14,4,'2025-01-18',250000.00,'Approved'),(15,5,'2025-01-19',2200000.00,'Approved'),
(16,6,'2025-01-20',400000.00,'Approved'),(17,7,'2025-01-21',1500000.00,'Approved'),(18,8,'2025-01-22',850000.00,'Approved'),(19,9,'2025-01-23',6000000.00,'Approved'),(20,10,'2025-01-24',200000.00,'Approved'),
(21,1,'2025-01-25',2700000.00,'Approved'),(22,2,'2025-01-26',650000.00,'Approved'),(23,3,'2025-01-27',550000.00,'Approved'),(24,4,'2025-01-28',275000.00,'Approved'),(25,5,'2025-01-29',2500000.00,'Approved'),
(26,6,'2025-01-30',450000.00,'Approved'),(27,7,'2025-02-01',1400000.00,'Approved'),(28,8,'2025-02-02',950000.00,'Approved'),(29,9,'2025-02-03',5500000.00,'Approved'),(30,10,'2025-02-04',225000.00,'Approved'),
(31,1,'2025-02-05',3200000.00,'Approved'),(32,2,'2025-02-06',700000.00,'Approved'),(33,3,'2025-02-07',600000.00,'Approved'),(34,4,'2025-02-08',300000.00,'Approved'),(35,5,'2025-02-09',2800000.00,'Approved'),
(36,6,'2025-02-10',500000.00,'Approved'),(37,7,'2025-02-11',1300000.00,'Approved'),(38,8,'2025-02-12',1000000.00,'Approved'),(39,9,'2025-02-13',6500000.00,'Approved'),(40,10,'2025-02-14',250000.00,'Approved'),
(41,1,'2025-02-15',3500000.00,'Approved'),(42,2,'2025-02-16',750000.00,'Approved'),(43,3,'2025-02-17',650000.00,'Approved'),(44,4,'2025-02-18',320000.00,'Approved'),(45,5,'2025-02-19',3000000.00,'Approved'),
(46,6,'2025-02-20',550000.00,'Approved'),(47,7,'2025-02-21',1600000.00,'Approved'),(48,8,'2025-02-22',1050000.00,'Approved'),(49,9,'2025-02-23',7000000.00,'Approved'),(50,10,'2025-02-24',275000.00,'Approved'),
(51,1,'2025-02-25',2500000.00,'Approved'),(52,2,'2025-02-26',600000.00,'Approved'),(53,3,'2025-02-27',450000.00,'Approved'),(54,4,'2025-02-28',200000.00,'Approved'),(55,5,'2025-03-01',1800000.00,'Approved'),
(56,6,'2025-03-02',350000.00,'Approved'),(57,7,'2025-03-03',1200000.00,'Approved'),(58,8,'2025-03-04',700000.00,'Approved'),(59,9,'2025-03-05',5000000.00,'Approved'),(60,10,'2025-03-06',150000.00,'Approved'),
(61,1,'2025-03-07',3000000.00,'Approved'),(62,2,'2025-03-08',800000.00,'Approved'),(63,3,'2025-03-09',500000.00,'Approved'),(64,4,'2025-03-10',250000.00,'Approved'),(65,5,'2025-03-11',2200000.00,'Approved'),
(66,6,'2025-03-12',400000.00,'Approved'),(67,7,'2025-03-13',1500000.00,'Approved'),(68,8,'2025-03-14',850000.00,'Approved'),(69,9,'2025-03-15',6000000.00,'Approved'),(70,10,'2025-03-16',200000.00,'Approved'),
(71,1,'2025-03-17',2800000.00,'Pending'),(72,2,'2025-03-18',650000.00,'Pending'),(73,3,'2025-03-19',550000.00,'Pending'),(74,4,'2025-03-20',275000.00,'Pending'),(75,5,'2025-03-21',2500000.00,'Pending'),
(76,6,'2025-03-22',450000.00,'Pending'),(77,7,'2025-03-23',1400000.00,'Pending'),(78,8,'2025-03-24',950000.00,'Pending'),(79,9,'2025-03-25',5500000.00,'Pending'),(80,10,'2025-03-26',225000.00,'Pending'),
(81,1,'2025-03-27',3200000.00,'Pending'),(82,2,'2025-03-28',700000.00,'Pending'),(83,3,'2025-03-29',600000.00,'Pending'),(84,4,'2025-03-30',300000.00,'Pending'),(85,5,'2025-03-31',2800000.00,'Pending'),
(86,6,'2025-04-01',500000.00,'Pending'),(87,7,'2025-04-02',1300000.00,'Pending'),(88,8,'2025-04-03',1000000.00,'Pending'),(89,9,'2025-04-04',6500000.00,'Pending'),(90,10,'2025-04-05',250000.00,'Pending'),
(91,1,'2025-04-06',3500000.00,'Rejected'),(92,2,'2025-04-07',750000.00,'Rejected'),(93,3,'2025-04-08',650000.00,'Rejected'),(94,4,'2025-04-09',320000.00,'Rejected'),(95,5,'2025-04-10',3000000.00,'Rejected'),
(96,6,'2025-04-11',550000.00,'Rejected'),(97,7,'2025-04-12',1600000.00,'Rejected'),(98,8,'2025-04-13',1050000.00,'Rejected'),(99,9,'2025-04-14',7000000.00,'Rejected'),(100,10,'2025-04-15',275000.00,'Rejected');
select * from Loan_Applications;
-- 7. Loan_Approvals
CREATE TABLE Loan_Approvals (
approval_id INT PRIMARY KEY AUTO_INCREMENT,
application_id INT,
employee_id INT,
approval_date DATE,
approved_amount DECIMAL(12,2),
FOREIGN KEY (application_id) REFERENCES Loan_Applications(application_id),
FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
INSERT INTO Loan_Approvals(application_id,employee_id,approval_date,approved_amount) VALUES
(1,1,'2025-01-07',2400000.00),(2,2,'2025-01-10',620000.00),(3,3,'2025-01-12',430000.00),(4,4,'2025-01-14',190000.00),(5,5,'2025-01-17',1450000.00),
(6,6,'2025-01-20',280000.00),(7,7,'2025-01-22',1150000.00),(8,8,'2025-01-24',680000.00),(9,9,'2025-01-27',4800000.00),(10,10,'2025-01-30',140000.00),
(11,11,'2025-02-04',3400000.00),(12,12,'2025-02-07',750000.00),(13,13,'2025-02-10',570000.00),(14,14,'2025-02-12',230000.00),(15,15,'2025-02-14',1900000.00),
(16,16,'2025-02-17',420000.00),(17,17,'2025-02-20',950000.00),(18,18,'2025-02-22',850000.00),(19,19,'2025-02-25',6200000.00),(20,20,'2025-02-27',230000.00),
(21,21,'2025-03-03',2700000.00),(22,22,'2025-03-05',520000.00),(23,23,'2025-03-08',410000.00),(24,24,'2025-03-10',180000.00),(25,25,'2025-03-13',1350000.00),
(26,26,'2025-03-16',260000.00),(27,27,'2025-03-18',1100000.00),(28,28,'2025-03-20',650000.00),(29,29,'2025-03-23',4500000.00),(30,30,'2025-03-25',130000.00),
(31,31,'2025-04-02',3200000.00),(32,32,'2025-04-04',700000.00),(33,33,'2025-04-07',550000.00),(34,34,'2025-04-09',220000.00),(35,35,'2025-04-12',1800000.00),
(36,36,'2025-04-15',400000.00),(37,37,'2025-04-17',900000.00),(38,38,'2025-04-19',800000.00),(39,39,'2025-04-22',6000000.00),(40,40,'2025-04-24',220000.00),
(41,41,'2025-05-02',2600000.00),(42,42,'2025-05-05',500000.00),(43,43,'2025-05-08',390000.00),(44,44,'2025-05-10',170000.00),(45,45,'2025-05-13',1300000.00),
(46,46,'2025-05-16',250000.00),(47,47,'2025-05-18',1050000.00),(48,48,'2025-05-20',620000.00),(49,49,'2025-05-23',4300000.00),(50,50,'2025-05-25',120000.00),
(51,51,'2025-06-02',3100000.00),(52,52,'2025-06-05',690000.00),(53,53,'2025-06-08',540000.00),(54,54,'2025-06-10',210000.00),(55,55,'2025-06-13',1750000.00),
(56,56,'2025-06-16',390000.00),(57,57,'2025-06-18',880000.00),(58,58,'2025-06-20',790000.00),(59,59,'2025-06-23',5900000.00),(60,60,'2025-06-25',210000.00),
(61,61,'2025-07-02',2550000.00),(62,62,'2025-07-05',495000.00),(63,63,'2025-07-08',385000.00),(64,64,'2025-07-10',165000.00),(65,65,'2025-07-13',1280000.00),
(66,66,'2025-07-16',245000.00),(67,67,'2025-07-18',1020000.00),(68,68,'2025-07-20',610000.00),(69,69,'2025-07-23',4250000.00),(70,70,'2025-07-25',118000.00),
(71,71,'2025-08-02',3000000.00),(72,72,'2025-08-05',680000.00),(73,73,'2025-08-08',530000.00),(74,74,'2025-08-10',205000.00),(75,75,'2025-08-13',1700000.00),
(76,76,'2025-08-16',380000.00),(77,77,'2025-08-18',870000.00),(78,78,'2025-08-20',780000.00),(79,79,'2025-08-23',5800000.00),(80,80,'2025-08-25',205000.00),
(81,81,'2025-09-02',2500000.00),(82,82,'2025-09-05',490000.00),(83,83,'2025-09-08',380000.00),(84,84,'2025-09-10',160000.00),(85,85,'2025-09-13',1250000.00),
(86,86,'2025-09-16',240000.00),(87,87,'2025-09-18',1000000.00),(88,88,'2025-09-20',600000.00),(89,89,'2025-09-23',4200000.00),(90,90,'2025-09-25',115000.00),
(91,91,'2025-10-02',2950000.00),(92,92,'2025-10-05',670000.00),(93,93,'2025-10-08',520000.00),(94,94,'2025-10-10',200000.00),(95,95,'2025-10-13',1650000.00),
(96,96,'2025-10-16',370000.00),(97,97,'2025-10-18',860000.00),(98,98,'2025-10-20',770000.00),(99,99,'2025-10-23',5700000.00),(100,100,'2025-10-25',200000.00);
select * from  Loan_Approvals;

-- 8. Loans
CREATE TABLE Loans (
loan_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
loan_type_id INT,
loan_amount DECIMAL(12,2),
loan_date DATE,
tenure_months INT,
loan_status VARCHAR(20),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (loan_type_id) REFERENCES Loan_Types(loan_type_id)
);
INSERT INTO Loans(customer_id,loan_type_id,loan_amount,loan_date,tenure_months,loan_status) VALUES
(1,1,2400000.00,'2025-01-07',240,'Active'),(2,2,580000.00,'2025-01-08',60,'Active'),(3,3,430000.00,'2025-01-09',84,'Active'),(4,4,190000.00,'2025-01-10',36,'Active'),(5,5,1700000.00,'2025-01-11',120,'Active'),
(6,6,320000.00,'2025-01-12',48,'Active'),(7,7,1150000.00,'2025-01-13',180,'Active'),(8,8,670000.00,'2025-01-14',72,'Active'),(9,9,4800000.00,'2025-01-15',300,'Active'),(10,10,140000.00,'2025-01-16',24,'Active'),
(11,1,2900000.00,'2025-01-17',240,'Active'),(12,2,760000.00,'2025-01-18',60,'Active'),(13,3,470000.00,'2025-01-19',84,'Active'),(14,4,230000.00,'2025-01-20',36,'Active'),(15,5,2100000.00,'2025-01-21',120,'Active'),
(16,6,370000.00,'2025-01-22',48,'Active'),(17,7,1400000.00,'2025-01-23',180,'Active'),(18,8,810000.00,'2025-01-24',72,'Active'),(19,9,5700000.00,'2025-01-25',300,'Active'),(20,10,185000.00,'2025-01-26',24,'Active'),
(21,1,2600000.00,'2025-01-27',240,'Active'),(22,2,620000.00,'2025-01-28',60,'Active'),(23,3,510000.00,'2025-01-29',84,'Active'),(24,4,250000.00,'2025-01-30',36,'Active'),(25,5,2350000.00,'2025-01-31',120,'Active'),
(26,6,420000.00,'2025-02-01',48,'Active'),(27,7,1320000.00,'2025-02-02',180,'Active'),(28,8,910000.00,'2025-02-03',72,'Active'),(29,9,5200000.00,'2025-02-04',300,'Active'),(30,10,210000.00,'2025-02-05',24,'Active'),
(31,1,3100000.00,'2025-02-06',240,'Active'),(32,2,680000.00,'2025-02-07',60,'Active'),(33,3,560000.00,'2025-02-08',84,'Active'),(34,4,280000.00,'2025-02-09',36,'Active'),(35,5,2650000.00,'2025-02-10',120,'Active'),
(36,6,470000.00,'2025-02-11',48,'Active'),(37,7,1220000.00,'2025-02-12',180,'Active'),(38,8,960000.00,'2025-02-13',72,'Active'),(39,9,6200000.00,'2025-02-14',300,'Active'),(40,10,230000.00,'2025-02-15',24,'Active'),
(41,1,3400000.00,'2025-02-16',240,'Active'),(42,2,720000.00,'2025-02-17',60,'Active'),(43,3,610000.00,'2025-02-18',84,'Active'),(44,4,300000.00,'2025-02-19',36,'Active'),(45,5,2850000.00,'2025-02-20',120,'Active'),
(46,6,520000.00,'2025-02-21',48,'Active'),(47,7,1500000.00,'2025-02-22',180,'Active'),(48,8,1010000.00,'2025-02-23',72,'Active'),(49,9,6700000.00,'2025-02-24',300,'Active'),(50,10,250000.00,'2025-02-25',24,'Active'),
(51,1,2400000.00,'2025-02-26',240,'Active'),(52,2,580000.00,'2025-02-27',60,'Active'),(53,3,430000.00,'2025-02-28',84,'Active'),(54,4,190000.00,'2025-03-01',36,'Active'),(55,5,1700000.00,'2025-03-02',120,'Active'),
(56,6,320000.00,'2025-03-03',48,'Active'),(57,7,1150000.00,'2025-03-04',180,'Active'),(58,8,670000.00,'2025-03-05',72,'Active'),(59,9,4800000.00,'2025-03-06',300,'Active'),(60,10,140000.00,'2025-03-07',24,'Active'),
(61,1,2900000.00,'2025-03-08',240,'Active'),(62,2,760000.00,'2025-03-09',60,'Active'),(63,3,470000.00,'2025-03-10',84,'Active'),(64,4,230000.00,'2025-03-11',36,'Active'),(65,5,2100000.00,'2025-03-12',120,'Active'),
(66,6,370000.00,'2025-03-13',48,'Active'),(67,7,1400000.00,'2025-03-14',180,'Active'),(68,8,810000.00,'2025-03-15',72,'Active'),(69,9,5700000.00,'2025-03-16',300,'Active'),(70,10,185000.00,'2025-03-17',24,'Active');
select * from Loans;

-- 9. EMI_Schedule
CREATE TABLE EMI_Schedule (
emi_id INT PRIMARY KEY AUTO_INCREMENT,
loan_id INT,
due_date DATE,
emi_amount DECIMAL(10,2),
status VARCHAR(20),
FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
);
INSERT INTO EMI_Schedule(loan_id,due_date,emi_amount,status) VALUES
(1,'2025-02-07',22000.00,'Paid'),(2,'2025-02-08',10500.00,'Paid'),(3,'2025-02-09',6200.00,'Paid'),(4,'2025-02-10',5800.00,'Paid'),(5,'2025-02-11',18000.00,'Paid'),
(6,'2025-02-12',7200.00,'Paid'),(7,'2025-02-13',11500.00,'Paid'),(8,'2025-02-14',9800.00,'Paid'),(9,'2025-02-15',35000.00,'Paid'),(10,'2025-02-16',6200.00,'Paid'),
(11,'2025-02-17',26000.00,'Paid'),(12,'2025-02-18',12500.00,'Paid'),(13,'2025-02-19',6800.00,'Paid'),(14,'2025-02-20',6500.00,'Paid'),(15,'2025-02-21',21000.00,'Paid'),
(16,'2025-02-22',8200.00,'Paid'),(17,'2025-02-23',14000.00,'Paid'),(18,'2025-02-24',11200.00,'Paid'),(19,'2025-02-25',42000.00,'Paid'),(20,'2025-02-26',7000.00,'Paid'),
(21,'2025-02-27',24000.00,'Paid'),(22,'2025-02-28',10800.00,'Paid'),(23,'2025-03-01',7100.00,'Paid'),(24,'2025-03-02',6900.00,'Paid'),(25,'2025-03-03',22500.00,'Paid'),
(26,'2025-03-04',8500.00,'Paid'),(27,'2025-03-05',13200.00,'Paid'),(28,'2025-03-06',11800.00,'Paid'),(29,'2025-03-07',38000.00,'Paid'),(30,'2025-03-08',7200.00,'Paid'),
(31,'2025-03-09',28000.00,'Paid'),(32,'2025-03-10',11200.00,'Paid'),(33,'2025-03-11',7600.00,'Paid'),(34,'2025-03-12',7300.00,'Paid'),(35,'2025-03-13',24500.00,'Paid'),
(36,'2025-03-14',9200.00,'Paid'),(37,'2025-03-15',12800.00,'Paid'),(38,'2025-03-16',12200.00,'Paid'),(39,'2025-03-17',45000.00,'Paid'),(40,'2025-03-18',7600.00,'Paid'),
(41,'2025-03-19',29500.00,'Pending'),(42,'2025-03-20',11800.00,'Pending'),(43,'2025-03-21',8100.00,'Pending'),(44,'2025-03-22',7600.00,'Pending'),(45,'2025-03-23',26000.00,'Pending'),
(46,'2025-03-24',9800.00,'Pending'),(47,'2025-03-25',15000.00,'Pending'),(48,'2025-03-26',12500.00,'Pending'),(49,'2025-03-27',47000.00,'Pending'),(50,'2025-03-28',7800.00,'Pending'),
(51,'2025-03-29',22000.00,'Pending'),(52,'2025-03-30',10500.00,'Pending'),(53,'2025-03-31',6200.00,'Pending'),(54,'2025-04-01',5800.00,'Pending'),(55,'2025-04-02',18000.00,'Pending'),
(56,'2025-04-03',7200.00,'Pending'),(57,'2025-04-04',11500.00,'Pending'),(58,'2025-04-05',9800.00,'Pending'),(59,'2025-04-06',35000.00,'Pending'),(60,'2025-04-07',6200.00,'Pending'),
(61,'2025-04-08',26000.00,'Pending'),(62,'2025-04-09',12500.00,'Pending'),(63,'2025-04-10',6800.00,'Pending'),(64,'2025-04-11',6500.00,'Pending'),(65,'2025-04-12',21000.00,'Pending'),
(66,'2025-04-13',8200.00,'Pending'),(67,'2025-04-14',14000.00,'Pending'),(68,'2025-04-15',11200.00,'Pending'),(69,'2025-04-16',42000.00,'Pending'),(70,'2025-04-17',7000.00,'Pending');
select * from emi_schedule;

-- 10. EMI_Payments
CREATE TABLE EMI_Payments (
payment_id INT PRIMARY KEY AUTO_INCREMENT,
emi_id INT,
payment_date DATE,
amount_paid DECIMAL(10,2),
payment_mode VARCHAR(20),
FOREIGN KEY (emi_id) REFERENCES EMI_Schedule(emi_id)
);
INSERT INTO EMI_Payments(emi_id,payment_date,amount_paid,payment_mode) VALUES
(1,'2025-02-07',22000.00,'UPI'),(2,'2025-02-08',10500.00,'Net Banking'),(3,'2025-02-09',6200.00,'Debit Card'),(4,'2025-02-10',5800.00,'UPI'),(5,'2025-02-11',18000.00,'Net Banking'),
(6,'2025-02-12',7200.00,'UPI'),(7,'2025-02-13',11500.00,'Debit Card'),(8,'2025-02-14',9800.00,'UPI'),(9,'2025-02-15',35000.00,'Net Banking'),(10,'2025-02-16',6200.00,'UPI'),
(11,'2025-02-17',26000.00,'UPI'),(12,'2025-02-18',12500.00,'Debit Card'),(13,'2025-02-19',6800.00,'Net Banking'),(14,'2025-02-20',6500.00,'UPI'),(15,'2025-02-21',21000.00,'UPI'),
(16,'2025-02-22',8200.00,'Debit Card'),(17,'2025-02-23',14000.00,'Net Banking'),(18,'2025-02-24',11200.00,'UPI'),(19,'2025-02-25',42000.00,'UPI'),(20,'2025-02-26',7000.00,'Debit Card'),
(21,'2025-02-27',24000.00,'UPI'),(22,'2025-02-28',10800.00,'Net Banking'),(23,'2025-03-01',7100.00,'UPI'),(24,'2025-03-02',6900.00,'Debit Card'),(25,'2025-03-03',22500.00,'UPI'),
(26,'2025-03-04',8500.00,'Net Banking'),(27,'2025-03-05',13200.00,'UPI'),(28,'2025-03-06',11800.00,'Debit Card'),(29,'2025-03-07',38000.00,'UPI'),(30,'2025-03-08',7200.00,'Net Banking'),
(31,'2025-03-09',28000.00,'UPI'),(32,'2025-03-10',11200.00,'Debit Card'),(33,'2025-03-11',7600.00,'UPI'),(34,'2025-03-12',7300.00,'Net Banking'),(35,'2025-03-13',24500.00,'UPI'),
(36,'2025-03-14',9200.00,'Debit Card'),(37,'2025-03-15',12800.00,'UPI'),(38,'2025-03-16',12200.00,'Net Banking'),(39,'2025-03-17',45000.00,'UPI'),(40,'2025-03-18',7600.00,'Debit Card'),
(41,'2025-03-19',29500.00,'UPI'),(42,'2025-03-20',11800.00,'Net Banking'),(43,'2025-03-21',8100.00,'UPI'),(44,'2025-03-22',7600.00,'Debit Card'),(45,'2025-03-23',26000.00,'UPI'),
(46,'2025-03-24',9800.00,'Net Banking'),(47,'2025-03-25',15000.00,'UPI'),(48,'2025-03-26',12500.00,'Debit Card'),(49,'2025-03-27',47000.00,'UPI'),(50,'2025-03-28',7800.00,'Net Banking'),
(51,'2025-03-29',22000.00,'UPI'),(52,'2025-03-30',10500.00,'Debit Card'),(53,'2025-03-31',6200.00,'UPI'),(54,'2025-04-01',5800.00,'Net Banking'),(55,'2025-04-02',18000.00,'UPI'),
(56,'2025-04-03',7200.00,'Debit Card'),(57,'2025-04-04',11500.00,'UPI'),(58,'2025-04-05',9800.00,'Net Banking'),(59,'2025-04-06',35000.00,'UPI'),(60,'2025-04-07',6200.00,'Debit Card'),
(61,'2025-04-08',26000.00,'UPI'),(62,'2025-04-09',12500.00,'Net Banking'),(63,'2025-04-10',6800.00,'UPI'),(64,'2025-04-11',6500.00,'Debit Card'),(65,'2025-04-12',21000.00,'UPI'),
(66,'2025-04-13',8200.00,'Net Banking'),(67,'2025-04-14',14000.00,'UPI'),(68,'2025-04-15',11200.00,'Debit Card'),(69,'2025-04-16',42000.00,'UPI'),(70,'2025-04-17',7000.00,'Net Banking');
select * from emi_payments;

-- 11. Transactions
CREATE TABLE Transactions (
transaction_id INT PRIMARY KEY AUTO_INCREMENT,
loan_id INT,
transaction_date DATE,
transaction_type VARCHAR(30),
amount DECIMAL(12,2),
FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
);
INSERT INTO Transactions(loan_id,transaction_date,transaction_type,amount) VALUES
(1,'2025-01-07','Loan Disbursal',2400000.00),(2,'2025-01-08','Loan Disbursal',580000.00),(3,'2025-01-09','Loan Disbursal',430000.00),(4,'2025-01-10','Loan Disbursal',190000.00),(5,'2025-01-11','Loan Disbursal',1700000.00),
(6,'2025-01-12','Loan Disbursal',320000.00),(7,'2025-01-13','Loan Disbursal',1150000.00),(8,'2025-01-14','Loan Disbursal',670000.00),(9,'2025-01-15','Loan Disbursal',4800000.00),(10,'2025-01-16','Loan Disbursal',140000.00),
(11,'2025-01-17','Loan Disbursal',2900000.00),(12,'2025-01-18','Loan Disbursal',760000.00),(13,'2025-01-19','Loan Disbursal',470000.00),(14,'2025-01-20','Loan Disbursal',230000.00),(15,'2025-01-21','Loan Disbursal',2100000.00),
(16,'2025-01-22','Loan Disbursal',370000.00),(17,'2025-01-23','Loan Disbursal',1400000.00),(18,'2025-01-24','Loan Disbursal',810000.00),(19,'2025-01-25','Loan Disbursal',5700000.00),(20,'2025-01-26','Loan Disbursal',185000.00),
(21,'2025-01-27','Loan Disbursal',2600000.00),(22,'2025-01-28','Loan Disbursal',620000.00),(23,'2025-01-29','Loan Disbursal',510000.00),(24,'2025-01-30','Loan Disbursal',250000.00),(25,'2025-01-31','Loan Disbursal',2350000.00),
(26,'2025-02-01','Loan Disbursal',420000.00),(27,'2025-02-02','Loan Disbursal',1320000.00),(28,'2025-02-03','Loan Disbursal',910000.00),(29,'2025-02-04','Loan Disbursal',5200000.00),(30,'2025-02-05','Loan Disbursal',210000.00),
(31,'2025-02-06','Loan Disbursal',3100000.00),(32,'2025-02-07','Loan Disbursal',680000.00),(33,'2025-02-08','Loan Disbursal',560000.00),(34,'2025-02-09','Loan Disbursal',280000.00),(35,'2025-02-10','Loan Disbursal',2650000.00),
(36,'2025-02-11','Loan Disbursal',470000.00),(37,'2025-02-12','Loan Disbursal',1220000.00),(38,'2025-02-13','Loan Disbursal',960000.00),(39,'2025-02-14','Loan Disbursal',6200000.00),(40,'2025-02-15','Loan Disbursal',230000.00),
(41,'2025-02-16','Loan Disbursal',3400000.00),(42,'2025-02-17','Loan Disbursal',720000.00),(43,'2025-02-18','Loan Disbursal',610000.00),(44,'2025-02-19','Loan Disbursal',300000.00),(45,'2025-02-20','Loan Disbursal',2850000.00),
(46,'2025-02-21','Loan Disbursal',520000.00),(47,'2025-02-22','Loan Disbursal',1500000.00),(48,'2025-02-23','Loan Disbursal',1010000.00),(49,'2025-02-24','Loan Disbursal',6700000.00),(50,'2025-02-25','Loan Disbursal',250000.00),
(51,'2025-02-26','Loan Disbursal',2400000.00),(52,'2025-02-27','Loan Disbursal',580000.00),(53,'2025-02-28','Loan Disbursal',430000.00),(54,'2025-03-01','Loan Disbursal',190000.00),(55,'2025-03-02','Loan Disbursal',1700000.00),
(56,'2025-03-03','Loan Disbursal',320000.00),(57,'2025-03-04','Loan Disbursal',1150000.00),(58,'2025-03-05','Loan Disbursal',670000.00),(59,'2025-03-06','Loan Disbursal',4800000.00),(60,'2025-03-07','Loan Disbursal',140000.00),
(61,'2025-03-08','Loan Disbursal',2900000.00),(62,'2025-03-09','Loan Disbursal',760000.00),(63,'2025-03-10','Loan Disbursal',470000.00),(64,'2025-03-11','Loan Disbursal',230000.00),(65,'2025-03-12','Loan Disbursal',2100000.00),
(66,'2025-03-13','Loan Disbursal',370000.00),(67,'2025-03-14','Loan Disbursal',1400000.00),(68,'2025-03-15','Loan Disbursal',810000.00),(69,'2025-03-16','Loan Disbursal',5700000.00),(70,'2025-03-17','Loan Disbursal',185000.00);
select * from transactions;

-- 12. Guarantors
CREATE TABLE Guarantors (
guarantor_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
guarantor_name VARCHAR(100),
phone VARCHAR(15),
relationship_type VARCHAR(50),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Guarantors(customer_id,guarantor_name,phone,relationship_type) VALUES
(1,'Ravi Kumar','9100000001','Father'),(2,'Suresh Sharma','9100000002','Brother'),(3,'Lakshmi Devi','9100000003','Mother'),(4,'Arun Prakash','9100000004','Friend'),(5,'Meena Kumari','9100000005','Spouse'),
(6,'Karthik Raj','9100000006','Brother'),(7,'Priya Nair','9100000007','Sister'),(8,'Vignesh Kumar','9100000008','Friend'),(9,'Anitha Reddy','9100000009','Spouse'),(10,'Manoj Kumar','9100000010','Father'),
(11,'Sneha Gupta','9100000011','Mother'),(12,'Rahul Verma','9100000012','Brother'),(13,'Pooja Nair','9100000013','Sister'),(14,'Deepak Jain','9100000014','Friend'),(15,'Lavanya S','9100000015','Spouse'),
(16,'Harish Kumar','9100000016','Father'),(17,'Gayathri Devi','9100000017','Mother'),(18,'Surya Prakash','9100000018','Brother'),(19,'Ramya K','9100000019','Sister'),(20,'Praveen Raj','9100000020','Friend'),
(21,'Bhavya Reddy','9100000021','Spouse'),(22,'Naveen Kumar','9100000022','Father'),(23,'Monika Jain','9100000023','Mother'),(24,'Kiran Kumar','9100000024','Brother'),(25,'Shruthi N','9100000025','Sister'),
(26,'Abhishek Singh','9100000026','Friend'),(27,'Neha Kapoor','9100000027','Spouse'),(28,'Varun S','9100000028','Father'),(29,'Ashwin Kumar','9100000029','Mother'),(30,'Kavya Nair','9100000030','Brother'),
(31,'Mohan Raj','9100000031','Sister'),(32,'Shalini P','9100000032','Friend'),(33,'Dinesh Kumar','9100000033','Spouse'),(34,'Rajesh Kumar','9100000034','Father'),(35,'Priyanka S','9100000035','Mother'),
(36,'Ganesh B','9100000036','Brother'),(37,'Swathi K','9100000037','Sister'),(38,'Lokesh Kumar','9100000038','Friend'),(39,'Aravind Kumar','9100000039','Spouse'),(40,'Preethi Nair','9100000040','Father'),
(41,'Kishore Reddy','9100000041','Mother'),(42,'Deepika Sharma','9100000042','Brother'),(43,'Balaji S','9100000043','Sister'),(44,'Haritha Rao','9100000044','Friend'),(45,'Nithin Kumar','9100000045','Spouse'),
(46,'Shreya Patel','9100000046','Father'),(47,'Vinod Kumar','9100000047','Mother'),(48,'Aparna Iyer','9100000048','Brother'),(49,'Senthil Raj','9100000049','Sister'),(50,'Pavithra M','9100000050','Friend');
select * from guarantors;

-- 13. Credit_Scores
CREATE TABLE Credit_Scores (
score_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
credit_score INT,
score_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Credit_Scores(customer_id,credit_score,score_date) VALUES
(1,780,'2025-01-01'),(2,720,'2025-01-01'),(3,690,'2025-01-01'),(4,650,'2025-01-01'),(5,810,'2025-01-01'),(6,705,'2025-01-02'),(7,760,'2025-01-02'),(8,730,'2025-01-02'),(9,820,'2025-01-02'),(10,680,'2025-01-02'),(11,790,'2025-01-03'),(12,710,'2025-01-03'),(13,695,'2025-01-03'),(14,660,'2025-01-03'),(15,805,'2025-01-03'),
(16,700,'2025-01-04'),(17,755,'2025-01-04'),(18,725,'2025-01-04'),(19,815,'2025-01-04'),(20,675,'2025-01-04'),(21,785,'2025-01-05'),(22,715,'2025-01-05'),(23,700,'2025-01-05'),(24,665,'2025-01-05'),(25,800,'2025-01-05'),(26,710,'2025-01-06'),(27,750,'2025-01-06'),(28,720,'2025-01-06'),(29,810,'2025-01-06'),(30,670,'2025-01-06'),
(31,795,'2025-01-07'),(32,725,'2025-01-07'),(33,705,'2025-01-07'),(34,675,'2025-01-07'),(35,820,'2025-01-07'),(36,715,'2025-01-08'),(37,765,'2025-01-08'),(38,735,'2025-01-08'),(39,825,'2025-01-08'),(40,685,'2025-01-08'),
(41,780,'2025-01-09'),(42,720,'2025-01-09'),(43,690,'2025-01-09'),(44,650,'2025-01-09'),(45,810,'2025-01-09'),(46,705,'2025-01-10'),(47,760,'2025-01-10'),(48,730,'2025-01-10'),(49,820,'2025-01-10'),(50,680,'2025-01-10'),
(51,790,'2025-01-11'),(52,710,'2025-01-11'),(53,695,'2025-01-11'),(54,660,'2025-01-11'),(55,805,'2025-01-11'),(56,700,'2025-01-12'),(57,755,'2025-01-12'),(58,725,'2025-01-12'),(59,815,'2025-01-12'),(60,675,'2025-01-12'),
(61,785,'2025-01-13'),(62,715,'2025-01-13'),(63,700,'2025-01-13'),(64,665,'2025-01-13'),(65,800,'2025-01-13'),(66,710,'2025-01-14'),(67,750,'2025-01-14'),(68,720,'2025-01-14'),(69,810,'2025-01-14'),(70,670,'2025-01-14'),
(71,795,'2025-01-15'),(72,725,'2025-01-15'),(73,705,'2025-01-15'),(74,675,'2025-01-15'),(75,820,'2025-01-15'),(76,715,'2025-01-16'),(77,765,'2025-01-16'),(78,735,'2025-01-16'),(79,825,'2025-01-16'),(80,685,'2025-01-16'),
(81,780,'2025-01-17'),(82,720,'2025-01-17'),(83,690,'2025-01-17'),(84,650,'2025-01-17'),(85,810,'2025-01-17'),(86,705,'2025-01-18'),(87,760,'2025-01-18'),(88,730,'2025-01-18'),(89,820,'2025-01-18'),(90,680,'2025-01-18'),
(91,790,'2025-01-19'),(92,710,'2025-01-19'),(93,695,'2025-01-19'),(94,660,'2025-01-19'),(95,805,'2025-01-19'),(96,700,'2025-01-20'),(97,755,'2025-01-20'),(98,725,'2025-01-20'),(99,815,'2025-01-20'),(100,675,'2025-01-20');
select * from credit_scores;

-- 14. Penalties
CREATE TABLE Penalties (
penalty_id INT PRIMARY KEY AUTO_INCREMENT,
loan_id INT,
penalty_amount DECIMAL(10,2),
reason VARCHAR(100),
penalty_date DATE,
FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
);
INSERT INTO Penalties(loan_id,penalty_amount,reason,penalty_date) VALUES
(5,500.00,'Late EMI Payment','2025-03-15'),(9,1000.00,'Late EMI Payment','2025-03-18'),(12,750.00,'Missed EMI','2025-03-20'),(15,600.00,'Late EMI Payment','2025-03-22'),(19,1200.00,'Missed EMI','2025-03-25'),
(23,500.00,'Late EMI Payment','2025-03-28'),(27,800.00,'Cheque Bounce','2025-04-01'),(30,450.00,'Late EMI Payment','2025-04-03'),(35,900.00,'Missed EMI','2025-04-05'),(39,1500.00,'Cheque Bounce','2025-04-08'),
(42,650.00,'Late EMI Payment','2025-04-10'),(45,700.00,'Missed EMI','2025-04-12'),(49,1300.00,'Cheque Bounce','2025-04-15'),(53,500.00,'Late EMI Payment','2025-04-18'),(57,850.00,'Missed EMI','2025-04-20'),
(60,400.00,'Late EMI Payment','2025-04-22'),(64,600.00,'Cheque Bounce','2025-04-25'),(67,950.00,'Missed EMI','2025-04-27'),(69,1400.00,'Late EMI Payment','2025-04-29'),(70,500.00,'Late EMI Payment','2025-05-01');
select * from penalties;

-- 15. Documents
CREATE TABLE Documents (
document_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
document_type VARCHAR(50),
upload_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Documents(customer_id,document_type,upload_date) VALUES
(1,'Aadhaar','2025-01-01'),(1,'PAN Card','2025-01-01'),(2,'Aadhaar','2025-01-02'),(2,'PAN Card','2025-01-02'),(3,'Aadhaar','2025-01-03'),
(3,'PAN Card','2025-01-03'),(4,'Aadhaar','2025-01-04'),(4,'Salary Slip','2025-01-04'),(5,'Aadhaar','2025-01-05'),(5,'Bank Statement','2025-01-05'),
(6,'Aadhaar','2025-01-06'),(6,'PAN Card','2025-01-06'),(7,'Aadhaar','2025-01-07'),(7,'Salary Slip','2025-01-07'),(8,'Aadhaar','2025-01-08'),
(8,'PAN Card','2025-01-08'),(9,'Aadhaar','2025-01-09'),(9,'Bank Statement','2025-01-09'),(10,'Aadhaar','2025-01-10'),(10,'PAN Card','2025-01-10'),
(11,'Aadhaar','2025-01-11'),(11,'Salary Slip','2025-01-11'),(12,'Aadhaar','2025-01-12'),(12,'PAN Card','2025-01-12'),(13,'Aadhaar','2025-01-13'),
(13,'Bank Statement','2025-01-13'),(14,'Aadhaar','2025-01-14'),(14,'PAN Card','2025-01-14'),(15,'Aadhaar','2025-01-15'),(15,'Salary Slip','2025-01-15'),
(16,'Aadhaar','2025-01-16'),(16,'PAN Card','2025-01-16'),(17,'Aadhaar','2025-01-17'),(17,'Bank Statement','2025-01-17'),(18,'Aadhaar','2025-01-18'),
(18,'PAN Card','2025-01-18'),(19,'Aadhaar','2025-01-19'),(19,'Salary Slip','2025-01-19'),(20,'Aadhaar','2025-01-20'),(20,'PAN Card','2025-01-20'),
(21,'Aadhaar','2025-01-21'),(21,'Bank Statement','2025-01-21'),(22,'Aadhaar','2025-01-22'),(22,'PAN Card','2025-01-22'),(23,'Aadhaar','2025-01-23'),
(23,'Salary Slip','2025-01-23'),(24,'Aadhaar','2025-01-24'),(24,'PAN Card','2025-01-24'),(25,'Aadhaar','2025-01-25'),(25,'Bank Statement','2025-01-25'),
(26,'Aadhaar','2025-01-26'),(26,'PAN Card','2025-01-26'),(27,'Aadhaar','2025-01-27'),(27,'Salary Slip','2025-01-27'),(28,'Aadhaar','2025-01-28'),
(28,'PAN Card','2025-01-28'),(29,'Aadhaar','2025-01-29'),(29,'Bank Statement','2025-01-29'),(30,'Aadhaar','2025-01-30'),(30,'PAN Card','2025-01-30'),
(31,'Aadhaar','2025-01-31'),(31,'Salary Slip','2025-01-31'),(32,'Aadhaar','2025-02-01'),(32,'PAN Card','2025-02-01'),(33,'Aadhaar','2025-02-02'),
(33,'Bank Statement','2025-02-02'),(34,'Aadhaar','2025-02-03'),(34,'PAN Card','2025-02-03'),(35,'Aadhaar','2025-02-04'),(35,'Salary Slip','2025-02-04'),
(36,'Aadhaar','2025-02-05'),(36,'PAN Card','2025-02-05'),(37,'Aadhaar','2025-02-06'),(37,'Bank Statement','2025-02-06'),(38,'Aadhaar','2025-02-07'),
(38,'PAN Card','2025-02-07'),(39,'Aadhaar','2025-02-08'),(39,'Salary Slip','2025-02-08'),(40,'Aadhaar','2025-02-09'),(40,'PAN Card','2025-02-09'),
(41,'Aadhaar','2025-02-10'),(41,'Bank Statement','2025-02-10'),(42,'Aadhaar','2025-02-11'),(42,'PAN Card','2025-02-11'),(43,'Aadhaar','2025-02-12'),
(43,'Salary Slip','2025-02-12'),(44,'Aadhaar','2025-02-13'),(44,'PAN Card','2025-02-13'),(45,'Aadhaar','2025-02-14'),(45,'Bank Statement','2025-02-14'),
(46,'Aadhaar','2025-02-15'),(46,'PAN Card','2025-02-15'),(47,'Aadhaar','2025-02-16'),(47,'Salary Slip','2025-02-16'),(48,'Aadhaar','2025-02-17'),
(48,'PAN Card','2025-02-17'),(49,'Aadhaar','2025-02-18'),(49,'Bank Statement','2025-02-18'),(50,'Aadhaar','2025-02-19'),(50,'PAN Card','2025-02-19'),
(51,'Aadhaar','2025-02-20'),(52,'Aadhaar','2025-02-21'),(53,'Aadhaar','2025-02-22'),(54,'Aadhaar','2025-02-23'),(55,'Aadhaar','2025-02-24'),
(56,'Aadhaar','2025-02-25'),(57,'Aadhaar','2025-02-26'),(58,'Aadhaar','2025-02-27'),(59,'Aadhaar','2025-02-28'),(60,'Aadhaar','2025-03-01'),
(61,'Aadhaar','2025-03-02'),(62,'Aadhaar','2025-03-03'),(63,'Aadhaar','2025-03-04'),(64,'Aadhaar','2025-03-05'),(65,'Aadhaar','2025-03-06'),
(66,'Aadhaar','2025-03-07'),(67,'Aadhaar','2025-03-08'),(68,'Aadhaar','2025-03-09'),(69,'Aadhaar','2025-03-10'),(70,'Aadhaar','2025-03-11'),
(71,'Aadhaar','2025-03-12'),(72,'Aadhaar','2025-03-13'),(73,'Aadhaar','2025-03-14'),(74,'Aadhaar','2025-03-15'),(75,'Aadhaar','2025-03-16'),
(76,'Aadhaar','2025-03-17'),(77,'Aadhaar','2025-03-18'),(78,'Aadhaar','2025-03-19'),(79,'Aadhaar','2025-03-20'),(80,'Aadhaar','2025-03-21'),
(81,'Aadhaar','2025-03-22'),(82,'Aadhaar','2025-03-23'),(83,'Aadhaar','2025-03-24'),(84,'Aadhaar','2025-03-25'),(85,'Aadhaar','2025-03-26'),
(86,'Aadhaar','2025-03-27'),(87,'Aadhaar','2025-03-28'),(88,'Aadhaar','2025-03-29'),(89,'Aadhaar','2025-03-30'),(90,'Aadhaar','2025-03-31'),
(91,'Aadhaar','2025-04-01'),(92,'Aadhaar','2025-04-02'),(93,'Aadhaar','2025-04-03'),(94,'Aadhaar','2025-04-04'),(95,'Aadhaar','2025-04-05'),
(96,'Aadhaar','2025-04-06'),(97,'Aadhaar','2025-04-07'),(98,'Aadhaar','2025-04-08'),(99,'Aadhaar','2025-04-09'),(100,'Aadhaar','2025-04-10');
select * from documents;

-- 16. Notifications
CREATE TABLE Notifications (
notification_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
message VARCHAR(255),
notification_date DATE,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Notifications(customer_id,message,notification_date) VALUES
(1,'EMI payment due in 5 days','2025-02-02'),(2,'Loan application approved','2025-02-03'),(3,'EMI payment received','2025-02-04'),(4,'Credit score updated','2025-02-05'),(5,'Loan disbursed successfully','2025-02-06'),
(6,'EMI payment due in 5 days','2025-02-07'),(7,'Loan application approved','2025-02-08'),(8,'EMI payment received','2025-02-09'),(9,'Credit score updated','2025-02-10'),(10,'Loan disbursed successfully','2025-02-11'),
(11,'EMI payment due in 5 days','2025-02-12'),(12,'Loan application approved','2025-02-13'),(13,'EMI payment received','2025-02-14'),(14,'Credit score updated','2025-02-15'),(15,'Loan disbursed successfully','2025-02-16'),
(16,'EMI payment due in 5 days','2025-02-17'),(17,'Loan application approved','2025-02-18'),(18,'EMI payment received','2025-02-19'),(19,'Credit score updated','2025-02-20'),(20,'Loan disbursed successfully','2025-02-21'),
(21,'EMI payment due in 5 days','2025-02-22'),(22,'Loan application approved','2025-02-23'),(23,'EMI payment received','2025-02-24'),(24,'Credit score updated','2025-02-25'),(25,'Loan disbursed successfully','2025-02-26'),
(26,'EMI payment due in 5 days','2025-02-27'),(27,'Loan application approved','2025-02-28'),(28,'EMI payment received','2025-03-01'),(29,'Credit score updated','2025-03-02'),(30,'Loan disbursed successfully','2025-03-03'),
(31,'EMI payment due in 5 days','2025-03-04'),(32,'Loan application approved','2025-03-05'),(33,'EMI payment received','2025-03-06'),(34,'Credit score updated','2025-03-07'),(35,'Loan disbursed successfully','2025-03-08'),
(36,'EMI payment due in 5 days','2025-03-09'),(37,'Loan application approved','2025-03-10'),(38,'EMI payment received','2025-03-11'),(39,'Credit score updated','2025-03-12'),(40,'Loan disbursed successfully','2025-03-13'),
(41,'EMI payment due in 5 days','2025-03-14'),(42,'Loan application approved','2025-03-15'),(43,'EMI payment received','2025-03-16'),(44,'Credit score updated','2025-03-17'),(45,'Loan disbursed successfully','2025-03-18'),
(46,'EMI payment due in 5 days','2025-03-19'),(47,'Loan application approved','2025-03-20'),(48,'EMI payment received','2025-03-21'),(49,'Credit score updated','2025-03-22'),(50,'Loan disbursed successfully','2025-03-23'),
(51,'EMI payment due in 5 days','2025-03-24'),(52,'Loan application approved','2025-03-25'),(53,'EMI payment received','2025-03-26'),(54,'Credit score updated','2025-03-27'),(55,'Loan disbursed successfully','2025-03-28'),
(56,'EMI payment due in 5 days','2025-03-29'),(57,'Loan application approved','2025-03-30'),(58,'EMI payment received','2025-03-31'),(59,'Credit score updated','2025-04-01'),(60,'Loan disbursed successfully','2025-04-02'),
(61,'EMI payment due in 5 days','2025-04-03'),(62,'Loan application approved','2025-04-04'),(63,'EMI payment received','2025-04-05'),(64,'Credit score updated','2025-04-06'),(65,'Loan disbursed successfully','2025-04-07'),
(66,'EMI payment due in 5 days','2025-04-08'),(67,'Loan application approved','2025-04-09'),(68,'EMI payment received','2025-04-10'),(69,'Credit score updated','2025-04-11'),(70,'Loan disbursed successfully','2025-04-12'),
(71,'Document verification completed','2025-04-13'),(72,'EMI overdue notice','2025-04-14'),(73,'Loan statement generated','2025-04-15'),(74,'Credit score updated','2025-04-16'),(75,'EMI payment received','2025-04-17'),
(76,'Document verification completed','2025-04-18'),(77,'EMI overdue notice','2025-04-19'),(78,'Loan statement generated','2025-04-20'),(79,'Credit score updated','2025-04-21'),(80,'EMI payment received','2025-04-22'),
(81,'Document verification completed','2025-04-23'),(82,'EMI overdue notice','2025-04-24'),(83,'Loan statement generated','2025-04-25'),(84,'Credit score updated','2025-04-26'),(85,'EMI payment received','2025-04-27'),
(86,'Document verification completed','2025-04-28'),(87,'EMI overdue notice','2025-04-29'),(88,'Loan statement generated','2025-04-30'),(89,'Credit score updated','2025-05-01'),(90,'EMI payment received','2025-05-02'),
(91,'Document verification completed','2025-05-03'),(92,'EMI overdue notice','2025-05-04'),(93,'Loan statement generated','2025-05-05'),(94,'Credit score updated','2025-05-06'),(95,'EMI payment received','2025-05-07'),
(96,'Document verification completed','2025-05-08'),(97,'EMI overdue notice','2025-05-09'),(98,'Loan statement generated','2025-05-10'),(99,'Credit score updated','2025-05-11'),(100,'EMI payment received','2025-05-12'),
(1,'Special offer on personal loans','2025-05-13'),(5,'Interest rate revised','2025-05-14'),(10,'EMI reminder','2025-05-15'),(15,'Loan statement available','2025-05-16'),(20,'Payment confirmation','2025-05-17'),
(25,'Credit score updated','2025-05-18'),(30,'EMI due tomorrow','2025-05-19'),(35,'Document approved','2025-05-20'),(40,'Loan renewal offer','2025-05-21'),(45,'EMI payment received','2025-05-22'),
(50,'Loan account updated','2025-05-23'),(55,'Interest certificate generated','2025-05-24'),(60,'Payment reminder','2025-05-25'),(65,'Loan statement available','2025-05-26'),(70,'Credit score updated','2025-05-27'),
(75,'Document approved','2025-05-28'),(80,'Payment confirmation','2025-05-29'),(85,'EMI due tomorrow','2025-05-30'),(90,'Loan renewal offer','2025-05-31'),(95,'Account update completed','2025-06-01');
select * from notifications;

-- 17. Audit_Log
CREATE TABLE Audit_Log (
log_id INT PRIMARY KEY AUTO_INCREMENT,
table_name VARCHAR(50),
action_type VARCHAR(20),
action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO Audit_Log(table_name,action_type) VALUES
('Customers','INSERT'),('Customers','INSERT'),('Customers','UPDATE'),('Customers','INSERT'),('Customers','UPDATE'),
('Customer_Address','INSERT'),('Customer_Address','INSERT'),('Customer_Address','UPDATE'),('Customer_Address','INSERT'),('Customer_Address','DELETE'),
('Employees','INSERT'),('Employees','UPDATE'),('Employees','INSERT'),('Employees','UPDATE'),('Employees','INSERT'),
('Loan_Types','INSERT'),('Loan_Types','UPDATE'),('Loan_Types','INSERT'),('Loan_Types','UPDATE'),('Loan_Types','INSERT'),
('Loan_Applications','INSERT'),('Loan_Applications','INSERT'),('Loan_Applications','UPDATE'),('Loan_Applications','UPDATE'),('Loan_Applications','INSERT'),
('Loan_Applications','UPDATE'),('Loan_Applications','INSERT'),('Loan_Applications','UPDATE'),('Loan_Applications','INSERT'),('Loan_Applications','UPDATE'),
('Loan_Approvals','INSERT'),('Loan_Approvals','INSERT'),('Loan_Approvals','UPDATE'),('Loan_Approvals','INSERT'),('Loan_Approvals','UPDATE'),
('Loans','INSERT'),('Loans','INSERT'),('Loans','UPDATE'),('Loans','INSERT'),('Loans','UPDATE'),
('EMI_Schedule','INSERT'),('EMI_Schedule','INSERT'),('EMI_Schedule','UPDATE'),('EMI_Schedule','INSERT'),('EMI_Schedule','UPDATE'),
('EMI_Schedule','INSERT'),('EMI_Schedule','UPDATE'),('EMI_Schedule','INSERT'),('EMI_Schedule','UPDATE'),('EMI_Schedule','INSERT'),
('EMI_Payments','INSERT'),('EMI_Payments','INSERT'),('EMI_Payments','UPDATE'),('EMI_Payments','INSERT'),('EMI_Payments','UPDATE'),
('EMI_Payments','INSERT'),('EMI_Payments','UPDATE'),('EMI_Payments','INSERT'),('EMI_Payments','UPDATE'),('EMI_Payments','INSERT'),
('Transactions','INSERT'),('Transactions','INSERT'),('Transactions','INSERT'),('Transactions','UPDATE'),('Transactions','INSERT'),
('Transactions','UPDATE'),('Transactions','INSERT'),('Transactions','UPDATE'),('Transactions','INSERT'),('Transactions','INSERT'),
('Guarantors','INSERT'),('Guarantors','INSERT'),('Guarantors','UPDATE'),('Guarantors','INSERT'),('Guarantors','UPDATE'),
('Credit_Scores','INSERT'),('Credit_Scores','INSERT'),('Credit_Scores','UPDATE'),('Credit_Scores','INSERT'),('Credit_Scores','UPDATE'),
('Penalties','INSERT'),('Penalties','INSERT'),('Penalties','UPDATE'),('Penalties','INSERT'),('Penalties','UPDATE'),
('Documents','INSERT'),('Documents','INSERT'),('Documents','UPDATE'),('Documents','INSERT'),('Documents','UPDATE'),
('Notifications','INSERT'),('Notifications','INSERT'),('Notifications','UPDATE'),('Notifications','INSERT'),('Notifications','UPDATE'),
('Notifications','INSERT'),('Notifications','UPDATE'),('Notifications','INSERT'),('Notifications','UPDATE'),('Notifications','INSERT'),
('Customers','DELETE'),('Customer_Address','DELETE'),('Employees','DELETE'),('Loan_Applications','DELETE'),('Loan_Approvals','DELETE'),
('Loans','DELETE'),('EMI_Schedule','DELETE'),('EMI_Payments','DELETE'),('Transactions','DELETE'),('Guarantors','DELETE'),
('Credit_Scores','DELETE'),('Penalties','DELETE'),('Documents','DELETE'),('Notifications','DELETE'),('Customers','INSERT'),
('Loan_Applications','INSERT'),('Loans','UPDATE'),('EMI_Payments','INSERT'),('Transactions','INSERT'),('Notifications','INSERT'),
('Customers','UPDATE'),('Employees','UPDATE'),('Loan_Applications','UPDATE'),('Loans','UPDATE'),('EMI_Schedule','UPDATE'),
('EMI_Payments','UPDATE'),('Transactions','UPDATE'),('Credit_Scores','UPDATE'),('Documents','UPDATE'),('Notifications','UPDATE');
select * from audit_log;

------- Basic Queries -------

-- Display all customers.
select * from customers;

-- Display all loan types.
select * from loan_types;

-- Show customer names and phone numbers.
select customer_name,phone from customers;

-- Display all active loans.
select * from loans where loan_status="active";

-- Show customers from  branch 1.
select * from branches where branch_id =1;
select * from branches;
-- Display approved loan applications.
select * from loan_applications where status = 'approved'; 

-- Show pending EMI schedules.
select * from emi_schedule where status = 'pending';

-- Display customers born before 2000.
select * from customers where dob<'2000-12-01';

-- Show employees earning above ₹50,000.
select * from employees where salary > 50000;

-- List all branches in Chennai.
select * from branches where city = 'chennai';

-- Display all penalties.
select * from penalties; 

-- Display all notifications.
select * from notifications;

-- Show loans greater than ₹20,00,000.
select * from loans where loan_amount > 2000000;

-- Display credit scores above 750.
select * from credit_scores where credit_score > 750; 

-- Count the total number of customers.
select count(*) as Total_customers from customers;

------- Intermediate Queries -------

-- Display customer names along with their branch names.
select c.customer_name,b.branch_name 
from customers c 
join branches b on c.branch_id = b.branch_id;

-- Display customer names and loan amounts.
select c.customer_name,l.loan_amount 
from customers c
join loans l on c.customer_id = l.customer_id;

-- Display customer names and credit scores.
select c.customer_name,cs.credit_score 
from customers c
join credit_scores cs on c.customer_id = cs.customer_id;

-- Display loan details along with loan type names.
select l.loan_id,lt.loan_type_name,l.loan_amount 
from loans l
join loan_types lt on l.loan_type_id = lt.loan_type_id;

-- Display customer names and their guarantors.
select c.customer_name,g.guarantor_name
from customers c
join guarantors g on c.customer_id = g.customer_id;

-- Calculate the total loan amount issued.
select sum(loan_amount) as Total_loan_amount from loans;

-- Calculate the average credit score.
select avg(credit_score) as Avg_score from credit_scores;

-- Count customers in each branch.
select branch_id , count(*) as total_customer from customers group by branch_id;
 
-- Find the highest loan amount.
select max(loan_amount) as Highest_loan_amount from loans;

-- Find the lowest credit score.
select min(credit_score) as Lowest_CreditScore from credit_scores;

-- Count employees in each branch.
select branch_id , count(*) as total_customer from customers group by branch_id;
 
-- Count loans by loan status.
select count(*) as loan_status from loans group by loan_status;
 
-- Display customers who have guarantors.
select distinct customer_id from guarantors;

-- Find customers whose names start with 'A'.
select * from customers where customer_name like 'A%';

-- Display the top 5 highest loan amounts.
select * from loans order by loan_amount desc limit 5;

------- Advanced Queries -------

-- Find the customer with the highest loan amount.
select c.customer_name,l.loan_amount
from customers c
join loans l on c.customer_id = l.customer_id;

-- Display customers whose credit score is above the average credit score.
select * from credit_scores where credit_score > ( select avg(credit_score) from credit_scores);

-- Find the branch that has generated the maximum loan amount.

-- Display customers who have incurred penalties.
select c.customer_name from customers c 
join loans l 
on c.customer_id = l.customer_id
join penalties p 
on l.loan_id = p.loan_id;

-- Calculate the total penalties collected.
select sum(penalty_amount) as Total_PenaltyAmount from penalties;

-- Rank customers based on loan amount.
SELECT customer_id,
loan_amount,
RANK() OVER(ORDER BY loan_amount DESC) AS Ranking
FROM Loans;

-- Count loans for each loan type.
select lt.loan_type_name, count(*) as Total_loans 
from loans l
join loan_types lt on l.loan_type_id = lt.loan_type_id
group by lt.loan_type_name;

-- Find customers who have submitted more than one document.
select customer_id,count(*) as Total_Documents
from documents
group by customer_id
having count(*) > 1;

-- Generate a payment mode-wise EMI collection summary.
select payment_mode,sum(amount_paid) as Total_Amount
from emi_payments
group by payment_mode;

-- Generate a complete customer loan report showing customer name, loan type, loan amount, and loan status.
select c.customer_name, lt.loan_type_name, l.loan_amount, l.loan_status
from customers c
join loans l on c.customer_id = l.customer_id
join loan_types lt on l.loan_type_id = lt.loan_type_id;