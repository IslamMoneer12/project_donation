-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2020 at 09:52 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(10) NOT NULL,
  `current_balance` float NOT NULL DEFAULT 0,
  `admin_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `current_balance`, `admin_status`) VALUES
(1, 'اسلام منير جمعة القطاطي', 'admin@gmail.com', 'admin', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) CHARACTER SET utf8 NOT NULL,
  `comment_sender_name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `time_msg` datetime NOT NULL DEFAULT current_timestamp(),
  `title` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  `desc_msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `id_user`, `status`, `time_msg`, `title`, `type`, `desc_msg`) VALUES
(13, 1, 0, '2020-06-21 23:29:33', 'رسالة 1', 'اقتراح', 'اقترح عليكم اضافة خدمات جديدة في المستقبل');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `donor_id` int(11) NOT NULL,
  `donor_name` varchar(100) NOT NULL,
  `donor_blood_group` varchar(4) NOT NULL,
  `donor_email` varchar(50) NOT NULL,
  `donor_contactNo` varchar(9) NOT NULL,
  `donor_city` varchar(100) NOT NULL,
  `donor_gender` varchar(10) NOT NULL,
  `donor_hospital` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`donor_id`, `donor_name`, `donor_blood_group`, `donor_email`, `donor_contactNo`, `donor_city`, `donor_gender`, `donor_hospital`, `status`) VALUES
(14, 'محمد احمد ', 'Ap', 'moh@gmail.com', '059125879', 'بيت لاهيا', 'ذكر', 'مستشفى ', 1),
(15, 'فاعل خير', 'Op', 'sss@gmail.com', '059123458', 'غزة', 'ذكر', 'مستشفى الشفا', 1),
(16, 'اسلام منير', 'Op', 'soso@gmail.com', '059123584', 'غزة', 'انثى', 'مستشفى الشفا', 0),
(17, 'اسلام منير ', 'Bp', 'islam12@gmail.c', '059123457', 'اريحا', 'انثى', 'مستشفى', 0),
(18, 'اسلام1234', 'Op', 'islam22@gmail.com', '059123457', 'غزة', 'انثى', 'مستشفى الشفا', 0),
(19, 'فاعل خير', 'Bp', 'fff@gmail.com', '059258741', 'اريحا', 'ذكر', '	 أريحا الحكومي', 0),
(20, 'فاعل خير', 'ABn', 'mm@gmail.com', '059123457', 'القدس', 'ذكر', 'مستشفى القدس', 0),
(21, 'اسلام', 'On', 'islam@gmail.com', '059408666', 'اريحا', 'انثى', 'الشفا', 0),
(23, 'اسماء المصري', 'Op', 'asmaa@gmail.com', '059456235', 'دير البلح', 'انثى', 'مستشفى دير البلح', 0),
(24, 'اسلام منير القطاطي', 'Op', 'islam@gmail.com', '059773367', 'غزة', 'انثى', 'مستشفى الشفا', 0),
(25, 'اسلام منير القطاطي', 'Op', 'islam@gmail.com', '059456877', 'رفح', 'انثى', 'مستشفى رفح', 0),
(26, 'اسلام منير القطاطي', 'Op', 'islam@gmail.com', '059777777', 'غزة', 'انثى', 'مستشفى الشفا', 0),
(27, 'اسلام منير القطاطي', 'Op', 'islam@gmail.com', '059777777', 'غزة', 'انثى', 'مستشفى الشفا', 0),
(28, 'احمد منير ', 'On', 'ahmed@gmail.com', '059888888', 'دير البلح', 'ذكر', 'مستشفى القدس', 0);

-- --------------------------------------------------------

--
-- Table structure for table `don_for_patients`
--

CREATE TABLE `don_for_patients` (
  `id_don_for_patient` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_patient` int(11) NOT NULL,
  `don_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `don_for_patients`
--

INSERT INTO `don_for_patients` (`id_don_for_patient`, `id_user`, `id_patient`, `don_value`) VALUES
(20, 1, 6, 300);

-- --------------------------------------------------------

--
-- Table structure for table `don_for_project`
--

CREATE TABLE `don_for_project` (
  `id_don_project` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  `don_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `don_for_project`
--

INSERT INTO `don_for_project` (`id_don_project`, `id_user`, `id_project`, `don_amount`) VALUES
(3, 1, 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `don_for_story`
--

CREATE TABLE `don_for_story` (
  `id_don_story` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_story` int(11) NOT NULL,
  `don_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `don_for_story`
--

INSERT INTO `don_for_story` (`id_don_story`, `id_user`, `id_story`, `don_amount`) VALUES
(1, 1, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `general_don`
--

CREATE TABLE `general_don` (
  `id_general_don` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `don_type` varchar(50) NOT NULL,
  `don_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_don`
--

INSERT INTO `general_don` (`id_general_don`, `id_user`, `don_type`, `don_value`) VALUES
(16, 1, 'صدقة', 20);

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id_gift` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `don_amount` int(11) NOT NULL,
  `to_name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `relation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gifts`
--

INSERT INTO `gifts` (`id_gift`, `id_user`, `don_amount`, `to_name`, `phone`, `relation`) VALUES
(1, 1, 20, 'احمد', '0594059999', 'الى صديق'),
(2, 1, 10, 'سعاد', '0596666666', 'الى زوجتي');

-- --------------------------------------------------------

--
-- Table structure for table `mystory`
--

CREATE TABLE `mystory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `money` int(11) NOT NULL,
  `TheAmountPaid` int(10) NOT NULL DEFAULT 0,
  `image` text NOT NULL,
  `story` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL,
  `Last_donate_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mystory`
--

INSERT INTO `mystory` (`id`, `name`, `email`, `phone`, `address`, `money`, `TheAmountPaid`, `image`, `story`, `status`, `title`, `Last_donate_date`) VALUES
(4, 'اسلام منير القطاطي', 'islam@gamil.com', '0597733671', 'غزة الزيتون', 200, 20, 'univ.jfif', 'دفع رسوم الجامعة دفع رسوم الجامعة دفع رسوم الجامعة دفع رسوم الجامعة دفع رسوم الجامعة دفع رسوم الجامعة', 0, 'دفع رسوم الجامعة', '2020-10-01'),
(7, 'اسلام منير القطاطي', 'islam@gmail.com', '059408652', 'غزة الزيتون', 500, 0, '1.jfif', 'مساعدة في دفع علاجي  مساعدة في دفع علاجي مساعدة في دفع علاجي مساعدة في دفع علاجي ', 0, 'مساعدة في دفع علاجي ', '2020-09-03'),
(8, 'الاء القطاطي', 'alaa@gmail.com', '0594456622', 'رفح', 600, 0, 'house.jfif', 'مساعدة في مصروف البيت  مساعدة في مصروف البيت  مساعدة في مصروف البيت  مساعدة في مصروف البيت ', 0, 'مساعدة في مصروف البيت', '2020-08-20'),
(9, 'منى سعيد', 'mona@gmail.com', '02569854', 'غزة التفاح', 1000, 0, '2.jfif', 'مساعدة غزة بشراء معدات طبية لمواجهة فيروس كورونا مساعدة غزة بشراء معدات طبية لمواجهة فيروس كورونا مساعدة غزة بشراء معدات طبية لمواجهة فيروس كورونا مساعدة غزة بشراء معدات طبية لمواجهة فيروس كورونا مساعدة غزة بشراء معدات طبية لمواجهة فيروس كورونا ', 0, 'مساعدة غزة بشراء معدات طبية ', '2020-11-12'),
(10, 'اسلام منير القطاطي', 'islam@gmail.com', '059455236', 'غزة ', 200, 0, 'image1.jpg', 'محتاجة مساعدتكم محتاجة مساعدتكم محتاجة مساعدتكم  محتاجة مساعدتكم محتاجة مساعدتكم محتاجة مساعدتكم محتاجة مساعدتكم محتاجة مساعدتكم', 0, 'محتاجة مساعدتكم', '2020-09-09'),
(11, 'اسلام منير القطاطي', 'islam@gmail.com', '0564523333', 'غزة', 200, 0, 'poor2.jfif', 'مساعدة في مصروفي اليومي مساعدة في مصروفي اليومي مساعدة في مصروفي اليومي مساعدة في مصروفي اليومي مساعدة في مصروفي اليومي مساعدة في مصروفي اليومي', 0, 'مساعدة في مصروفي اليومي', '2020-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `patientID` varchar(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `TotalِAmount` int(11) NOT NULL,
  `TheAmountPaid` int(11) DEFAULT 0,
  `RemainingِAmount` int(11) DEFAULT 0,
  `age` varchar(2) NOT NULL,
  `typeDisease` varchar(100) NOT NULL,
  `DescriptionDisease` text NOT NULL,
  `need_to` text NOT NULL,
  `city` text NOT NULL,
  `hospital` text NOT NULL,
  `status` int(11) NOT NULL,
  `dataAdded` date NOT NULL DEFAULT current_timestamp(),
  `last_date_donate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `fullName`, `patientID`, `gender`, `TotalِAmount`, `TheAmountPaid`, `RemainingِAmount`, `age`, `typeDisease`, `DescriptionDisease`, `need_to`, `city`, `hospital`, `status`, `dataAdded`, `last_date_donate`) VALUES
(6, 'الاء القطاطي', '456789123', 'انثى', 1000, 300, 0, '17', 'أمراض العين', 'اصابة في قرنبة العين', 'عملية جراحية', 'غزة', 'الشفا', 0, '2020-02-17', '2020-02-29'),
(9, 'منى سعيد سعيد', '25896532', 'انثى', 500, 20, 0, '40', 'أمراض العين', 'ضعف في قرنية العين', 'عملية جراحية', 'بيت حانون', 'بيت حانون', 0, '2020-03-27', '2020-11-26'),
(10, 'سمير المصري', '2598546', 'ذكر', 700, 300, 0, '30', 'أمراض الجهاز التنفسي', 'اضرار في القصبة الهوائية ', 'عملية جراحية', 'غزة', 'الشفا', 0, '2020-03-27', '2020-10-16'),
(11, 'سمية سالم', '026598523', 'انثى', 600, 100, 0, '25', 'التشوهات الخلقية والعاهات', 'تشوه في الوجه', 'عملية تجميلية', 'الخليل', 'مستشفى الخليل', 0, '2020-03-27', '2020-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `request_blood`
--

CREATE TABLE `request_blood` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contactNum` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_blood`
--

INSERT INTO `request_blood` (`id`, `name`, `city`, `blood_group`, `gender`, `contactNum`, `email`, `status`) VALUES
(1, 'محمد منير جمعة القطاطي', 'القدس', 'An', 'ذكر', '059785214', 'moh@gmail.com', 1),
(3, 'امل عاشور', 'الخليل', 'Op', 'انثى', '0594562366', 'amal@gmail.com', 0),
(4, 'محمد جعفر', 'اريحا', 'Op', 'ذكر', '0566666666', 'mohammed@gmail.com', 0),
(5, 'محمد جعفر', 'اريحا', 'Op', 'ذكر', '0566666666', 'mohammed@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `smallproject`
--

CREATE TABLE `smallproject` (
  `project_id` int(11) NOT NULL,
  `project_title` varchar(100) NOT NULL,
  `project_Desc` text NOT NULL,
  `project_owner` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Total_amount` int(11) NOT NULL,
  `Amount_paid` int(11) DEFAULT 0,
  `Last_donate_date` date NOT NULL,
  `project_img` varchar(100) NOT NULL,
  `project_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smallproject`
--

INSERT INTO `smallproject` (`project_id`, `project_title`, `project_Desc`, `project_owner`, `address`, `phone`, `email`, `Total_amount`, `Amount_paid`, `Last_donate_date`, `project_img`, `project_status`) VALUES
(1, 'صناعة الزجاج', 'صناعة الزجاج صناعة الزجاج صناعة الزجاج صناعة الزجاج صناعة الزجاج صناعة الزجاج صناعة الزجاج', 'اسلام منير القطاطي', 'جباليا', '', '', 2000, 20, '2020-11-12', 'glass.jfif', 0),
(2, 'تاجير فساتين الزفاف ', 'تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف تاجير فساتين الزفاف ', 'اسلام منير القطاطي', 'غزة الزيتون', '0566666666', 'islam@gmail.com', 3000, 0, '2020-07-16', 'dress.jfif', 0),
(3, 'اعادة تدوير الورق', 'اعادة تدوير الورق اعادة تدوير الورق اعادة تدوير الورق اعادة تدوير الورق اعادة تدوير الورق اعادة تدوير الورق  اعادة تدوير الورق اعادة تدوير الورق اعادة تدوير الورق ', 'محمد احمد حمدان', 'غزة - بجوار مصنع العودة', '0597733671', 'mohamed@gmail.com', 2000, 0, '2020-09-03', 'paper.PNG', 0),
(4, 'مطعم لبيع الفلافل', '  بيع الفلافل بيع الفلافل بيع الفلافل بيع الفلافل بيع الفلافل بيع الفلافل بيع الفلافل بيع الفلافل بيع الفلافل بيع الفلافل بيع الفلافل بيع الفلافل بيع الفلافل ', 'سعدي جمعة سعيد', 'غزة - شارع الثلاثيني', '0594569874', 'sade@gmail.com', 500, 0, '2020-08-27', 'flafel.PNG', 0),
(5, 'ترميم البيوت القديمة', 'ترميم البيوت القديمة ترميم البيوت القديمة ترميم البيوت القديمة ترميم البيوت القديمة ترميم البيوت القديمة ', 'اسلام منير القطاطي', 'غزة - شارع الشهداء', '0598888888', 'islam@gmail.com', 500, 0, '2020-12-29', 'dar.PNG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) CHARACTER SET utf8 NOT NULL,
  `comment_sender_name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phonenumber` int(10) NOT NULL,
  `Initial_balance` int(11) NOT NULL,
  `Total_donations` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `phonenumber`, `Initial_balance`, `Total_donations`) VALUES
(1, 'اسلام منير جمعة القطاطي', '456987', 'islam@gmail.com', 2567007, 0, 500),
(2, 'محمد منير جمعة القطاطي', '123456', 'moh@gmail.com', 5412867, 0, 0),
(3, 'امل نافذ', '741258', 'Aa@gmail.com', 132568479, 0, 0),
(4, 'اية', '987', 'aya@gmail.com', 258639417, 0, 0),
(5, 'لانا', 'lala528', 'lala@gmail.com', 970156548, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_contact` (`id_user`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `don_for_patients`
--
ALTER TABLE `don_for_patients`
  ADD PRIMARY KEY (`id_don_for_patient`),
  ADD KEY `user_patient` (`id_user`),
  ADD KEY `patient_user` (`id_patient`);

--
-- Indexes for table `don_for_project`
--
ALTER TABLE `don_for_project`
  ADD PRIMARY KEY (`id_don_project`),
  ADD KEY `project_user` (`id_project`),
  ADD KEY `user_project` (`id_user`);

--
-- Indexes for table `don_for_story`
--
ALTER TABLE `don_for_story`
  ADD PRIMARY KEY (`id_don_story`),
  ADD KEY `user_story` (`id_user`),
  ADD KEY `story_user` (`id_story`);

--
-- Indexes for table `general_don`
--
ALTER TABLE `general_don`
  ADD PRIMARY KEY (`id_general_don`),
  ADD KEY `user_general_don` (`id_user`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id_gift`),
  ADD KEY `gift_user` (`id_user`);

--
-- Indexes for table `mystory`
--
ALTER TABLE `mystory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_blood`
--
ALTER TABLE `request_blood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smallproject`
--
ALTER TABLE `smallproject`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `don_for_patients`
--
ALTER TABLE `don_for_patients`
  MODIFY `id_don_for_patient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `don_for_project`
--
ALTER TABLE `don_for_project`
  MODIFY `id_don_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `don_for_story`
--
ALTER TABLE `don_for_story`
  MODIFY `id_don_story` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_don`
--
ALTER TABLE `general_don`
  MODIFY `id_general_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id_gift` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mystory`
--
ALTER TABLE `mystory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `request_blood`
--
ALTER TABLE `request_blood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `smallproject`
--
ALTER TABLE `smallproject`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `user_contact` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `don_for_patients`
--
ALTER TABLE `don_for_patients`
  ADD CONSTRAINT `patient_user` FOREIGN KEY (`id_patient`) REFERENCES `patients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_patient` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `don_for_project`
--
ALTER TABLE `don_for_project`
  ADD CONSTRAINT `project_user` FOREIGN KEY (`id_project`) REFERENCES `smallproject` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_project` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `don_for_story`
--
ALTER TABLE `don_for_story`
  ADD CONSTRAINT `story_user` FOREIGN KEY (`id_story`) REFERENCES `mystory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_story` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `general_don`
--
ALTER TABLE `general_don`
  ADD CONSTRAINT `user_general_don` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gifts`
--
ALTER TABLE `gifts`
  ADD CONSTRAINT `gift_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
