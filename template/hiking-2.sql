-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 24, 2020 at 10:42 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hiking`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `ID` int(255) NOT NULL,
  `article` varchar(255) NOT NULL,
  `phoneNumber` int(255) NOT NULL,
  `userID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(255) NOT NULL,
  `groupID` int(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `messageID` int(255) NOT NULL,
  `sID` varchar(255) NOT NULL,
  `rID` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hikinggroup`
--

CREATE TABLE `hikinggroup` (
  `groupID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `groupNumber` int(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `ImgName` varchar(255) NOT NULL,
  `TripDate` date NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hikinggroup`
--

INSERT INTO `hikinggroup` (`groupID`, `userID`, `groupName`, `groupNumber`, `place`, `ImgName`, `TripDate`, `Description`) VALUES
(84, 1, 'Alasca', 24, 'st.catherine mountain', '01.jpg', '2020-09-10', 'Welcome dear hiker, we\'re Alasca group.\r\nWe\'re a group of 5 professional hikers that would help you in hiking st. Catherine mountain.\r\nIt would take 6 hrs.\r\nfrom 12:00 AM to 6:00 AM.\r\nThere would be a rest in each km.'),
(588, 1, 'Adams', 67, 'El Mokattam mountain', '03.jpg', '2020-11-10', 'Welcome dear hiker, we\'re Adams group. We\'re a group of 6 professional hikers that would help you to enjoy the day in El Mokattam mountain. We\'re gonna play the best adrenaline game in Egypt, the top Egypt ziplining in Samaan El kharaz monastery. '),
(796, 2, 'Eagle', 89, 'Jabal El Twaylat', '02.jpg', '2020-10-21', 'Welcome Dear hiker, we\'re Eagle group.\r\nWe\'re a group of 3 professional hikers that would help you to know all the tips. We\'re gonna camp there for 2 days.\r\n2020-10-21 AT 6PM\r\nto 2020-10-23 At 12PM \r\nAt night we\'re gonna set fire, have a BBQ party and sing songs.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewID` int(255) NOT NULL,
  `userID` int(255) NOT NULL,
  `rate` int(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `midName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `phoneNumber` int(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userName`, `email`, `password`, `firstName`, `midName`, `lastName`, `address`, `age`, `phoneNumber`, `role`) VALUES
(1, 'dondon', 'dondon@gmail.com', '123', 'Madonna', 'Said', 'Mehanny\r\n', '4 sadr eldin', 12, 1221570115, 'hiker'),
(2, 'Monica2', 'Monica.miu.com', '123', 'Monica', 'Magdy', 'Andraws', 'korba', 23, 1226022109, 'hiker');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`messageID`);

--
-- Indexes for table `hikinggroup`
--
ALTER TABLE `hikinggroup`
  ADD PRIMARY KEY (`groupID`),
  ADD KEY `hikinggroup_ibfk_1` (`userID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `messageID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hikinggroup`
--
ALTER TABLE `hikinggroup`
  MODIFY `groupID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=797;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `reviewID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD CONSTRAINT `aboutus_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`groupID`) REFERENCES `hikinggroup` (`groupID`);

--
-- Constraints for table `hikinggroup`
--
ALTER TABLE `hikinggroup`
  ADD CONSTRAINT `hikinggroup_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
