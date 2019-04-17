-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2019 at 11:06 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atestat`
--
CREATE DATABASE IF NOT EXISTS `atestat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `atestat`;

-- --------------------------------------------------------

--
-- Table structure for table `albume_east`
--

DROP TABLE IF EXISTS `albume_east`;
CREATE TABLE `albume_east` (
  `id` int(11) NOT NULL,
  `nume` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `an` int(11) NOT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `albume_east`:
--   `artist_id`
--       `rapperi_east` -> `id`
--

--
-- Dumping data for table `albume_east`
--

INSERT INTO `albume_east` (`id`, `nume`, `an`, `cover`, `artist_id`) VALUES
(1, 'Ready to Die', 1994, 'readyToDie.jpg', 1),
(2, 'Life After Death', 1997, 'lifeAfterDeath.jpg', 1),
(3, 'Reasonable Doubt', 1996, 'reasonableDoubt.jpg', 2),
(4, 'The Blueprint', 2001, 'theBlueprint.png', 2),
(5, 'Illmatic', 1994, 'illmatic.jpg', 3),
(6, 'Nasir', 2018, 'nasir.jpg', 3),
(7, 'Nastradamus', 1999, 'nastradamus.jpg', 3),
(8, 'The Seventh Seal', 2009, 'seventhSeal.jpg', 4),
(9, 'The Archive: Live, Lost & Found', 2008, 'liveLostFound.jpg', 4),
(10, 'Criminal Minded', 1987, 'criminalMinded.jpg', 5),
(11, 'Return of the Boom Bap', 1993, 'returnOfTheBoomBap.jpg', 5),
(12, 'KRS-One', 1995, 'krs.jpg', 5),
(13, 'When Disaster Strikes...', 1997, 'whenDisasterStrikes.jpg', 6),
(14, 'The Coming', 1996, 'theComing.jpg', 6),
(15, 'Genesis', 2001, 'genesis.jpg', 6),
(16, 'Tical', 1994, 'tical.jpg', 7),
(17, 'The Meth Lab', 2015, 'theMethLab.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `albume_modern`
--

DROP TABLE IF EXISTS `albume_modern`;
CREATE TABLE `albume_modern` (
  `id` int(11) NOT NULL,
  `nume` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `an` int(11) NOT NULL,
  `cover` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `albume_modern`:
--   `artist_id`
--       `rapperi_modern` -> `id`
--

--
-- Dumping data for table `albume_modern`
--

INSERT INTO `albume_modern` (`id`, `nume`, `an`, `cover`, `artist_id`) VALUES
(1, 'TA13OO', 2018, 'ta13oo.jpg', 1),
(2, 'Imperial', 2016, 'imperial.jpg', 1),
(3, 'The Last Rocket', 2018, 'last_rocket.jpeg', 2),
(4, 'Lil Pump', 2017, 'lilpumpcover.jpg', 3),
(5, 'Pluto', 2012, 'pluto.jpg', 4),
(6, 'Honest', 2014, 'honest.jpg', 4),
(7, 'Hndrxx', 2017, 'hndrxx.jpg', 4),
(8, 'Evil Genius', 2018, 'evilGenius.jpg', 5),
(9, 'Mr. Davis', 2017, 'mrDavis.jpg', 5),
(10, 'Everybody Looking', 2016, 'everybodyLooking.jpg', 5),
(11, 'Astroworld', 2018, 'astroworld.jpg', 6),
(12, 'Birds in the Trap Sing McKnight', 2016, 'birdsInTheTrapSingMcKnight.jpg', 6),
(13, 'Rodeo', 2015, 'rodeo.jpg', 6),
(14, 'Skins', 2018, 'skins.png', 7),
(15, '?', 2018, 'questionMark.jpg', 7),
(16, '17', 2017, '17.jpg', 7),
(17, 'Nostalgic 64', 2013, 'nostalgic64.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `albume_ro`
--

DROP TABLE IF EXISTS `albume_ro`;
CREATE TABLE `albume_ro` (
  `id` int(11) NOT NULL,
  `nume` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `an` int(11) NOT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `albume_ro`:
--   `artist_id`
--       `rapperi_ro` -> `id`
--

--
-- Dumping data for table `albume_ro`
--

INSERT INTO `albume_ro` (`id`, `nume`, `an`, `cover`, `artist_id`) VALUES
(1, 'Marea scofală', 1999, 'mareaScofala.jpg', 1),
(2, 'Daciada', 1995, 'daciada.jpg', 1),
(3, 'Alchimia Veninului', 2007, 'alchimiaVeninului.jpg', 2),
(4, 'Sfinții Închisorilor ', 2014, 'sfintiiInchisorilor.jpg', 2),
(5, 'Școala veche', 2018, 'scoalaVeche.jpg', 2),
(6, 'Secretul din Atom', 2002, 'secretul.jpg', 4),
(7, 'Dificultăți Tehnice', 2005, 'dificultati.jpg', 4),
(8, 'Înapoi în viitor', 2011, 'inapoiInViitor.jpg', 6),
(9, 'Viața noastră Volumul 1', 2006, 'viataNoastra1.jpg', 6),
(10, 'Băieții buni', 2003, 'baietiiBuni.jpg', 6),
(11, 'Irefutabil', 2002, 'irefutabil.jpg', 5),
(12, 'Lovitură de pedeapsă', 2016, 'lovituraDePedeapsa.jpg', 5),
(13, 'Slalom printre cretini', 2007, 'slalom.jpg', 5),
(14, 'Rap-Sodia efectului defectului', 1995, 'rapsodia.jpg', 7),
(15, 'Plus Infinit', 2000, 'plusInfinit.jpg', 7),
(16, 'Raport Major', 2016, 'raportMajor.jpg', 7),
(17, 'Rezistența', 2009, 'rezistenta.jpg', 8),
(18, 'în Mediu Vitreg', 2002, 'inMediuVitreg.jpg', 8),
(19, 'Amenințarea Maimuței', 2009, 'amenintareaMaimutei.jpg', 3),
(20, 'Imperiul Lianelor', 2010, 'imperiulLianelor.jpg', 3),
(21, 'Ușile Vol. 1', 2011, 'usileVol1.jpg', 3),
(22, 'Fuck Darwin', 2018, 'fuckDarwin.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `albume_west`
--

DROP TABLE IF EXISTS `albume_west`;
CREATE TABLE `albume_west` (
  `id` int(11) NOT NULL,
  `nume` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `an` int(11) NOT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `albume_west`:
--   `artist_id`
--       `rapperi_west` -> `id`
--

--
-- Dumping data for table `albume_west`
--

INSERT INTO `albume_west` (`id`, `nume`, `an`, `cover`, `artist_id`) VALUES
(1, 'The Chronic', 1992, 'chronic.jpg', 1),
(2, '2001', 1999, '2001.jpg', 1),
(3, 'The Predator', 1992, 'thePredator.jpg', 3),
(4, 'Death Certificate', 1991, 'deathCertificate.jpg', 3),
(5, 'All Eyez on Me', 1996, 'allEyezOnMe.jpg', 4),
(6, 'Eazy-Duz-It', 1988, 'eazyDuzIt.jpg', 5),
(7, 'Eternal E', 1995, 'eternalE.jpg', 5),
(8, 'Str8 off tha Streetz of Muthaphukkin Compton', 1996, 'straightStreets.jpg', 5),
(9, 'Mannibalector', 2013, 'mannibalector.jpg', 10),
(10, 'Season of da Siccness', 1995, 'seasonOfDaSiccness.jpg', 10),
(11, 'Coathanga Strangla', 2011, 'coathangaStrangla.png', 10),
(12, 'Restless', 2000, 'restless.jpg', 8),
(13, 'At the Speed of Life', 1996, 'speedOfLight.jpg', 8),
(14, 'Napalm', 2012, 'napalm.jpg', 8),
(15, 'The Devil Made Me Do It', 1990, 'devilMadeMeDoIt.jpg', 7),
(16, 'Sleeping with the Enemy', 1992, 'sleepingWithTheEnemy.jpg', 7),
(17, 'Guerrilla Funk', 1994, 'guerrillaFunk.jpg', 7),
(18, 'Doggystyle', 1993, 'doggystyle.jpg', 6),
(19, 'Neva Left', 2017, 'nevaLeft.jpg', 6),
(20, 'Tha Doggfather', 1996, 'doggfather.jpg', 6),
(21, 'The Pimp Tape', 2018, 'pimpTape.jpg', 9),
(22, 'Born to Mack', 1987, 'bornToMack.jpg', 9),
(23, 'Get in Where You Fit In', 1993, 'whereYouFitIn.jpg', 9),
(24, 'The Don Killuminati: The 7 Day Theory', 1996, 'donKilluminati.jpg', 4),
(25, 'Me Against the World', 1995, 'meAgainstTheWorld.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `melodii_east`
--

DROP TABLE IF EXISTS `melodii_east`;
CREATE TABLE `melodii_east` (
  `id` int(11) NOT NULL,
  `titlu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `melodii_east`:
--   `album_id`
--       `albume_east` -> `id`
--

--
-- Dumping data for table `melodii_east`
--

INSERT INTO `melodii_east` (`id`, `titlu`, `filename`, `album_id`) VALUES
(1, 'Intro', NULL, 1),
(2, 'Things Done Changed', NULL, 1),
(3, 'Gimme the Loot', NULL, 1),
(4, 'Machine Gun Funk', NULL, 1),
(5, 'Warning', NULL, 1),
(6, 'Ready to Die', 'Ready_to_Die_-_Biggie_(Original_Version).mp3', 1),
(7, 'One More Chance', NULL, 1),
(8, 'Fuck Me', NULL, 1),
(9, 'The What', NULL, 1),
(10, 'Juicy', NULL, 1),
(11, 'Everyday Struggle', NULL, 1),
(12, 'Me & My Bitch', NULL, 1),
(13, 'Big Poppa', 'Big_Poppa_-_Biggie_(Original_Version).mp3', 1),
(14, 'Respect', NULL, 1),
(15, 'Friend of Mine', NULL, 1),
(16, 'Unbelievable', NULL, 1),
(17, 'Suicidal Thoughts', 'Suicidal_Thoughts_-_Biggie_(Original_Version).mp3', 1),
(18, 'Life After Death Intro', NULL, 2),
(19, 'Somebody\'s Gotta Die', 'Biggie_Smalls_-_Somebody\'s_Gotta_Die.mp3', 2),
(20, 'Hypnotize', 'Biggie_Smalls_-_Hypnotize.mp3', 2),
(21, 'Kick in the Door', NULL, 2),
(22, 'Fuck You Tonight', NULL, 2),
(23, 'Last Day', NULL, 2),
(24, 'I Love the Dough', 'Biggie_Smalls__feat._Jay_Z_&_Angela_Winbush_-_I_Love_The_Dough.mp3', 2),
(25, 'What\'s Beef', NULL, 2),
(26, 'B.I.G. Interlude', NULL, 2),
(27, 'Mo Money Mo Problems', 'Biggie_Smalls-Mo_Money_Mo_Problems.mp3', 2),
(28, 'Niggas Bleed', NULL, 2),
(29, 'I Got a Story to Tell', NULL, 2),
(30, 'Interview', NULL, 2),
(31, 'Can\'t Knock the Hustle', NULL, 3),
(32, 'Politics as Usual', NULL, 3),
(33, 'Brooklyn\'s Finest', 'Jay-z_Ft_Biggie_Smalls_-_Brooklyns_Finest.mp3', 3),
(34, 'Dead Presidents II', NULL, 3),
(35, 'Feelin\' It', NULL, 3),
(36, 'D\'Evils', NULL, 3),
(37, '22 Two\'s', NULL, 3),
(38, 'Can I Live', NULL, 3),
(39, 'Ain\'t No Nigga', NULL, 3),
(40, 'Friend or Foe', NULL, 3),
(41, 'Coming of Age', NULL, 3),
(42, 'Cashmere Thoughts', 'Jay-Z_Reasonable_Doubt_track_#12_Cashmere_Thoughts.mp3', 3),
(43, 'Bring It On', NULL, 3),
(44, 'Regrets', NULL, 3),
(45, 'The Ruler\'s Back', NULL, 4),
(46, 'Takeover', NULL, 4),
(47, 'Izzo', NULL, 4),
(48, 'Girls, Girls, Girls', NULL, 4),
(49, 'Jigga That Nigga', NULL, 4),
(50, 'U Don\'t Know', NULL, 4),
(51, 'Hola\' Hovito', NULL, 4),
(52, 'Heart of the City', 'Jay-Z_-_Heart_Of_The_City_(Ain\'t_No_Love)_(HQ_Sound).mp3', 4),
(53, 'Never Change', NULL, 4),
(54, 'Song Cry', NULL, 4),
(55, 'All I Need', NULL, 4),
(56, 'Renegade', NULL, 4),
(57, 'Blueprint', NULL, 4),
(58, 'The Genesis', NULL, 5),
(59, 'N.Y. State of Mind', 'Nas_-_N.Y._State_of_Mind_(Audio).mp3', 5),
(60, 'Life\'s a Bitch', 'Nas_feat_A.Z._-_Life\'s_A_Bitch.mp3', 5),
(61, 'The World Is Yours', 'Nas_-_The_World_Is_Yours.mp3', 5),
(62, 'Halftime', 'NaS_-_Halftime_(complete_with_lyrics).mp3', 5),
(63, 'Memory Lane', NULL, 5),
(64, 'One Love', NULL, 5),
(65, 'One Time 4 Your Mind', NULL, 5),
(66, 'Represent', NULL, 5),
(67, 'It Ain\'t Hard to Tell', 'Nas_-_It_Ain\'t_Hard_to_Tell.mp3', 5),
(68, 'Not for Radio', NULL, 6),
(69, 'Cops Shot the Kid', NULL, 6),
(70, 'White Label', NULL, 6),
(71, 'Bonjour', NULL, 6),
(72, 'Everything', NULL, 6),
(73, 'Adam and Eve', NULL, 6),
(74, 'Simple Things', NULL, 6),
(75, 'The Prediction', NULL, 7),
(76, 'Life We Chose', NULL, 7),
(77, 'Nastradamus', NULL, 7),
(78, 'Some of Us Have Angels', NULL, 7),
(79, 'Project Windows', NULL, 7),
(80, 'Come Get Me', NULL, 7),
(81, 'Shoot \'Em Up', NULL, 7),
(82, 'Last Words', NULL, 7),
(83, 'Family', NULL, 7),
(84, 'God Love Us', NULL, 7),
(85, 'Quiet Niggas', NULL, 7),
(86, 'Big Girl', 'Nas-_Big_Girl_Now.mp3', 7),
(87, 'New World', NULL, 7),
(88, 'You Owe Me', NULL, 7),
(89, 'The Outcome', NULL, 7),
(90, 'How to Emcee', NULL, 8),
(91, 'Walk These Streets', NULL, 8),
(92, 'Documentary of a Gangsta', 'Rakim_-_The_Seventh_Seal_-_03._Documentary_Of_A_Gangsta.mp3', 8),
(93, 'Man Above', NULL, 8),
(94, 'You and I', NULL, 8),
(95, 'Won’t Be Long', NULL, 8),
(96, 'Holy Are U', NULL, 8),
(97, 'Satisfaction Guaranteed', NULL, 8),
(98, 'Working for You', NULL, 8),
(99, 'Message in the Song', NULL, 8),
(100, 'Put It All to Music', NULL, 8),
(101, 'Psychic Love', NULL, 8),
(102, 'Still in Love', NULL, 8),
(103, 'Dedicated', NULL, 8),
(104, 'Euphoria', NULL, 8),
(105, 'Hip-Hop', NULL, 9),
(106, 'Love 4 Sale', NULL, 9),
(107, 'Word on the Street', NULL, 9),
(108, 'It\'s Nothing', NULL, 9),
(109, 'It\'s Been a Long Time', NULL, 9),
(110, 'My Melody', NULL, 9),
(111, 'Don\'t\' Sweat the Technique', NULL, 9),
(112, 'Follow the Leader', NULL, 9),
(113, 'Ghetto', NULL, 9),
(114, 'Guess Who\'s Back', NULL, 9),
(115, 'What\'s on Your Mind', NULL, 9),
(116, 'Remember That', NULL, 9),
(117, 'It\'s Nothing', NULL, 9),
(118, 'Saga Begins', NULL, 9),
(119, 'Move the Crowd', NULL, 9),
(120, 'Paid in Full', NULL, 9),
(121, 'I Know You Got Soul', 'Eric_B._&_Rakim_-_I_Know_You_Got_Soul_(_1987_).mp3', 9),
(122, 'I Ain\'t No Joke', NULL, 9),
(123, 'Juice', NULL, 9),
(124, 'Mahogany', NULL, 9),
(125, 'Eric B. Is President', NULL, 9),
(126, 'Microphone Fiend', NULL, 9),
(127, 'Poetry', 'KRS_ONE_-_POETRY.mp3', 10),
(128, 'South Bronx', NULL, 10),
(129, '9mm Goes Bang', NULL, 10),
(130, 'Word from Our Sponsor', NULL, 10),
(131, 'Elementary', NULL, 10),
(132, 'Dope Beat', NULL, 10),
(133, 'Remix for P Is Free', NULL, 10),
(134, 'The Bridge Is Over', NULL, 10),
(135, 'Super-Hoe', NULL, 10),
(136, 'Criminal Minded', NULL, 10),
(137, 'Scott LaRock Mega-Mix', NULL, 10),
(138, 'KRS-One Attacks', NULL, 11),
(139, 'Outta Here', NULL, 11),
(140, 'Black Cop', NULL, 11),
(141, 'Mortal Thought', NULL, 11),
(142, 'I Can\'t Wake Up', NULL, 11),
(143, 'Slap Them Up', NULL, 11),
(144, 'Sound of da Police', NULL, 11),
(145, 'Mad Crew', NULL, 11),
(146, 'Uh Oh', NULL, 11),
(147, 'Brown Skin Woman', NULL, 11),
(148, 'Return of the Boom Bap', 'KRS-One_-_Return_of_the_Boom_Bap.mp3', 11),
(149, 'P\" Is Still Free', NULL, 11),
(150, 'Stop Frontin\'', NULL, 11),
(151, 'Higher Level', NULL, 11),
(152, 'Rappaz R. N. Dainja', NULL, 12),
(153, 'De Automatic', NULL, 12),
(154, 'MC\'s Act Like They Don\'t Know', 'KRS-One_-_MC\'s_Act_Like_They_Don\'t_Know.mp3', 12),
(155, 'Ah Yeah', NULL, 12),
(156, 'R.E.A.L.I.T.Y.', NULL, 12),
(157, 'Free Mumia', NULL, 12),
(158, 'Hold', NULL, 12),
(159, 'Wannabemceez', 'KRS_One_-_Wannabemceez.mp3', 12),
(160, 'Represent the Real Hip Hop', NULL, 12),
(161, 'The Truth', NULL, 12),
(162, 'Build Ya Skillz', NULL, 12),
(163, 'Out for Fame', NULL, 12),
(164, 'Squash All Beef', NULL, 12),
(165, 'Health, Wealth, Self', NULL, 12),
(166, 'Intro', NULL, 13),
(167, 'The Whole World Lookin\' at Me', NULL, 13),
(168, 'Survival Hungry', NULL, 13),
(169, 'When Disaster Strikes', NULL, 13),
(170, 'So Hardcore', NULL, 13),
(171, 'Get High Tonight', NULL, 13),
(172, 'Turn It Up', NULL, 13),
(173, 'Put Your Hands Where My Eyes Could See', NULL, 13),
(174, 'It\'s All Good', NULL, 13),
(175, 'There\'s Not a Problem My Squad Can\'t Fix', NULL, 13),
(176, 'We Could Take it Outside', NULL, 13),
(177, 'Rhymes Galore', NULL, 13),
(178, 'Things We Be Doin\' for Money (Part 1)', NULL, 13),
(179, 'Things We Be Doin\' for Money (Part 2)', NULL, 13),
(180, 'One', NULL, 13),
(181, 'Dangerous', NULL, 13),
(182, 'The Body Rock', NULL, 13),
(183, 'Get Off My Block', NULL, 13),
(184, 'Outro ', NULL, 13),
(185, 'The Coming ', NULL, 14),
(186, 'Do My Thing', NULL, 14),
(187, 'Everything Remains Raw', NULL, 14),
(188, 'Abandon Ship', NULL, 14),
(189, 'Woo Hah!! Got You All in Check', NULL, 14),
(190, 'It\'s a Party', NULL, 14),
(191, 'Hot Fudge', NULL, 14),
(192, 'Ill Vibe', NULL, 14),
(193, 'Flipmode Squad Meets Def Squad\" ', NULL, 14),
(194, 'Still Shining', NULL, 14),
(195, 'Keep It Movin\'', NULL, 14),
(196, 'The Finish Line', NULL, 14),
(197, 'The End of the World ', NULL, 14),
(198, 'Intro', NULL, 15),
(199, 'Everybody Rise Again', NULL, 15),
(200, 'As I Come Back', NULL, 15),
(201, 'Shut \'Em Down 2002', NULL, 15),
(202, 'Genesis', NULL, 15),
(203, 'Betta Stay Up in Your House', NULL, 15),
(204, 'We Got What You Want', NULL, 15),
(205, 'Truck Volume', NULL, 15),
(206, 'Pass the Courvoisier', NULL, 15),
(207, 'Break Ya Neck', 'Busta_Rhymes_-_Break_Ya_Neck_with_lyrics.mp3', 15),
(208, 'Bounce', NULL, 15),
(209, 'Holla', NULL, 15),
(210, 'Wife In Law', NULL, 15),
(211, 'Ass on Your Shoulders', NULL, 15),
(212, 'Make It Hurt', NULL, 15),
(213, 'What It Is', NULL, 15),
(214, 'There\'s Only One', NULL, 15),
(215, 'You Ain\'t Fuckin\' wit Me', NULL, 15),
(216, 'Match the Name with the Voice', NULL, 15),
(217, 'Bad Dreams', NULL, 15),
(218, 'Tical', NULL, 16),
(219, 'Biscuits', NULL, 16),
(220, 'Bring the Pain', 'Method_Man_-_Bring_The_Pain.mp3', 16),
(221, 'All I Need', NULL, 16),
(222, 'What the Blood Clot', NULL, 16),
(223, 'Meth vs. Chef', NULL, 16),
(224, 'Sub Crazy', NULL, 16),
(225, 'Release Yo\' Delf', NULL, 16),
(226, 'P.L.O. Style', NULL, 16),
(227, 'I Get My Thang in Action', NULL, 16),
(228, 'Mr. Sandman', NULL, 16),
(229, 'Stimulation', NULL, 16),
(230, 'Method Man (Remix)', NULL, 16),
(231, 'Intro', NULL, 17),
(232, 'The Meth Lab', 'Method_Man_-_The_Meth_Lab_(feat._Hanz_On_&_Streetlife)_[Official_Music_Video].mp3', 17),
(233, 'Straight Gutta', 'Method_Man_-_Straight_Gutta_(feat._Redman,_Hanz_On,_Streetlife)_[Official_Music_Video].mp3', 17),
(234, 'Bang Zoom', NULL, 17),
(235, '50 Shots', NULL, 17),
(236, 'The Pledge', NULL, 17),
(237, '2 Minutes of Your Time', NULL, 17),
(238, 'Worldwide', NULL, 17),
(239, 'Soundcheck', NULL, 17),
(240, 'Water', NULL, 17),
(241, 'Lifestyles', NULL, 17),
(242, 'The Purple Tape', NULL, 17),
(243, 'Intelligent Meth', NULL, 17),
(244, 'Symphony', NULL, 17),
(245, 'What You Getting Into', NULL, 17),
(246, 'Another Winter', NULL, 17),
(247, 'Rain All Day', NULL, 17),
(248, 'So Staten', NULL, 17),
(249, 'Outro', NULL, 17);

-- --------------------------------------------------------

--
-- Table structure for table `melodii_modern`
--

DROP TABLE IF EXISTS `melodii_modern`;
CREATE TABLE `melodii_modern` (
  `id` int(11) NOT NULL,
  `titlu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `melodii_modern`:
--   `album_id`
--       `albume_modern` -> `id`
--

--
-- Dumping data for table `melodii_modern`
--

INSERT INTO `melodii_modern` (`id`, `titlu`, `filename`, `album_id`) VALUES
(1, 'TA13OO', 'Denzel_Curry_-_TABOO___TA13OO_from_TA13OO_Act_1_-_Light.mp3', 1),
(3, 'BLACK BALLOONS', 'Denzel_Curry_-_BLACK_BALLOONS___13LACK_13ALLOONZ_from_TA13OO_Act_1_-_Light.mp3', 1),
(4, 'CASH MANIAC', NULL, 1),
(5, 'SUMO', NULL, 1),
(6, 'SUPER SAIYAN SUPERMAN', NULL, 1),
(7, 'SWITCH IT UP', NULL, 1),
(8, 'MAD I GOT IT', NULL, 1),
(9, 'SIRENS', NULL, 1),
(10, 'CLOUT COBAIN', 'Denzel_Curry_-_CLOUT_COBAIN___CLOUT_CO13A1N.mp3', 1),
(11, 'THE BLACKEST BALLOON', NULL, 1),
(12, 'PERCS', NULL, 1),
(13, 'VENGEANCE', NULL, 1),
(14, 'BLACK METAL TERRORIST', NULL, 1),
(15, 'ULT', NULL, 2),
(16, 'Gook', NULL, 2),
(17, 'Sick & Tired', NULL, 2),
(18, 'Knotty Head', NULL, 2),
(19, 'Narcotics', NULL, 2),
(20, 'Story: No Title', NULL, 2),
(21, 'Pure Enough', NULL, 2),
(22, 'Zenith', NULL, 2),
(23, 'This Life', NULL, 2),
(24, 'ULT', NULL, 2),
(25, 'Gook', NULL, 2),
(26, 'Sick & Tired', NULL, 2),
(27, 'Knotty Head', NULL, 2),
(28, 'Narcotics', NULL, 2),
(29, 'Story: No Title', NULL, 2),
(30, 'Pure Enough', NULL, 2),
(31, 'Zenith', NULL, 2),
(32, 'This Life', NULL, 2),
(33, 'If Tomorrow\'s Not Here', NULL, 2),
(34, 'Martian', NULL, 3),
(35, 'She Gon Wink', NULL, 3),
(36, 'None to Me', NULL, 3),
(37, 'Vacation', NULL, 3),
(38, 'Last Memory', 'Takeoff_-_Last_Memory_(Lyrics).mp3', 3),
(39, 'I Remember', NULL, 3),
(40, 'Lead the Wave', NULL, 3),
(41, 'Casper', NULL, 3),
(42, 'Insomnia', NULL, 3),
(43, 'Infatuation', NULL, 3),
(44, 'Soul Plane', NULL, 3),
(45, 'Bruce Wayne', NULL, 3),
(46, 'What U Sayin', NULL, 4),
(47, 'Gucci Gang', 'Lil_Pump_-_\'Gucci_Gang\'_(Official_Music_Video).mp3', 4),
(48, 'Smoke My Dope', NULL, 4),
(49, 'Crazy', NULL, 4),
(50, 'Back', NULL, 4),
(51, 'D Rose', NULL, 4),
(52, 'Youngest Flexer', NULL, 4),
(53, 'Foreign', NULL, 4),
(54, 'Molly', 'Lil_Pump_-_Molly_(Official_Audio).mp3', 4),
(55, 'Iced Out', NULL, 4),
(56, 'Boss', NULL, 4),
(57, 'Flex Like Ouu', NULL, 4),
(58, 'Pinky Ring', NULL, 4),
(59, 'The Future Is Now', NULL, 5),
(60, 'Parachute', NULL, 5),
(61, 'Straight Up', NULL, 5),
(62, 'Astronaut Chick', NULL, 5),
(63, 'Magic (remix)', NULL, 5),
(64, 'I\'m Trippin', NULL, 5),
(65, 'Truth Gonna Hurt You', NULL, 5),
(66, 'Neva End', NULL, 5),
(67, 'Tony Montana', NULL, 5),
(68, 'Permanent Scar', NULL, 5),
(69, 'Same Damn Time', NULL, 5),
(70, 'Long Live the Pimp', 'Future_-_Long_Live_The_Pimp_(Official_Music_Video)_ft._Trae_Tha_Truth.mp3', 5),
(71, 'Homicide', NULL, 5),
(72, 'Turn On The Lights', NULL, 5),
(73, 'You Deserve It', NULL, 5),
(74, 'Look Ahead', NULL, 6),
(75, 'T-Shirt', NULL, 6),
(76, 'Move That Dope', 'Future_-_Move_That_Dope_(Official_Music_Video)_ft._Pharrell_Williams,_Pusha_T.mp3', 6),
(77, 'My Momma', NULL, 6),
(78, 'Honest', NULL, 6),
(79, 'I Won', NULL, 6),
(80, 'Never Satisfied', NULL, 6),
(81, 'I Be U', NULL, 6),
(82, 'Covered N Money', NULL, 6),
(83, 'Special', NULL, 6),
(84, 'Benz Friendz', NULL, 6),
(85, 'My Collection', NULL, 7),
(86, 'Comin Out Strong', NULL, 7),
(87, 'Lookin Exotic', 'Future_-_Lookin_Exotic_(HNDRXX).mp3', 7),
(88, 'Damage', NULL, 7),
(89, 'Use Me', NULL, 7),
(90, 'Incredible', NULL, 7),
(91, 'Testify', NULL, 7),
(92, 'Fresh Air', NULL, 7),
(93, 'Neva Missa Lost', NULL, 7),
(94, 'Keep Quiet', NULL, 7),
(95, 'Hallucinating', NULL, 7),
(96, 'I Thank U', NULL, 7),
(97, 'New Illuminati', NULL, 7),
(98, 'Turn on Me', NULL, 7),
(99, 'Selfish', NULL, 7),
(100, 'Solo', NULL, 7),
(101, 'Sorry', NULL, 7),
(102, 'Off the Boat', NULL, 8),
(103, 'By Myself', NULL, 8),
(104, 'BiPolar', NULL, 8),
(105, 'Just Like It', NULL, 8),
(106, 'Cold Shoulder', NULL, 8),
(107, 'On God', NULL, 8),
(108, 'Father\'s Day', NULL, 8),
(109, 'Outta Proportion', NULL, 8),
(110, 'Lost Y\'all Mind', NULL, 8),
(111, 'I\'m Not Goin', NULL, 8),
(112, 'Wake Up in the Sky', NULL, 8),
(113, 'Solitaire', NULL, 8),
(114, 'This the Night', NULL, 8),
(115, 'Mad Russian', NULL, 8),
(116, 'Hard Feelings', NULL, 8),
(117, 'Lord', NULL, 8),
(118, 'Money Callin', NULL, 8),
(119, 'Kept Back', NULL, 8),
(120, 'Work in Progress', NULL, 9),
(121, 'Back On', NULL, 9),
(122, 'I Get the Bag', 'Gucci_Mane_-_I_Get_The_Bag_feat._Migos_[Official_Music_Video].mp3', 9),
(123, 'Stunting Ain\'t Nuthin', NULL, 9),
(124, 'Curve', NULL, 9),
(125, 'Enormous', NULL, 9),
(126, 'Members Only', NULL, 9),
(127, 'Money Make Ya Handsome', NULL, 9),
(128, 'Changed', NULL, 9),
(129, 'We Ride', NULL, 9),
(130, 'Lil Story', NULL, 9),
(131, 'Tone It Down', NULL, 9),
(132, 'Make Love', NULL, 9),
(133, 'Money Piling', NULL, 9),
(134, 'Jumped Out the Whip', 'Gucci_Mane_-_Jumped_Out_the_Whip_feat._A$AP_Rocky_[Official_Audio].mp3', 9),
(135, 'Miss My Woe', NULL, 9),
(136, 'Made It', NULL, 9),
(137, 'No Sleep', NULL, 10),
(138, 'Out Do Ya', NULL, 10),
(139, 'Back on Road', NULL, 10),
(140, 'Waybach', NULL, 10),
(141, 'Pussy Print', NULL, 10),
(142, 'Pop Music', NULL, 10),
(143, 'Guwop Home', NULL, 10),
(144, 'Gucci Please', 'Gucci_Mane_-_Gucci_Please_[Official_Music_Video].mp3', 10),
(145, 'Robbed', NULL, 10),
(146, 'Richest Nigga in the Room', NULL, 10),
(147, '1st Day Out tha Feds', NULL, 10),
(148, 'At Least a M', NULL, 10),
(149, 'All My Children', NULL, 10),
(150, 'Pick Up the Pieces', NULL, 10),
(151, 'Multi Millionaire Laflare', NULL, 10),
(152, 'Stargazing', 'Travis_Scott_-_STARGAZING_(Official_Audio).mp3', 11),
(153, 'Carousel', NULL, 11),
(154, 'Sicko Mode', 'Travis_Scott_-_SICKO_MODE_ft._Drake.mp3', 11),
(155, 'R.I.P. Screw', NULL, 11),
(156, 'Stop Trying to Be God', NULL, 11),
(157, 'No Bystanders', NULL, 11),
(158, 'Skeletons', NULL, 11),
(159, 'Wake Up', NULL, 11),
(160, '5% Tint', NULL, 11),
(161, 'NC-17', NULL, 11),
(162, 'Astrothunder', NULL, 11),
(163, 'Yosemite', 'Travis_Scott_-_YOSEMITE_(Official_Audio).mp3', 11),
(164, 'Can\'t Say', NULL, 11),
(165, 'Who? What!', NULL, 11),
(166, 'Butterfly Effect', NULL, 11),
(167, 'Houstonfornication', NULL, 11),
(168, 'Coffee Bean', NULL, 11),
(169, 'The Ends', NULL, 12),
(170, 'Way Back', NULL, 12),
(171, 'Coordinate', NULL, 12),
(172, 'Through the Late Night', NULL, 12),
(173, 'Beibs in the Trap', NULL, 12),
(174, 'SDP Interlude', NULL, 12),
(175, 'Sweet Sweet', NULL, 12),
(176, 'Outside', NULL, 12),
(177, 'Goosebumps', 'Travis_Scott_-_goosebumps_(Official_Music_Video)_ft._Kendrick_Lamar.mp3', 12),
(178, 'First Take', NULL, 12),
(179, 'Pick Up the Phone', NULL, 12),
(180, 'Lose', NULL, 12),
(181, 'Guidance', NULL, 12),
(182, 'Wonderful', NULL, 12),
(183, 'Pornography', NULL, 13),
(184, 'Oh My Dis Side', NULL, 13),
(185, '3500', NULL, 13),
(186, 'Wasted', NULL, 13),
(187, '90210', NULL, 13),
(188, 'Pray 4 Love', NULL, 13),
(189, 'Nightcrawler', NULL, 13),
(190, 'Piss on Your Grave', NULL, 13),
(191, 'Antidote', NULL, 13),
(192, 'Impossible', NULL, 13),
(193, 'Maria I\'m Drunk', NULL, 13),
(194, 'Flying High', NULL, 13),
(195, 'I Can Tell', NULL, 13),
(196, 'Apple Pie', NULL, 13),
(197, 'Introduction', NULL, 14),
(198, 'Guardian Angel', NULL, 14),
(199, 'Train Food', NULL, 14),
(200, 'Whoa', NULL, 14),
(201, 'Bad', NULL, 14),
(202, 'Staring at the Sky', NULL, 14),
(203, 'One Minute', NULL, 14),
(204, 'Difference', NULL, 14),
(205, 'I Don\'t Let Go', NULL, 14),
(206, 'What Are You So Afraid Of', NULL, 14),
(207, 'Introduction', NULL, 15),
(208, 'Alone, Part 3', NULL, 15),
(209, 'Moonlight', 'XXXTentacion_-_Moonlight_(Lyrics).mp3', 15),
(210, 'Sad!', 'XXXTENTACION_-_SAD!.mp3', 15),
(211, 'The Remedy for a Broken Heart (Why Am I So in Love)', 'XXXTENTACION_-_The_remedy_for_a_broken_heart_(Lyrics___Lyric_Video).mp3', 15),
(212, 'Floor 555', NULL, 15),
(213, 'Numb', NULL, 15),
(214, 'Infinity (888)', NULL, 15),
(215, 'Going Down!', NULL, 15),
(216, 'Pain = Best Friend', NULL, 15),
(217, '$$$', NULL, 15),
(218, 'Love Yourself', NULL, 15),
(219, 'Smash!', NULL, 15),
(220, 'I Don\'t Even Speak Spanish LOL', NULL, 15),
(221, 'Changes', NULL, 15),
(222, 'Hope', NULL, 15),
(223, 'Schizophrenia', NULL, 15),
(224, 'Before I Close My Eyes', NULL, 15),
(225, 'The Explanation', NULL, 16),
(226, 'Jocelyn Flores', 'XXXTENTACION_-_Jocelyn_Flores_(Audio).mp3', 16),
(227, 'Depression & Obsession', NULL, 16),
(228, 'Everybody Dies in Their Nightmares', 'XXXTENTACION_-_Everybody_Dies_In_Their_Nightmares_(Audio).mp3', 16),
(229, 'Revenge', NULL, 16),
(230, 'Save Me', 'XXXTENTACION_-_Save_Me_(Audio).mp3', 16),
(231, 'Dead Inside', NULL, 16),
(232, 'Fuck Love', NULL, 16),
(233, 'Carry On', NULL, 16),
(234, 'Orlando', NULL, 16),
(235, 'Ayala', NULL, 16),
(236, 'Intro', NULL, 17),
(237, 'Zone 3', NULL, 17),
(238, 'Parents', NULL, 17),
(239, 'Dark & Violent', NULL, 17),
(240, 'Threatz', NULL, 17),
(241, 'Mystical Virus, Pt. 3: The Scream', NULL, 17),
(242, 'Widescreen', NULL, 17),
(243, 'N64', NULL, 17),
(244, 'Like Me', NULL, 17),
(245, 'Talk That Shit', NULL, 17),
(246, 'Benz', NULL, 17),
(247, 'Denny Cascade', NULL, 17),
(248, 'A Day in the Life of Denzel Curry, Pt. 2', NULL, 17);

-- --------------------------------------------------------

--
-- Table structure for table `melodii_ro`
--

DROP TABLE IF EXISTS `melodii_ro`;
CREATE TABLE `melodii_ro` (
  `id` int(11) NOT NULL,
  `titlu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `melodii_ro`:
--   `album_id`
--       `albume_ro` -> `id`
--

--
-- Dumping data for table `melodii_ro`
--

INSERT INTO `melodii_ro` (`id`, `titlu`, `filename`, `album_id`) VALUES
(1, 'Eu sunt acela', NULL, 1),
(2, 'Pe aici nu se trece', 'Getto_Daci_-_Pe_aici_nu_se_trece.mp3', 1),
(3, 'Marea scofală', NULL, 1),
(4, 'Piele și Os', NULL, 1),
(5, 'Filozofie pe felie', NULL, 1),
(6, 'Nu mă poți da jos', NULL, 1),
(7, 'Getto-daci 2000', NULL, 1),
(8, 'Dar tu ce credeai', NULL, 1),
(9, 'Zi-le colegule', NULL, 1),
(10, 'De unde pleacă, valul acolo se întoarce', NULL, 1),
(11, 'Predoslovie / Getto Daci', NULL, 2),
(12, 'Atac Getto Dac', NULL, 2),
(13, 'Ainaipolițai', NULL, 2),
(14, 'Rimez deci exist', NULL, 2),
(15, 'Octombrie roșu', NULL, 2),
(16, 'P.D.-URI', NULL, 2),
(17, 'Radio Dacia / Daciada', NULL, 2),
(18, 'Nu mai sus de umăr', NULL, 2),
(19, 'Discobolul', NULL, 2),
(20, 'Adevărap', NULL, 2),
(21, 'Contraatac Getto Dac', NULL, 2),
(22, 'Noaptea Cuțitelor Lungi', NULL, 3),
(23, 'Geneza', NULL, 3),
(24, '11 Secunde', NULL, 3),
(25, 'Istorii Secrete', 'Cedry2k_-_Istorii_Secrete_(cu_Deliric_1).mp3', 3),
(26, 'Capcanele Timpului', NULL, 3),
(27, 'Bârfe Despre Târfe', NULL, 3),
(28, 'Anatomia Rimei', NULL, 3),
(29, 'Pe Cord Deschis', NULL, 3),
(30, 'Rechini', NULL, 3),
(31, 'Zilele Fricii', NULL, 3),
(32, 'De Pe Podium la Podea', NULL, 3),
(33, 'În Luptă Cu Condiția', NULL, 3),
(34, 'Profil', NULL, 3),
(35, 'Sfertul Academic', NULL, 3),
(36, 'Alchimia Veninului', NULL, 3),
(37, 'Apocalipsa verbală', 'Cedry2k_-_Apocalipsa_Verbala.mp3', 4),
(38, 'Sfinţii închisorilor', NULL, 4),
(39, 'Modele', 'Connect-R_Tudor_Sisu_si_Cedry2k_-_Modele.mp3', 4),
(40, 'Vipere', NULL, 4),
(41, 'Când', NULL, 4),
(42, 'Ridică-te, Gheorghe, ridică-te, Ioane! (de Radu Gyr)', NULL, 4),
(43, 'Megalitic', NULL, 5),
(44, 'Același joc', 'Cedry2k_-_Acelasi_joc.mp3', 5),
(45, 'Una din două', NULL, 5),
(46, 'De colecție', NULL, 5),
(47, 'Rost', 'Cedry2k_-_Rost_(cu_Dragonu_si_F.Charm).mp3', 5),
(48, 'Deconstrucția lumii', NULL, 5),
(49, 'Prometeu', NULL, 5),
(50, 'Clasic', NULL, 5),
(51, 'Unde-s nebunii', NULL, 5),
(52, 'Zilele fricii 2', NULL, 5),
(53, 'Școala veche', NULL, 5),
(54, 'Intro', NULL, 6),
(55, 'Secretul din Atom', '02. C.T.C._-_Secretul_din_Atom.mp3', 6),
(56, 'Legea Gravitației', NULL, 6),
(57, 'Terapie De Șoc', NULL, 6),
(58, '6 Milioane', NULL, 6),
(59, 'Subteran Atomic', NULL, 6),
(60, 'Secretul Din Atom ( Remix )', NULL, 6),
(61, 'Al 12-lea Ceas', NULL, 6),
(62, 'Outro', NULL, 6),
(63, 'Introducere', NULL, 7),
(64, 'Vorbe din Context', NULL, 7),
(65, 'Ochii rosii', NULL, 7),
(66, 'This is Raw', NULL, 7),
(67, 'Unu', NULL, 7),
(68, 'Scurtcircuit', NULL, 7),
(69, 'Al 13-lea ceas', NULL, 7),
(70, 'Nu stii', NULL, 7),
(71, 'Multe de spus', NULL, 7),
(72, 'Bucuresti', NULL, 7),
(73, 'Pentru cine', NULL, 7),
(74, 'Interzis nefumatorilor', 'CTC_-_Interzis_nefumatorilor.mp3', 7),
(75, 'Asaltul', NULL, 7),
(76, 'TV', 'CTC_-_TV.mp3', 7),
(77, 'Orice', NULL, 7),
(78, 'Reanimare 101', NULL, 7),
(79, 'Scandal', NULL, 7),
(80, 'Stiluri', NULL, 7),
(81, 'Turntable bonus', NULL, 7),
(82, 'Ziua independenței', NULL, 8),
(83, 'Înapoi în viitor', NULL, 8),
(84, '...Și cui îi pasă?', NULL, 8),
(85, 'Bag pula-n lume și v-o fac cadou', NULL, 8),
(86, 'Când trandafirii mor', 'B.U.G._Mafia_-_Cand_Trandafirii_Mor_feat._Lucian_Colareza_Prod._Tata_Vlad.mp3', 8),
(87, 'Cu premeditare', NULL, 8),
(88, 'Celebrii anonimi', NULL, 8),
(89, 'Robolov', NULL, 8),
(90, 'Olimpiada', NULL, 8),
(91, 'Cât poți tu de tare', NULL, 8),
(92, 'Întâlnire de gradu\' 4', NULL, 8),
(93, 'Ți-o dau la muie', NULL, 8),
(94, 'Radio viitoru\'', NULL, 8),
(95, 'O la la', NULL, 8),
(96, 'Supranatural', NULL, 8),
(97, 'Care au rămas', NULL, 8),
(98, 'Fără cuvinte', NULL, 8),
(99, '5000 de zile', NULL, 8),
(100, 'La fel de prost ca tine', NULL, 8),
(101, 'Mașina timpului', NULL, 8),
(102, 'Înainte să plec', 'B.U.G._Mafia_-_Inainte_Sa_Plec_Prod._Tata_Vlad.mp3', 8),
(103, 'Voiaj 01.14.53.44', NULL, 8),
(104, 'Viața noastră', NULL, 9),
(105, 'N-ai fost acolo', NULL, 9),
(106, 'Capu\' sus', NULL, 9),
(107, 'Gherila P.T.M.', NULL, 9),
(108, 'Poezie de stradă (Remix)', NULL, 9),
(109, 'Față-n față', NULL, 9),
(110, 'Între noapte și zi', NULL, 9),
(111, 'Românește', NULL, 9),
(112, 'Un 2 și trei de 0', NULL, 9),
(113, 'Până când moartea ne va despărți', NULL, 9),
(114, 'Anturaju', NULL, 9),
(115, 'De cartier', NULL, 9),
(116, 'Jucător adevărat', NULL, 9),
(117, 'Limbaj de cartier', NULL, 9),
(118, 'Pantelimonu\' petrece', NULL, 9),
(119, 'Intro', NULL, 10),
(120, 'Să sară-n aer', NULL, 10),
(121, 'Flocea din Socului', NULL, 10),
(122, 'În anii ce au trecut', NULL, 10),
(123, 'Discuție pe dig', NULL, 10),
(124, 'Iarbă și alcool', NULL, 10),
(125, 'Pula mea...', NULL, 10),
(126, 'Muzică de noapte', NULL, 10),
(127, 'O lume nebună, nebună de tot” (Feat. ViLLy)', NULL, 10),
(128, 'La noroc', NULL, 10),
(129, 'Românește', NULL, 10),
(130, 'Garda', NULL, 10),
(131, 'Exces pervers', NULL, 10),
(132, 'În oglindă', NULL, 10),
(133, 'Drumu\' spre pârnaie', NULL, 10),
(134, '40 kmh', NULL, 10),
(135, 'Cine are cu noi', NULL, 10),
(136, 'Față-n față 2', NULL, 10),
(137, 'Prin cartieru\' minunat', NULL, 10),
(138, 'Outro', NULL, 10),
(139, 'Articolul 39', NULL, 11),
(140, 'Exprimare liberă', NULL, 11),
(141, 'În focuri', NULL, 11),
(142, 'Corul radioperfuziunii române', NULL, 11),
(143, 'Necomercial', NULL, 11),
(144, 'Griffo', NULL, 11),
(145, 'O stare de spirit', NULL, 11),
(146, 'Dulce autodistrugere', NULL, 11),
(147, 'FDD', NULL, 11),
(148, 'Bad joke', NULL, 11),
(149, 'Pregătiri estivale', NULL, 11),
(150, 'Degetul mijlociu', NULL, 11),
(151, 'Mi se rupe', NULL, 11),
(152, 'Linz-București', NULL, 11),
(153, 'Fakeri', NULL, 11),
(154, 'Ultimul buletin de știri de la ora 5', NULL, 11),
(155, 'Beatbox / De dragoste... în alte feluri', NULL, 11),
(156, 'Dreptul la replică', NULL, 11),
(157, 'Circulă zvonul', NULL, 12),
(158, 'Adevărul doare', NULL, 12),
(159, 'Demnitate (rap mix)', NULL, 12),
(160, 'Viața bate filmul', NULL, 12),
(161, 'Poliția trece', NULL, 12),
(162, 'Cântec de leagăn', NULL, 12),
(163, 'Te facem să sari', NULL, 12),
(164, 'Mambo Nr. 9', NULL, 12),
(165, 'Suge-o', NULL, 12),
(166, 'Toată lumea fumează', NULL, 12),
(167, 'Demnitate', 'Parazi?ii_-_Demnitate_(feat._Daniel_Laz?r).mp3', 12),
(168, 'Mesaj pentru Europa', NULL, 13),
(169, 'Vreau să vă doară', NULL, 13),
(170, 'Dușmăniți-mă toți', NULL, 13),
(171, 'Din colțul blocului', 'Parazitii_-_Din_coltul_blocului_(Cenzurat).mp3', 13),
(172, 'Slalom printre cretini', NULL, 13),
(173, 'Cu microfonul deschis', NULL, 13),
(174, 'Mereu la subiect', NULL, 13),
(175, 'La limita penibilului', NULL, 13),
(176, 'Goana după iluzii', NULL, 13),
(177, 'Total dubios', NULL, 13),
(178, 'Tu nu contezi', NULL, 13),
(179, 'De ziua ta', NULL, 13),
(180, 'Fără resentimente', NULL, 13),
(181, 'Something to say', NULL, 13),
(182, 'Concentrați în metropole', NULL, 13),
(183, 'Unu pentru toți', NULL, 13),
(184, 'Moartea întreabă de tine', 'Parazitii_-_Moartea_intreaba_de_tine_feat_Margineanu.mp3', 13),
(185, 'Needitat', NULL, 13),
(186, 'Drogurile schimbă tot', NULL, 13),
(187, 'Pabibabum', NULL, 13),
(188, 'Politicianul Român', NULL, 13),
(199, 'Intro', NULL, 14),
(200, 'Probleme majore', NULL, 14),
(201, 'Jungla din stradă', NULL, 14),
(202, 'Nu mai vrem să răbdați', NULL, 14),
(203, 'Moțiune de cenzură', NULL, 14),
(204, 'Război = orori și crimă', NULL, 14),
(205, 'Vis ucigaș', NULL, 14),
(206, 'Efectul defectului', NULL, 14),
(207, 'Hip-Hop ura', NULL, 14),
(208, 'Stil rău', NULL, 14),
(209, 'Canalu\' lu\' Neluțu', NULL, 14),
(210, 'Mahala', NULL, 14),
(211, 'Pentru paray', NULL, 14),
(212, 'Outro', NULL, 14),
(213, 'Loja Cameleonului', NULL, 15),
(214, 'Old School', NULL, 15),
(215, 'Cântăreții De Rap', NULL, 15),
(216, 'Frecventa cenusie / A noua venire', NULL, 16),
(217, 'Clasici', NULL, 16),
(218, 'Universuri', NULL, 16),
(219, 'Bagabonti', NULL, 16),
(220, 'Saga', NULL, 16),
(221, 'Pozitia umilului', 'R.A.C.L.A._–_Pozitia umilului_ft._Cedry2k.mp3', 16),
(222, 'Prea usor', NULL, 16),
(223, 'Imaculatele concepte: Saga', NULL, 16),
(224, 'Camp de razboi', NULL, 16),
(225, 'Resuscitare', NULL, 16),
(226, 'Tine-te de ea', NULL, 16),
(227, 'Imaculatele concepte: Lauri', NULL, 16),
(228, 'FAQ you', NULL, 16),
(229, 'Supra', NULL, 16),
(230, 'Mach check', 'R.A.C.L.A._-_Mach_check_ft_Funktasztikus_ALAN_KEPA.mp3', 16),
(231, 'De cadenta', NULL, 16),
(232, 'Receptie', NULL, 17),
(233, 'Doi', NULL, 17),
(234, 'P-astea trag', NULL, 17),
(235, 'Strike like', NULL, 17),
(236, 'Rezistenta', NULL, 17),
(237, 'Nu uita!', NULL, 17),
(238, 'Cantec elf', NULL, 17),
(239, 'Ai ki do', NULL, 17),
(240, 'Vulprea cu noua cozi', NULL, 17),
(241, 'Dedicatie speciala', NULL, 17),
(242, 'Electrip', NULL, 17),
(243, 'Naufragiu', NULL, 17),
(244, 'Yolomasta\'', NULL, 18),
(245, 'Dream Team', NULL, 18),
(246, ' Supraviețuiesc', NULL, 18),
(247, 'Diferența D. Clasă', NULL, 18),
(248, 'Nimic D. Pierdut', NULL, 18),
(249, 'Între', NULL, 18),
(250, 'Seule Solution', NULL, 18),
(251, 'Pentru Show', NULL, 18),
(252, 'Mare Singuratic', NULL, 18),
(253, 'Interludiu', NULL, 18),
(254, 'Oxigenarea Creierelor', NULL, 18),
(255, 'Oricând', NULL, 18),
(256, 'În Mediu Vitreg', NULL, 18),
(257, 'Va Urma', NULL, 18),
(258, 'Amenințarea maimuței', NULL, 19),
(259, 'Ultimul golan', NULL, 19),
(260, 'Maimuțe de stradă', NULL, 19),
(261, 'Nichifor Solitaru\'', NULL, 19),
(262, 'Hotelul pentru scriitori netrebnici', NULL, 19),
(263, '4 ziua', 'Kazi_Ploae_si_Specii_-_4_ziua.mp3', 19),
(264, 'Robo-sapiens', NULL, 19),
(265, 'Catacombe ', NULL, 19),
(266, 'Nichifor Solitaru partea 2', NULL, 19),
(267, 'Răbdare', NULL, 19),
(268, 'Îndepărtare', NULL, 19),
(269, 'Valium', NULL, 19),
(270, 'Portal', NULL, 20),
(271, 'Simon Adebisi', NULL, 20),
(272, 'Demonilor', NULL, 20),
(273, 'Capcana', NULL, 20),
(274, 'Investigații', NULL, 20),
(275, 'Incotro – Bruiaj 1', NULL, 20),
(276, 'Transmisii de pe nava mamă', NULL, 20),
(277, 'De baieti, numai de bine', NULL, 20),
(278, 'Matematica metaforei', NULL, 20),
(279, 'Patria', NULL, 20),
(280, 'Nocturna Digitala', NULL, 20),
(281, 'Mantra – Bruiaj', NULL, 20),
(282, 'Monstruos', NULL, 20),
(283, 'Pamantul emana', NULL, 20),
(284, 'Imperiul Lianelor', 'Kazi_Ploae_si_Specii_-_Imperiul_Lianelor.mp3', 20),
(285, 'Intro (live 8 11 2008)', NULL, 21),
(286, 'Special k house ', NULL, 21),
(287, 'Anticarul ', NULL, 21),
(288, 'La porţile Israelului', NULL, 21),
(289, 'Ispita', NULL, 21),
(290, 'VIP', NULL, 21),
(291, 'Abdullah ', NULL, 21),
(292, 'Făuritorul de chei', NULL, 21),
(293, 'Propriul schelet', NULL, 21),
(294, 'Dia’gnoza', NULL, 21),
(295, 'Maşina timpului', NULL, 21),
(296, 'Noi toţi ', NULL, 21),
(297, 'Sin city', NULL, 21),
(298, 'Farmacia de la colţ', 'Specii_-_Farmacia_de_la_colt.mp3', 21),
(299, 'Numărul 1', NULL, 21),
(300, 'Succes', NULL, 21),
(301, 'Oscilay', NULL, 21),
(302, 'Big bang', NULL, 21),
(303, 'Boomba', 'Specii_-_Boomba.mp3', 21),
(304, 'Vezi', NULL, 21),
(305, 'Doru', NULL, 21),
(306, 'La nebuni', NULL, 21),
(307, 'Şah', NULL, 21),
(308, 'Candy 2', NULL, 21),
(309, 'Outro', NULL, 21),
(310, 'Dubgonu', NULL, 21),
(311, 'Sesiune pe Mulatu', NULL, 21),
(312, 'Spiridusu', NULL, 21),
(313, 'E cam aşa manca\'', NULL, 21),
(314, 'Interludiu', NULL, 21),
(315, 'Şerpii', NULL, 21),
(316, 'Intro', NULL, 22),
(317, 'Românica', NULL, 22),
(318, 'Tramvaiul 32', NULL, 22),
(319, 'Originea Speciilor', NULL, 22),
(320, 'Marea Depresie', NULL, 22),
(321, 'Iubire', NULL, 22),
(322, 'Artist Creator', NULL, 22),
(323, 'Greselile Tineretii', NULL, 22),
(324, 'Fuck Darwin', NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `melodii_west`
--

DROP TABLE IF EXISTS `melodii_west`;
CREATE TABLE `melodii_west` (
  `id` int(11) NOT NULL,
  `titlu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `melodii_west`:
--   `album_id`
--       `albume_west` -> `id`
--

--
-- Dumping data for table `melodii_west`
--

INSERT INTO `melodii_west` (`id`, `titlu`, `filename`, `album_id`) VALUES
(1, 'The Chronic', NULL, 1),
(2, 'Fuck wit Dre Day', NULL, 1),
(3, 'Let Me Ride', NULL, 1),
(4, 'The Day the Niggaz Took Over', NULL, 1),
(5, 'Nuthin\' but a \'G\' Thang', '05.Nuthin\'_But_A_\'G\'_Thang.mp3', 1),
(6, 'Deeez Nuuuts', NULL, 1),
(7, 'Lil\' Ghetto Boy', NULL, 1),
(8, 'A Nigga Witta Gun', NULL, 1),
(9, 'The Chronic', NULL, 1),
(10, 'The $20 Sack Pyramid', NULL, 1),
(11, 'Lyrical Gangbang', NULL, 1),
(12, 'High Powered', NULL, 1),
(13, 'The Doctor\'s Office', NULL, 1),
(14, 'Stranded on Death Row', NULL, 1),
(15, 'The Roach', NULL, 1),
(16, 'Bitches Ain\'t Shit', NULL, 1),
(17, 'Lolo', NULL, 2),
(18, 'The Watcher', NULL, 2),
(19, 'Fuck You', NULL, 2),
(20, 'Still D.R.E.', 'Dr._Dre_-_2001_-_04_-_Still_D.R.E.mp3', 2),
(21, 'Big Ego\'s', NULL, 2),
(22, 'XXXplosive', 'Dr._Dre_-_2001_-_06_-_Xxplosive.mp3', 2),
(23, 'What\'s the Difference', NULL, 2),
(24, 'Bar One', NULL, 2),
(25, 'Light Speed', NULL, 2),
(26, 'Forgot About Dre', 'Dr._Dre_-_2001_-_10_-_Forgot_About_Dre.mp3', 2),
(27, 'The Next Episode', 'Dr._Dre_-_2001_-_11_-_The_Next_Episode.mp3', 2),
(28, 'Let\'s Get High', NULL, 2),
(29, 'Bitch Niggaz', NULL, 2),
(30, 'The Car Bomb', NULL, 2),
(31, 'Murder Ink', NULL, 2),
(32, 'Ed-Ucation', NULL, 2),
(33, 'Some L.A. Niggaz', NULL, 2),
(34, 'Pause 4 Porno', NULL, 2),
(35, 'Housewife', NULL, 2),
(36, 'Ackrite', NULL, 2),
(37, 'Bang Bang', NULL, 2),
(38, 'The Message', NULL, 2),
(39, 'The First Day of School ', NULL, 3),
(40, 'When Will They Shoot?', NULL, 3),
(41, 'I\'m Scared ', NULL, 3),
(42, 'Wicked', NULL, 3),
(43, 'Now I Gotta Wet \'Cha', NULL, 3),
(44, 'The Predator', NULL, 3),
(45, 'It Was a Good Day', 'Ice_Cube__-_It_Was_Good_Day_(Lyrics).mp3', 3),
(46, 'We Had to Tear This Mothafucka Up', NULL, 3),
(47, 'Fuck \'Em', NULL, 3),
(48, 'Dirty Mack', NULL, 3),
(49, 'Don\'t Trust \'Em', NULL, 3),
(50, 'Gangsta\'s Fairytale 2', NULL, 3),
(51, 'Check Yo Self', NULL, 3),
(52, 'Who Got the Camera?', NULL, 3),
(53, 'Integration ', NULL, 3),
(54, 'Say Hi to the Bad Guy', NULL, 3),
(55, 'The Funeral', NULL, 4),
(56, 'The Wrong Nigga to Fuck Wit', NULL, 4),
(57, 'My Summer Vacation', NULL, 4),
(58, 'Steady Mobbin\'', NULL, 4),
(59, 'Robin Lench', NULL, 4),
(60, 'Givin\' Up the Nappy Dug Out', NULL, 4),
(61, 'Look Who\'s Burnin', NULL, 4),
(62, 'A Bird in the Hand', NULL, 4),
(63, 'Man\'s Best Friend', NULL, 4),
(64, 'Alive on Arrival', NULL, 4),
(65, 'Death', NULL, 4),
(66, 'The Birth', NULL, 4),
(67, 'I Wanna Kill Sam', NULL, 4),
(68, 'Horny Lil\' Devil', NULL, 4),
(69, 'Black Korea', NULL, 4),
(70, 'True to the Game', NULL, 4),
(71, 'Color Blind', NULL, 4),
(72, 'Doing Dumb Shit', NULL, 4),
(73, 'Us', NULL, 4),
(74, 'No Vaseline', 'Ice_Cube_-_No_Vaseline_(N.W.A_Diss).mp3', 4),
(75, 'Ambitionz Az a Ridah', '2pac_-_Ambitionz_Az_A_Ridah.mp3', 5),
(76, 'All Bout U', NULL, 5),
(77, 'Skandalouz', NULL, 5),
(78, 'Got My Mind Made Up', NULL, 5),
(79, 'How Do U Want It', NULL, 5),
(80, '2 of Amerikaz Most Wanted', NULL, 5),
(81, 'No More Pain', NULL, 5),
(82, 'Heartz of Men', NULL, 5),
(83, 'Life Goes On', NULL, 5),
(84, 'Only God Can Judge Me', NULL, 5),
(85, 'Tradin\' War Stories', NULL, 5),
(86, 'California Love', NULL, 5),
(87, 'I Ain\'t Mad at Cha', NULL, 5),
(88, 'What\'z Ya Phone #', NULL, 5),
(89, 'Can\'t C Me', NULL, 5),
(90, 'Shorty Wanna Be a Thug', NULL, 5),
(91, 'Holla at Me', NULL, 5),
(92, 'Wonda Why They Call U Bytch', NULL, 5),
(93, 'When We Ride', NULL, 5),
(94, 'Thug Passion', NULL, 5),
(95, 'Picture Me Rollin', NULL, 5),
(96, 'Check Out Time', NULL, 5),
(97, 'Ratha Be Ya Nigga', NULL, 5),
(98, 'All Eyez on Me', NULL, 5),
(99, 'Run tha Streetz', NULL, 5),
(100, 'Ain\'t Hard 2 Find', NULL, 5),
(101, 'Heaven Ain\'t Hard 2 Find', NULL, 5),
(102, 'Still Talkin', NULL, 6),
(103, 'Nobody Move', NULL, 6),
(104, 'Ruthless Villain', NULL, 6),
(105, '2 Hard Mutha\'s', NULL, 6),
(106, 'Boyz-n-the-Hood', NULL, 6),
(107, 'Eazy-Duz-It', NULL, 6),
(108, 'We Want Eazy', NULL, 6),
(109, 'Eazy-er Said Than Dunn', NULL, 6),
(110, 'Radio', NULL, 6),
(111, 'No More ?\'s', NULL, 6),
(112, 'I\'mma Break It Down', NULL, 6),
(113, 'Eazy-Chapter 8 Verse 10', NULL, 6),
(114, 'Boyz-n-the-Hood (Remix)', NULL, 7),
(115, '8 Ball', NULL, 7),
(116, 'Eazy-Duz-It', NULL, 7),
(117, 'Eazy-er Said Than Dunn', NULL, 7),
(118, 'No More ?\'s', NULL, 7),
(119, 'We Want Eazy', NULL, 7),
(120, 'Nobody Move', NULL, 7),
(121, 'Radio', NULL, 7),
(122, 'Only If You Want It', NULL, 7),
(123, 'Neighborhood Sniper', NULL, 7),
(124, 'I\'d Rather Fuck You', NULL, 7),
(125, 'Automobile', NULL, 7),
(126, 'Niggaz My Height Don\'t Fight', NULL, 7),
(127, 'Eazy Street', NULL, 7),
(128, 'First Power', NULL, 8),
(129, 'Ole School Shit', NULL, 8),
(130, 'Sorry Louie', NULL, 8),
(131, 'Just tah Let U Know', NULL, 8),
(132, 'Sippin\' On A 40', NULL, 8),
(133, 'Nutz On Ya Chin', NULL, 8),
(134, 'Tha Muthaphukkin\' Real', NULL, 8),
(135, 'Lickin, Suckin, Phukkin', NULL, 8),
(136, 'Hit The Hooker', NULL, 8),
(137, 'My Baby\'z Mama', NULL, 8),
(138, 'Creep N Crawl', NULL, 8),
(139, 'Wut Would You Do', NULL, 8),
(140, 'Gangsta Beat 4 Tha Street', NULL, 8),
(141, 'Eternal E', NULL, 8),
(142, 'Newsflash', NULL, 9),
(143, 'Krocadil', '02-brotha_lynch_hung-krocadil.mp3', 9),
(144, 'Bacon N Eggs', NULL, 9),
(145, 'MDK', NULL, 9),
(146, 'Disappeared', NULL, 9),
(147, 'Fucced Up', NULL, 9),
(148, 'Eating You', NULL, 9),
(149, 'Tha Package', NULL, 9),
(150, 'Something About Susan', '09-brotha_lynch_hung-something_about_susan_(feat._cos_irv_da_phantom).mp3', 9),
(151, 'The River', NULL, 9),
(152, 'Can I Have a Napkin?', NULL, 9),
(153, 'Mask and Knife', NULL, 9),
(154, 'Meat Cleaver', '13-brotha_lynch_hung-meat_cleaver.mp3', 9),
(155, 'I Give Up', NULL, 9),
(156, 'Instruments', NULL, 9),
(157, 'Stabbed', NULL, 9),
(158, 'Body On the Floor', NULL, 9),
(159, 'Have You Checked the Children?', NULL, 9),
(160, 'Sweeney Todd', NULL, 9),
(161, 'Dead Bitch', NULL, 9),
(162, 'Cusche Break', NULL, 10),
(163, 'Siccmade', NULL, 10),
(164, 'Dead Man', NULL, 10),
(165, 'Rest In Piss', NULL, 10),
(166, 'Get Da Baby', NULL, 10),
(167, 'Return Of Da Baby Killa', NULL, 10),
(168, 'Locc 2 Da Brain', NULL, 10),
(169, 'Q-Ball', NULL, 10),
(170, 'Liquor Sicc', NULL, 10),
(171, '40 Break', NULL, 10),
(172, 'Datz Real Gangsta Shit', NULL, 10),
(173, 'Deep Down', NULL, 10),
(174, 'Dead Man Walking', NULL, 10),
(175, '781 Redrum', NULL, 10),
(176, 'Season of da Siccness', NULL, 10),
(177, 'Welcome 2 Your Own Death', NULL, 10),
(178, 'Real Loccs', NULL, 10),
(179, 'Inhale With Da Devil', NULL, 10),
(180, 'Working Late', NULL, 11),
(181, 'The Coathanga', NULL, 11),
(182, 'Mannibalector', NULL, 11),
(183, 'Look What I Did', NULL, 11),
(184, 'Look It\'s a Dead Body', NULL, 11),
(185, 'Sooner Or Later', NULL, 11),
(186, 'Fucc Off Again', NULL, 11),
(187, 'Suicide Watch', NULL, 11),
(188, 'Spit It Out', NULL, 11),
(189, 'Red Dead Bodies', NULL, 11),
(190, 'Blinded By Desire', NULL, 11),
(191, 'Friday Night', NULL, 11),
(192, 'The Visit', NULL, 11),
(193, 'I C U', NULL, 11),
(194, 'I\'m Not Perfect', NULL, 11),
(195, 'I Don\'t Think My Momma Ever Loved Me', NULL, 11),
(196, 'Eating Fingers', NULL, 11),
(197, 'Therapy Session', NULL, 11),
(198, 'It Happens', NULL, 11),
(199, 'Takin\' Online Orders', NULL, 11),
(200, 'Outro', NULL, 11),
(201, 'Restless', NULL, 12),
(202, 'Front 2 Back', NULL, 12),
(203, 'Been a Long Time', NULL, 12),
(204, 'U Know', NULL, 12),
(205, 'X', NULL, 12),
(206, 'Alkaholik', 'Xzibit_-_Alkaholik.mp3', 12),
(207, 'Kenny Parker Show 2001', NULL, 12),
(208, 'D.N.A.', NULL, 12),
(209, 'Double Time', NULL, 12),
(210, 'Don\'t Approach Me', NULL, 12),
(211, 'Rimz & Tirez', NULL, 12),
(212, 'Fuckin\' You Right', NULL, 12),
(213, 'Best of Things', NULL, 12),
(214, 'Get Your Walk On', 'Xzibit_-_Get_Your_Walk_On.mp3', 12),
(215, 'Sorry I\'m Away So Much', NULL, 12),
(216, 'Loud & Clear', NULL, 12),
(217, 'Grand Opening', NULL, 13),
(218, 'At the Speed of Life', NULL, 13),
(219, 'Just Maintain', NULL, 13),
(220, 'Eyes May Shine', NULL, 13),
(221, 'Positively Negative', NULL, 13),
(222, 'Don\'t Hate Me', NULL, 13),
(223, 'Paparazzi', NULL, 13),
(224, 'The Foundation', NULL, 13),
(225, 'Mrs. Crabtree', NULL, 13),
(226, 'Bird\'s Eye View', NULL, 13),
(227, 'Hit & Run, Pt. 2', NULL, 13),
(228, 'Carry the Weight', NULL, 13),
(229, 'Plastic Surgery', NULL, 13),
(230, 'Enemies & Friends', NULL, 13),
(231, 'Last Words', NULL, 13),
(232, 'State of Hip-Hop vs. Xzibit', NULL, 14),
(233, 'Everything', NULL, 14),
(234, 'Dos Equis', NULL, 14),
(235, 'Something More', NULL, 14),
(236, 'Gangsta Gangsta', NULL, 14),
(237, 'Forever a G', NULL, 14),
(238, '1983', NULL, 14),
(239, 'Stand Tall', NULL, 14),
(240, 'Spread It Out', NULL, 14),
(241, 'Up Out the Way', NULL, 14),
(242, 'Napalm', NULL, 14),
(243, 'Meaning of Life', NULL, 14),
(244, 'Louis XIII', NULL, 14),
(245, 'Enjoy the Night', NULL, 14),
(246, 'Movies', NULL, 14),
(247, 'I Came to Kill', NULL, 14),
(248, 'Killer\'s Remorse', NULL, 14),
(249, 'Intro', NULL, 15),
(250, 'Scarface Groove', NULL, 15),
(251, 'This is a Test', NULL, 15),
(252, 'Panther Power', NULL, 15),
(253, 'Break the Grip of Shame', 'PARIS_-_Break_The_Grip_Of_Shame_(Lo-Res).mp3', 15),
(254, 'Warning', NULL, 15),
(255, 'Ebony', NULL, 15),
(256, 'Brutal', NULL, 15),
(257, 'On the Prowl', NULL, 15),
(258, 'The Devil Made Me Do It', NULL, 15),
(259, 'The Hate That Hate Made', NULL, 15),
(260, 'Nellow Madness', NULL, 15),
(261, 'I Call Him Mad', NULL, 15),
(262, 'Escape From Babylon', NULL, 15),
(263, 'Wretched', NULL, 15),
(264, 'The Enema', NULL, 16),
(265, 'Make Way for a Panther', NULL, 16),
(266, 'Sleeping With the Enemy', NULL, 16),
(267, 'House Niggas Bleed Too', NULL, 16),
(268, 'Bush Killa', NULL, 16),
(269, 'Coffee, Donuts & Death', NULL, 16),
(270, 'Thinka \'Bout It', NULL, 16),
(271, 'Guerillas in the Mist', NULL, 16),
(272, 'The Days of Old', NULL, 16),
(273, 'Long Hot Summer', NULL, 16),
(274, 'Conspiracy of Silence', NULL, 16),
(275, 'Funky Lil\' Party', NULL, 16),
(276, 'Check It Out Ch\'All', NULL, 16),
(277, 'Rise', NULL, 16),
(278, 'Assata\'s Song', 'PARIS_-_Assata\'s_Song_(Lo-Res).mp3', 16),
(279, 'Bush Killa (Hellraiser mix)', NULL, 16),
(280, 'Prelude', NULL, 17),
(281, 'It\'s Real', NULL, 17),
(282, 'One Time Fo\' Ya Mind', NULL, 17),
(283, 'Guerrilla Funk', NULL, 17),
(284, 'Blacks & Blues', NULL, 17),
(285, 'Bring It to Ya', NULL, 17),
(286, 'Outta My Life', NULL, 17),
(287, 'Whatcha See', NULL, 17),
(288, '40 Ounces and a Fool', NULL, 17),
(289, 'Back in the Day', NULL, 17),
(290, 'Guerrilla Funk', NULL, 17),
(291, 'It\'s Real (Extended Movement Mix)', NULL, 17),
(292, 'Shots Out', NULL, 17),
(293, 'Bathtub', NULL, 18),
(294, 'G Funk Intro', NULL, 18),
(295, 'Gin and Juice', 'Gin_and_juice_-_Snoop_Doggy_Dogg.mp3', 18),
(296, 'W Balls', NULL, 18),
(297, 'Tha Shiznit', NULL, 18),
(298, 'Domino Intro', NULL, 18),
(299, 'Lodi Dodi', NULL, 18),
(300, 'Murder Was the Case', NULL, 18),
(301, 'Serial Killa', NULL, 18),
(302, 'Who Am I?', NULL, 18),
(303, 'For All My Niggaz & Bitches', NULL, 18),
(304, 'Ain\'t No Fun', NULL, 18),
(305, 'Chronic Relief Intro', NULL, 18),
(306, 'Doggy Dogg World', NULL, 18),
(307, 'Class Room Intro', NULL, 18),
(308, 'Gz and Hustlas', NULL, 18),
(309, 'Checkin', NULL, 18),
(310, 'Gz Up, Hoes Down', NULL, 18),
(311, 'Pump Pump', NULL, 18),
(312, 'Neva Left', NULL, 19),
(313, 'Moment I Feared', NULL, 19),
(314, 'Bacc in da Dayz', NULL, 19),
(315, 'Promise You This', NULL, 19),
(316, 'Trash Bags', NULL, 19),
(317, 'Swivel', NULL, 19),
(318, 'Go On', NULL, 19),
(319, 'Big Mouth', NULL, 19),
(320, 'Toss It', NULL, 19),
(321, '420', NULL, 19),
(322, 'Lavender (Nightfall Remix)', NULL, 19),
(323, 'Let Us Begin', NULL, 19),
(324, 'Mount Kushmore', 'Snoop_Dogg-_Mount_Kushmore_feat._Redman,_B-Real,_&_Method_Man_(Animated_Video).mp3', 19),
(325, 'Vapors (DJ Battlecat Remix)', NULL, 19),
(326, 'I\'m Still Here', NULL, 19),
(327, 'Love Around the World', NULL, 19),
(328, 'Intro', NULL, 20),
(329, 'Doggfather', NULL, 20),
(330, 'Ride 4 Me', NULL, 20),
(331, 'Up Jump tha Boogie', NULL, 20),
(332, 'Freestyle Conversation', NULL, 20),
(333, 'When I Grow Up', NULL, 20),
(334, 'Snoop Bounce', NULL, 20),
(335, 'Gold Rush', NULL, 20),
(336, '(Tear \'Em Off) Me and My Doggz', NULL, 20),
(337, 'You Thought', NULL, 20),
(338, 'Vapors', NULL, 20),
(339, 'Groupie', NULL, 20),
(340, '2001', NULL, 20),
(341, 'Sixx Minutes', NULL, 20),
(342, '(O.J.) Wake Up', NULL, 20),
(343, 'Snoop\'s Upside Ya Head', NULL, 20),
(344, 'Blueberry', NULL, 20),
(345, 'Traffic Jam', NULL, 20),
(346, 'Doggyland', NULL, 20),
(347, 'Downtown Assassins', NULL, 20),
(348, 'Outro', NULL, 20),
(349, 'Go $hort Dog', NULL, 21),
(350, 'Break a Bitch', NULL, 21),
(351, 'Tables', NULL, 21),
(352, 'Ain\'t My Girlfriend', NULL, 21),
(353, 'Give Her Some Money', NULL, 21),
(354, 'Save All That Love', NULL, 21),
(355, 'How To Be a Player', NULL, 21),
(356, 'Pull Yo Trophies Out', NULL, 21),
(357, 'Don\'t Shoot', NULL, 21),
(358, 'Dr. Dre Interlude', NULL, 21),
(359, 'The Game Taught Me', NULL, 21),
(360, 'Give Me Back My Eyes', NULL, 21),
(361, 'Only Dimes', NULL, 21),
(362, 'Twerk Train', NULL, 21),
(363, 'Sexy Dancer', NULL, 21),
(364, 'I Got Shit to Do', NULL, 21),
(365, 'Pay Her', NULL, 21),
(366, '$hort Dog Wedding', NULL, 21),
(367, 'Pop That Pussy', NULL, 21),
(368, 'How to Be a Player (Reprise)', NULL, 21),
(369, 'Partytime', NULL, 22),
(370, 'Mack Attack', NULL, 22),
(371, 'Playboy Short II', NULL, 22),
(372, 'You Know What I Mean', NULL, 22),
(373, 'Freaky Tales', 'Too_Short-_Freaky_Tales.mp3', 22),
(374, 'Dope Fiend Beat', NULL, 22),
(375, 'Little Girls', NULL, 22),
(376, 'The Universal Mix', NULL, 22),
(377, 'Don\'t Fight the Intro', NULL, 23),
(378, 'I\'m A Player', NULL, 23),
(379, 'Just Another Day', NULL, 23),
(380, 'Gotta Get Some Lovin\'', NULL, 23),
(381, 'Money In The Ghetto', NULL, 23),
(382, 'Blowjob Betty', NULL, 23),
(383, 'All My Bitches Are Gone', NULL, 23),
(384, 'The Dangerous Crew', NULL, 23),
(385, 'Get In Where You Fit In', NULL, 23),
(386, 'Playboy $hort', NULL, 23),
(387, 'Way Too Real', NULL, 23),
(388, 'It\'s All Good', NULL, 23),
(389, 'Oakland Style', NULL, 23),
(390, 'Bomb First', NULL, 24),
(391, 'Hail Mary', 'Tupac_-_Hail_Mary.mp3', 24),
(392, 'Toss It Up', NULL, 24),
(393, 'To Live & Die in L.A.', NULL, 24),
(394, 'Blasphemy', NULL, 24),
(395, 'Life of an Outlaw', NULL, 24),
(396, 'Just Like Daddy', NULL, 24),
(397, 'Krazy', NULL, 24),
(398, 'White Man\'z World', NULL, 24),
(399, 'Me and My Girlfriend', NULL, 24),
(400, 'Hold Ya Head', NULL, 24),
(401, 'Against All Odds', NULL, 24),
(402, 'Intro', NULL, 25),
(403, 'If I Die 2Nite', NULL, 25),
(404, 'Me Against the World', NULL, 25),
(405, 'So Many Tears', NULL, 25),
(406, 'Temptations', NULL, 25),
(407, 'Young Niggaz', NULL, 25),
(408, 'Heavy in the Game', NULL, 25),
(409, 'Lord Knows', NULL, 25),
(410, 'Dear Mama', '2Pac_-_Dear_Mama_(Official_Music_Video).mp3', 25),
(411, 'It Ain\'t Easy', NULL, 25),
(412, 'Can U Get Away', NULL, 25),
(413, 'Old School', NULL, 25),
(414, 'Fuck the World', NULL, 25),
(415, 'Death Around the Corner', NULL, 25),
(416, 'Outlaw', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `rapperi_east`
--

DROP TABLE IF EXISTS `rapperi_east`;
CREATE TABLE `rapperi_east` (
  `id` int(10) NOT NULL,
  `nume` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data_nasterii` date NOT NULL,
  `nume_real` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `membri` varchar(100) NOT NULL,
  `nationalitate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `social_media` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriere` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `poza` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `rapperi_east`:
--

--
-- Dumping data for table `rapperi_east`
--

INSERT INTO `rapperi_east` (`id`, `nume`, `data_nasterii`, `nume_real`, `membri`, `nationalitate`, `social_media`, `descriere`, `poza`) VALUES
(1, 'The Notorious B.I.G.', '1972-05-21', 'Christopher George Latore Wallace', '', 'American', 'https://www.facebook.com/NotoriousBIG', 'Christopher George Latore Wallace (n. 21 mai 1972 - d. 9 martie 1997) cunoscut sub numele de scenă The Notorious B.I.G., Biggie sau Biggie Smalls (după un gangster din filmul din 1975 “Let’s Do It Again”), a fost un rapper american.\r\n\r\nCrescut în Brooklyn, New York, Wallace a crescut în anii 80’, apogeul perioadei în care se vindeau droguri pe străzi, lucru pe care l-a practicat și el de la o vârstă foarte fragedă. Când și-a lansat albumul de debut “Ready to Die” în 1994 el era o figură centrală pe scena Hip-Hop a Coastei de Est și a crescut vizibilitatea orașului New York într-o perioadă în care muzica rap era dominată de artiști de pe Coasta de Vest a Statelor Unite. Anul următor, Wallace împreună cu câțiva prieteni din copilărie a format grupul Junior M.A.F.I.A.. În timp ce înregistra pentru al doilea album, Biggie a fost implicat in conflictul dintre Coasta de Est și Coasta de Vest ce domina scena mediatică. ', 'biggie.jpg'),
(2, 'Jay-Z', '1969-12-04', 'Shawn Corey Knowles-Carter', '', 'American', 'https://facebook.com/JayZ', 'Shawn Corey Knowles-Carter (n. 4 decembrie 1969), cunoscut și sub numele de Jay-Z este un rapper, producător de discuri, antreprenor și ocazional actor american. El este recunoscut pe plan internațional pentru colaborările sale consacrate. Este unul dintre cei mai de succes antreprenori și artiști hip-hop din America. În 2012, Forbes a estimat averea netă a lui Carter la 500 de milioane de dolari americani. El a vândut aproximativ 50 de milioane de albume în întreaga lume și a primit paisprezece premii Grammy pentru activitatea sa muzicală și numeroase alte nominalizări. Fiind constant considerat unul dintre cei mai mari rapperi ai tuturor timpurilor a fost clasat de MTV pe locul 1 în topul The Greatest MCs of All-Time în 2006. Două dintre albumele sale: Reasonable Doubt (1996) și The Blueprint (2001) sunt considerate ca fiind repere în acest gen de muzică amândouă fiind incluse în clasamentul celor mai bune 500 de albume ale tuturor timpurilor realizat de revista Rolling Stone.', 'jayz.jpg'),
(3, 'Nas', '1973-09-14', 'Nasir Bin Olu Dara Jones', '', 'American', 'https://facebook.com/Nas', 'Nasir Bin Olu Dara Jones (n. 14 septembrie 1973, Crown Heights, SUA), cunoscut ca Nas, este un rapper, producător muzical, actor și antreprenor american. Fiul artistului jazz Olu Dara, Nas a lansat 8 albume certificate cu discul de platină și a vândut peste 25 de milioane de discuri la nivel mondial. Deasemenea, Nas deține propria casă de discuri, Mass Appeal și este proprietarul unui magazin de încălțăminte Fila.\r\n\r\nNas și-a început cariera muzicală în anul 1991 apărând ca artist colaborator pe albumul \"Live at the Barbeque\" lansat de Main Source. A lansat primul său album de studio, intitulat Illmatic, în anul 1994. Albumul a fost foarte bine primit de către critici dar și de către comunitate hip-hop fiind considerat unul dintre cel mai bune albume hip-hop din dintotdeauna. Următorul său album intitulat It Was Written a fost certificat cu mai multe discuri de platină, fiind unul dintre cele mai bine vândute albume ale sale. În perioada 2001-2005, Nas a fost implicat într-o dispută extrem de mediatizată cu rapperul Jay-Z.', 'nas.jpg'),
(4, 'Rakim', '1968-01-28', 'William Michael Griffin Jr.', '', 'American', 'https://facebook.com/rakimallah/', 'William Michael Griffin Jr., cunoscut sub numele de scenă Rakim (născut la 28 ianuarie 1968), este un rapper american. Reprezentând jumătate din duo-ul hip-hop al epocii de aur, \"Eric B. & Rakim\", el este considerat unul dintre cei mai influenți și mai calificași MC ai tuturor timpurilor.\r\nAlbumul grupului Eric B. & Rakim, \"Paid in Full\", a fost numit cel mai bun album hip-hop al tuturor timpurilor de catre MTV in 2006, in timp ce Rakim insusi a fost clasat pe locul 4 pe lista MTV a celor mai buni MC din toate timpurile. Steve Huey de la AllMusic a declarat că \"Rakim este aproape universal recunoscut ca fiind unul dintre cele mai mari MC - poate cel mai mare - al tuturor timpurilor din comunitatea hip-hop\". Editorii de la About.com l-au clasat pe locul 2 pe lista lor de \"Top 50 MCs of Time (1987-2007)\". Rakim și-a început cariera ca emcee al duo-ului rap Eric B. & Rakim. În 2012, The Source la clasat pe locul 1 pe lista lor de \"Top 50 Lyricists of All Time\".', 'rakim.jpg'),
(5, 'KRS-One', '1965-08-20', 'Lawrence Krisna Parker', '', 'American', 'https://twitter.com/IAmKRSOne', 'Lawrence Krisna Parker (n. 20 august 1965), mai bine cunoscut după numele sale de scenă KRS-One (un acronim pentru Knowledge Reigns Supreme Over Nearly Everyone, de asemenea, K, R și S sunt litere atât de la numele său mijlociu cât și de la numele zeului hindus, Krishna) și Teacha, este un rapper american din The Bronx, New York City. La BET Awards 2008, KRS-One a primit Premiul pentru întreaga carieră pentru munca și efortul depus în Stop the Violence Movement, precum și pentru pionieratul în muzica și cultura hip hop. KRS-One este, de asemenea, un susținător al vegetarianismului.', 'krsOne.jpg'),
(6, 'Busta Rhymes', '1972-05-20', 'Trevor Smith Jr.', '', 'American', 'https://twitter.com/BustaRhymes', 'Trevor Smith Jr. (născut în 20 mai 1972) cunoscut ca Busta Rhymes, este un muzician hip-hop și actor american de origine jamaicană. Pseudonimul Busta Rhymes i-a fost dat de către Chuck D de la Public Enemy după jucătorul de fotbal american George \"Buster\" Rhymes. A colaborat în 2008 cu Kat DeLuna pentru Run The Show. ', 'bustaRhymes.jpg'),
(7, 'Method Man', '1971-03-02', 'Clifford Smith', '', 'American', 'https://twitter.com/methodman', 'Clifford Smith (născut pe 2 martie 1971), cunoscut după numele de scenă Method Man, este un rapper american, producător muzical, actor și membru al colectivului hip hop, Wu-Tang Clan. Și-a luat numele de scenă din filmul The Fearless Young Boxer din 1979, cunoscut și ca Method Man. Face parte și din duo-ul Method Man & Redman. A câștigat un premiu Grammy la categoria \"Cel mai bun cântec rap interpretat de un duo sau grup\" pentru piesa \"I\'ll Be There for You/You\'re All I Need to Get By\" cântată în duet cu Mary J. Blige. În 2007, editorii de la About.com l-au inclus în lista celor mai buni 50 de MC ai timpurilor noastre (1987-2007).\r\n\r\nMethod Man a apărut în filmele Belly, How High, Garden State având și un rol mic în The Wackness. Mai recent a apărut în filmul lui George Lucas, Red Tails. În televiziune atât el cât și Redman au jucat în sitcomul Method & Red distribuit de FOX. De asemenea, Method Man a apărut în rolul lui Tug Daniels în seria HBO, Oz dar și în rolul lui Calvin „Cheese” Wagstaff în seria de succes The Wire. ', 'methodMan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rapperi_modern`
--

DROP TABLE IF EXISTS `rapperi_modern`;
CREATE TABLE `rapperi_modern` (
  `id` int(10) NOT NULL,
  `nume` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `data_nasterii` date NOT NULL,
  `nume_real` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `membri` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nationalitate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `social_media` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descriere` longtext COLLATE utf8_unicode_ci NOT NULL,
  `poza` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELATIONSHIPS FOR TABLE `rapperi_modern`:
--

--
-- Dumping data for table `rapperi_modern`
--

INSERT INTO `rapperi_modern` (`id`, `nume`, `data_nasterii`, `nume_real`, `membri`, `nationalitate`, `social_media`, `descriere`, `poza`) VALUES
(1, 'Denzel Curry', '1995-02-16', 'Denzel Rae Don Curry', '', 'American', 'https://twitter.com/denzelcurry', 'Denzel Rae Don Curry (născut în 16 februarie 1995 în Carol City, SUA) este un rapper american. Crescut in in Carol City, Florida, Curry a început sa cânte înca din clasa a șasea și a început să lucreze la primul său mixtape în 2011. Influențat de rapperul underground din Florida SpaceGhostPurrp, mixtape-ul a fost mai târziu afișat pe profilul de social media al lui Purrp, dându-i lui Curry atenție și rezultând în intrarea lui în grupul lui Purrp, Raider Klan.\r\n\r\nCurry a ieșit din Raider Klan în 2013, lansându-și albumul său de debut un an mai târziu, când înca era în liceu, intitulat \"Nostalgic 64\" în 3 Septembrie 2013. A continuat și a lansat incă două proiecte, Imperial in 9 Marctie 2016, si Ta13oo în 27 Iulie 2018, care a ajuns numarul 28 în clasamentul Billboard 200.', 'denzel.jpg'),
(2, 'Takeoff', '1992-06-18', 'Kirshnik Khari Ball', '', 'American', 'https://twitter.com/1youngtakeoff', 'Kirshnik Khari Ball (născut în 18 Iunie 1994 în Lawrenceville, SUA), cunoscut sub numele de Takeoff, este un rapper american. Este cunoscut ca membru al trioului Migos împreună cu unchiul său Quavo și verișorul Offset.\r\nÎmpreună cu cei doi membri ai familiei sale, Quavo și Offset, Takeoff a început să cânte in 2008. Grupul a concertat prima dată sub numele de Polo Club, dar apoi acesta a fost schimbat in Migos.', 'takeoff.png'),
(3, 'Lil Pump', '2000-08-17', 'Gazzy Garcia', '', 'American', 'https://twitter.com/lilpump', 'Gazzy Garcia (născut in 17 august 2000 în Miami, SUA), cunoscut și sub numele de scenă Lil Pump, este un tânăr rapper american și compozitor. El a început să lanseze melodii pe SoundCloud în anul 2016, acumulând aproape o sută de milioane de streaming-uri combinate pe site. Împreună cu un alt rapper din Miami, Smokepurpp, Garcia a fost co-titularul turneului No Jumper în anul 2016 și a interpretat, de asemenea, la Festivalul Rolling Loud. Garcia este cel mai bine cunoscut pentru melodia sa \"Gucci Gang\" care a ajuns pe locul trei în topul Billboard Hot 100. El a lansat mixtape-ul său de debut, Lil Pump, pe data de 6 octombrie 2017. ', 'lilpump.jpg'),
(4, 'Future', '1983-11-20', 'Nayvadius DeMun Wilburn ', '', 'American', 'https://twitter.com/1future', 'Nayvadius DeMun Wilburn (născut în 20 Noiembrie 1983 în Atlanta, SUA), cunoscut sub numele de Future, este un rapper american, compozitor, și producător. Născut și crescut în Atlanta, Georgia, Wilburn a devenit mai întâi implicat în muzica fiind parte din grupul Dungeon Family, unde avea porecla \"the Future\". După ce a acumulat o serie de mixtape-uri între 2010 și 2011, Future a semnat un contract cu Epic Records și A1 Recordings, care l-au ajutat să isi lanseze propria casă de discuri, Freebandz. Mai târziu și-a lansat albumul de debut, Pluto, în aprilie 2012, care a primit reacții pozitive. Al doilea album, Honest, a fost lansat în aprilie 2014, și a întrecut succesul primului album în topuri.\r\n\r\nÎntre finalul lui 2014 și inceputul lui 2015, Future a lansat un trio de mixtape-uri de mare succes: Monster (2014), Beast Mode (2015), și 56 Nights (2015). Următoarele lui lansări, DS2 (2015), What a Time to Be Alive (2015, în colaborare cu Drake), Evol (2016), Future (2017) și Hndrxx (2017) au debutat ca numarul 1 în U.S. Billboard 200. Ultimele două l-au făcut să ajungă primul artist din 2014 incoace care a ajuns cu două albume în săptămâni consecutive sus în acest top.', 'future.jpg'),
(5, 'Gucci Mane', '1980-02-12', 'Radric Delantic Davis', '', 'American', 'https://facebook.com/guccimane', 'Radric Delantic Davis (născut în 12 Februarie 1980 în Birmingham, SUA) cunoscut sub numele de Gucci Mane, este un rapper american. El este unul din pionierii subgenului de muzica trap al hip hop-ului, împreună cu T.I. și Young Jeezy. În 2005, Gucci mane a debutat cu Trap House, urmat de alte două albume, Hard to Kill și Trap-A-Thon în 2006. Al patrulea album, Back to the Trap House, a fost lansat in 2007.\r\n\r\nÎn 2009, Gucci Mane a lansat al șaselea său album, The State vs. Radric Davis, astfel primind primul sau Disc de Aur. După o perioadă petrecută în închisoare, între 2014 și 2016, a revenit cu alte proiecte, precum Everybody Looking (2016), care a fost un succes. Colaborarea sa cu Rae Sremmurd din 2016, intitulată \"Black Beatles\",  l-a dus pe Gucci mane pe locul 1 în topul US Billboard Hot 100. Ultimul său album este Evil Genius, și a fost lansat în 7 decembrie 2018.', 'guccimane.jpg'),
(6, 'Travis Scott', '1992-04-30', 'Jacques Berman Webster II', '', 'American', 'https://facebook.com/travisscottlaflame/', 'Jacques Berman Webster II (născut în 30 aprilie 1992), cunoscut sub numele de Travis Scott (sau Travi$ Scott), este un rapper, compozitor și producător american. În 2012, Scott și-a semnat primul acord cu Epic Records. În luna noiembrie a aceluiași an, Scott a semnat un acord cu Good Music al lui Kanye West, ca parte a Very Good Beats, după ce a apărut pe albumul de compilație al anului 2012, Cruel Summer. În aprilie 2013, Scott a semnat o înțelegere cu Grand Hustle a lui T.I.\r\n\r\nPrimul lui proiect, un mixtape numit Owl Pharaoh, a fost lansat în mai 2013. A urmat un al doilea mixtape, intitulat Days Before Rodeo, în august 2014. Albumul său de debut, Rodeo, a fost lansat în septembrie 2015 și a fost condus de single-ul \"Antidote\", care a atins primele 20 din topul US Billboard Hot 100. Cel de-al doilea album al său, \"Birds in the Trap Sing McKnight\", a fost lansat în septembrie 2016, primind recenzii pozitive. În anul următor, Travis Scott a lansat un album colaborativ cu Quavo numit Huncho Jack, Jack Huncho sub numele de grup Huncho Jack. A lansat al treilea album, Astroworld, pe 3 august 2018, iar melodia Sicko Mode a fost prima sa melodie numărul 1 în topul Hot 100.', 'travisscott.jpg'),
(7, 'XXXTentacion', '1998-01-23', 'Jahseh Dwayne Ricardo Onfroy', '', 'American', 'https://facebook.com/BadVibezForever/', 'Jahseh Dwayne Ricardo Onfroy (născut în 23 ianuarie 1998 în Plantation, SUA – decedat în 18 iunie 2018 în Deerfield Beach, SUA), cunoscut sub numele de scenă XXXTentacion, a fost un rapper, cântăreț și compozitor american. Născut și crescut în Plantation, Florida, Jahseh a petrecut in mare parte în Lauderhill. A început să scrie muzică după ce a fost eliberat dintr-un centru de corecție pentru tineri și în cele din urmă și-a lansat prima melodie de pe platforma SoundCloud, în iunie 2013, intitulat \"News/Flock\". El a fost o figură populară în SoundCloud rap.\r\n\r\nJahseh a lansat albumul de debut, intitulat \"17\", pe 25 August 2017, al doilea album, \"?\", a fost lansat pe 16 Martie 2018. A debutat la numărul unu pe Billboard 200, cu single-urile sale \"Sad!\" și \"Changes\", ajungând la numărul 1 și 18 pe Billboard Hot 100 respectiv. Pe 7 Decembrie 2018, fost lansat albumul Skins. ', 'xxxtentacion.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rapperi_ro`
--

DROP TABLE IF EXISTS `rapperi_ro`;
CREATE TABLE `rapperi_ro` (
  `id` int(10) NOT NULL,
  `nume` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data_nasterii` date NOT NULL,
  `nume_real` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `membri` varchar(100) NOT NULL,
  `nationalitate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `social_media` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriere` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `poza` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `rapperi_ro`:
--

--
-- Dumping data for table `rapperi_ro`
--

INSERT INTO `rapperi_ro` (`id`, `nume`, `data_nasterii`, `nume_real`, `membri`, `nationalitate`, `social_media`, `descriere`, `poza`) VALUES
(1, 'Getto Daci', '0000-00-00', '', 'Piele;Os;Deceneu;Romichete;Ioio;Dacian', 'Români', 'https://discogs.com/artist/2021948-Getto-Daci', 'Getto Daci este una dintre primele trupe de hip-hop din România, stilul acesteia fiind hip-hop. Înființată în anul 1994, aceștia au lansat albumul nr.3 în 1997, Daciada și nr.4 în 1999 Marea Scofală la A&A Records. Pe lângă cele 2 albume, Getto Daci au lansat 2 piese care au fost incluse în compilația \"Marphă - Strict Hip-Hop\", acestea fiind \"E un lucru Getto\" și \"Atac Getto Dac\" in 1995. ', 'gettoDaci.jpg'),
(2, 'Cedry2k', '1980-04-19', 'Marius Stelian Crăciun', '', 'Român', 'https://facebook.com/PoezieBalistica/', 'Marius Stelian Crăciun (n. 19 aprilie 1980, București), cunoscut sub numele de scenă Cedry2k este un cântăreț de rap din România. Artistul are la activ 7 albume solo, un EP solo si un EP facut in colaborare cu cântărețul Jianu. ', 'cedry2k.jpg'),
(3, 'Specii', '0000-00-00', '', 'Dragonu;Chimie', 'Români', 'https://facebook.com/SpeciiProd07/', 'Specii a fost o trupă de hip hop din România ce i-a avut în componență pe Dragonu’ AK47 (Dragoș Tudorache), Chimie (Mihai Adamescu) și gAZAh.\r\n\r\nSpecii s-a format în anul 2008, când Dragonu’ AK47 și Chimie se întâlnesc și descoperă că au un interes comun: hip hop-ul.Drogurile sunt un subiect des întâlnit în piesele acestora. Cei doi artiști încep să lucreze la albumul Ușile Vol. 1, care urma să fie lansat abia 3 ani mai târziu, în 2011. Între timp, Dragonu și Chimie îl întâlnesc pe Kazi Ploae, cu care scot două albume: ”Amenințarea Maimuței” și ”Imperiul Lianelor”. Ulterior, gAZAh se alătură trupei abia în anul 2010.', 'specii.jpg'),
(4, 'CTC', '0000-00-00', '', 'DOC;Deliric;Vlad Dobrescu', 'Români', 'https://facebook.com/CTC.FacemRecords/', 'C.T.C. este o trupă de hip-hop din România. Trupa s-a înființat la sfârșitul anului 1999 în formula DOC (Vlad Munteanu), Deliric1 (Răzvan Eremia) si Vlad Dobrescu. DJ Paul s-a alăturat odată cu trecerea lui Vlad Dobrescu de la platane la microfon, însă acesta a părăsit formația. Mai apoi DJ Nasa s-a alăturat trupei.', 'ctc.jpg'),
(5, 'Paraziții', '0000-00-00', '', 'Cheloo;Ombladon;Freakadadisk', 'Români', 'https://facebook.com/ParazitiiOfficial/', 'Paraziții e una dintre primele trupe de hip hop din România formata din Cheloo, Ombladon și Freakadadisk înființată în 1994. \r\nÎn martie 1994, Cheloo (Cătălin Ștefan Ion) înființează Paraziții alaturi de Dinte. În luna mai li se alătură Ombladon (Bogdan Ionuț Păstacă). Prima piesă înregistrată este „În Jur” și a apărut pe 13 Septembrie 1994. O zi mai târziu au susținut primul lor concert, la balul bobocilor de la liceul Spiru Haret din București.\r\nÎn iarna anului 1994 Dinte paraseste formatia, locul lui fiind luat de DJ I.E.S. Primul album, \"Poezii pentru pereți\", produs independent, a fost lansat pe 15 iunie 1995 și a fost al doilea album de rap din România (după R.A.C.L.A. și înainte de B.U.G. Mafia). ', 'parazitii.jpg'),
(6, 'B.U.G. Mafia', '0000-00-00', '', 'Tataee;Uzzi;Caddillac', 'Români', 'https://facebook.com/bugmafia/', 'B.U.G. Mafia este o trupă de hip-hop din România fondată în anul 1993. Actualii componenți sunt Tataee, Caddy și Uzzi. ', 'bugMafia.jpg'),
(7, 'R.A.C.L.A.', '0000-00-00', '', 'Rimaru', 'Români', 'https://facebook.com/RACLA93/', 'R.A.C.L.A. (Rime Alese Care Lovesc Adânc) este una dintre cele mai vechi trupe de Hip hop din România. Înființată în 1993 de frații Călin și Dan Ionescu (cunoscuti inițial ca Krash-X și Big Demo, iar apoi sub pseudonimele Rimaru și Clonatu\') a lansat primul album de hip hop din România în 1995 (Rap-Sodia efectului defectului). \r\nAl doilea album creat este Incursiune în real (1996), însă nu a fost lansat niciodată. Singura piesă apărută de pe acel album este \"Certitudine-n Deces\", publicată în compilația \"MARPHA-Romanian HipHop\". În anul următor a apărut însă Cei care te calcă pe cap, considerat la vremea respectivă cel mai bun album de hop-hop al anului. Acest album oferea câteva melodii inedite, printre care și o colaborare cu trupa rock Cargo, dar și piesa \"Zecimale\" - un atac direct la adresa unor trupe ca BUG Mafia sau Paraziții. În 1998 Clonatu\' decide să părăsească cariera muzicală, așa încât albumul Rime de bine este un album solo Rimaru. Și acest album are un succes deosebit la public. \r\nÎn prezent, Rimaru este singurul membru din R.A.C.L.A..', 'racla.jpg'),
(8, 'Raku', '1979-07-11', '', '', 'Român', 'https://facebook.com/raku.oficial/', 'raku este un rapper român, cunoscut în special în sfera muzicii hip hop underground. Fiind inițial membru al unei formații numite Utopik, acesta s-a alăturat mai apoi grupului Morometzii în anul 1997, din care a iesit patru ani mai târziu. raku a apărut pe diferite compilații hip hop, precum și pe albumele de studio ale unor grupuri și rapperi de succes din România. Colaborarea pe piesa lui Ombladon „Egali din naștere” a câștigat un premiu MTV European Music Awards, în timp ce piesa „Sufletul orașului”, interpretată alături de Bitză, a beneficiat de o nominalizare la Romanian Music Awards. Din punct de vedere discografic, raku a lansat opt albume ca solist și alte cinci albume ca membru al grupurilor Morometzii, respectiv Zale. ', 'raku.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rapperi_west`
--

DROP TABLE IF EXISTS `rapperi_west`;
CREATE TABLE `rapperi_west` (
  `id` int(10) NOT NULL,
  `nume` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data_nasterii` date NOT NULL,
  `nume_real` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `membri` varchar(100) NOT NULL,
  `nationalitate` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `social_media` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriere` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `poza` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONSHIPS FOR TABLE `rapperi_west`:
--

--
-- Dumping data for table `rapperi_west`
--

INSERT INTO `rapperi_west` (`id`, `nume`, `data_nasterii`, `nume_real`, `membri`, `nationalitate`, `social_media`, `descriere`, `poza`) VALUES
(1, 'Dr. Dre', '1965-02-18', 'Andre Romelle Young', '', 'American', 'https://twitter.com/drdre', 'Andre Romelle Young (n. 18 februarie 1965, Los Angeles), cunoscut sub numele de scenă Dr. Dre, este un compozitor de muzică rap. El este fondatorul și patronul Aftermath Entertainment și co-formatorul Death Row Records. De-a lungul carierei sale, a produs multe albume în parteneriat cu Snoop Dogg, Eminem, 50 cent și Nate Dogg.\r\nDr. Dre și-a început cariera în muzică ca un membru al World Class Wreckin\' Cru și mai târziu a cunoscut faima odată cu alăturarea la grupul N.W.A., cântând impreună cu Eazy-E și Ice Cube, grup care interpreta versuri despre viața violentă și periculoasă de pe străzi. Albumul său de debut, The Chronic, scos pe piață de Death Row Records, a fost unul dintre cele mai bine vândute albume americane al anului 1993, și Dre a câștigat Premiul Grammy pentru piesa \"Let Me Ride\". În anul 1996, a părăsit Death Row și și-a înființat propria casă de producții, Aftermath Entertainment. În 1996 a produs un album, Dr. Dre Presents the Aftermath și a mai produs un album solo, în 1999, numit 2001, pentru care a primit în anul următor un Premiu Grammy pentru cel mai bun producător. ', 'drdre.jpg'),
(3, 'Ice Cube', '1969-06-15', 'O\'Shea Jackson', '', 'American', 'https://twitter.com/icecube', 'O\'Shea Jackson (născut în 15 iunie 1969 în Los Angeles, SUA), cunoscut sub numele de scenă Ice Cube, este un rapper american, actor și regizor. Este unul dintre cei mai mari artiști din muzica hip hop. El și-a început cariera ca membru fondator al controversatului grup de muzică rap, N.W.A., și mai târziu a avut o carieră solo de succes în muzică și cinematografie. În 1992, s-a căsătorit cu Kimberly Woodruff, și împreună au patru copii. Tot în 1992, el s-a convertit la Islam. De la mijlocul anilor 1990, Cube s-a concentrat mai mult asupra actoriei, cariera sa muzicală trecând pe locul secund. Totuși el a rămas un personaj important pe scena rappului de pe Coasta de Vest, dând o mână de ajutor la crearea genului de rap, gangsta rap. El este cunoscut în special pentru versurile sale incendiare pe teme politice sau teme rasiale, particularizând tratamentul pe care îl primește comunitatea de afro-americani în Statele Unite ale Americii, fiind total anti-rasism. ', 'icecube.jpg'),
(4, 'Tupac', '1971-06-16', 'Tupac Amaru Shakur', '', 'American', 'https://twitter.com/2pac', 'Tupac Amaru Shakur (născut în 16 iunie 1971 în East Harlem, SUA, decedat în 13 septembrie 1996 la University Medical Center of Southern Nevada, SUA), cunoscut sub numele de 2Pac, Makaveli sau doar Pac, a fost un artist american renumit pentru stilul lui de rap și muzica sa, cariera de actor, poezii și activitatea socială. Este inclus în Guinness Book of World Records ca fiind rapperul cu cele mai multe vânzări de albume din lume, peste 120 de milioane, 65 de milioane doar în America. Majoritatea cântecelor lui Tupac sunt despre viața grea din ghetouri, rasism, problemele din societate și, uneori, insulte adresate altor rapperi. Tupac este cunoscut pentru susținerea egalității rasei și egalitatea economică, cunoscut de asemenea și pentru descrierea în detaliu a violenței, abuzul de droguri și conflicte cu legea. Mulți îl consideră ca fiind cel mai mare rapper al tuturor timpurilor.', 'tupac.png'),
(5, 'Eazy-E', '1964-09-07', 'Eric Lynn Wright', '', 'American', 'https://facebook.com/EazyEMusic', 'Eric Lynn Wright (născut în 7 Septembrie 1963 în Compton, SUA, - decedat în 26 Martie 1995 în Los Angeles, SUA), cunoscut și sub numele de scenă Eazy-E, a fost un rapper american, producător și director executiv la casa de discuri din Compton, California.Eazy-E a făcut parte din gașca Kelly Park Compton Crip în timpul adolescenței și s-a asociat și cu alte grupări. A vândut droguri în primii ani ai adolescenței iar apoi a investit bani în industria hip-hopului. Este cunoscut ca fiind unul din fondatorii sub genului „gangsta rap” și fondatorul și membrul formației N.W.A, dar mai târziu a cunoscut un succes comercial în cariera solo. Tipul vocal al lui Eazy-E a fost marcat de tonul său tare și versurile focalizate pe trăsăturile vieții de stradă cum ar fi arme, droguri, relațiile dintre nelegiuiți și poliție și activitatea sexuală. De asemenea a fost gazda unui radio hip-hop în Los-Angeles, KKBT. A murit de AIDS in conditii neelucidate. ', 'eazy.png'),
(6, 'Snoop Dogg', '1971-10-20', 'Calvin Cordozar Broadus Jr', '', 'American', 'https://twitter.com/snoopdogg', 'Calvin Cordozar Broadus, Jr. (născut în 20 octombrie 1971 în Long Beach, SUA) este un rapper, singer, compozitor, producător muzical și actor american. Din iulie 2012 folosește numele de scenă Snoop Lion, iar în trecut a folosit numele Snoop Doggy Dogg, dar cel mai notabil a fost Snoop Dogg.', 'snoop.jpg'),
(7, 'Paris', '1967-10-29', 'Oscar Jackson, Jr.', '', 'American', 'https://genius.com/artists/Paris-rapper', 'Oscar Jackson, Jr. (născut în 29 octombrie 1967), cunoscut sub numele său de scenă Paris, este un rapper american din San Francisco, California, cunoscut pentru versurile sale care abordează diverse subiecte politice și sociale. Influentat de Panterele Negre, a fost odată membru al Națiunii Islamului', 'paris.jpg'),
(8, 'Xzibit', '1974-09-18', 'Alvin Nathaniel Joiner', '', 'American', 'https://twitter.com/xzibit', 'Alvin Nathaniel Joiner (n. 18 septembrie 1974) cunoscut mai bine după numele său de scenă Xzibit, este un rapper, actor și producător muzical american. Este de asemenea cunoscut pentru găzduirea show-lui organizat de MTV „Pimp My Ride”. El lansează de la debutul său din 1996 câte un album o data la doi ani până la cel mai recent numit „Full Circle”, care a fost lansat în Octombrie 2006.', 'xzibit.jpg'),
(9, 'Too Short', '1966-04-28', 'Todd Anthony Shaw', '', 'American', 'https://twitter.com/tooshort', 'Todd Anthony Shaw (născut pe 28 aprilie 1966), cunoscut sub numele de scenă Too Short (stilizat ca Too $hort), este un rapper american, producător și actor. El este cel mai bine cunoscut pentru hit-urile sale precum \"The Ghetto\", \"Blow the Whistle\" și \"Freaky Tales\". Too Short este unul dintre puținii muzicieni care au reușit să colaboreze atât cu 2Pac, cât și cu The Notorious B.I.G..\r\nToo Short este creditat ca fiind unul dintre pionier rapului West Coast. Versurile sale de rap sunt în primul rând despre proxenetism, consum de droguri, supraviețuire și promiscuitate.', 'tooshort.jpg'),
(10, 'Brotha Lynch Hung', '1969-01-10', 'Kevin Danell Mann', '', 'American', 'https://twitter.com/brothalynchhung', 'Kevin Danell Mann (născut la 10 ianuarie 1969), cunoscut sub numele de scenă Brotha Lynch Hung, este un rapper și producător american din Sacramento, California. De la lansarea EP-ului său de debut, \"24 Deep\" în 1993, Brotha Lynch Hung a vândut 3.4 milioane de CD-uri prin intermediul a 15 proiecte diferite și a fost descris ca un inovator al subgenului horrorcore și unul din strămoșii genului.', 'brothalynch.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albume_east`
--
ALTER TABLE `albume_east`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `albume_modern`
--
ALTER TABLE `albume_modern`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `albume_ro`
--
ALTER TABLE `albume_ro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `albume_west`
--
ALTER TABLE `albume_west`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `melodii_east`
--
ALTER TABLE `melodii_east`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `melodii_modern`
--
ALTER TABLE `melodii_modern`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `melodii_ro`
--
ALTER TABLE `melodii_ro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `melodii_west`
--
ALTER TABLE `melodii_west`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `rapperi_east`
--
ALTER TABLE `rapperi_east`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rapperi_modern`
--
ALTER TABLE `rapperi_modern`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rapperi_ro`
--
ALTER TABLE `rapperi_ro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rapperi_west`
--
ALTER TABLE `rapperi_west`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albume_east`
--
ALTER TABLE `albume_east`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `albume_modern`
--
ALTER TABLE `albume_modern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `albume_ro`
--
ALTER TABLE `albume_ro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `albume_west`
--
ALTER TABLE `albume_west`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `melodii_east`
--
ALTER TABLE `melodii_east`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `melodii_modern`
--
ALTER TABLE `melodii_modern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `melodii_ro`
--
ALTER TABLE `melodii_ro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `melodii_west`
--
ALTER TABLE `melodii_west`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `rapperi_east`
--
ALTER TABLE `rapperi_east`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rapperi_modern`
--
ALTER TABLE `rapperi_modern`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rapperi_ro`
--
ALTER TABLE `rapperi_ro`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rapperi_west`
--
ALTER TABLE `rapperi_west`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albume_east`
--
ALTER TABLE `albume_east`
  ADD CONSTRAINT `albume_east_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `rapperi_east` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `albume_modern`
--
ALTER TABLE `albume_modern`
  ADD CONSTRAINT `albume_modern_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `rapperi_modern` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `albume_ro`
--
ALTER TABLE `albume_ro`
  ADD CONSTRAINT `albume_ro_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `rapperi_ro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `albume_west`
--
ALTER TABLE `albume_west`
  ADD CONSTRAINT `albume_west_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `rapperi_west` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `melodii_east`
--
ALTER TABLE `melodii_east`
  ADD CONSTRAINT `melodii_east_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albume_east` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `melodii_modern`
--
ALTER TABLE `melodii_modern`
  ADD CONSTRAINT `melodii_modern_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albume_modern` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `melodii_ro`
--
ALTER TABLE `melodii_ro`
  ADD CONSTRAINT `melodii_ro_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albume_ro` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `melodii_west`
--
ALTER TABLE `melodii_west`
  ADD CONSTRAINT `melodii_west_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albume_west` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table albume_east
--

--
-- Metadata for table albume_modern
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'atestat', 'albume_modern', '{\"sorted_col\":\"`albume_modern`.`artist_id`  DESC\"}', '2019-01-25 00:32:52');

--
-- Metadata for table albume_ro
--

--
-- Metadata for table albume_west
--

--
-- Metadata for table melodii_east
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'atestat', 'melodii_east', '{\"CREATE_TIME\":\"2019-01-24 18:11:50\"}', '2019-01-26 21:26:02');

--
-- Metadata for table melodii_modern
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'atestat', 'melodii_modern', '{\"sorted_col\":\"album_id asc, titlu asc\"}', '2019-01-26 20:51:39');

--
-- Metadata for table melodii_ro
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'atestat', 'melodii_ro', '{\"sorted_col\":\"`melodii_ro`.`filename` ASC\"}', '2019-01-26 17:15:57');

--
-- Metadata for table melodii_west
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'atestat', 'melodii_west', '{\"sorted_col\":\"`album_id`  DESC\"}', '2019-01-26 21:33:29');

--
-- Metadata for table rapperi_east
--

--
-- Metadata for table rapperi_modern
--

--
-- Metadata for table rapperi_ro
--

--
-- Metadata for table rapperi_west
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'atestat', 'rapperi_west', '{\"sorted_col\":\"`descriere`  DESC\"}', '2019-01-26 21:25:51');

--
-- Metadata for database atestat
--

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_descr`) VALUES
('atestat', 'relationships');

SET @LAST_PAGE = LAST_INSERT_ID();

--
-- Dumping data for table `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('atestat', 'albume_east', @LAST_PAGE, 1411, 312),
('atestat', 'albume_modern', @LAST_PAGE, 766, 94),
('atestat', 'albume_ro', @LAST_PAGE, 791, 667),
('atestat', 'albume_west', @LAST_PAGE, 280, 369),
('atestat', 'melodii_east', @LAST_PAGE, 1410, 205),
('atestat', 'melodii_modern', @LAST_PAGE, 766, 4),
('atestat', 'melodii_ro', @LAST_PAGE, 791, 580),
('atestat', 'melodii_west', @LAST_PAGE, 280, 282),
('atestat', 'rapperi_east', @LAST_PAGE, 1194, 236),
('atestat', 'rapperi_modern', @LAST_PAGE, 549, 10),
('atestat', 'rapperi_ro', @LAST_PAGE, 578, 598),
('atestat', 'rapperi_west', @LAST_PAGE, 65, 307);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
