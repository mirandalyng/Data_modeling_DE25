CREATE TABLE `Customer` (
  `customer_id` INTEGER PRIMARY KEY,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `adress` VARCHAR(100) NOT NULL
);

CREATE TABLE `Order` (
  `order_id` INTEGER PRIMARY KEY,
  `customer_id` INEGER NOT NULL,
  `order_date` TIMESTAMP NOT NULL
);

CREATE TABLE `OrderLine` (
  `orderline_id` INTEGER PRIMARY KEY COMMENT 'This is a surrogate key combinig order_id and product_id',
  `order_id` INTEGER NOT NULL,
  `product_id` INTEGER NOT NULL,
  `line_number` SMALLINT NOT NULL,
  `quantity` SMALLINT NOT NULL,
  `unit_price` NUMERIC(5,2) NOT NULL
);

CREATE TABLE `Product` (
  `product_id` INTEGER PRIMARY KEY,
  `product_name` TEXT NOT NULL,
  `current_price` NUMERIC(5,2) NOT NULL
);

CREATE UNIQUE INDEX `OrderLine_index_0` ON `OrderLine` (`order_id`, `line_number`);

ALTER TABLE `Product` COMMENT = 'buissnes rule: a product can exist without beiing in an Order';

ALTER TABLE `Order` ADD FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`);

ALTER TABLE `OrderLine` ADD FOREIGN KEY (`order_id`) REFERENCES `Order` (`order_id`);

ALTER TABLE `OrderLine` ADD FOREIGN KEY (`product_id`) REFERENCES `Product` (`product_id`);
