-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 29, 2026 at 02:25 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unibites`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookingdetails`
--

DROP TABLE IF EXISTS `tbl_bookingdetails`;
CREATE TABLE IF NOT EXISTS `tbl_bookingdetails` (
  `bookingdetails_id` int NOT NULL AUTO_INCREMENT,
  `bookingmaster_id` int NOT NULL,
  `food_id` int NOT NULL,
  `quantity` int NOT NULL,
  `amount` double NOT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`bookingdetails_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_bookingdetails`
--

INSERT INTO `tbl_bookingdetails` (`bookingdetails_id`, `bookingmaster_id`, `food_id`, `quantity`, `amount`, `id`) VALUES
(1, 1, 35, 1, 100, 22),
(2, 2, 20, 1, 50, 22),
(3, 3, 4, 2, 20, 22),
(4, 3, 16, 1, 110, 22),
(5, 4, 21, 1, 20, 22),
(6, 5, 22, 1, 50, 22),
(7, 5, 25, 1, 50, 22),
(8, 6, 33, 1, 50, 23),
(9, 7, 4, 10, 100, 22),
(10, 8, 34, 1, 70, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookingmaster`
--

DROP TABLE IF EXISTS `tbl_bookingmaster`;
CREATE TABLE IF NOT EXISTS `tbl_bookingmaster` (
  `bookingmaster_id` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `bookingdate` date NOT NULL,
  `type` varchar(30) NOT NULL,
  `actualamount` double NOT NULL,
  `consessionamount` double NOT NULL,
  `totalamount` double NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`bookingmaster_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_bookingmaster`
--

INSERT INTO `tbl_bookingmaster` (`bookingmaster_id`, `id`, `bookingdate`, `type`, `actualamount`, `consessionamount`, `totalamount`, `status`) VALUES
(1, 22, '2026-04-21', 'Online', 100, 0, 100, 'completed'),
(2, 22, '2026-04-21', 'Offline', 50, 0, 50, 'completed'),
(3, 22, '2026-04-21', 'Online', 130, 0, 130, 'completed'),
(4, 22, '2026-04-21', 'Offline', 20, 0, 20, 'completed'),
(5, 22, '2026-04-21', 'Offline', 100, 0, 100, 'completed'),
(6, 23, '2026-04-22', 'Online', 50, 0, 50, 'completed'),
(7, 22, '2026-04-22', 'Online', 100, 0, 100, 'completed'),
(8, 4, '2026-10-29', 'Offline', 70, 14, 56, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(1000) NOT NULL,
  `category_image` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_image`, `description`) VALUES
(1, 'Breakfast', 'images.jpeg', 'healthy'),
(2, 'Lunch', 'lunch.jpg', 'tasty'),
(3, 'Shakes', 'Shakes.jpg', 'sweet'),
(7, 'curry', 'curryy.jpeg', 'Kerala curry is a spicy and creamy dish from Kerala made with coconut and traditional spices, usually served with rice or bread.'),
(5, 'Fresh Juice', 'juice.jpg!w700wp', 'healthy'),
(6, 'Hot Drinks', 'hot drinks.jpg', 'tasty'),
(8, 'Snacks', 'snacks.jpeg', 'Kerala curry snack is a spicy, coconut-based side dish from Kerala, often served in small portions with snacks like parotta or appam.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_collegestaff`
--

DROP TABLE IF EXISTS `tbl_collegestaff`;
CREATE TABLE IF NOT EXISTS `tbl_collegestaff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(100) NOT NULL,
  `staff_photo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `staff_email` varchar(1000) NOT NULL,
  `staff_contact` bigint NOT NULL,
  `login_id` int NOT NULL,
  `reg_date` date NOT NULL,
  `status` varchar(1000) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_collegestaff`
--

INSERT INTO `tbl_collegestaff` (`staff_id`, `staff_name`, `staff_photo`, `staff_email`, `staff_contact`, `login_id`, `reg_date`, `status`) VALUES
(1, 'aswany miss', 'WIN_20260226_14_32_30_Pro.jpg', 'aswany22@gmail.com', 9746552223, 4, '2025-12-15', 'accepted'),
(4, 'Adeen', 'art_banner2.jpg', 'abhimanyunadh9947@gmail.com', 6282485386, 15, '2026-02-26', 'accepted'),
(5, 'Abhay Dev V', 'Ajay.jpeg', 'abhaydevv01@gmail.com', 7736511315, 17, '2026-03-01', 'accepted'),
(6, 'Adithyan PV', 'Cael Draven.jpg', 'adithyan01@gmail.com', 7736511315, 18, '2026-03-01', 'accepted'),
(7, 'Adithyan Shal', 'WIN_20260226_14_32_30_Pro.jpg', 'adithyanshal@gmail.com', 9854203568, 24, '2026-04-22', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

DROP TABLE IF EXISTS `tbl_event`;
CREATE TABLE IF NOT EXISTS `tbl_event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(30) NOT NULL,
  `event_poster` varchar(1000) NOT NULL,
  `event_date` date NOT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`event_id`, `event_name`, `event_poster`, `event_date`, `reg_date`) VALUES
(1, 'College day', 'collge day.png', '2026-04-26', '2026-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_eventfood`
--

DROP TABLE IF EXISTS `tbl_eventfood`;
CREATE TABLE IF NOT EXISTS `tbl_eventfood` (
  `eventfood_id` int NOT NULL AUTO_INCREMENT,
  `event_id` int NOT NULL,
  `food_name` varchar(100) NOT NULL,
  `food_image` varchar(1000) NOT NULL,
  `count` bigint NOT NULL,
  PRIMARY KEY (`eventfood_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_eventfood`
--

INSERT INTO `tbl_eventfood` (`eventfood_id`, `event_id`, `food_name`, `food_image`, `count`) VALUES
(1, 1, 'Biriyani', 'Biriyani.png', 1),
(2, 1, 'Fried Rice', 'Fried Rice.png', 0),
(3, 1, 'KuzhiMandhi', 'Kuzhimandhi.png', 3),
(4, 1, 'Meals with Fish Fry', 'meals with fish fry.png', 2),
(5, 1, 'Sadhya', 'Sadhya.png', 1),
(6, 4, 'Biriyani', 'Biriyani.png', 0),
(7, 4, 'Fried rice', 'Fried Rice.png', 2),
(8, 4, 'KuzhiMandhi', 'Kuzhimandhi.png', 2),
(9, 4, 'Meals with fish fry', 'meals with fish fry.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

DROP TABLE IF EXISTS `tbl_feedback`;
CREATE TABLE IF NOT EXISTS `tbl_feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `rating` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `customer_id` int NOT NULL,
  `feedback_date` date NOT NULL,
  `food_id` int NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`feedback_id`, `rating`, `description`, `customer_id`, `feedback_date`, `food_id`) VALUES
(1, '4', 'fff', 9, '2026-02-21', 2),
(3, '5', 'polii\n', 4, '2026-02-21', 3),
(4, '2', '', 4, '2026-03-13', 2),
(5, '3', 'd', 22, '2026-04-21', 16),
(6, '5', 'good', 23, '2026-04-22', 33);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

DROP TABLE IF EXISTS `tbl_food`;
CREATE TABLE IF NOT EXISTS `tbl_food` (
  `food_id` int NOT NULL AUTO_INCREMENT,
  `food_name` varchar(100) NOT NULL,
  `category_id` int NOT NULL,
  `food_image` varchar(1000) NOT NULL,
  `amount` double NOT NULL,
  `description` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`food_id`, `food_name`, `category_id`, `food_image`, `amount`, `description`, `status`, `quantity`) VALUES
(4, 'Dosa', 1, 'dosa.jpg', 10, 'A classic South Indian favorite, dosa is a thin, crispy crepe made from a fermented batter of rice and lentils. Light yet satisfying, it’s served hot with flavorful coconut chutney and aromatic sambar. Golden on the outside and soft inside, dosa is the perfect blend of crunch and comfort in every bite.', 'available', 85),
(3, 'Tea', 6, 'tea.jpg', 12, 'tasty', 'available', 179),
(5, 'Parotta', 1, 'poratta.jpeg', 10, 'A deliciously flaky and layered flatbread, Porotta is a beloved Kerala classic made from finely kneaded wheat flour and cooked to golden perfection on a hot griddle. Crispy on the outside and soft, stretchy inside, each layer pulls apart beautifully, making every bite rich and satisfying. Traditionally served hot with spicy curries or flavorful gravies, Porotta is a comforting and iconic dish that perfectly captures the taste of Kerala cuisine.', 'available', 94),
(6, 'Appam', 1, 'appam.webp', 10, 'Appam is a soft, lacy-edged rice pancake with a fluffy, spongy center, made from fermented rice batter and coconut. Light, airy, and mildly sweet, it pairs perfectly with creamy vegetable stew, egg curry, or chicken curry — making it a comforting and elegant Kerala breakfast favorite.', 'available', 100),
(7, 'Idli', 1, 'idalli.jpg', 8, 'Tasty', 'available', 100),
(8, 'Idiyappam', 1, 'iddiyappam.jpg', 8, 'Tasty', 'available', 92),
(10, 'Beef roast', 7, 'beef roast.png', 100, 'Kerala beef roast is a spicy, slow-cooked dish from Kerala made with beef, coconut slices, and aromatic spices, often served as a tasty snack or side.', 'available', 50),
(11, 'Chicken Curry', 7, 'chicken curry.jpg', 90, 'Kerala chicken curry is a flavorful, spicy dish from Kerala made with chicken, coconut, and traditional spices, often served with rice or bread.', 'available', 50),
(12, 'Chicken Fry', 7, 'chicken fry.png', 100, 'Kerala chicken fry is a crispy, spicy dish from Kerala made by marinating chicken with traditional spices and frying it until golden.', 'available', 50),
(13, 'Kadala Curry', 7, 'kadala curry.png', 30, 'Kadala curry is a spicy Kerala dish from Kerala made with black chickpeas, coconut, and aromatic spices, usually served with puttu or appam.', 'available', 50),
(14, 'Egg Curry', 7, 'egg curry.jpeg', 40, 'Kerala egg curry is a mildly spicy, coconut-based dish from Kerala made with boiled eggs and traditional spices, often served with appam or rice.', 'available', 50),
(15, 'Chocolate ', 3, 'chocalate.png', 90, 'Chocolate shake is a creamy, sweet drink made with milk, chocolate, and ice cream, served chilled.', 'available', 50),
(16, 'KitKat', 3, 'kitkat.png', 110, 'KitKat shake is a rich, chocolatey drink made by blending milk, ice cream, and KitKat, served chilled.', 'available', 48),
(17, 'Oreo', 3, 'oreo.png', 110, '**Oreo shake** is a thick, creamy drink made by blending milk, ice cream, and Oreo biscuits, served chilled.', 'available', 50),
(18, 'Pista', 3, 'pista.png', 80, 'Pista shake is a rich, creamy drink made with pistachios, milk, and ice cream, served chilled.', 'available', 50),
(19, 'Strawberry', 3, 'Strawberry.png', 80, 'Strawberry shake is a sweet, creamy drink made with fresh strawberries, milk, and ice cream, served chilled.', 'available', 50),
(20, 'Grape', 5, 'grappe.jpeg', 50, '**Grape juice** is a refreshing drink made from fresh grapes, lightly sweet and served chilled.', 'available', 49),
(21, 'Lime', 5, 'lime.png', 20, '**Lime juice** is a refreshing, tangy drink made from fresh lime, water, and sugar, served chilled.', 'available', 99),
(22, 'Orange', 5, 'orange.png', 50, '**Orange juice** is a fresh, tangy drink made from ripe oranges, served chilled.', 'available', 48),
(23, 'Pineapple', 5, 'pineapple.png', 40, '**Pineapple juice** is a sweet, tangy drink made from fresh pineapple, served chilled.', 'available', 99),
(24, 'Black Tea', 6, 'black tea.avif', 10, 'Black tea is a hot, strong beverage made by brewing tea leaves in water, served plain or with sugar.', 'available', 100),
(25, 'Cappuccino', 6, 'cappuccino.jpeg', 50, 'Cappuccino is a hot coffee made with espresso, steamed milk, and a layer of foam on top.', 'available', 49),
(26, 'Classic Chai', 6, 'chai.avif', 12, 'Chai is a hot, flavorful tea made by brewing tea with milk, sugar, and aromatic spices.', 'available', 100),
(27, 'Coffe', 6, 'coffe.avif', 20, 'Coffee is a hot, energizing drink made by brewing roasted coffee beans, served plain or with milk and sugar.', 'available', 100),
(28, 'Beef Burger', 8, 'beef burger.jpeg', 50, 'Beef burger is a juicy sandwich made with a grilled beef patty, served in a bun with vegetables and sauces.', 'available', 50),
(29, 'Chicken Burger', 8, 'chicken burger.jpeg', 50, 'Chicken burger is a tasty sandwich made with a crispy or grilled chicken patty, served in a bun with vegetables and sauces.', 'available', 50),
(30, 'Egg Puff', 8, 'egg puff.jpeg', 20, 'Egg puff is a flaky pastry filled with spiced egg, baked until golden and crispy.', 'available', 100),
(31, 'Neyyapam', 8, 'neyyapam.jpeg', 10, 'Neyyappam is a soft, sweet Kerala snack from Kerala made with rice flour, jaggery, and banana, fried in ghee.', 'available', 100),
(32, 'Chicken Cuttlet', 8, 'chicken cuttlet.jpeg', 20, 'Chicken cutlet is a crispy snack made with spiced minced chicken, coated with breadcrumbs and fried until golden.', 'available', 50),
(33, 'Meals', 2, 'meals.jpeg', 50, 'Meals is a traditional full platter from Kerala with rice, curries, vegetables, and sides, served as a complete meal.', 'available', 99),
(34, 'Kanji', 2, 'kanji.jpeg', 70, 'Kanji is a simple, comforting dish from Kerala made with rice porridge, usually served with pickles or side dishes.', 'available', 49),
(35, 'Fried Rice ', 2, 'fried rice.png', 100, 'Fried rice is a flavorful dish made by stir-frying cooked rice with vegetables, eggs, or meat, seasoned with sauces.', 'available', 48);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foodstock`
--

DROP TABLE IF EXISTS `tbl_foodstock`;
CREATE TABLE IF NOT EXISTS `tbl_foodstock` (
  `foodstock_id` int NOT NULL AUTO_INCREMENT,
  `food_id` int NOT NULL,
  `stock` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`foodstock_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_foodstock`
--

INSERT INTO `tbl_foodstock` (`foodstock_id`, `food_id`, `stock`, `date`) VALUES
(1, 1, 100, '2025-12-22'),
(2, 2, 100, '2026-01-29'),
(3, 1, 100, '2026-01-29'),
(4, 2, 200, '2026-01-29'),
(5, 3, 200, '2026-01-29'),
(6, 0, 500, '2026-02-06'),
(7, 2, 10, '2026-02-06'),
(8, 1, 0, '2026-02-06'),
(9, 2, 20, '2026-02-18'),
(10, 1, 10, '2026-02-19'),
(11, 4, 100, '2026-03-02'),
(12, 5, 100, '2026-03-02'),
(13, 6, 100, '2026-03-02'),
(14, 7, 100, '2026-03-02'),
(15, 8, 100, '2026-03-02'),
(16, 9, 100, '2026-03-02'),
(17, 10, 50, '2026-04-21'),
(18, 11, 50, '2026-04-21'),
(19, 12, 50, '2026-04-21'),
(20, 13, 50, '2026-04-21'),
(21, 14, 50, '2026-04-21'),
(22, 15, 50, '2026-04-21'),
(23, 16, 50, '2026-04-21'),
(24, 17, 50, '2026-04-21'),
(25, 18, 50, '2026-04-21'),
(26, 19, 50, '2026-04-21'),
(27, 20, 50, '2026-04-21'),
(28, 21, 100, '2026-04-21'),
(29, 22, 50, '2026-04-21'),
(30, 23, 100, '2026-04-21'),
(31, 24, 100, '2026-04-21'),
(32, 25, 50, '2026-04-21'),
(33, 26, 100, '2026-04-21'),
(34, 27, 100, '2026-04-21'),
(35, 28, 50, '2026-04-21'),
(36, 29, 50, '2026-04-21'),
(37, 30, 100, '2026-04-21'),
(38, 31, 100, '2026-04-21'),
(39, 32, 50, '2026-04-21'),
(40, 33, 100, '2026-04-21'),
(41, 34, 50, '2026-04-21'),
(42, 35, 50, '2026-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE IF NOT EXISTS `tbl_login` (
  `login_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(1000) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`login_id`, `username`, `password`, `role`, `status`, `email`) VALUES
(1, 'admin', 'admin', 'Admin', 'accepted', ''),
(12, 'josna', 'josna1', 'student', 'accepted', ''),
(4, 'aswany', 'aswany', 'staff', 'accepted', ''),
(10, 'adeen', 'adeen1', 'student', 'accepted', ''),
(11, 'josna', 'josna1', 'student', 'accepted', ''),
(8, 'ajaydev', 'ajay', 'student', 'accepted', ''),
(9, 'ajaydev', 'abhay', 'student', 'accepted', ''),
(13, 'mullerikrishnan', 'Mulleri@123', 'student', 'accepted', ''),
(14, 'adithyan', 'Aadhiser@123', 'staff', 'accepted', ''),
(15, 'admin1', 'admin1', 'staff', 'accepted', ''),
(16, 'Alan', 'Alan23', 'student', 'accepted', ''),
(17, 'abhay', 'abhay@2000', 'staff', 'accepted', ''),
(18, 'adithyan', 'adithyan@2006', 'staff', 'accepted', ''),
(19, 'alen', 'Alen@123', 'student', 'accepted', ''),
(20, 'alan', 'Alan@123', 'student', 'accepted', ''),
(21, 'Ajay', 'Ajaydev@123', 'student', 'accepted', 'ajaydevv20@gmail.com'),
(22, 'vishnu', 'vishnu@123', 'student', 'accepted', 'alen@gmail.com'),
(23, 'arya', 'arya@123', 'student', 'accepted', 'aryasreesst@gmail.com'),
(24, 'Adithyan', 'Adithyan@123', 'staff', 'accepted', 'adithyanshal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `bookingmaster_id` int NOT NULL,
  `paymentdate` date NOT NULL,
  `amount` double NOT NULL,
  `id` int NOT NULL,
  `status` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `bookingmaster_id`, `paymentdate`, `amount`, `id`, `status`, `type`) VALUES
(1, 1, '2026-04-21', 100, 22, 'completed', 'Online'),
(2, 3, '2026-04-21', 130, 22, 'completed', 'Online'),
(3, 6, '2026-04-22', 50, 23, 'completed', 'Online'),
(4, 7, '2026-04-22', 100, 22, 'completed', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

DROP TABLE IF EXISTS `tbl_student`;
CREATE TABLE IF NOT EXISTS `tbl_student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(30) NOT NULL,
  `student_photo` varchar(1000) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `student_contact` bigint NOT NULL,
  `login_id` int NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_photo`, `student_email`, `student_contact`, `login_id`, `date`, `status`) VALUES
(3, 'Adeen', 'landscaping.jpg', 'adeen@gmail.com', 77365132121, 10, '2026-02-25', 'accepted'),
(2, 'abhay', 'Cael Draven.jpg', 'alen@gmail.com', 9746221837, 9, '2026-01-06', 'accepted'),
(4, 'josna', 'oilpainting.jpg', 'josna@gmail.com', 7736511315, 11, '2026-02-25', 'accepted'),
(5, 'josnaa', 'realism.jpg', 'josnag481@gmail.com', 7736511315, 12, '2026-02-26', 'accepted'),
(6, 'Mulleri Krishnan', 'WIN_20260226_14_32_30_Pro.jpg', 'adithyank881@gmail.com', 6282485386, 13, '2026-02-26', 'accepted'),
(7, 'Alan John', '133986899056629813.jpg', 'abhimanyunadh9947@gmail.com', 9852036489, 16, '2026-02-26', 'accepted'),
(8, 'Alen john', 'Biriyani.png', 'alenjohn3000@gmail.com', 6282485386, 19, '2026-03-04', 'accepted'),
(9, 'alan sabu', 'collge day.png', 'alansabum05@gmail.com', 9747191575, 20, '2026-03-04', 'accepted'),
(10, 'Ajay dev', 'customer1.png', 'ajaydevv20@gmail.com', 7736511315, 21, '2026-03-09', 'accepted'),
(11, 'vishnu', 'unibites-logo.png', 'alen@gmail.com', 7736511315, 22, '2026-04-21', 'accepted'),
(12, 'Arya pradeep', 'ajaydev.jpeg', 'aryasreesst@gmail.com', 9605933868, 23, '2026-04-22', 'accepted');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
