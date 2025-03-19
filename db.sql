>>>> Users:

CREATE TABLE `onlineshop`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT , 
    `name` VARCHAR(100) NOT NULL , 
    `email` VARCHAR(255) NOT NULL , 
    `password` VARCHAR(255) NOT NULL , 
    `phone` VARCHAR(255) NOT NULL , 
    `address` INT NOT NULL , 
    `role` ENUM('admin','user') NOT NULL , 
    PRIMARY KEY (`id`), UNIQUE (`email`)
    ) ENGINE = InnoDB;



>>>> Categories:

CREATE TABLE `onlineshop`.`categoriess` (
    `id` INT NOT NULL , 
    `name` VARCHAR(100) NOT NULL AUTO_INCREMENT , 
    UNIQUE (`name`)
    ) ENGINE = InnoDB;




>>>> Products:

CREATE TABLE `onlineshop`.`products` (
    `id` INT NOT NULL AUTO_INCREMENT , 
    `name` VARCHAR(255) NOT NULL , 
    `description` TEXT NOT NULL , 
    `price` INT NOT NULL , 
    `stock` INT NOT NULL , 
    `image` VARCHAR(255) NOT NULL , 
    `category_id` INT NOT NULL , 
    `category_name` VARCHAR(255) NOT NULL , 
    PRIMARY KEY (`id`)
    ) ENGINE = InnoDB;



>>>> Single_order:

CREATE TABLE `onlineshop`.`single_order` (
    `id` INT NOT NULL , `user_id` INT NOT NULL , 
    `total_amount` INT NOT NULL , 
    PRIMARY KEY (`id`)
    ) ENGINE = InnoDB;



>>>> Multiple_order:

CREATE TABLE `onlineshop`.`multiple_orders` (
    `id` INT NOT NULL AUTO_INCREMENT , 
    `user_id` INT NOT NULL , 
    `product_id` INT NOT NULL , 
    `quantity` INT NOT NULL , 
    `subtotal` INT NOT NULL , 
    PRIMARY KEY (`id`)
    ) ENGINE = InnoDB;



>>>> Payments:

CREATE TABLE `onlineshop`.`payments` (
    `payment_id` INT NOT NULL AUTO_INCREMENT , 
    `order_id` INT NOT NULL , 
    `payment_method` ENUM('cashon') NOT NULL , 
    PRIMARY KEY (`payment_id`)
    ) ENGINE = InnoDB;