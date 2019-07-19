-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2019 at 10:18 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `warung`
--
CREATE DATABASE IF NOT EXISTS `warung` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `warung`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customerID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL DEFAULT '',
  `lastName` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `phoneNumber` varchar(255) NOT NULL DEFAULT '',
  `addressLine1` varchar(255) NOT NULL DEFAULT '',
  `addressLine2` varchar(255) DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `postCode` varchar(255) NOT NULL DEFAULT '',
  `loyaltyPoints` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `firstName`, `lastName`, `email`, `password`, `phoneNumber`, `addressLine1`, `addressLine2`, `city`, `postCode`, `loyaltyPoints`) VALUES
(1, 'admin', 'admin', 'd@gmail.com', 'admin', '', '', '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE IF NOT EXISTS `ingredient` (
  `ingredientID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ingredientName` varchar(255) NOT NULL DEFAULT '',
  `extraPrice` float DEFAULT NULL,
  PRIMARY KEY (`ingredientID`),
  UNIQUE KEY `ingredientName` (`ingredientName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`ingredientID`, `ingredientName`, `extraPrice`) VALUES
(1, 'Tomato Sauce', 1.99),
(2, 'Mozzarella Cheese', 1.99),
(3, 'Salami', 1.99),
(4, 'Pepperoni', 1.99),
(5, 'Parma Ham', 1.99),
(6, 'Ham', 1.99),
(7, 'Bacon', 1.99),
(8, 'Chicken', 1.99),
(9, 'Beef', 1.99),
(10, 'Spicy Beef', 1.99),
(11, 'Chorizo', 1.99),
(12, 'Rocket', 1.99),
(13, 'Mushrooms', 1.99),
(14, 'Mascarpone Cheese', 1.99),
(15, 'Ricota Cheese', 1.99),
(16, 'Cheddar Cheese', 1.99),
(17, 'Emmenthal Cheese', 1.99),
(18, 'Onions', 1.99),
(19, 'Red Onions', 1.99),
(20, 'Red Pepper', 1.99),
(21, 'Green Pepper', 1.99),
(22, 'Jalepeno', 1.99),
(23, 'Green Chilli', 1.99),
(24, 'Olives', 1.99),
(25, 'Black Olives', 1.99),
(26, 'Sundried Tomato', 1.99),
(27, 'Sweetcorn', 1.99),
(28, 'Garlic', 1.99),
(29, 'Potato', 1.99),
(30, 'Asparagus', 1.99),
(31, 'Pesto Sauce', 1.99),
(32, 'Pineapple', 1.99),
(33, 'Artichoke', 1.99),
(34, 'Aubergine', 1.99),
(35, 'Gem Lettuce', 1.99),
(36, 'Tomato', 1.99),
(37, 'Gherkins', 1.99),
(38, 'Vegetable Patty', 1.99),
(39, 'Sweet Potato', 1.99),
(40, 'Mixed Leaves', 1.99),
(41, 'Feta Cheese', 1.99),
(42, 'Olive Oil', 1.99),
(43, 'Fried Egg', 1.99),
(44, 'Spinach', 1.99),
(45, 'BBQ Sauce', NULL),
(46, 'Ketchup', NULL),
(47, 'Mayonnaise', NULL),
(48, 'Garlic Mayonnaise', NULL),
(49, 'Mustard', NULL),
(50, 'Coke', NULL),
(51, 'Diet Coke', NULL),
(52, 'Fanta', NULL),
(53, 'Sprite', NULL),
(54, 'Mineral Water', NULL),
(55, 'Sparkling Water', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE IF NOT EXISTS `menuitem` (
  `itemID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) NOT NULL DEFAULT '',
  `itemCategory` enum('Pizza','Burger','Sides','Dips','Drinks') NOT NULL DEFAULT 'Pizza',
  `price` decimal(10,2) unsigned NOT NULL,
  PRIMARY KEY (`itemID`),
  UNIQUE KEY `itemName` (`itemName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`itemID`, `itemName`, `itemCategory`, `price`) VALUES
(1, 'Margherita Pizza', 'Pizza', '6.95'),
(2, 'Salami Pizza', 'Pizza', '7.95'),
(3, 'Parma Nova Pizza', 'Pizza', '8.25'),
(4, 'Ortolana Pizza', 'Pizza', '8.25'),
(5, 'Arrabiatta Pizza', 'Pizza', '7.95'),
(6, 'Calzone (Folded Pizza)', 'Pizza', '9.95'),
(7, 'Carne Pizza', 'Pizza', '8.25'),
(8, 'Chorizo Tondo Pizza', 'Pizza', '8.25'),
(9, 'Pollo Pesto Pizza', 'Pizza', '7.95'),
(10, 'Tropicale Pizza', 'Pizza', '7.95'),
(11, 'Vegeteriana Pizza', 'Pizza', '7.95'),
(12, 'Classic Burger', 'Burger', '4.75'),
(13, 'Cheese Burger', 'Burger', '5.25'),
(14, 'Chicken Burger', 'Burger', '4.95'),
(15, 'Bacon Burger', 'Burger', '5.25'),
(16, 'Veggie Burger', 'Burger', '5.25'),
(17, 'Fries', 'Sides', '1.95'),
(18, 'Cheesy Fries', 'Sides', '2.95'),
(19, 'Sweet Potato Fries', 'Sides', '2.95'),
(20, 'Onion Rings', 'Sides', '2.15'),
(21, 'Chicken Nuggets', 'Sides', '3.45'),
(22, 'Mediterannean Salad', 'Sides', '4.75'),
(23, 'BBQ Sauce', 'Dips', '0.59'),
(24, 'Ketchup', 'Dips', '0.59'),
(25, 'Mayonnaise', 'Dips', '0.59'),
(26, 'Garlic Mayonnaise', 'Dips', '0.59'),
(27, 'Mustard', 'Dips', '0.59'),
(28, 'Coke Can - 330ml', 'Drinks', '1.10'),
(29, 'Coke Bottle - 1.5l', 'Drinks', '2.25'),
(30, 'Diet Coke Can - 330ml', 'Drinks', '1.10'),
(31, 'Diet Coke Bottle - 1.5l', 'Drinks', '2.25'),
(32, 'Fanta Can - 330ml', 'Drinks', '1.10'),
(33, 'Fanta Bottle - 1.5l', 'Drinks', '2.25'),
(34, 'Sprite Can - 330ml', 'Drinks', '1.10'),
(35, 'Sprite Bottle - 1.5l', 'Drinks', '2.25'),
(36, 'Mineral Water Bottle - 330ml', 'Drinks', '1.10'),
(37, 'Sparkling Water Bottle - 1.5l', 'Drinks', '1.10');

-- --------------------------------------------------------

--
-- Table structure for table `menuitemrequirement`
--

CREATE TABLE IF NOT EXISTS `menuitemrequirement` (
  `ingredientRequirementID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) DEFAULT '',
  `ingredientName` varchar(255) DEFAULT '',
  PRIMARY KEY (`ingredientRequirementID`),
  KEY `theItem` (`itemName`),
  KEY `theIngredient` (`ingredientName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `menuitemrequirement`
--

INSERT INTO `menuitemrequirement` (`ingredientRequirementID`, `itemName`, `ingredientName`) VALUES
(1, 'Margherita Pizza', 'Tomato Sauce'),
(2, 'Margherita Pizza', 'Mozzarella Cheese'),
(3, 'Salami Pizza', 'Tomato Sauce'),
(4, 'Salami Pizza', 'Mozzarella Cheese'),
(5, 'Salami Pizza', 'Salami'),
(6, 'Salami Pizza', 'Rocket'),
(7, 'Parma Nova Pizza', 'Tomato Sauce'),
(8, 'Parma Nova Pizza', 'Mozzarella Cheese'),
(9, 'Parma Nova Pizza', 'Parma Ham'),
(10, 'Parma Nova Pizza', 'Mushrooms'),
(11, 'Parma Nova Pizza', 'Mascarpone Cheese'),
(12, 'Parma Nova Pizza', 'Rocket'),
(13, 'Ortolana Pizza', 'Tomato Sauce'),
(14, 'Ortolana Pizza', 'Mozzarella Cheese'),
(15, 'Ortolana Pizza', 'Onions'),
(16, 'Ortolana Pizza', 'Mushrooms'),
(17, 'Ortolana Pizza', 'Spinach'),
(18, 'Ortolana Pizza', 'Sweetcorn'),
(19, 'Ortolana Pizza', 'Rocket'),
(20, 'Arrabiatta Pizza', 'Tomato Sauce'),
(21, 'Arrabiatta Pizza', 'Mozzarella Cheese'),
(22, 'Arrabiatta Pizza', 'Red Onions'),
(23, 'Arrabiatta Pizza', 'Red Pepper'),
(24, 'Arrabiatta Pizza', 'Green Pepper'),
(25, 'Arrabiatta Pizza', 'Beef'),
(26, 'Arrabiatta Pizza', 'Jalepeno'),
(27, 'Calzone (Folded Pizza)', 'Tomato Sauce'),
(28, 'Calzone (Folded Pizza)', 'Mozzarella Cheese'),
(29, 'Calzone (Folded Pizza)', 'Pepperoni'),
(30, 'Calzone (Folded Pizza)', 'Mushrooms'),
(31, 'Calzone (Folded Pizza)', 'Olives'),
(32, 'Calzone (Folded Pizza)', 'Garlic'),
(33, 'Carne Pizza', 'Tomato Sauce'),
(34, 'Carne Pizza', 'Mozzarella Cheese'),
(35, 'Carne Pizza', 'Ham'),
(36, 'Carne Pizza', 'Pepperoni'),
(37, 'Carne Pizza', 'Bacon'),
(38, 'Carne Pizza', 'Chicken'),
(39, 'Carne Pizza', 'Spicy Beef'),
(40, 'Chorizo Tondo Pizza', 'Tomato Sauce'),
(41, 'Chorizo Tondo Pizza', 'Mozzarella Cheese'),
(42, 'Chorizo Tondo Pizza', 'Chorizo'),
(43, 'Chorizo Tondo Pizza', 'Sundried Tomato'),
(44, 'Chorizo Tondo Pizza', 'Green Chilli'),
(45, 'Chorizo Tondo Pizza', 'Black Olives'),
(46, 'Chorizo Tondo Pizza', 'Ricota Cheese'),
(47, 'Chorizo Tondo Pizza', 'Red Onions'),
(48, 'Chorizo Tondo Pizza', 'Rocket'),
(49, 'Pollo Pesto Pizza', 'Tomato Sauce'),
(50, 'Pollo Pesto Pizza', 'Mozzarella Cheese'),
(51, 'Pollo Pesto Pizza', 'Chicken'),
(52, 'Pollo Pesto Pizza', 'Potato'),
(53, 'Pollo Pesto Pizza', 'Asparagus'),
(54, 'Pollo Pesto Pizza', 'Pesto Sauce'),
(55, 'Tropicale Pizza', 'Tomato Sauce'),
(56, 'Tropicale Pizza', 'Mozzarella Cheese'),
(57, 'Tropicale Pizza', 'Ham'),
(58, 'Tropicale Pizza', 'Pineapple'),
(59, 'Vegeteriana Pizza', 'Tomato Sauce'),
(60, 'Vegeteriana Pizza', 'Mozzarella Cheese'),
(61, 'Vegeteriana Pizza', 'Artichoke'),
(62, 'Vegeteriana Pizza', 'Red Onions'),
(63, 'Vegeteriana Pizza', 'Red Pepper'),
(64, 'Vegeteriana Pizza', 'Green Pepper'),
(65, 'Vegeteriana Pizza', 'Aubergine'),
(66, 'Classic Burger', 'Beef'),
(67, 'Classic Burger', 'Gem Lettuce'),
(68, 'Classic Burger', 'Tomato'),
(69, 'Classic Burger', 'Gherkins'),
(70, 'Classic Burger', 'Red Onions'),
(71, 'Classic Burger', 'Mayonnaise'),
(72, 'Cheese Burger', 'Beef'),
(73, 'Cheese Burger', 'Emmenthal Cheese'),
(74, 'Cheese Burger', 'Cheddar Cheese'),
(75, 'Cheese Burger', 'Gem Lettuce'),
(76, 'Cheese Burger', 'Tomato'),
(77, 'Cheese Burger', 'Gherkins'),
(78, 'Cheese Burger', 'Red Onions'),
(79, 'Cheese Burger', 'Mayonnaise'),
(80, 'Chicken Burger', 'Chicken'),
(81, 'Chicken Burger', 'Gem Lettuce'),
(82, 'Chicken Burger', 'Cheddar Cheese'),
(83, 'Chicken Burger', 'Tomato'),
(84, 'Chicken Burger', 'Gherkins'),
(85, 'Chicken Burger', 'Red Onions'),
(86, 'Chicken Burger', 'Mayonnaise'),
(87, 'Bacon Burger', 'Beef'),
(88, 'Bacon Burger', 'Bacon'),
(89, 'Bacon Burger', 'Tomato'),
(90, 'Bacon Burger', 'Gherkins'),
(91, 'Bacon Burger', 'Red Onions'),
(92, 'Bacon Burger', 'Mayonnaise'),
(93, 'Veggie Burger', 'Vegetable Patty'),
(94, 'Veggie Burger', 'Gem Lettuce'),
(95, 'Veggie Burger', 'Tomato'),
(96, 'Veggie Burger', 'Red Pepper'),
(97, 'Veggie Burger', 'Green Pepper'),
(98, 'Veggie Burger', 'Mayonnaise'),
(99, 'Fries', 'Potato'),
(100, 'Cheesy Fries', 'Potato'),
(101, 'Cheesy Fries', 'Mozzarella Cheese'),
(102, 'Sweet Potato Fries', 'Sweet Potato'),
(103, 'Onion Rings', 'Onions'),
(104, 'Chicken Nuggets', 'Chicken'),
(105, 'Mediterannean Salad', 'Mixed Leaves'),
(106, 'Mediterannean Salad', 'Red Pepper'),
(107, 'Mediterannean Salad', 'Feta Cheese'),
(108, 'Mediterannean Salad', 'Black Olives'),
(109, 'Mediterannean Salad', 'Sundried Tomato'),
(110, 'Mediterannean Salad', 'Olive Oil'),
(111, 'BBQ Sauce', 'BBQ Sauce'),
(112, 'Ketchup', 'Ketchup'),
(113, 'Mayonnaise', 'Mayonnaise'),
(114, 'Garlic Mayonnaise', 'Garlic Mayonnaise'),
(115, 'Mustard', 'Mustard'),
(116, 'Coke Can - 330ml', 'Coke'),
(117, 'Coke Bottle - 1.5l', 'Coke'),
(118, 'Diet Coke Can - 330ml', 'Diet Coke'),
(119, 'Diet Coke Bottle - 1.5l', 'Diet Coke'),
(120, 'Fanta Can - 330ml', 'Fanta'),
(121, 'Fanta Bottle - 1.5l', 'Fanta'),
(122, 'Sprite Can - 330ml', 'Sprite'),
(123, 'Sprite Bottle - 1.5l', 'Sprite'),
(124, 'Mineral Water Bottle - 330ml', 'Mineral Water'),
(125, 'Sparkling Water Bottle - 1.5l', 'Sparkling Water');

-- --------------------------------------------------------

--
-- Table structure for table `menuitemsize`
--

CREATE TABLE IF NOT EXISTS `menuitemsize` (
  `sizeID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sizeInfo` varchar(255) NOT NULL DEFAULT '',
  `sizeCategory` enum('Pizza','Burger','Sides','Dips','Drinks') NOT NULL DEFAULT 'Pizza',
  `price` float unsigned NOT NULL,
  PRIMARY KEY (`sizeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menuitemsize`
--

INSERT INTO `menuitemsize` (`sizeID`, `sizeInfo`, `sizeCategory`, `price`) VALUES
(1, 'Small (9")', 'Pizza', 0),
(2, 'Medium (12")', 'Pizza', 1.99),
(3, 'Large (15")', 'Pizza', 1.99),
(4, 'Single', 'Burger', 0),
(5, 'Double', 'Burger', 1.99),
(6, 'Standard', 'Sides', 0),
(7, 'Standard', 'Dips', 0),
(8, 'Standard', 'Drinks', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE IF NOT EXISTS `orderitems` (
  `orderID` int(11) unsigned NOT NULL,
  `itemID` int(11) unsigned NOT NULL,
  `sizeID` int(11) unsigned NOT NULL,
  `extraID` int(11) unsigned DEFAULT NULL,
  `itemQuantity` int(11) unsigned NOT NULL,
  PRIMARY KEY (`orderID`,`itemID`),
  KEY `orderedItem` (`itemID`),
  KEY `orderedSize` (`sizeID`),
  KEY `orderedExtra` (`extraID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`orderID`, `itemID`, `sizeID`, `extraID`, `itemQuantity`) VALUES
(1, 1, 2, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customerID` int(11) unsigned NOT NULL,
  `orderDate` date NOT NULL,
  `orderTime` time NOT NULL,
  `orderType` enum('Delivery','Collection') NOT NULL DEFAULT 'Delivery',
  `additionalRequirements` varchar(255) DEFAULT NULL,
  `orderStatus` enum('Ordered','Preparing','Cooking','Out for Delivery','Delivered') NOT NULL DEFAULT 'Ordered',
  `staffID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `theCustomer` (`customerID`),
  KEY `allocatedStaff` (`staffID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `orderDate`, `orderTime`, `orderType`, `additionalRequirements`, `orderStatus`, `staffID`) VALUES
(1, 1, '2019-07-19', '08:04:34', 'Delivery', 'tambah kecap ', 'Out for Delivery', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `reviewID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderID` int(11) unsigned NOT NULL,
  `customerID` int(11) unsigned NOT NULL,
  `itemID` int(11) unsigned NOT NULL,
  `rating` enum('1','2','3','4','5') DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `staffID` int(11) unsigned DEFAULT NULL,
  `staffResponse` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`reviewID`),
  KEY `orderToReview` (`orderID`),
  KEY `customerReview` (`customerID`),
  KEY `reviewedItem` (`itemID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewID`, `orderID`, `customerID`, `itemID`, `rating`, `description`, `staffID`, `staffResponse`) VALUES
(1, 1, 1, 1, '4', 'mantul', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staffID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `staffType` enum('Worker','Manager') NOT NULL DEFAULT 'Worker',
  `firstName` varchar(255) NOT NULL DEFAULT '',
  `lastName` varchar(255) NOT NULL DEFAULT '',
  `dateofBirth` date NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `phoneNumber` varchar(255) NOT NULL DEFAULT '',
  `addressLine1` varchar(255) NOT NULL DEFAULT '',
  `addressLine2` varchar(255) DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `postCode` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`staffID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `staffType`, `firstName`, `lastName`, `dateofBirth`, `email`, `username`, `password`, `phoneNumber`, `addressLine1`, `addressLine2`, `city`, `postCode`) VALUES
(1, 'Manager', 'Ali', 'Tavakoli', '1955-03-23', 'dimas@gmail.com', 'ATavakoli', 'Hello1234', '', '', '', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menuitemrequirement`
--
ALTER TABLE `menuitemrequirement`
  ADD CONSTRAINT `theIngredient` FOREIGN KEY (`ingredientName`) REFERENCES `ingredient` (`ingredientName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `theItem` FOREIGN KEY (`itemName`) REFERENCES `menuitem` (`itemName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderedExtra` FOREIGN KEY (`extraID`) REFERENCES `ingredient` (`ingredientID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orderedItem` FOREIGN KEY (`itemID`) REFERENCES `menuitem` (`itemID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orderedSize` FOREIGN KEY (`sizeID`) REFERENCES `menuitemsize` (`sizeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `theOrderID` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `allocatedStaff` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `theCustomer` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `customerReview` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orderToReview` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewedItem` FOREIGN KEY (`itemID`) REFERENCES `menuitem` (`itemID`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;