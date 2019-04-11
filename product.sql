/*
-- Query: SELECT * FROM bamazon.product
LIMIT 0, 1000

-- Date: 2019-04-11 00:38
*/
CREATE DATABASE bamazon;
-- Use the "artists_and_songs" database --
USE bamazon;

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) 
ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO `bamazon`.`product` (`item_id`,`product_name`,`department_name`,`price`,`stock_quantity`) VALUES (1,'iphone5','cellphone',100,10);
INSERT INTO `bamazon`.`product` (`item_id`,`product_name`,`department_name`,`price`,`stock_quantity`) VALUES (2,'iphone6','cellphone',200,20);
INSERT INTO `bamazon`.`product` (`item_id`,`product_name`,`department_name`,`price`,`stock_quantity`) VALUES (3,'iphone6s','cellphone',300,30);
INSERT INTO `bamazon`.`product` (`item_id`,`product_name`,`department_name`,`price`,`stock_quantity`) VALUES (4,'iphone7','cellphone',400,40);
INSERT INTO `bamazon`.`product` (`item_id`,`product_name`,`department_name`,`price`,`stock_quantity`) VALUES (5,'iphonex','cellphone',500,50);
INSERT INTO `bamazon`.`product` (`item_id`,`product_name`,`department_name`,`price`,`stock_quantity`) VALUES (6,'macbook','laptop',600,40);
INSERT INTO `bamazon`.`product` (`item_id`,`product_name`,`department_name`,`price`,`stock_quantity`) VALUES (7,'macbookpro','laptop',700,30);
INSERT INTO `bamazon`.`product` (`item_id`,`product_name`,`department_name`,`price`,`stock_quantity`) VALUES (8,'macair','laptop',550,20);
INSERT INTO `bamazon`.`product` (`item_id`,`product_name`,`department_name`,`price`,`stock_quantity`) VALUES (9,'airpods','accessories',250,10);
INSERT INTO `bamazon`.`product` (`item_id`,`product_name`,`department_name`,`price`,`stock_quantity`) VALUES (10,'appletv','tv',300,5);
