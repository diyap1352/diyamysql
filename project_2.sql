USE SALESS;
CREATE TABLE SALE_RECORD
(
  CUSTOMER_IDD INT  NOT NULL PRIMARY KEY ,
  CUSTOMER_NAME VARCHAR(50) NOT NULL,
  CUSTOMER_PURCHASE VARCHAR(50) NOT NULL,
  STORE_NAME VARCHAR(50),
  EMPLOYEE_NAMEE VARCHAR(50),
  EMPLOYEE_NAME VARCHAR(50),
  PRODUCT_AMOUNT DECIMAL(20,5) NOT NULL
  );


 INSERT INTO SALE_RECORD (CUSTOMER_IDD, CUSTOMER_NAME, CUSTOMER_PURCHASE, STORE_NAME, EMPLOYEE_NAME, PRODUCT_AMOUNT) VALUES
(1,'WILL','PURCHASE A','STORE A','JOHN',2000.00),
  (2,'JOHNSON','PURCHASE A','STORE A','JOHN',1300.00),
 (3,'STEVE ','PURCHASE B','STORE B','JOHN',10000.00),
 (4,'CONNOR','PURCHASE B','STORE B','JOHN',1200.00),
 (5,'JAMES','PURCHASE A','STORE A','JOHN',100.00),
 (6,'DAVID','PURCHASE B','STORE A','JOHN',2000.00),
 (7,'DANIEL','PURCHASE A','STORE B','JOHN',12000.00),
 (8,'JAMES','PURCHASE A','STORE A','JOHN',10.00),
 (9,'MICHAEL','PURCHASE B','STORE A','JOHN',12.00),
 (10,'ETHAN','PURCHASE B','STORE A','JOHN',120.00),
 (11,'GEORGE','PURCHASE B','STORE A','JOHN',100.00),
 (12,'NOAH','PURCHASE A','STORE A','JOHN',145.00),
 (13,'LIAM','PURCHASE A','STORE A','JOHN',120.00),
 (14,'WILL ','PURCHASE A','STORE A','JOHN',12.00),
 (15,'HARRY','PURCHASE A','STORE A','JOHN',2000.00),
 (16,'LOUIS','PURCHASE A','STORE A','JOHN',2000.00),
 (17,'ZAYN','PURCHASE A','STORE A','JOHN',1000.00),
 (18,'NIALL','PURCHASE A','STORE A','JOHN',1100.00),
 (19,'TAYLOR','PURCHASE A','STORE A','JOHN',1000.00),
 (20,'SELENA','PURCHASE A','STORE A','JOHN',1100.00),
 (21,'HAYLEY','PURCHASE A','STORE A','JOHN',11000.00),
 (22,'BELLA','PURCHASE B','STORE A','JOHN',110.00),
 (23,'GIGI','PURCHASE A','STORE A','JOHN',170.00),
 (24,'TOM','PURCHASE A','STORE A','JOHN',1900.00),
 (25,'NICK','PURCHASE A','STORE A','JOHN',1800.00),
 (26,'KAT','PURCHASE B','STORE B','JOHN',800.00),
 (27,'STEVEN','PURCHASE A','STORE A','JOHN',120000.00),
 (28,'TYLER','PURCHASE A','STORE A','JOHN',1300.00),
 (29,'MATT','PURCHASE B','STORE A','JOHN',1400.00),
 (30,'JEREMY','PURCHASE A','STORE B','JOHN',12000.00),
 (31,'KATHERINE','PURCHASE A','STORE A','JOHN',1500.00),
 (32,'ROSE','PURCHASE A','STORE A','JOHN',120.00),
 (33,'DAVEN','PURCHASE A','STORE A','JOHN',1200),
 (34,'KOL','PURCHASE A','STORE A','JOHN',11.00),
 (35,'KLAUS','PURCHASE A','STORE A','JOHN',2.00),
 (36,'STEFAN','PURCHASE C','STORE C','JOHN',1.00),
 (37,'LEXI','PURCHASE B','STORE A','JOHN',5.00),
 (38,'CAROLINE','PURCHASE A','STORE A','JOHN',7.00),
 (39,'ELIZABETH','PURCHASE A','STORE B','JOHN',8.00),
 (40,'ALARIC','PURCHASE A','STORE A','JOHN',9.00),
 (41,'DAMON','PURCHASE A','STORE A','JOHN',10.00),
 (42,'JESSE','PURCHASE A','STORE A','JOHN',178.00),
 (43,'ELENA','PURCHASE A','STORE A','JOHN',9000.00),
 (44,'JOSETTE','PURCHASE A','STORE A','JOHN',900.00),
 (45,'KAI','PURCHASE A','STORE A','JOHN',2000.00),
 (46,'CAROL','PURCHASE B','STORE B','JOHN',1200.00),
 (47,'REBEKAH','PURCHASE A','STORE A','JOHN',11000.00),
 (48,'HOPE','PURCHASE A','STORE A','JOHN',12.00),
 (49,'HAYLEY','PURCHASE A','STORE B','JOHN',2000.00),
 (50,'ELIJAH','PURCHASE A','STORE A','JOHN',2000.00);
 
 -- 10 HIGHEST PURCHASE AMOUNTS 
 SELECT * FROM SALE_RECORD WHERE PRODUCT_AMOUNT <=1000000
 LIMIT 10 ;
 -- COUNT OF RECORDS
 SELECT COUNT(CUSTOMER_IDD)
FROM SALE_RECORD ;
-- AVERAGE OF PRODUCT AMOUNT 
SELECT AVG(PRODUCT_AMOUNT)
FROM SALE_RECORD ;
-- MINIMUM AMOUNT OF PRODUCT
SELECT MIN(PRODUCT_AMOUNT)
FROM SALE_RECORD ;
-- MAXIMUM AMOUNT OF PRODUCT 
SELECT MAX(PRODUCT_AMOUNT)
FROM SALE_RECORD ;
-- SUM OF TOTAL PURCHAS AMOUNT
SELECT SUM(PRODUCT_AMOUNT)
FROM SALE_RECORD ;
-- TO FIND ANY DUPLICATES AND REMOVE IT 
SELECT DISTINCT STORE_NAME FROM SALE_RECORD ;
SELECT DISTINCT CUSTOMER_NAME FROM SALE_RECORD ;
SELECT DISTINCT PRODUCT_AMOUNT FROM SALE_RECORD ;
-- CUSTOMER NAMES WHO PURCHASED PRODUCTS COSTING MORE THAN 1000
SELECT * FROM SALE_RECORD 
WHERE PRODUCT_AMOUNT >= 1000 ;
update sale_record set customer_idd = 30 where customer_name = 'jeremy' ;
-- CREATING TABLE FOR INNER JOIN TO FIND SAME RECORDS 
CREATE TABLE SALE_ORDERSS 
(
 order_id int not null,
 customer_name varchar(45),
 purchase_name varchar(45),
 foreign key (order_id) references sale_record(customer_idd)
 );
 insert into sale_orderss (order_id, customer_name, purchase_name) values 
 (1,'jeremey','purchase a'),
 (2,'rebekah','purchase b'),
 (3,'damon','purchase c');
 -- finding same records 
 select * from sale_record
 inner join sale_orderss
 on sale_record.customer_name = sale_orderss.customer_name ;
 
 





--------------------------------------------------------------------------------------------------------------------------




 
 

 
 