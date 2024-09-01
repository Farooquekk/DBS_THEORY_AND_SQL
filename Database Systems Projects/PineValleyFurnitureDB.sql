-- DDL Commands To Create Structure Of Database

CREATE DATABASE IF NOT EXISTS PineValleyFurnitureDB;
use PineValleyFurnitureDB;
CREATE TABLE productLine(
    productLineID INT PRIMARY KEY,
    productLineName VARCHAR(50)
    );

CREATE TABLE products(
    productID INT PRIMARY KEY,
    productDescription TEXT,
    productFinish VARCHAR(50),
    productStandardPrice FLOAT,
    productLineID INT,
    FOREIGN KEY (productLineID) REFERENCES productLine(productLineID)
    );

CREATE TABLE customers(
    customerID INT PRIMARY KEY,
    customerName VARCHAR(50),
    customerAddress TEXT,
    customerPostalCode INT
    );
    
CREATE TABLE orders(
    orderID INT PRIMARY KEY,
    orderDate DATE,
    customerID INT, 
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
    );

CREATE TABLE orderLine(
    orderLineID INT PRIMARY KEY, 
    orderedQuantity INT,
    orderID INT,
    productID INT,
    FOREIGN KEY (orderID) REFERENCES orders(orderID),
    FOREIGN KEY (productID) REFERENCES products(productID)
    );

CREATE TABLE rawMaterial(
    materialID INT PRIMARY KEY,
    materialName VARCHAR(50),
	unitOfMeasure VARCHAR(20),
	materialStandardCost float
    );

CREATE TABLE product_rawMaterial(
    productID INT,
    materialID INT, 
    quantityRequired INT,
    PRIMARY KEY(productID, materialID),
    FOREIGN KEY (productID) REFERENCES products(productID),
    FOREIGN KEY (materialID) REFERENCES rawMaterial(materialID)
    );
    
CREATE TABLE vendors(
    vendorID INT PRIMARY KEY,
	vendorName VARCHAR(50),
	vendorAddress TEXT
    );

CREATE TABLE vendors_rawMaterial(
    vendorID INT, 
    materialID INT,
    supplyUnitPrice FLOAT,
    PRIMARY KEY (vendorID, materialID),
    FOREIGN KEY (vendorID) REFERENCES vendors(vendorID),
    FOREIGN KEY (materialID) REFERENCES rawMaterial(materialID)
);

-- DML Commands for Inserting Data
INSERT INTO productLine (productLineID, productLineName) 
VALUES
	(1, 'Bedroom'),
	(2, 'Bathroom'),
	(3, 'Kitchen'),
	(4, 'Office'),
	(5, 'Garden'),
	(6, 'Lounge'),
	(7, 'Living Room'),
    (8, 'Dining Room'),
    (9, 'Library Furniture'),
	(10, 'Hospital Furniture');
    
INSERT INTO products (productID, productDescription, productFinish, productStandardPrice, productLineID) 
VALUES
	(101, 'Sofa', 'Wood', 700.00, 6),
	(102, 'Coffee Table', 'Glass', 400.00, 3),
	(103, 'Bed Frame', 'Deco', 800.00, 1),
	(104, 'Dining Table', 'Maple', 700.00, 8),
	(105, 'Desk', 'Wood', 450.00, 4),
	(106, 'Outdoor Chair', 'Aluminium', 200.00, 5),
	(107, 'Toilet', 'Ceramic', 250.00, 2),
	(108, 'Dining Chair', 'Wood', 140.00, 8),
	(109, 'TV Stand', 'Wood', 300.00, 6),
	(110, 'Bookshelf', 'Pine Wood', 170.00, 9);

INSERT INTO customers (customerID, customerName, customerAddress, customerPostalCode) 
VALUES
	(201, 'Arbab Hussain Qureshi', 'House No. B-28, Affandi Town, Hyderabad', 71000),
	(202 ,'Muhammad Talha', 'House No. 361 TandoAllahyar', 70010),
	(203, 'Maghan Das', 'House No. 79, Sattelite Town, MirpurKhas', 69000),
	(204, 'Om Parkash', 'House No. 173, Qasimabad Hyderabad', 71000),
	(205, 'Rudaba Khan', 'House No. 43, Iqbal Town Karachi', 75850),
	(206, 'Nimrah Khan', 'House No. 456, Latifabad Hyderabad', 17000),
	(207, 'Rohal Jamal', 'House No. B-34, Heerabad, Hyderabad', 71000),
	(208, 'Muhammad Umair', 'House No. H-190, Anarkali Plaza Lahore', 54760),
	(209, 'Haris Arain', 'House No. B-341, Near Faisal Masjid Islamabad', 43040),
	(210, 'Umar Khan', 'House No. X-87 Nawabshah', 67450);
    
INSERT INTO orders (orderID, orderDate, customerID)
VALUES 
    (301, '2024-03-16', 201),
    (302, '2024-03-18', 202),
    (303, '2024-03-20', 203),
    (304, '2024-03-20', 204),
    (305, '2024-03-20', 205),
    (306, '2024-03-23', 206),
    (307, '2024-03-23', 207),
    (308, '2024-03-23', 208),
    (309, '2024-03-24', 209),
    (310, '2024-03-24', 210);
		
INSERT INTO orderLine (orderLineID, orderedQuantity, orderID, productID)
VALUES 
    (401, 3, 301, 101),
    (402, 1, 302, 102),
    (403, 4, 303, 103),
    (404, 6, 304, 104),
    (405, 1, 305, 105),
    (406, 3, 306, 106),
    (407, 1, 307, 107),
    (408, 2, 308, 108),
    (409, 3, 309, 109),
    (410, 3, 310, 110);
    
INSERT INTO rawMaterial (materialID, materialName, unitOfMeasure, materialStandardCost)
VALUES 
    (501, 'Wood', 'sqft', 15.00),
    (502, 'Glass', 'sqft', 12.00),
    (503, 'Deco', 'cubic ft', 7.00),
    (504, 'Maple', 'sqft', 14.00),
    (505, 'Aluminium', 'sqft', 8.00),
    (506, 'Ceramic', 'sqft', 7.00),
    (507, 'Pine Wood', 'sqft', 12.00),
    (508, 'Porcelain', 'sqft', 7.00),
    (509, 'Fabric', 'sqft', 5.00),
    (510, 'Steel', 'tons', 7.00);


INSERT INTO product_rawMaterial (productID, materialID, quantityRequired)
VALUES 
    (101, 501, 6),
    (102, 502, 3),
    (103, 503, 5),
    (104, 504, 8),
    (105, 505, 4),
    (106, 506, 4),
    (107, 507, 3),
    (108, 508, 6),
    (109, 509, 2),
    (110, 510, 5);
    
INSERT INTO vendors (vendorID, vendorName, vendorAddress)
VALUES 
    (601, 'Dream Home Furnishings', 'Hyderabad'),
    (602, 'Bathing Accessories', 'Lahore'),
    (603, 'Cooking Essentials', 'Multan'),
    (604, 'Kids Planet', 'Sialkot'),
    (605, 'Office Manufacturers', 'Hyderabad'),
    (606, 'Library Zone Furnishings', 'Islamabad'),
    (607, 'Dine in Furnitures', 'Lahore'),
    (608, 'Emergency Equipments', 'Peshawar'),
    (609, 'Room Decors', 'Islamabad'),
    (610, 'Cinematic Furniture Manufacturers', 'Lahore');


INSERT INTO vendors_rawMaterial (vendorID, materialID, supplyUnitPrice)
VALUES 
    (601, 501, 15.00),
    (602, 502, 12.00),
    (603, 503, 14.00),
    (604, 504, 13.00),
    (605, 505, 12.00),
    (606, 506, 14.00),
    (607, 507, 4.00),
    (608, 508, 6.00),
    (609, 509, 5.00),
    (610, 510, 8.00);

-- Query Tasks

SELECT o.orderID, o.orderDate, c.customerName, p.productDescription, ol.orderedQuantity
FROM orders o
JOIN customers c ON o.customerID = c.customerID
JOIN orderLine ol ON o.orderID = ol.orderID
JOIN products p ON ol.productID = p.productID
WHERE o.orderDate = '2024-03-24';


DELETE FROM orderLine WHERE orderID IN (SELECT orderID FROM orders WHERE orderDate = '2024-03-20');
DELETE FROM orders WHERE orderDate='2024-03-20';

CREATE VIEW Vendor_RawMaterial_Product AS
SELECT p.productID, p.ProductDescription AS 'Product\'s Name', pl.ProductLineName,
       rmt.MaterialName, v.VendorName, v.vendorAddress
       FROM products p
JOIN 
		productLine pl ON p.ProductLineID = pl.ProductLineID
JOIN 
		product_rawMaterial prm ON p.ProductID = prm.ProductID
JOIN	 
		rawMaterial rmt ON prm.MaterialID = rmt.MaterialID
JOIN 
		vendors_rawMaterial vrm ON rmt.MaterialID = vrm.MaterialID
JOIN 
		vendors v ON vrm.VendorID = v.VendorID;
        
SELECT * FROM vendor_rawMaterial_Product;
