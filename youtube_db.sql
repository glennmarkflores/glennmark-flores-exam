-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 07:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `profile_picture`, `name`, `description`) VALUES
(8, 'https://yt3.ggpht.com/urNLBJGryDamao5r0jmlTg84mIBOoaeJd6XR67j4nuRd0iRvv5g-MUgaowsWKCs8V_t4KwST=s88-c-k-c0x00ffffff-no-rj', 'NBA', 'The NBA is the premier professional basketball league in the United States and Canada. The league is truly global, with games and programming in 215 countries and territories in 47 languages. The NBA consists of 30 teams. The NBA offers real time access to live regular season NBA games with a subscription to NBA LEAGUE PASS, available globally for TV, broadband, and mobile.  Real-time Stats, Scores, Highlights and more are available to fans on web and mobile with the NBA App. \n\nFor news, stories, highlights and more, go to our official website at https://app.link.nba.com/e/NBA_site\n');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `video_link` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `video_link`, `title`, `description`, `thumbnail`) VALUES
(301, 'https://www.youtube.com/watch?v=6M11q1JrLgA', 'Victor Wembanyama’s Spurs Introductory Press Conference', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/6M11q1JrLgA/default.jpg'),
(302, 'https://www.youtube.com/watch?v=nJ7KDvq6NfY', 'Victor Wembanyama Talks Dinner With David Robinson, Tim Duncan &amp; Manu Ginobili! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/nJ7KDvq6NfY/default.jpg'),
(303, 'https://www.youtube.com/watch?v=-wLWjHDeOwQ', 'Victor Wembanyama Gets Asked The Big Question 🤔| #Shorts', '', 'https://i.ytimg.com/vi/-wLWjHDeOwQ/default.jpg'),
(304, 'https://www.youtube.com/watch?v=QtcpB2m28S0', 'All-Access: 2023 NBA Draft', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/QtcpB2m28S0/default.jpg'),
(305, 'https://www.youtube.com/watch?v=C_fX7JUVvDg', 'Every #1 Pick Since 1980 | Victor Wembanyama, LeBron, Shaq and MORE', 'Check out every first overall pick since 1980 following the 2023 #NBADraft presented by State Farm Never miss a moment with ...', 'https://i.ytimg.com/vi/C_fX7JUVvDg/default.jpg'),
(306, 'https://www.youtube.com/watch?v=8PZDjqLJhTo', 'Inside the Spurs War Room while drafting Wemby! 👏 | #Shorts', '', 'https://i.ytimg.com/vi/8PZDjqLJhTo/default.jpg'),
(307, 'https://www.youtube.com/watch?v=qdKfJDdMjaU', 'The Best Mic’d up moments from the 2023 #NBADraft! 🎤| #Shorts', '', 'https://i.ytimg.com/vi/qdKfJDdMjaU/default.jpg'),
(308, 'https://www.youtube.com/watch?v=12V5b7yedow', 'Jett Howard &amp; Juwan Howard! 😬📸| #Shorts', '', 'https://i.ytimg.com/vi/12V5b7yedow/default.jpg'),
(309, 'https://www.youtube.com/watch?v=MwoFguoxnq4', '2023 #NBADraft presented by State Farm Press Conference', 'The 2023 #NBADraft presented by State Farm press conference. Hear from the future of the NBA! Never miss a moment with the ...', 'https://i.ytimg.com/vi/MwoFguoxnq4/default.jpg'),
(310, 'https://www.youtube.com/watch?v=GoWa2-8VykU', 'The Wemby Crew. 🇫🇷🙌| #Shorts', '', 'https://i.ytimg.com/vi/GoWa2-8VykU/default.jpg'),
(311, 'https://www.youtube.com/watch?v=U7bKiCWTyGU', 'Jett Howard reacts to his former teammate Kobe Bufkin getting drafted! Michigan Connection🤝| #Short', '', 'https://i.ytimg.com/vi/U7bKiCWTyGU/default.jpg'),
(312, 'https://www.youtube.com/watch?v=80S-vj4iQzc', 'Gradey is looking forward to link with Drake in the 6! 🦉| #Shorts', '', 'https://i.ytimg.com/vi/80S-vj4iQzc/default.jpg'),
(313, 'https://www.youtube.com/watch?v=aeXPv4cvBko', 'All 30 First Round Picks Of The 2023 #NBADraft', 'Check out all 30 first round picks of the 2023 #NBADraft presented by State Farm! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/aeXPv4cvBko/default.jpg'),
(314, 'https://www.youtube.com/watch?v=qWnmihnRai4', 'Dereck Lively, II with a special message for his mom. 💕| #Shorts', '', 'https://i.ytimg.com/vi/qWnmihnRai4/default.jpg'),
(315, 'https://www.youtube.com/watch?v=c0rYPWWV08c', 'Wemby receives a call from coach Pop! 📲| #Shorts', '', 'https://i.ytimg.com/vi/c0rYPWWV08c/default.jpg'),
(316, 'https://www.youtube.com/watch?v=kUcWXi8gFBs', 'Victor Wembanyama keeps it real! 😂🌮| #Shorts', '', 'https://i.ytimg.com/vi/kUcWXi8gFBs/default.jpg'),
(317, 'https://www.youtube.com/watch?v=jguHFWEEPiI', 'Former teammates Victor Wembanyama &amp; Bilal Coulibaly share a moment after being drafted! |#Shorts', '', 'https://i.ytimg.com/vi/jguHFWEEPiI/default.jpg'),
(318, 'https://www.youtube.com/watch?v=D5ho8lg3eDY', 'National Champion &amp; now a Lottery Pick! Jordan Hawkins is headed to New Orleans! 🥹| #Shorts', '', 'https://i.ytimg.com/vi/D5ho8lg3eDY/default.jpg'),
(319, 'https://www.youtube.com/watch?v=uUbUG8zGpMQ', 'That feeling after being drafted! Dance Scoot 🕺| #Shorts', '', 'https://i.ytimg.com/vi/uUbUG8zGpMQ/default.jpg'),
(320, 'https://www.youtube.com/watch?v=Vf9HFIDHPns', 'Jett Howard the son of NBA Legend Juwan Howard is headed to Orlando! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/Vf9HFIDHPns/default.jpg'),
(321, 'https://www.youtube.com/watch?v=a91FF9bWKHE', 'Wemby is excited as for his former teammate Bilal Coulibaly was drafted 7th! 😧| #Shorts', '', 'https://i.ytimg.com/vi/a91FF9bWKHE/default.jpg'),
(322, 'https://www.youtube.com/watch?v=00YRUJ4qZtA', 'Brandon Miller Full Presser After Being Selected #2 Overall In The 2023 #NBADraft', 'The Charlotte Hornets select Brandon Miller with the #2 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/00YRUJ4qZtA/default.jpg'),
(323, 'https://www.youtube.com/watch?v=fIjLizGDxrM', 'Scoot Henderson Full Presser After Being Selected #3 Overall In The 2023 #NBADraft', 'The Portland Trail Blazers select Scoot Henderson with the #3 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/fIjLizGDxrM/default.jpg'),
(324, 'https://www.youtube.com/watch?v=Tncd-w2Dz_0', 'Victor Wembanyama Full Presser After Being Selected #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/Tncd-w2Dz_0/default.jpg'),
(325, 'https://www.youtube.com/watch?v=tSkW_MzvMEI', 'Victor Wembanyama overcome with emotion as he holds his Spurs jersey for the 1st time! 🥹| #Shorts', '', 'https://i.ytimg.com/vi/tSkW_MzvMEI/default.jpg'),
(326, 'https://www.youtube.com/watch?v=kYcPagdyIfs', 'Anthony Black is headed to Orlando! 🥶| #Shorts', '', 'https://i.ytimg.com/vi/kYcPagdyIfs/default.jpg'),
(327, 'https://www.youtube.com/watch?v=lCJS41nmJxM', 'All the hard work led to this moment for Victor Wembanyama…let the tears flow! 🥹| #Shorts', '', 'https://i.ytimg.com/vi/lCJS41nmJxM/default.jpg'),
(328, 'https://www.youtube.com/watch?v=-zvHdoYlICo', 'The moment dreams became reality for Victor Wembanyama! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/-zvHdoYlICo/default.jpg'),
(329, 'https://www.youtube.com/watch?v=8soOlgFOc0Q', 'Ausar Thompson is headed to Detroit! The Thompson twins go back-2-back! 🤝| #Shorts', '', 'https://i.ytimg.com/vi/8soOlgFOc0Q/default.jpg'),
(330, 'https://www.youtube.com/watch?v=jrQrWfyk44s', 'Ausar Thompson Goes #5 Overall In The 2023 #NBADraft', 'The Detroit Pistons select Ausar Thompson with the #5 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/jrQrWfyk44s/default.jpg'),
(331, 'https://www.youtube.com/watch?v=K-zkVkn_VtY', 'Amen Thompson is headed to Houston! 🚀| #Shorts', '', 'https://i.ytimg.com/vi/K-zkVkn_VtY/default.jpg'),
(332, 'https://www.youtube.com/watch?v=_QZGbTSjXvo', 'Amen Thompson Goes #4 Overall In The 2023 #NBADraft', 'The Houston Rockets select Amen Thompson with the #4 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/_QZGbTSjXvo/default.jpg'),
(333, 'https://www.youtube.com/watch?v=ufd1byHl7Bc', 'Scoot Henderson is headed to Portland! 🙌 #NBADraft | #Shorts', '', 'https://i.ytimg.com/vi/ufd1byHl7Bc/default.jpg'),
(334, 'https://www.youtube.com/watch?v=QQbnNAjfng0', 'Brandon Miller is headed to Charlotte! #NBADraft 🙌| #Shorts', '', 'https://i.ytimg.com/vi/QQbnNAjfng0/default.jpg'),
(335, 'https://www.youtube.com/watch?v=djYSWh2mEjs', '“I’m a damn Spur!” - Victor Wembanyama overcome with emotion after being drafted number 1! | #Shorts', '', 'https://i.ytimg.com/vi/djYSWh2mEjs/default.jpg'),
(336, 'https://www.youtube.com/watch?v=9gNUXmSfyh4', 'Scoot Henderson Goes #3 Overall In The 2023 #NBADraft', 'The Portland Trail Blazers select Scoot Henderson with the #3 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/9gNUXmSfyh4/default.jpg'),
(337, 'https://www.youtube.com/watch?v=O8JMaE09iyk', 'Brandon Miller Goes #2 Overall In The 2023 #NBADraft', 'The Charlotte Hornets select Brandon Miller with the #2 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/O8JMaE09iyk/default.jpg'),
(338, 'https://www.youtube.com/watch?v=5MPSFthKI-I', 'Victor Wembanyama Goes #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/5MPSFthKI-I/default.jpg'),
(339, 'https://www.youtube.com/watch?v=XNPfly4TtaE', 'Victor Wembanyama Interview After Being Selected #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/XNPfly4TtaE/default.jpg'),
(340, 'https://www.youtube.com/watch?v=CoA0kuNKQVc', 'With the 1st pick of 2023 #NBADraft the Spurs Select…Victor Wembanyama! 🙌|#Shorts', '', 'https://i.ytimg.com/vi/CoA0kuNKQVc/default.jpg'),
(341, 'https://www.youtube.com/watch?v=uOdm1AlIElM', 'Proud Mom of the Thompson Twins at the #NBADraft! 💕| #Shorts', '', 'https://i.ytimg.com/vi/uOdm1AlIElM/default.jpg'),
(342, 'https://www.youtube.com/watch?v=B8NEeF-37ZE', 'Gradey Dick breaks down the top 3 features of his #NBADraft fit! 😎| #Shorts', '', 'https://i.ytimg.com/vi/B8NEeF-37ZE/default.jpg'),
(343, 'https://www.youtube.com/watch?v=fJJHmh6qlaQ', 'Victor Wembanyama breaks down the top 3 features of his #NBADraft fit! 🇫🇷| #Shorts', '', 'https://i.ytimg.com/vi/fJJHmh6qlaQ/default.jpg'),
(344, 'https://www.youtube.com/watch?v=g57T-2I_5V4', 'Ladies &amp; Gentleman Presenting The Class of 2023! #NBADraft 🙌| #Shorts', '', 'https://i.ytimg.com/vi/g57T-2I_5V4/default.jpg'),
(345, 'https://www.youtube.com/watch?v=D3pWYSm1kpo', 'Scoot Henderson breaks down the top 3 features of his #NBADraft Fit! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/D3pWYSm1kpo/default.jpg'),
(346, 'https://www.youtube.com/watch?v=LP55ReGws1c', 'Designed &amp; inspired by Family…Scoot Henderson breaks down his Draft Fit! 🔥| #Shorts', '', 'https://i.ytimg.com/vi/LP55ReGws1c/default.jpg'),
(347, 'https://www.youtube.com/watch?v=2ffj1zQeS0w', 'The draftees have arrived for their big night! 🙌Let us know your favorite Draft fit? 👀| #Shorts', '', 'https://i.ytimg.com/vi/2ffj1zQeS0w/default.jpg'),
(348, 'https://www.youtube.com/watch?v=Kbv4W1hmJ2w', 'NBA correspondent Jeremy Sochan gets ready and dyes his hair ahead of the #NBADraft! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/Kbv4W1hmJ2w/default.jpg'),
(349, 'https://www.youtube.com/watch?v=_FlGS7Q7X-8', 'Cam Whitmore gives us a sneak peek on his #NBADraft night suit &amp; kicks 👀| #Shorts', '', 'https://i.ytimg.com/vi/_FlGS7Q7X-8/default.jpg'),
(350, 'https://www.youtube.com/watch?v=R8DqrHs2YgM', 'Gradey Dick channeling his inner Dorthy for the #NBADraft presented by State Farm! 😎| #Shorts', '', 'https://i.ytimg.com/vi/R8DqrHs2YgM/default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
