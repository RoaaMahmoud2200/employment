-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 06:48 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employment`
--

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `offer` varchar(255) NOT NULL,
  `max_candidate_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `position`, `description`, `offer`, `max_candidate_number`) VALUES
(8, '123employee', '123bvbhsbkasnljfmhdugfjweguicriwmjefkxlkdsfvhsd', '12bgrcuwrimnuhmqrcithnvgyeuwt3bvh', 5),
(11, 'system tester', 'bvhsduyvguayhgvwelijugqywr8eghrfnabiuewrh8tyagjmboveiarugnh', 'bvhsduyvguayhgvwelijugqywr8eghrfnabiuewrh8tyagjmboveiarugnh', 8),
(12, 'system analysis', 'bvhsduyvguayhgvwelijugqywr8eghrfnabiuewrh8tyagjmboveiarugnh', 'bvhsduyvguayhgvwelijugqywr8eghrfnabiuewrh8tyagjmboveiarugnh', 8),
(14, 'dancer', 'bvhsduyvguayhgvwelijugqywr8eghrfnabiuewrh8tyagjmboveiarugnh', 'bvhsduyvguayhgvwelijugqywr8eghrfnabiuewrh8tyagjmboveiarugnh', 8),
(19, 'system tester', 'bvhsduyvguayhgvwelijugqywr8eghrfnabiuewrh8tyagjmboveiarugnh', 'bvhsduyvguayhgvwelijugqywr8eghrfnabiuewrh8tyagjmboveiarugnh', 2),
(20, 'system tester', 'bvhsduyvguayhgvwelijugqywr8eghrfnabiuewrh8tyagjmboveiarugnh', 'bvhsduyvguayhgvwelijugqywr8eghrfnabiuewrh8tyagjmboveiarugnh', 2),
(21, 'lawer', 'hfgwyergwnhdnnbdgycgbruiemxqowimxoifrhg', 'nbdhjcgdkfnewgfyrgnywuewrhnmsufheuirughwemrghtugh', 2),
(22, 'singer', 'hfgwyergwnhdnnbdgycgbruiemxqowimxoifrhg', 'nbdhjcgdkfnewgfyrgnywuewrhnmsufheuirughwemrghtugh', 5),
(23, 'graphic desginer', 'hfgwyergwnhdnnbdgycgbruiemxqowimxoifrhg', 'nbdhjcgdkfnewgfyrgnywuewrhnmsufheuirughwemrghtugh', 5),
(24, 'human resources', 'hfgwyergwnhdnnbdgycgbruiemxqowimxoifrhg', 'nbdhjcgdkfnewgfyrgnywuewrhnmsufheuirughwemrghtugh', 4);

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE `qualification` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `requirement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`id`, `job_id`, `requirement`) VALUES
(3, 8, 'buygwfvhbcnaiuueryhfuvcjauevfchui'),
(6, 11, 'english is important '),
(9, 11, 'graduate from cs');

-- --------------------------------------------------------

--
-- Table structure for table `request_history`
--

CREATE TABLE `request_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_history`
--

INSERT INTO `request_history` (`id`, `user_id`, `job_id`, `qualification`) VALUES
(1, 7, 8, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7'),
(8, 17, 11, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7'),
(13, 31, 11, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7'),
(14, 30, 11, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7'),
(20, 28, 8, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7'),
(34, 7, 11, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7'),
(35, 31, 14, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7'),
(36, 31, 19, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7'),
(38, 31, 20, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7'),
(39, 17, 14, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7'),
(40, 17, 14, 'vcxytewfdceNGQWRYENV8WQT6RVEWY7');

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `response` tinyint(1) NOT NULL COMMENT '0->reject \r\n1->accept'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`id`, `request_id`, `response`) VALUES
(3, 8, 1),
(4, 8, 1),
(5, 13, 1),
(6, 13, 1),
(10, 13, 1),
(11, 1, 1),
(12, 34, 1),
(13, 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `search_history`
--

CREATE TABLE `search_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search_history`
--

INSERT INTO `search_history` (`id`, `user_id`, `keyword`) VALUES
(1, 17, 'system'),
(2, 7, 'system'),
(3, 8, 'test'),
(4, 17, 'tem'),
(6, 28, 'ana'),
(7, 28, 'er'),
(8, 28, 'a'),
(9, 28, 'tester'),
(10, 28, 'sys'),
(11, 7, 'sys'),
(12, 7, 'sys');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0->active\r\n1->inactive',
  `role` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-> user\r\n1->admin',
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `state`, `role`, `token`) VALUES
(7, 'mahmoud123', 'amr@gamil.com', '$2b$10$LYCbaXkt2GZxxXmRnx9WUuHGJQ7Ui2Xm/xq2w186dQ1CPNQzG2DnW', 1012345612, 0, 0, '03b06a1bb446afead4f0e2f6ae1a3ce1'),
(8, 'ttttttttttttttttttt', 'alaa@gamil.com', '$2b$10$Q80zo9BwqyKEK/Th.OVbSuhaAkQgG9xzd0OlbKcXDTqMB7i.NmRFq', 1012345612, 0, 0, '46dcc13619b69e430a29eb83b496861f'),
(17, 'mahmoud123', 'farida@gamil.com', '$2b$10$3N.q2DdbMUESHR7LZxc.B.tZbiheca73IOIiOfejts6eY5u5GACdm', 1012345612, 0, 0, '45efdc5080edcd63d3b81f885ee8b8a4'),
(28, ' ppppppppppppp', 'amir@gamil.com', '$2b$10$/El3eHM.GynzsXUIGm2jluqqNnhLxC7/qI8JchbDFjWukIswT8/TG', 1012345612, 0, 1, 'ffc67909c7d65636ee2316ff14084be7'),
(30, 'oooooowwwoo', 'amr@gamil.com', '$2b$10$/r0uvedd4zuU280W2oRH3eqFIPCTpPmEmNhHonU0qimXJTAV467xq', 1012345612, 0, 0, 'f478c057ee5671dd0f6e37e504c2b953'),
(31, 'marim alaa', 'marim@gamil.com', '$2b$10$5rEfH09eBUS7BSVCb.cYkeeHCsXoI5XSFqlr/jK3ucKjIPYI4ANJu', 1012345612, 0, 0, '5c990c02956f3d5c48f8c7b02e399a7c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_constr_id` (`job_id`);

--
-- Indexes for table `request_history`
--
ALTER TABLE `request_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobconstrid` (`job_id`),
  ADD KEY `userconstrid` (`user_id`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_constr_id` (`request_id`);

--
-- Indexes for table `search_history`
--
ALTER TABLE `search_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userconstr_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `request_history`
--
ALTER TABLE `request_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `response`
--
ALTER TABLE `response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `search_history`
--
ALTER TABLE `search_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `qualification`
--
ALTER TABLE `qualification`
  ADD CONSTRAINT `job_constr_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request_history`
--
ALTER TABLE `request_history`
  ADD CONSTRAINT `jobconstrid` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userconstrid` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `request_constr_id` FOREIGN KEY (`request_id`) REFERENCES `request_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `search_history`
--
ALTER TABLE `search_history`
  ADD CONSTRAINT `userconstr_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
