
--
-- Host: 127.0.0.1


-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unvdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `pass`, `name`) VALUES
(1, 'admin@iitkgp.in', 'admin@123', 'admin');

-- --------------------------------------------------------

--

--



-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `ID_dep` int(11) NOT NULL,
  `dep_name` varchar(50) NOT NULL,
  `dep_sub_name` varchar(5) NOT NULL,
  `unv_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`ID_dep`, `dep_name`, `dep_sub_name`, `unv_id`) VALUES
(5, 'Mathematics', 'MA', 12),
(6, 'Mechanical Engineering', 'ME', 12),
(7, 'Computer Science', 'CS',12);

-- --------------------------------------------------------

--
-- Table structure for table `lecture_lab`
--

CREATE TABLE `Course` (
  `ID_Course` int(11) NOT NULL,
  `Course_name` varchar(40) NOT NULL,
  `Course_sub_name` varchar(5) NOT NULL,
  `id_stf` int(11) NOT NULL,
  `id_dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lecture_lab`
--

INSERT INTO `Course` (`ID_Course`, `Course_name`, `Course_sub_name`, `id_stf`, `id_dep`) VALUES
(28, 'programming langauge in java', 'JAVA', 5,7),
(29, 'programming langauge in C++', 'C++', 5,7),
(30, 'programming langauge in python', 'Pytho', 5,7),
(31, 'Database Management System', 'DBMS', 5,5),
(32, 'Mathematical Modelling', 'MM', 5,5),
(33, 'Mechanics1', 'M1', 5,6),
(34, 'Mechanics drawing', 'MD', 5,6);




-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `ID_stf` int(11) NOT NULL,
  `stf_first_name` varchar(20) NOT NULL,
  `stf_last_name` varchar(20) NOT NULL,
  `stf_email` varchar(25) NOT NULL,
  `stf_user_name` varchar(15) NOT NULL,
  `stf_password` varchar(60) NOT NULL,
  `stf_title` varchar(20) NOT NULL,
  `dep_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`ID_stf`, `stf_first_name`, `stf_last_name`, `stf_email`, `stf_user_name`, `stf_password`, `stf_title`, `dep_id`) VALUES
(5, 'Kamal', 'Kishore', 'KKishore@iitkgp.staff.in', 'KK5', 'Kamal@staff5', 'Professor', 5),
(6, 'Sorav', 'Kumar', 'SKumar@iitkgp.staffin', 'SK6', 'Sorav@staff6', 'Assistant Professor', 6);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID_stu` int(11) NOT NULL,
  `stu_first_name` varchar(20) NOT NULL,
  `stu_last_name` varchar(20) NOT NULL,
  `stu_email` varchar(25) NOT NULL,
  `stu_user_name` varchar(20) NOT NULL,
  `stu_password` varchar(60) NOT NULL,
  `stu_age` date NOT NULL,
  `stu_address` varchar(20) NOT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `total_fees` int NOT NULL,
  `fees_remain` int NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--


INSERT INTO `student` (`ID_stu`, `stu_first_name`, `stu_last_name`, `stu_email`, `stu_user_name`, `stu_password`, `stu_age`, `stu_address`, `dep_id`,`total_fees`,`fees_remain`) VALUES
(17, 'Akash', 'Kumar', 'AK@iitkgp.in', 'AK17', 'AK@17', '1999-01-02', 'bgh',7,100000,50000),
(19, 'Soumya', 'Ranjan', 'SR@iitkgp.in', 'SR19', 'SR@19', '1998-04-10', 'bgh',6,50000,25000),
(21, 'Prateek', 'Nagar', 'PN@iitkgp.in', 'PN21', 'PN@21', '2001-04-10', 'RJ01',5,50000,0);

-- --------------------------------------------------------
--
-- Table structure for table `library`
--
CREATE TABLE `library`(
 `book_id` int(11) NOT NULL,
 `book_name` varchar(30) NOT NULL
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
 --
-- Dumping data for table `library`
--

insert into `library`(`book_id`,`book_name`) values
(1,'Mathematics1'),
(2,'Mathematics2'),
(3,'Let us C'),
(4,'c++ prime'),
(5,'Mechanics1'),
(6,'Harry Potter'),
(7,'Physics1');


--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `ID_unv` int(11) NOT NULL,
  `unv_name` varchar(50) NOT NULL,
  `unv_sub_name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`ID_unv`, `unv_name`, `unv_sub_name`) VALUES
(12, 'IIT KHARAGPUR', 'IITKGP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--

--


--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`ID_dep`),
  ADD KEY `dep_nuv_id_fk` (`unv_id`);

--
-- Indexes for table `lecture_lab`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`ID_Course`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID_stf`),
  ADD UNIQUE KEY `stf_email` (`stf_email`),
  ADD UNIQUE KEY `stf_user_name` (`stf_user_name`),
  ADD KEY `stf_dep_id_fk` (`dep_id`);
 

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID_stu`),
  ADD UNIQUE KEY `stu_email` (`stu_email`),
  ADD UNIQUE KEY `stu_user_name` (`stu_user_name`),
  ADD KEY `stu_dep_id_fk` (`dep_id`);
--
-- Indexes for table `library`
--
  
  ALTER TABLE `library`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`ID_unv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--

--


--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `ID_dep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Course`
--
ALTER TABLE `Course`
  MODIFY `ID_Course` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `ID_stf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID_stu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `ID_unv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--


--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `dep_nuv_id_fk` FOREIGN KEY (`unv_id`) REFERENCES `university` (`ID_unv`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `stf_dep_id_fk` FOREIGN KEY (`dep_id`) REFERENCES `department` (`ID_dep`) ON DELETE SET NULL ON UPDATE CASCADE;
 

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `stu_dep_id_fk` FOREIGN KEY (`dep_id`) REFERENCES `department` (`ID_dep`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
