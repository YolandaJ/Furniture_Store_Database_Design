CREATE TABLE ORDERS (
	Ono INT(10) NOT NULL, 
	Order_date DATE, 
	Deli_date DATE DEFAULT 0000-00-00, 
	Deli_address VARCHAR(40) DEFAULT 'NONE', 
	Total_price FLOAT, 
	Sno INT(5), 
	Cno INT(7),
	PRIMARY KEY (Ono)
); 

CREATE TABLE SHIPMENT (
	Ono INT(10) NOT NULL, 
	Cno INT(7), 
	Ship_or_not BOOLEAN, 
	PRIMARY KEY (Ono)
); 

CREATE TABLE SALESMEN (
	Sno INT(5) NOT NULL, 
	Sex VARCHAR(5), 
	Sname VARCHAR(40), 
	Phone VARCHAR(15), 
	Bno INT(3), 
	PRIMARY KEY (Sno)
); 

CREATE TABLE FURNITURE (
	Fno INT(7) NOT NULL, 
	Fname VARCHAR(50), 
	Brand VARCHAR(20), 
	Category VARCHAR(20), 
	Unit_price FLOAT, 
	PRIMARY KEY (Fno)
); 

CREATE TABLE SUPPLIER (
	Spno INT(3) NOT NULL, 
	Spname VARCHAR(50), 
	Address VARCHAR(50), 
	Phone VARCHAR(15), 
	PRIMARY KEY (Spno)
); 

CREATE TABLE BRANCH (
	Bno INT(3) NOT NULL, 
	Address VARCHAR(50), 
	Phone VARCHAR(15), 
	PRIMARY KEY (Bno)
); 

CREATE TABLE WAREHOUSE (
	Wno INT(3) NOT NULL, 
	Address VARCHAR(50), 
	Phone VARCHAR(15), 
	Bno INT(3), 
	PRIMARY KEY (Wno)
); 

CREATE TABLE CUSTOMER(
	Cno INT(7) NOT NULL, 
	Cname VARCHAR(40), 
	Address VARCHAR(50),
	Phone VARCHAR(15), 
	PRIMARY KEY (Cno)
); 

CREATE TABLE Online_account (
	Username VARCHAR(20) NOT NULL, 
	Password VARCHAR(30), 
	Cno INT(7), 
	PRIMARY KEY (Username)
); 

CREATE TABLE PAYMENT (
	Payno INT(10) NOT NULL, 
	Payment_type VARCHAR(10) DEFAULT 'Credit', 
	Pay_date DATE, 
	Ono INT(10), 
	PRIMARY KEY (Payno)
); 

CREATE TABLE INCLUDE (
	Ono INT(10) NOT NULL, 
	Fno INT(7) NOT NULL, 
	Qty INT, 
	PRIMARY KEY (Ono, Fno)
); 

CREATE TABLE PLENISH (
	Bno INT(3) NOT NULL, 
	Spno INT(3) NOT NULL, 
	Fno INT(7) NOT NULL, 
	Purchase_Qty FLOAT, 
	Purchase_date DATE, 
	PRIMARY KEY (Bno, Spno, Fno)
); 

CREATE TABLE PURCHASE_PRICE (
	Spno INT(3) NOT NULL, 
	Fno INT(7) NOT NULL, 
	Purchase_unitprice FLOAT, 
	PRIMARY KEY (Spno, Fno)
); 

CREATE TABLE STORE (
	Fno INT(7) NOT NULL, 
	Bno INT(3) NOT NULL, 
	Qty_inhand INT, 
	PRIMARY KEY (Fno, Bno)
);

CREATE TABLE CUSTOMER_COUPON (
Ono INT(10),
Cno INT(7),
Number INT
);
