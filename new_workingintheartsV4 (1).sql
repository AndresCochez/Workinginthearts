-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2024 at 03:31 PM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_workinginthearts`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `work_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id`, `user_id`, `work_date`, `created_at`) VALUES
(33, 6, '2024-05-23', '2024-06-18 14:48:21'),
(51, 6, '2024-06-17', '2024-06-18 15:07:28'),
(52, 6, '2024-06-16', '2024-06-18 15:07:28'),
(63, 6, '2024-06-15', '2024-06-18 15:17:03'),
(64, 6, '2024-06-14', '2024-06-18 15:17:04'),
(65, 6, '2024-06-19', '2024-06-18 15:17:12'),
(66, 6, '2024-06-20', '2024-06-18 15:17:12'),
(67, 6, '2024-06-21', '2024-06-18 15:17:13'),
(68, 6, '2024-06-22', '2024-06-18 15:17:13'),
(69, 6, '2024-06-23', '2024-06-18 15:17:13'),
(70, 6, '2024-06-11', '2024-06-18 15:17:14'),
(71, 6, '2024-06-10', '2024-06-18 15:17:14'),
(72, 6, '2024-06-09', '2024-06-18 15:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `reminder_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reminder_text` varchar(255) NOT NULL,
  `reminder_date` date NOT NULL,
  `reminder_time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `receive_notifications` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `job_type`, `profile_pic`, `receive_notifications`) VALUES
(6, 'Ender', 'vdaender@gmail.com', '$2y$10$25hKUhkmKlI8ejoXxBunGexlqgWahnANt.z8U.fohQE0nq3znhba2', 'muzikant(e)', NULL, 1),
(7, 'Sarah', 'test@test.be', '$2y$10$TTLGM7nBQKWa5A0CVqr7re47B08AV533KEGiNcIdmz42HVa7wEUgu', 'actor', NULL, 0),
(8, 'wii', 'wii@wii.com', '$2y$10$lT4GLymDaO5TioYrlwWJou9xY/gkWgviTIUPxtc2kNiNBW/8UjWba', 'sculptor', NULL, 0),
(9, 'Zalmig', 'email@email.com', '$2y$10$VVQ3gSnZ0kEmlUn4fKnlDeEyU3P2yfE.lfEEKWbG7y4lx0tDUzSP6', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `work_entries`
--

CREATE TABLE `work_entries` (
  `entry_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hours_worked` decimal(10,2) DEFAULT NULL,
  `gross_wage` decimal(10,2) DEFAULT NULL,
  `days_worked` decimal(10,2) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_address` varchar(255) DEFAULT NULL,
  `client_vat` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work_entries`
--

INSERT INTO `work_entries` (`entry_id`, `user_id`, `hours_worked`, `gross_wage`, `days_worked`, `photo_url`, `description`, `client_name`, `client_address`, `client_vat`, `start_date`, `end_date`) VALUES
(11, 6, '6.00', '300.00', '3.77', 'uploads/nerd.png', 'SpaceX Concert', 'Elon Musk', 'AIE', 'AZEI', '2024-06-17', '2024-06-17'),
(12, 6, '4.00', '450.00', '5.65', 'uploads/nerd.png', 'Sportpaleis', 'Sportpaleis NV', 'FK', 'FK', '2024-06-30', '2024-06-30'),
(14, 6, '6.00', '175.00', '2.20', 'uploads/nerd.png', 'Café Gummi', 'Bjorn', 'AZOE', 'EZOA', '2024-07-22', '2024-07-22'),
(16, 6, '7.00', '200.00', '2.51', 'uploads/nerd.png', 'Sportpaleis', 'Sportpaleis', 'AZE', 'AZE', '2024-06-17', '2024-06-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`reminder_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `work_entries`
--
ALTER TABLE `work_entries`
  ADD PRIMARY KEY (`entry_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `reminder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `work_entries`
--
ALTER TABLE `work_entries`
  MODIFY `entry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
