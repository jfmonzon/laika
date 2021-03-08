# Tabla paramétrica
CREATE TABLE IF NOT EXISTS `customer` (
	`customer_id` TINYINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
	`customer_name`  VARCHAR(100) NOT NULL ,
	PRIMARY KEY (`customer_id`)
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

# Tabla de datos
CREATE TABLE IF NOT EXISTS `order` (
	`order_id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	`customer_id`  INT(5) NOT NULL ,
	`amount`  DOUBLE NOT NULL ,
	INDEX `customer` (`customer_id`),
	PRIMARY KEY (`order_id`)
)

ENGINE=InnoDB
;


INSERT INTO `customer` (`customer_id`, `customer_name`) VALUES
(1, 'Carlos'),
(2, 'Pedro'),
(3, 'Ana'),
(4, 'Sandra');
 
INSERT INTO `order` (`order_id`, `customer_id`, `amount`) VALUES
(1, 1, 19.99),
(2, 1, 35.15),
(3, 3, 17.56),
(4, 4, 12.34);