create database UASExample
use UASExample
CREATE TABLE MsCustomer (
	CustomerID CHAR(5) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(255) NOT NULL,
	CustomerGender VARCHAR(10) NOT NULL,
	CustomerAddress VARCHAR(50) NOT NULL,
	CustomerEmail VARCHAR(50) NOT NULL,
	CustomerDOB DATE NOT NULL
);

INSERT INTO MsCustomer VALUES
('CU001', 'Dirk Titterell', 'Male', '74 Melvin Point', 'dtitterell0@yellowpages.com', '2000-10-29'),
('CU002', 'Dukey Diano', 'Male', '92 Sugar Alley', 'ddiano1@state.com', '2001-09-27'),
('CU003', 'Alex Meekins', 'Male', '577 Dovetail Park', 'ameekins2@blogs.com', '2000-11-06'),
('CU004', 'Cherice Jermey', 'Female', '811 Debs Street', 'cjermey3@guardian.com', '2001-05-18'),
('CU005', 'Ingamar Carlin', 'Male', '389 Surrey Pass', 'icarlin4@shareasale.com', '2000-08-08'),
('CU006', 'Pooh McCutcheon', 'Male', '7 Melby Trail', 'pmccutcheon5@salon.com', '2000-08-03'),
('CU007', 'Silvain Jozsa', 'Female', '19269 Maryland Hill', 'sjozsa6@omniture.com', '2000-12-30'),
('CU008', 'Javier Drewson', 'Female', '8 Moulton Point', 'jdrewson7@home.com', '2000-08-20'),
('CU009', 'Wilbur Francino', 'Female', '21840 Golden Leaf Avenue', 'wfrancino8@wunderground.com', '2000-10-06'),
('CU010', 'Sadie Snow', 'Female', '70 Eagle Crest Hill', 'ssnow9@github.com', '2001-04-25'),
('CU011', 'Sofie Carmen', 'Female', '20196 Springview Plaza', 'scarmena@gov.com', '2002-11-20'),
('CU012', 'Amy Grenkov', 'Male', '2263 Weeping Birch Center', 'agrenkovb@aol.com', '2002-06-06'),
('CU013', 'Gabriela Scarf', 'Female', '920 Bobwhite Trail', 'gscarfc@skype.com', '2001-03-12'),
('CU014', 'Westley Boram', 'Female', '47 Darwin Terrace', 'wboramd@sun.com', '2001-09-03'),
('CU015', 'Hadleigh Playfoot', 'Female', '49 6th Junction', 'hplayfoote@msu.com', '2002-04-14');

CREATE TABLE MsStaff (
	StaffID CHAR(5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
	StaffName VARCHAR(255) NOT NULL,
	StaffGender VARCHAR(10) NOT NULL,
	StaffAddress VARCHAR(50) NOT NULL
);

INSERT INTO MsStaff VALUES
('ST001', 'Clem Wijaya', 'Male', '0975 Forest Dale Trail'),
('ST002', 'Dene Budiman', 'Male', '2 Grayhawk Parkway'),
('ST003', 'Lethia Queensland', 'Female', '905 Goodland Lane'),
('ST004', 'Tyrone Potter', 'Male', '51745 Bowman Hill'),
('ST005', 'Shanda Dewi', 'Male', '848 New Castle Center'),
('ST006', 'Nani', 'Male', '3455 Village Green Court'),
('ST007', 'Dorothea Santoso Jaya', 'Male', '772 Goodland Park'),
('ST008', 'Chet Marrie', 'Female', '1 Merchant Street'),
('ST009', 'Darsie Sari', 'Female', '31718 Toban Point'),
('ST010', 'Don Tello', 'Male', '936 Lyons Plaza'),
('ST011', 'Tabby Tobing', 'Male', '10787 School Drive'),
('ST012', 'Desmond Oswind', 'Male', '8 Lien Junction'),
('ST013', 'Robenia', 'Female', '4 Dapin Avenue'),
('ST014', 'Curr Rosie', 'Female', '2 Veith Terrace'),
('ST015', 'Ruddi Yudi Chandra', 'Male', '2 Hermina Park');

CREATE TABLE MsDessertType (
	DessertTypeID CHAR(5) PRIMARY KEY CHECK (DessertTypeID Like 'DT[0-9][0-9][0-9]'),
	DessertTypeName VARCHAR(50) NOT NULL
);

INSERT INTO MsDessertType VALUES
('DT001', 'Snow Ice'),
('DT002', 'Yogurt'),
('DT003', 'Soup'),
('DT004', 'Juice'),
('DT005', 'Pudding');

CREATE TABLE MsDessert (
	DessertID CHAR(5) PRIMARY KEY CHECK (DessertID LIKE 'DS[0-9][0-9][0-9]'),
	DessertTypeID CHAR(5) FOREIGN KEY REFERENCES MsDessertType(DessertTypeID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	DessertName VARCHAR(50) NOT NULL,
	DessertPrice INT NOT NULL
);

INSERT INTO MsDessert VALUES
('DS001', 'DT001', 'Chocolate Snow Ice', 30),
('DS002', 'DT001', 'Mangoo Snow Ice', 35),
('DS003', 'DT001', 'Red Bean Bingsoo', 35),
('DS004', 'DT001', 'Matcha Bingsoo', 32),
('DS005', 'DT002', 'Blueberry Yogurt', 18),
('DS006', 'DT002', 'Strawberry Yogurt', 20),
('DS007', 'DT002', 'Original Frozen Yogurt', 22),
('DS008', 'DT002', 'Mix Fruit Yogurt', 25),
('DS009', 'DT003', 'Sago Taro', 25),
('DS010', 'DT003', 'Mung Bean Sweet Porridge', 12),
('DS011', 'DT003', 'Banana Kolak', 18),
('DS012', 'DT003', 'Sekoteng', 15),
('DS013', 'DT004', 'Orange Juice', 10),
('DS014', 'DT004', 'Strawberry Juice', 12),
('DS015', 'DT004', 'Avocado Juice', 16),
('DS016', 'DT004', 'Mango Juice', 15),
('DS017', 'DT005', 'Taro Pudding', 15),
('DS018', 'DT005', 'Matcha Pudding', 15),
('DS019', 'DT005', 'Vanilla Pudding', 15),
('DS020', 'DT005', 'Mangoo Pudding', 18);



CREATE TABLE [TransactionHeader] (
	TransactionID CHAR(5) PRIMARY KEY CHECK (TransactionID LIKE 'TR[0-9][0-9][0-9]'),
	CustomerID CHAR(5) FOREIGN KEY REFERENCES MsCustomer(CustomerID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	StaffID CHAR(5) FOREIGN KEY REFERENCES MsStaff(StaffID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	TransactionDate DATE NOT NULL
);

INSERT INTO TransactionHeader (TransactionID, StaffID, CustomerID, TransactionDate) VALUES
('TR001', 'ST007', 'CU006', '2020-09-06'),
('TR002', 'ST001', 'CU012', '2020-06-05'),
('TR003', 'ST015', 'CU009', '2020-12-18'),
('TR004', 'ST001', 'CU003', '2020-12-15'),
('TR005', 'ST004', 'CU011', '2020-08-04'),
('TR006', 'ST011', 'CU002', '2021-02-19'),
('TR007', 'ST014', 'CU004', '2021-01-01'),
('TR008', 'ST010', 'CU008', '2021-04-28'),
('TR009', 'ST008', 'CU012', '2020-06-22'),
('TR010', 'ST005', 'CU009', '2020-06-13'),
('TR011', 'ST002', 'CU007', '2020-06-04'),
('TR012', 'ST005', 'CU015', '2020-07-28'),
('TR013', 'ST010', 'CU005', '2021-03-18'),
('TR014', 'ST001', 'CU001', '2020-08-22'),
('TR015', 'ST006', 'CU014', '2020-05-31'),
('TR016', 'ST009', 'CU007', '2020-01-02'),
('TR017', 'ST014', 'CU005', '2020-03-28'),
('TR018', 'ST011', 'CU002', '2021-04-05'),
('TR019', 'ST010', 'CU012', '2020-05-05'),
('TR020', 'ST003', 'CU013', '2020-11-17');


CREATE TABLE [TransactionDetail] (
	TransactionID CHAR(5) FOREIGN KEY REFERENCES TransactionHeader(TransactionID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	DessertID CHAR(5) FOREIGN KEY REFERENCES MsDessert(DessertID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
	Quantity INT NOT NULL,
	PRIMARY KEY(TransactionID, DessertID)
);

INSERT INTO TransactionDetail VALUES
('TR001','DS004',5),
('TR001','DS003',5),
('TR001','DS020',5),
('TR002','DS019',2),
('TR002','DS008',6),
('TR002','DS003',4),
('TR002','DS010',5),
('TR003','DS008',5),
('TR003','DS002',1),
('TR004','DS016',2),
('TR004','DS007',3),
('TR004','DS011',5),
('TR004','DS003',3),
('TR005','DS003',1),
('TR005','DS014',1),
('TR005','DS011',4),
('TR005','DS018',2),
('TR005','DS001',3),
('TR006','DS013',2),
('TR007','DS012',6),
('TR007','DS007',1),
('TR008','DS019',4),
('TR008','DS007',1),
('TR009','DS013',5),
('TR010','DS017',1),
('TR010','DS008',5),
('TR010','DS001',3),
('TR011','DS001',5),
('TR011','DS005',6),
('TR011','DS020',4),
('TR012','DS014',5),
('TR012','DS013',3),
('TR012','DS018',5),
('TR012','DS017',6),
('TR012','DS004',3),
('TR012','DS007',3),
('TR013','DS002',1),
('TR013','DS011',4),
('TR013','DS015',3),
('TR013','DS014',6),
('TR014','DS015',5),
('TR015','DS019',4),
('TR015','DS020',2),
('TR016','DS006',5),
('TR016','DS005',3),
('TR016','DS004',1),
('TR016','DS015',1),
('TR017','DS013',3),
('TR018','DS019',5),
('TR018','DS008',2),
('TR019','DS002',5),
('TR019','DS005',5),
('TR020','DS004',3),
('TR020','DS009',3);