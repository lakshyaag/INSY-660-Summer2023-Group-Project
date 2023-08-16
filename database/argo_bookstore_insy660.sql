-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2023 at 09:23 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `argo_bookstore_insy660`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantityInStock` int(11) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookID`, `title`, `author`, `genre`, `price`, `quantityInStock`, `short_description`, `publisher`) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', '10.99', 20, 'Classic novel about the American Dream', 'Scribner'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', '7.99', 15, 'A timeless tale of racial injustice', 'HarperCollins'),
(3, '1984', 'George Orwell', 'Sci-Fi', '8.99', 30, 'Dystopian vision of a totalitarian future', 'Penguin Books'),
(4, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', '6.99', 10, 'A coming-of-age story of a teenage boy', 'Little, Brown and Company'),
(5, 'Pride and Prejudice', 'Jane Austen', 'Romance', '9.99', 25, 'A story of love, class, and social norms', 'Penguin Classics'),
(6, 'Moby-Dick', 'Herman Melville', 'Adventure', '11.99', 5, 'Epic adventure of a man and a whale', 'Harper & Brothers'),
(7, 'War and Peace', 'Leo Tolstoy', 'Historical', '12.99', 12, 'Historical saga set against the backdrop of war', 'Wordsworth Editions'),
(8, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', '10.99', 18, 'Enchanting journey in a fantasy world', 'Houghton Mifflin'),
(9, 'Ulysses', 'James Joyce', 'Modernist', '13.99', 7, 'Complex modernist masterpiece', 'Sylvia Beach Editions'),
(10, 'The Odyssey', 'Homer', 'Epic', '14.99', 9, 'Ancient Greek epic of Odysseus\'s journey', 'Penguin Classics'),
(11, 'The Iliad', 'Homer', 'Epic', '14.99', 8, 'Homer\'s epic poem of the Trojan War', 'Penguin Classics'),
(12, 'Don Quixote', 'Miguel de Cervantes', 'Adventure', '11.99', 6, 'Misadventures of a delusional knight', 'Harper & Brothers'),
(13, 'The Divine Comedy', 'Dante Alighieri', 'Epic', '13.99', 7, 'Allegorical journey through the afterlife', 'Penguin Classics'),
(14, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'Philosophical', '12.99', 12, 'Exploration of faith, doubt, and morality', 'Farrar, Straus and Giroux'),
(15, 'Anna Karenina', 'Leo Tolstoy', 'Realistic Fiction', '10.99', 18, 'A tragic love story in 19th century Russia', 'Penguin Classics'),
(16, 'The Adventures of Huckleberry Finn', 'Mark Twain', 'Adventure', '9.99', 25, 'A river journey of freedom and friendship', 'Chatto & Windus'),
(17, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', '15.99', 30, 'Epic fantasy quest to destroy the One Ring', 'Allen & Unwin'),
(18, 'The Count of Monte Cristo', 'Alexandre Dumas', 'Adventure', '10.99', 20, 'Tale of betrayal, revenge, and redemption', 'Penguin Classics'),
(19, 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'Magical Realism', '11.99', 15, 'Multigenerational tale in a magical world', 'Harper & Row'),
(20, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Philosophical', '8.99', 10, 'Portrait of vanity, morality, and corruption', 'Lippincott\'s Monthly Magazine'),
(21, 'The Scarlet Letter', 'Nathaniel Hawthorne', 'Historical', '9.99', 12, 'Puritan society\'s impact on an adulteress', 'Ticknor, Reed & Fields'),
(22, 'The Grapes of Wrath', 'John Steinbeck', 'Historical', '10.99', 15, 'Depiction of the Great Depression\'s hardships', 'The Viking Press'),
(23, 'The Old Man and the Sea', 'Ernest Hemingway', 'Adventure', '8.99', 20, 'A simple yet profound story of an old fisherman', 'Charles Scribner\'s Sons'),
(24, 'The Metamorphosis', 'Franz Kafka', 'Philosophical', '7.99', 25, 'A man\'s transformation into an insect', 'Kurt Wolff Verlag'),
(25, 'The Trial', 'Franz Kafka', 'Philosophical', '9.99', 30, 'Trial of a man caught in an absurd legal system', 'Schocken Books'),
(26, 'The Stranger', 'Albert Camus', 'Philosophical', '10.99', 35, 'Exploration of existential alienation', 'Éditions Gallimard'),
(27, 'The Plague', 'Albert Camus', 'Philosophical', '11.99', 40, 'A town\'s struggle with a deadly epidemic', 'Hamish Hamilton'),
(28, 'The Fall', 'Albert Camus', 'Philosophical', '12.99', 45, 'Inner monologue on guilt and morality', 'Alfred A. Knopf'),
(29, 'The Rebel', 'Albert Camus', 'Philosophical', '13.99', 50, 'Philosophical analysis of rebellion', 'Vintage Books'),
(30, 'The Myth of Sisyphus', 'Albert Camus', 'Philosophical', '14.99', 55, 'Existential essay on the absurdity of life', 'Gallimard'),
(31, 'The Sun Also Rises', 'Ernest Hemingway', 'Adventure', '9.99', 60, 'Expatriates\' experiences in post-WWI Europe', 'Scribner\'s'),
(32, 'A Farewell to Arms', 'Ernest Hemingway', 'Adventure', '10.99', 65, 'Love and war during World War I', 'Charles Scribner\'s Sons'),
(33, 'For Whom the Bell Tolls', 'Ernest Hemingway', 'Adventure', '11.99', 70, 'An American\'s involvement in the Spanish Civil War', 'Charles Scribner\'s Sons'),
(34, 'The Old Man and the Sea', 'Ernest Hemingway', 'Adventure', '12.99', 75, 'A relentless battle between an old man and a marlin', 'Charles Scribner\'s Sons'),
(35, 'To Have and Have Not', 'Ernest Hemingway', 'Adventure', '13.99', 80, 'Hemingway\'s only full-length novel set in the US', 'Charles Scribner\'s Sons'),
(36, 'The Snows of Kilimanjaro', 'Ernest Hemingway', 'Adventure', '14.99', 85, 'Short stories reflecting on life and death', 'Charles Scribner\'s Sons'),
(37, 'The Short Happy Life of Francis Macomber', 'Ernest Hemingway', 'Adventure', '9.99', 90, 'Hunting trip\'s tragic turn for an American couple', 'Scribner\'s Magazine'),
(38, 'The Killers', 'Ernest Hemingway', 'Adventure', '10.99', 95, 'Two hitmen and their unexpected encounter', 'Scribner\'s Magazine'),
(39, 'Hills Like White Elephants', 'Ernest Hemingway', 'Adventure', '11.99', 100, 'A couple\'s poignant conversation on a train', 'Grafton'),
(40, 'The Undefeated', 'Ernest Hemingway', 'Adventure', '12.99', 105, 'Courageous bullfighting portrayal', 'Scribner\'s Magazine'),
(41, 'In Another Country', 'Ernest Hemingway', 'Adventure', '13.99', 110, 'A breakup\'s emotional aftermath', 'Paris Editions'),
(42, 'The End of Something', 'Ernest Hemingway', 'Adventure', '14.99', 115, 'Friends\' reflections on a broken relationship', 'Paris Editions'),
(43, 'The Three-Day Blow', 'Ernest Hemingway', 'Adventure', '9.99', 120, 'A weekend of drinking and introspection', 'Paris Editions'),
(44, 'The Battler', 'Ernest Hemingway', 'Adventure', '10.99', 125, 'A former boxer\'s encounter with a famous author', 'Paris Editions'),
(45, 'The Big Two-Hearted River', 'Ernest Hemingway', 'Adventure', '11.99', 130, 'A man\'s rejuvenating camping trip', 'Paris Editions'),
(46, 'The Light of the World', 'Ernest Hemingway', 'Adventure', '12.99', 135, 'A boxer\'s challenging fight in the ring', 'Paris Editions'),
(47, 'God Rest You Merry, Gentlemen', 'Ernest Hemingway', 'Adventure', '13.99', 140, 'A bullfighter\'s tale of redemption', 'Paris Editions'),
(48, 'The Sea Change', 'Ernest Hemingway', 'Adventure', '14.99', 145, 'A sea captain\'s transformation', 'Paris Editions'),
(49, 'A Clean, Well-Lighted Place', 'Ernest Hemingway', 'Adventure', '9.99', 150, 'Existential musings in a café', 'Paris Editions'),
(50, 'The Capital of the World', 'Ernest Hemingway', 'Adventure', '10.99', 155, 'An emotional tale of a father and son', 'Paris Editions');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `firstName`, `lastName`, `email`, `phone`, `address`) VALUES
(1001, 'John', 'Doe', 'johndoe@example.com', '123-456-7890', '123 Main St, Cityville, ABC123'),
(1002, 'Jane', 'Smith', 'janesmith@example.com', '234-567-8901', '456 Elm St, Townsville, DEF456'),
(1003, 'James', 'Brown', 'jamesbrown@example.com', '345-678-9012', '789 Oak St, Villagetown, GHI789'),
(1004, 'Emily', 'Johnson', 'emilyjohnson@example.com', '456-789-0123', '101 Maple Ave, Countryside, JKL012'),
(1005, 'Michael', 'Williams', 'michaelwilliams@example.com', '567-890-1234', '202 Pine Rd, Hamletville, MNO345'),
(1006, 'Elizabeth', 'Taylor', 'elizabethtaylor@example.com', '678-901-2345', '303 Cedar Ln, Suburbia, PQR678'),
(1007, 'David', 'Jones', 'davidjones@example.com', '789-012-3456', '404 Birch Blvd, Townville, STU901'),
(1008, 'Jennifer', 'Miller', 'jennifermiller@example.com', '890-123-4567', '505 Walnut Cres, Urbanville, VWX123'),
(1009, 'Robert', 'Davis', 'robertdavis@example.com', '901-234-5678', '606 Spruce Ct, Metroville, YZA234'),
(1010, 'Linda', 'Garcia', 'lindagarcia@example.com', '012-345-6789', '707 Oak Lane, Cityburg, BCD345'),
(1011, 'William', 'Smith', 'williamsmith@example.com', '123-456-7890', '808 Elm St, Townsville, EFG456'),
(1012, 'Susan', 'Johnson', 'susanjohnson@example.com', '234-567-8901', '909 Oak St, Villagetown, HIJ567'),
(1013, 'Charles', 'Williams', 'charleswilliams@example.com', '345-678-9012', '1011 Maple Ave, Countryside, KLM678'),
(1014, 'Amanda', 'Jones', 'amandajones@example.com', '456-789-0123', '1112 Pine Rd, Hamletville, NOP789'),
(1015, 'Thomas', 'Brown', 'thomasbrown@example.com', '567-890-1234', '1213 Cedar Ln, Suburbia, QRS890'),
(1016, 'Sarah', 'Davis', 'sarahdavis@example.com', '678-901-2345', '1314 Birch Blvd, Townville, TUV901'),
(1017, 'Michael', 'Miller', 'michaelmiller@example.com', '789-012-3456', '1415 Walnut Cres, Urbanville, UVW012'),
(1018, 'Michelle', 'Garcia', 'michellegarcia@example.com', '890-123-4567', '1516 Spruce Ct, Metroville, WXY123'),
(1019, 'James', 'Anderson', 'jamesanderson@example.com', '901-234-5678', '1617 Oak Lane, Cityburg, XYZ234'),
(1020, 'Patricia', 'Moore', 'patriciamoore@example.com', '012-345-6789', '1718 Maple St, Countryside, YZA345'),
(1021, 'Lakshya', 'Agarwal', 'lakshyaag@icloud.com', '5142586712', '1430 Rue City Councillors, Montreal, QC');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `bookID` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `pickupDate` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `bookID`, `orderDate`, `pickupDate`, `status`) VALUES
(1, 1001, 5, '2023-08-10', '2023-08-12', 'In Transit'),
(2, 1003, 17, '2023-08-11', '2023-08-14', 'Awaiting Pickup'),
(3, 1006, 10, '2023-08-12', '2023-08-15', 'Completed'),
(4, 1010, 24, '2023-08-13', '2023-08-16', 'Reserved'),
(5, 1015, 7, '2023-08-14', '2023-08-18', 'Completed'),
(6, 1008, 16, '2023-08-15', '2023-08-19', 'In Transit'),
(7, 1009, 33, '2023-08-16', '2023-08-20', 'Awaiting Pickup'),
(8, 1019, 3, '2023-08-17', '2023-08-21', 'Reserved'),
(9, 1004, 50, '2023-08-18', '2023-08-23', 'In Transit'),
(10, 1011, 14, '2023-08-19', '2023-08-22', 'Awaiting Pickup'),
(11, 1012, 20, '2023-08-20', '2023-08-25', 'Completed'),
(12, 1016, 25, '2023-08-21', '2023-08-26', 'Completed'),
(13, 1017, 38, '2023-08-22', '2023-08-27', 'Reserved'),
(14, 1018, 11, '2023-08-23', '2023-08-28', 'In Transit'),
(15, 1013, 2, '2023-08-24', '2023-08-29', 'In Transit'),
(16, 1005, 29, '2023-08-25', '2023-08-30', 'Reserved'),
(17, 1002, 40, '2023-08-26', '2023-08-31', 'Completed'),
(18, 1014, 12, '2023-08-27', '2023-09-01', 'In Transit'),
(19, 1020, 9, '2023-08-28', '2023-09-02', 'In Transit'),
(20, 1010, 21, '2023-08-29', '2023-09-03', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviewID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `reviewRating` int(11) NOT NULL,
  `reviewText` varchar(255) NOT NULL,
  `reviewDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviewID`, `customerID`, `orderID`, `reviewRating`, `reviewText`, `reviewDate`) VALUES
(1, 1001, 1, 5, 'Great book, really enjoyed it!', '2023-01-01'),
(2, 1002, 2, 4, 'Interesting read, a bit slow in the middle.', '2023-01-02'),
(3, 1003, 3, 3, 'Not my favorite from this author.', '2023-01-03'),
(4, 1004, 4, 5, 'Loved it! Can\'t wait for the sequel.', '2023-01-04'),
(5, 1005, 5, 4, 'Good book, but the ending was predictable.', '2023-01-05'),
(6, 1006, 6, 2, 'Didn\'t really like it, the characters were flat.', '2023-01-06'),
(7, 1007, 7, 5, 'Amazing book, couldn\'t put it down!', '2023-01-07'),
(8, 1008, 8, 3, 'It was okay, but I\'ve read better.', '2023-01-08'),
(9, 1009, 9, 4, 'Really liked it, but the start was a bit slow.', '2023-01-09'),
(10, 1010, 10, 5, 'One of the best books I\'ve read this year!', '2023-01-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `bookID` (`bookID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `orderID` (`orderID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
