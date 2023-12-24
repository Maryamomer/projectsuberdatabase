create database supermarket ;
use supermarket
Go
create schema Salles;
Go
create schema Production;
Go
CREATE TABLE  Salles.customers (
	customer_id INT IDENTITY (1, 1) primary key,
	first_name VARCHAR (15) NOT NULL,
	last_name VARCHAR (15) NOT NULL,
	email VARCHAR (20) NOT NULL UNIQUE,
	phone VARCHAR (15),
	city varchar(20),
);
insert into Salles.customers(first_name,last_name,email ,phone,city)
values('ahmed','mohamed','drsdr@gmail.com','0119897867575','wasta'),
('esraa','abdelrazek','uyuhu@gmail.com','01264445454','benisuif'),
('reem','ramy','drdr@gmail.com','01576785754','maca'),
('maryam','ali','sesr@gmail.com','01034233131','aswan'),
('ali','sayed','kjiui@gmail.com','011907867575','almadena'),
('rana','mohamed','drd54@gmail.com','0124454354533','newyourk'),
 ('osama','jac','yzyts6@gmail.com','01143577564454','paris'),
 ('taha','fares','ystyx@gmail.com','01200898977','mello'),
 ('menna','mohamed','vystfr@gmail.com','011646535345','fayoum'),
 ('mohammed','mohamed','drsdrd@gmail.com','0125465353','wasta');
select*from Salles.customers
CREATE TABLE  Salles.store (
	store_id INT IDENTITY (20, 1) PRIMARY KEY,
	store_name VARCHAR (20) NOT NULL,
	phone VARCHAR (20),
	email VARCHAR (20) Not Null,
	city VARCHAR (30),
	zip_code VARCHAR (18)
);
insert into Salles.store(store_name,email ,phone,city,zip_code)
values('A','drsdr@gmail.com','0119897867575','wasta','123'),
('B','uyuhu@gmail.com','01264445454','benisuif','132'),
('C','drdr@gmail.com','01576785754','maca','213'),
('D','sesr@gmail.com','01034233131','aswan','231'),
('E','kjiui@gmail.com','011907867575','almadena','312'),
('F','drd54@gmail.com','0124454354533','newyourk','321'),
 ('J','yzyts6@gmail.com','01143577564454','paris','456'),
 ('H','ystyx@gmail.com','01200898977','mello','465'),
 ('I','vystfr@gmail.com','011646535345','fayoum','546'),
 ('J','drsdrd@gmail.com','0125465353','wasta','564');
select*from Salles.store
CREATE TABLE Salles.staff (
	staff_id INT IDENTITY (10, 1) PRIMARY KEY,
	first_name VARCHAR (15) NOT NULL,
	last_name VARCHAR (15) NOT NULL,
	email VARCHAR (30) NOT NULL UNIQUE,
	phone VARCHAR (25),
	store_id INT Not Null,
	CONSTRAINT fk_staff_store FOREIGN KEY (store_id) 
        REFERENCES Salles.store(store_id),
);
insert into Salles.staff(first_name,last_name,email ,phone,store_id)
values('asmaa','mohamed','jhsh@gmail.com','0119897867575','20'),
('merna','abdelrazek','skjkdj@gmail.com','01264445454','21'),
('ali','ramy','jduhsudh@gmail.com','01576785754','22'),
('rawan','ali','sesasws@gmail.com','','23'),
('gamal','sayed','kjiusadi@gmail.com','011907867575','24'),
('mero','mohamed','drssd54@gmail.com','0124454354533','25'),
 ('dodo','raffe','yzsddyts6@gmail.com','','26'),
 ('alaa','jac','ystasyx@gmail.com','01200898977','27'),
 ('gehad','fares','vystswdfr@gmail.com','','28'),
 ('mohammed','ahmed','drsawedrd@gmail.com','0125465353','29');
select*from Salles.staff
CREATE TABLE Production.categorie (
	category_id INT IDENTITY (30, 1) PRIMARY KEY,
	category_name VARCHAR (40) NOT NULL
);
INSERT INTO Production.categorie VALUES('HDFD');
INSERT INTO Production.categorie VALUES('GSYSD');
INSERT INTO Production.categorie VALUES('HGSY');
INSERT INTO Production.categorie VALUES('TSFTFS');
INSERT INTO Production.categorie VALUES('GSAFST');
INSERT INTO Production.categorie VALUES('SVYSD');
INSERT INTO Production.categorie VALUES('GYSGYD');
INSERT INTO Production.categorie VALUES('YGSYGD');
INSERT INTO Production.categorie VALUES('GYGDW');
INSERT INTO Production.categorie VALUES('HGSYGD');
select*from Production.categorie
CREATE TABLE Production.brand (
	brand_id INT IDENTITY (40, 1) PRIMARY KEY,
	brand_name VARCHAR (25) NOT NULL
);
INSERT INTO Production.brand  VALUES('ses');
INSERT INTO Production.brand  VALUES('jnuh');
INSERT INTO Production.brand  VALUES('dsrsr');
INSERT INTO Production.brand  VALUES('gftfyt');
INSERT INTO Production.brand  VALUES('frdrtd');
INSERT INTO Production.brand  VALUES('dtdhg');
INSERT INTO Production.brand  VALUES('gyg');
INSERT INTO Production.brand  VALUES('hguhiu');
INSERT INTO Production.brand  VALUES('ihijo');
INSERT INTO Production.brand  VALUES('hgugu');
select*from Production.brand 
CREATE TABLE Production.product (
	product_id INT IDENTITY (50, 1) PRIMARY KEY,
	product_name VARCHAR (26) NOT NULL,
	brand_id INT NOT NULL,
	category_id INT NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	 CONSTRAINT fk_product_brand FOREIGN KEY (brand_id) 
        REFERENCES Production.brand(brand_id),
		 CONSTRAINT fk_product_category FOREIGN KEY (category_id) 
        REFERENCES Production.categorie(category_id)
	);
	insert into Production.product(product_name,brand_id,category_id ,model_year,list_price)
values('msr',40,30,2000,56.67),
('rsm',41,31,2004,53.79),
('jis',42,32,2015,26.27),
('jsi',43,33,2016,65.76),
('mno',44,34,2007,65.27),
('mon',45,35,2009,26.90),
 ('lop',46,36,2007,12.25),
 ('lpo',47,37,2006,26.78),
 ('cut',48,38,2002,98.87),
 ('ctu',49,39,2020,34.76);
select*from Production.product
CREATE TABLE Salles.orders (
	order_id INT IDENTITY (1, 1) PRIMARY KEY,
	customer_id INT,
	order_date VARCHAR(40) NOT NULL,
	store_id INT NOT NULL,
	staff_id INT NOT NULL,
	CONSTRAINT fk_orders_store FOREIGN KEY (store_id) 
        REFERENCES Salles.store(store_id),
		CONSTRAINT fk_orders_staff FOREIGN KEY (staff_id) 
        REFERENCES Salles.staff(staff_id)
	);
	insert into Salles.orders(customer_id,order_date,store_id ,staff_id)
values(1,'9octo',20,'10'),
(2,'2march',21,'11'),
(3,'5nov',22,'12'),
(4,'30jun',23,'13'),
(5,'4jul',24,'14'),
(6,'5feb',25,'15'),
 (7,'7april',26,'16'),
 (8,'10oct',27,'17'),
 (9,'8jun',28,'18'); 
 
select*from Salles.orders