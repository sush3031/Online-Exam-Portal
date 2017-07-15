-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2017 at 11:26 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineexamportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_test`
--

CREATE TABLE `add_test` (
  `teach_id` varchar(20) NOT NULL,
  `test_id` varchar(15) NOT NULL,
  `qNo` int(11) NOT NULL DEFAULT '0',
  `questions` varchar(500) NOT NULL,
  `a` varchar(100) NOT NULL,
  `b` varchar(100) NOT NULL,
  `c` varchar(100) NOT NULL,
  `d` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `rightAns` varchar(1) NOT NULL,
  `pic` varchar(2000) NOT NULL,
  `marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_test`
--

INSERT INTO `add_test` (`teach_id`, `test_id`, `qNo`, `questions`, `a`, `b`, `c`, `d`, `description`, `rightAns`, `pic`, `marks`) VALUES
('ajay131', 'ajay1311', 1, 'gygyggGgy', 'yy', 'y', 'y', 'yy', 'yyg', 'A', '', 10),
('ajay131', 'ajay1313', 1, 'uuyguy', 'gygu', 'guu', 'yuu', 'guyyub', 'nnununun', 'A', '', 10),
('ajay131', 'ajay1313', 2, 'uyuyyugy', 'ygy', 'yby', 'byb', 'gyug', 'hnuhbuhbn', 'C', '', 10),
('ajay131', 'ajay1316', 1, 'uugygg', 'guygyugyu', 'gyguy', 'guygyug', 'ugg', 'hbyugyugyg', 'B', '', 5),
('ajay131', 'ajay1317', 1, 'uygyg7g7g', '67g67g', '67g67g', '67g67g', '76g76g', 'nnjnnnjn', 'B', '', 2),
('ajay131', 'ajay1318', 1, 'byuhhh', 'hhuhu', 'hiuhuihiuh', 'iuhiuhiuhiuh', 'iuiuiuh', 'nioiojiojij', 'A', '', 5),
('ajay131', 'ajay1318', 2, 'jniuuijuiju', 'jiujijiujiu', 'juijiujiujiuj', 'jiujiujjj', 'nuiunun', 'kmomiomimm', 'B', '', 5),
('ajay131', 'ajay1319', 1, 'what is your name?', 'sarthak', 'sushmita', 'anand', 'kushal', 'htftyytvtygv', 'A', 'IMG_20151008_150651.jpg', 2),
('ajay131', 'ajay1319', 2, 'what bis your pat name?', 'dog', 'kutta', 'suar', 'bhaisa', 'hfcyvyggy', 'A', '', 2),
('ajay131', 'ajay1319', 3, 'hvytyfrytyvfvtycg gctycgvytctyctycty', 'bubub', 'ubububub', 'ggvyuguyg', 'tgfytgtyg', 'hghvgvhvv', 'B', '', 3),
('ajay131', 'ajay1319', 4, 'tctfytgyugty', 'gyuguy', 'gugu', 'g', 'uvuy', 'jbububhubh', 'B', '', 3),
('ajay131', 'ajay1319', 5, 'hbuygy7g7gt7g', 't7ggtygyugy', 'gyugyugyugyu', 'gyugyugyugyu', 'gyugyugyugb', 'jvygyug', 'A', 'IMG_20151008_200036.jpg', 7),
('anil131', 'anil1312', 1, 'utgtyivtyvtyvtybv', 'ybvyby', 'btybtyb', 'yyb', 'ybyub', 'uhbhubiubiun', 'A', '', 2),
('anil131', 'anil1312', 2, 'bubyubyubyu', 'ybyuyu', 'bhybyb', 'ybyub', 'yuiiyuhyu', 'hbnhniuniuniu', 'B', '', 3),
('anil131', 'anil1313', 1, '7gyugygyyBbbu', 'uyyubyubyub', 'uybubuybyub', 'buybubu', 'ybuybuyb', 'hvhgvgv ', 'B', 'IMG-20150330-WA0014.jpg', 5),
('anil131', 'anil1313', 2, 'hgbyvytgtyft', 'fttyvytvyt', 'tytyvty', 'tyvty', 'vtyvty', 'hbubyubyubuy', 'C', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `dept` char(20) NOT NULL,
  `admin_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_uname`, `password`, `dept`, `admin_name`) VALUES
('ajay131', 'ajay131', 'IT', 'Ajay Kumar Shrivastava'),
('anil131', 'anil131', 'IT', 'Anil Kumar Giri'),
('anmol501', 'anmol501', 'Applied Science', 'Anmol Gupta'),
('awdesh131', 'awdesh131', 'IT', 'Awdesh Shrivastava'),
('mukul131', 'mukul131', 'IT', 'Mukul Aggarwal'),
('prashant131', 'prashant131', 'IT', 'Prashant G. Shambharkar'),
('raghvendra131', 'raghvendra131', 'IT', 'Raghvendra Kumar Dwivedi');

-- --------------------------------------------------------

--
-- Table structure for table `before_addtest`
--

CREATE TABLE `before_addtest` (
  `teach_id` varchar(20) NOT NULL,
  `test_id` varchar(15) NOT NULL,
  `No_of_q` varchar(5) NOT NULL,
  `Time_of_test` varchar(3) NOT NULL,
  `visibility` int(11) NOT NULL DEFAULT '1',
  `sub_name` varchar(10) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `before_addtest`
--

INSERT INTO `before_addtest` (`teach_id`, `test_id`, `No_of_q`, `Time_of_test`, `visibility`, `sub_name`, `total_marks`) VALUES
('ajay131', 'ajay1311', '1', '10', 0, 'NCS-502', 10),
('ajay131', 'ajay1312', '2', '3', 0, 'NCS-502', 10),
('ajay131', 'ajay1313', '2', '3', 0, 'NCS-502', 10),
('ajay131', 'ajay1314', '1', '2', 0, 'NCS-502', 10),
('ajay131', 'ajay1315', '1', '2', 0, 'NCS-502', NULL),
('ajay131', 'ajay1316', '2', '11', 0, 'NCS-502', NULL),
('ajay131', 'ajay1317', '1', '2', 0, 'NCS-502', 2),
('ajay131', 'ajay1318', '2', '15', 0, 'NCS-502', 10),
('ajay131', 'ajay1319', '5', '10', 1, 'NCS-502', 17),
('anil131', 'anil1311', '2', '15', 0, 'NCS-501', 20),
('anil131', 'anil1312', '2', '5', 0, 'NCS-501', 5),
('anil131', 'anil1313', '2', '10', 1, 'NCS-501', 10);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_name` varchar(30) NOT NULL,
  `sub_id` varchar(15) NOT NULL,
  `sem` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_name`, `sub_id`, `sem`) VALUES
('DAA', 'NCS-501', '5'),
('DBMS', 'NCS-502', '5'),
('PPL', 'NCS-503', '5'),
('WT', 'NCS-504', '5'),
('CN', 'NCS-601', '6'),
('SE', 'NCS-602', '6'),
('CD', 'NCS-603', '6');

-- --------------------------------------------------------

--
-- Table structure for table `sub_dept`
--

CREATE TABLE `sub_dept` (
  `dept` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_dept`
--

INSERT INTO `sub_dept` (`dept`, `subject_code`) VALUES
('IT', 'NCS-501'),
('IT', 'NCS-502'),
('IT', 'NCS-503'),
('IT', 'NCS-504'),
('IT', 'NCS-601'),
('IT', 'NCS-602'),
('IT', 'NCS-603'),
('CS', 'NCS-501'),
('CS', 'NCS-504'),
('CS', 'NCS-601'),
('CS', 'NCS-603');

-- --------------------------------------------------------

--
-- Table structure for table `teachersub`
--

CREATE TABLE `teachersub` (
  `Teach_id` varchar(20) NOT NULL,
  `sub_id` varchar(15) NOT NULL,
  `section` varchar(2) NOT NULL,
  `session` varchar(10) NOT NULL,
  `semester` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachersub`
--

INSERT INTO `teachersub` (`Teach_id`, `sub_id`, `section`, `session`, `semester`) VALUES
('ajay131', 'NCS-502', 'B', '2016-2017', '5'),
('anil131', 'NCS-501', 'A', '2016-2017', '5'),
('awdesh131', 'NCS-501', 'B', '2016-2017', '5'),
('mukul131', 'NCS-502', 'A', '2016-2017', '5'),
('prashant131', 'NCS-503', 'A', '2016-2017', '5'),
('prashant131', 'NCS-503', 'B', '2016-2017', '5'),
('raghvendra131', 'NCS-504', 'A', '2016-2017', '5'),
('raghvendra131', 'NCS-504', 'B', '2016-2017', '5');

-- --------------------------------------------------------

--
-- Table structure for table `test_given_student`
--

CREATE TABLE `test_given_student` (
  `test_id` varchar(15) NOT NULL,
  `teach_id` varchar(20) NOT NULL,
  `student_rollno` varchar(10) NOT NULL,
  `givenTest` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_given_student`
--

INSERT INTO `test_given_student` (`test_id`, `teach_id`, `student_rollno`, `givenTest`, `score`, `date`) VALUES
('ajay1312', 'ajay131', '1402913015', 1, 15, '16-04-2017'),
('ajay1319', 'ajay131', '1402913015', 1, 4, '16/04/2017'),
('anil1311', 'anil131', '1402913015', 1, 5, '16-04-2017'),
('anil1312', 'anil131', '1402913015', 1, 5, '16/04/2017'),
('anil1313', 'anil131', '1402913015', 1, 10, '18/04/2017');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `university_rollno` varchar(10) NOT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `sem` varchar(10) DEFAULT NULL,
  `sec` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`university_rollno`, `student_name`, `password`, `email`, `dept`, `sem`, `sec`) VALUES
('', 'ygvygvyv', 'Aa1234', 'A@gmail.com', 'IT', 'null', 'null'),
('1402910100', 'Shudhanshu', 'Sh1234', 'sh@gmail.com', 'CS', '6', 'B'),
('1402913015', 'anand', 'anand1234+', 'anandf@gmail.com', 'IT', '5', 'B'),
('1402913025', 'shajhd', 'abcd1234+', 'wghf@gmail.com', 'IT', '5', 'B'),
('1402913087', 'sakshi', 'Sakshi1234', 'sakshi@gmail.com', 'IT', '6', 'B'),
('1402913088', 'sarthak', 'Ab879190+', 'agarwalsarthak21@gmail.com', 'IT', '6', 'B'),
('1402913093', 'saurabh', 'Saurabh123', 'saurabh@gmail.com', 'IT', '6', 'B'),
('1402913094', 'saurabh', 'Saurabh1234', 'saurabh@gmail.com', 'IT', '6', 'B'),
('1402913111', 'sushmita gupta', 'Sush123', 'gupta.sushmita31@gmail.com', 'IT', '6', 'B'),
('1402913118', 'shajh', 'abcd1234', 'wgh@gmail.com', 'IT', '5', 'B'),
('1402931012', 'Shubham', 'Shubham1234', 'shubham@gmail.com', 'ME', '6', '2'),
('1402940135', 'Shubham Chaudhary', 'Subh1234', 'shubham@gmail.com', 'ME', '6', 'B'),
('1403113045', 'harshit singhal', 'Harshit1234', 'harshit@gmail.com', 'EC', '6', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_test`
--
ALTER TABLE `add_test`
  ADD PRIMARY KEY (`teach_id`,`test_id`,`qNo`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_uname`);

--
-- Indexes for table `before_addtest`
--
ALTER TABLE `before_addtest`
  ADD PRIMARY KEY (`teach_id`,`test_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teachersub`
--
ALTER TABLE `teachersub`
  ADD PRIMARY KEY (`Teach_id`,`sub_id`,`section`);

--
-- Indexes for table `test_given_student`
--
ALTER TABLE `test_given_student`
  ADD PRIMARY KEY (`test_id`,`teach_id`,`student_rollno`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`university_rollno`),
  ADD UNIQUE KEY `university_rollno` (`university_rollno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
