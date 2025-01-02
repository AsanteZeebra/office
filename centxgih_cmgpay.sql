-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2024 at 04:24 AM
-- Server version: 10.5.23-MariaDB-cll-lve-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `centxgih_cmgpay`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `fullname`, `email`, `password`, `month`, `year`, `date_created`) VALUES
(2, 'Asante Michael', 'nanaakua608@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'December', '2022', '2022-Dec-13th'),
(3, 'Loudy Orleans Slippe', 'loudy@cmg.com', '39dfa55283318d31afe5a3ff4a0e3253e2045e43', 'March', '2023', '2023-Mar-6th'),
(6, 'Alifa Adams', 'alifa@cmg.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'May', '2023', '2023-May-22nd'),
(5, 'Adu Solomon', 'solomon@cmg.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'May', '2023', '2023-May-18th'),
(7, 'Rejoice Nyamekye', 'able291222@gmail.com', '42a709ea41a4b23b0c059006933cea53ca5a34b7', 'July', '2023', '2023-Jul-22nd'),
(8, 'Faustina Baah', 'faustinabaah2424@gmail.com', '64e17560070b526c607a83aabcbbeab3c09a1a00', 'July', '2023', '2023-Jul-22nd');

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `agent_name` varchar(100) NOT NULL,
  `business_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `agent_id` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `agent_name`, `business_name`, `email`, `telephone`, `address`, `agent_id`, `date_created`) VALUES
(38, 'Emmanuel Katt', 'Busy Flight', 'emmanuelkat21@gmail.com', '0249105595', 'Dansoman', 'CMG-1213520233', '2023-Mar-8th'),
(42, 'Michael Nana Ekow Dadzie Thompson', 'Busy Flight', 'mdadzie542@gmail.com', '0243037401', 'DANSOMAN', 'CMG-9172020233', '2023-Mar-8th'),
(41, 'SHERIF K. KUMI ', 'ODIKRO TRAVEL CONSULT ', 'kumisherif@gmail.com', '0544824714/0268641481', 'KASOA', 'CMG-6561420233', '2023-Mar-8th'),
(43, 'NATHAN FRIMPONG YEBOAH', 'O.B CHARIS CONSULT', 'nathanyeboah5@gmail.com', '0248366626', 'NATHAN', 'CMG-1185120233', '2023-Mar-13th'),
(44, 'FAUSTINA OFORIWAA MACCARTHY', 'MAPLES BINA CONSULT', 'oforiwaamaccarthy@gmail.com', '0500800750', 'TEMA', 'CMG-6186520233', '2023-Mar-27th'),
(46, 'AMA SIAW', 'AMA SIAW CONSULT', 'amasiaw24@gmail.com', '0243571165', 'KASOA ', 'CMG-734220233', '2023-Mar-27th'),
(47, 'JOHN NANA ADDO BORDOH', 'ALPHADREAMLAND CONSULT', 'john.eaglemax@gmail.com', '0598609794/0243926673', 'ACHIMOTA', 'CMG-3745920233', '2023-Mar-27th'),
(48, 'FAISAL ZAKARI IBRAHIM', 'ALFALAQ GROUP', 'zakariibrahimf@gmail.com', '0541367103', 'WEST HILLS', 'CMG-5078520234', '2023-Apr-5th'),
(49, 'ASABRE MENSAH', 'SUCCESS TRAVELS', 'meshachasabere@gmail.com', '0242205170', 'WEST HILLS', 'CMG-9028720234', '2023-Apr-5th'),
(51, 'SAVIOR ADOM', 'DERADEC TRAVEL & TOUR', 'saviouradom@gmail.com', '0244206168', 'WEST HILLS', 'CMG-2097820234', '2023-Apr-13th'),
(52, 'ANDREWS AKYEAMPONG OKYERE ', 'WINING ANDISSEL CO. LTD', 'andyokyeregh@yahoo.com', '0244759759', 'ACCRA', 'CMG-6305320234', '2023-Apr-19th'),
(53, 'BLESS ANANGA', 'STAR GURL', 'blessananga9@gmail.com', '0200889708  0548868246', 'ACCRA NEW TOWN', 'CMG-3255820234', '2023-Apr-25th'),
(54, 'CHRISTABEL NANA YAA BINEY', 'CYANA TRAVEL & TOUR', 'cyanastravels@gmail.com', '0241240645', 'KASOA', 'CMG-5074020234', '2023-Apr-25th'),
(55, 'Solomon Ofosu', 'Vokpress Agencies', 'skofosu60@gmail.com', '0200010689', 'WEST HILLS', 'CMG-1945620234', '2023-Apr-27th'),
(56, 'Derrick Blankson', 'DERRICK BLANKSON LTD', 'derrick9595@gmail.com', '0543755842', 'KASOA', 'CMG-3249320234', '2023-Apr-27th'),
(57, 'Emmanuel Geraldo', 'Travel and Tour', 'favour233@gmail.com', '0249892762', 'WINNEBA - GHANA', 'CMG-9720820236', '2023-Jun-13th'),
(58, 'Samuel Addae Bempong', 'Samish Consult', 'bempong.sarb@gmail.com', '0202650513', 'Tema Comm 25, Accra - Ghana', 'CMG-5775420236', '2023-Jun-14th'),
(59, 'Rejoice Soku', 'Joy Facilitation LTD', 'SOKUREJOICE12@GMAIL.COM', '0507887412', 'MADINA - DANYA', 'CMG-1295720236', '2023-Jun-20th'),
(60, 'KOBINA FORDJOUR CODJOE', 'KOBBY CONSULT', 'kobbyc@hotmail.com', '0244406211', 'HOUSE NO. B286/10, PALCE STREEET NORTH KANESHIE', 'CMG-7023220234', '2023-Jul-19th'),
(61, 'MOSES BOADU', 'CLICK EXPRESS', 'clickexpress2@gmail.com', '0552477880', '17th stanley owusu street, near Malam Sakaman', 'CMG-3084720237', '2023-Jul-24th'),
(62, 'ISAAC KWAKU AMPONSAH', 'FIX-LINK', 'Cfixlink@gmail.com', '0302549659', 'ADENTA PANTANG ROAD', 'CMG-6188920238', '2023-Aug-21st'),
(63, 'RAMZY-ABE ALOYSIUS DAMWAH', 'ALPHALINKS TRAVEL CONSULT', 'aplhalinksconsult@gmail.com', '0542985265', 'ACCRA - GHANA', 'CMG-8512220238', '2023-Aug-24th'),
(64, 'Albert Opoku', 'Speedy Travel Consult', 'opokukofi2017@gmail.com', '0241588120', 'Sowutuom - Accra', 'CMG-26927202311', '2023-Nov-10th'),
(65, 'Jesse James Nerquaye Tetteh', 'Proton Square Eterprice', 'jekefine34@gmail.com', '0544013085', 'Odorkor Busia Junction\r\n', 'CMG-956202311', '2023-Nov-14th'),
(66, 'DANTANI ABDEL-KARIM', 'DANJAM ENTERPRICE', 'fatrida2018@gmail.com', '0244097523', 'NORTH KANESHIE CLOSE TO DEMODE - ACCRA', 'CMG-70957202311', '2023-Nov-16th'),
(67, 'Emmanueo Sennie Addai', 'Propel Travels', 'emmasennie@gmail.com', '0544855029', 'Kasoa - Gjhana', 'CMG-45852202311', '2023-Nov-28th'),
(68, 'FELIX ANTWI', 'CENTURY BEST CONSULT', 'angelfelixantwi@gmail.com', '0242303998', 'Kasoa - Ghana', 'CMG-61415202311', '2023-Nov-28th'),
(69, 'PRINCE MAWUTOR KWAME TANYEGBE ', 'PRIMERC EAGLE-ROYAL LTD', 'tanyegbep@gmail.com', '0245243076', 'ACCRA-GHANA', 'CMG-47391202312', '2023-Dec-8th'),
(70, 'SUMAILA FRIMPONG', 'NUR HAYAT CONSULT', 'sooso20@ymail.com', '0243398144', 'ACCRA,GHANA', 'CMG-8251202312', '2023-Dec-8th'),
(71, 'JENNIFER ANAFO', 'ANUONYAM TRAVELS ', 'jenniferanafo7@gmail.com', '0244465711', 'SPINTEX COMM. 18', 'CMG-98789202312', '2023-Dec-18th');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `client` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `aptime` varchar(100) NOT NULL,
  `appointment_date` varchar(100) NOT NULL,
  `visa_type` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `reference` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `client`, `telephone`, `mail`, `aptime`, `appointment_date`, `visa_type`, `month`, `year`, `time`, `date_created`, `status`, `reference`) VALUES
(48, 'Emmanuel Katt', '0249105595', 'emmanuelkat12@gmail.com', '12:50', '2023-05-22', 'Coming to make to payment  for New Zealand client and other matters', 'May', '2023', '05:52:am', '2023-May-22nd', 'Booked', '5636'),
(51, 'Bless Ananga', '0200889708', 'blessananga9@gmail.com', '11:00', '2023-05-22', 'Consultation', 'May', '2023', '06:21:am', '2023-May-22nd', 'Booked', '78843'),
(47, 'Faisal', '+971526416185', 'zakariibrahimf@gmail.com', '12:10', '2023-05-22', 'Consultation', 'May', '2023', '05:46:am', '2023-May-22nd', 'Booked', '68526'),
(49, 'Cnaya Travels', '0241240645', 'cnayastravels@gmail.com', '11:00', '2023-05-22', 'Payment and Consultation', 'May', '2023', '06:02:am', '2023-May-22nd', 'Booked', '81828'),
(56, 'Derrick', '0543755842', 'derrick9595@gmail.com', '14:00', '2023-05-22', 'Consultation', 'May', '2023', '07:19:am', '2023-May-22nd', 'Booked', '29976'),
(54, 'Sumaila', '0243398144', 'sooso20@ymail.com', '13:30', '2023-05-22', 'Consultation', 'May', '2023', '06:49:am', '2023-May-22nd', 'Booked', '79785'),
(57, 'Nathan Yeboah', '0248366626', 'obcharisconsult@gmail.com', '14:30', '2023-05-22', 'Consultation', 'May', '2023', '07:26:am', '2023-May-22nd', 'Booked', '22849'),
(58, 'Ama Siaw', '0242131183', 'amasiaw24@gmail.com', '11:00', '2023-05-23', 'Consultation', 'May', '2023', '07:46:am', '2023-May-22nd', 'Booked', '74749'),
(59, 'Koby', '0244406211', 'Kobbyc@hotmail.com', '15:00', '2023-05-22', 'Consultation', 'May', '2023', '08:28:am', '2023-May-22nd', 'Booked', '92889'),
(64, 'Andy', '+233Â 24Â 479Â 5759', 'andyokyeregh@yahoo.com', '10:30', '2023-05-24', 'Payment ', 'May', '2023', '13:25:pm', '2023-May-22nd', 'Booked', '23079'),
(61, 'Sherif A. Kumi', '0544824714', 'kumisherif@gmail.com', '12:00', '2023-05-23', 'Consultation', 'May', '2023', '12:17:pm', '2023-May-22nd', 'Booked', '83100'),
(63, 'S.k Ofosu', '0200010689', 'skofosu60@gmail.com', '12:30', '2023-05-23', 'Consultation', 'May', '2023', '12:24:pm', '2023-May-22nd', 'Booked', '64334'),
(65, 'Blessing Ananga', '0200889708', 'blessananga9@gmail.com', '13:00', '2023-05-23', 'Consultation', 'May', '2023', '05:22:am', '2023-May-23rd', 'Booked', '64984'),
(66, 'Kobby', '0244406211', 'Kobbyc@hotmail.com', '13:30', '2023-05-23', 'Consultation', 'May', '2023', '08:07:am', '2023-May-23rd', 'Booked', '24956'),
(67, 'Ama Siaw', '0242131183', 'amasiaw24@gmail.com', '12:30', '2023-05-24', 'COnsultation', 'May', '2023', '02:59:am', '2023-May-24th', 'Booked', '97777'),
(68, 'Emmanuel Katt', '+233 24 910 5595', 'emmanuelkat21@gmail.com', '13:00', '2023-05-24', 'Consultation ', 'May', '2023', '04:09:am', '2023-May-24th', 'Booked', '13785'),
(69, 'Oforiwaa', '0500800750', 'oforiwaamaccarthy@gmail.com', '01:30', '2023-05-24', 'Consultation', 'May', '2023', '06:17:am', '2023-May-24th', 'Booked', '4233'),
(72, 'Failsal', '+97430643810', 'zakariibrahimf@gmail.com', '15:00', '2023-05-24', 'Consultation', 'May', '2023', '06:20:am', '2023-May-24th', 'Booked', '61863'),
(73, 'Sumaila', '0243398144', 'sooso20@gmail.com', '14:00', '2023-05-24', 'Consultation', 'May', '2023', '06:22:am', '2023-May-24th', 'Booked', '66637'),
(74, 'Kobby', '0244406211', 'kobby@hotmail.com', '11:00', '2023-05-24', 'Consultation', 'May', '2023', '06:23:am', '2023-May-24th', 'Booked', '89405'),
(78, 'Asante Micheal', '0206817724', 'nanakweku608@gmail.com', '20:37', '2023-05-28', 'b nnmm', 'May', '2023', '16:37:pm', '2023-May-28th', 'Rescheduled', '75252'),
(79, 'shrif Kumi', '0544824714', 'kumisherif@gmail.com', '14:00', '2023-05-29', 'meeting Boss', 'May', '2023', '06:39:am', '2023-May-29th', 'Booked', '95654'),
(80, 'Vokpress', '0247439807', 'mailto:skofosu60@gmail.com', '13:00', '2023-05-29', 'meeting boss', 'May', '2023', '06:46:am', '2023-May-29th', 'Booked', '94858'),
(81, 'MR KATT', '0249105595', 'emmanuelkat21@gmail.com', '11:15', '2023-05-29', 'meeting with boss', 'May', '2023', '06:48:am', '2023-May-29th', 'Booked', '57456'),
(83, 'Asante Micheal', '0206817724', 'nanakweku608@gmail.com', '10:27', '2023-06-03', 'Payment', 'June', '2023', '16:27:pm', '2023-Jun-3rd', 'Attended', 'APP2023882382'),
(84, 'Mr Andy', '024 479 5759', 'mailto:andyokyeregh@yahoo.com', '12:00', '2023-06-05', 'Meet Boss', 'June', '2023', '06:24:am', '2023-Jun-5th', 'Attended', '93097'),
(85, 'Leedons Travels', '000000000000', 'info@leedonstravels.com', '12:09', '2023-06-15', 'Payment and submission', 'June', '2023', '12:08:pm', '2023-Jun-13th', 'Booked', '17139'),
(86, 'Moses Boadu', '0552477880', 'mozaah80@gmail.com', '12:00', '2023-07-24', 'Make payment for two Canada Applicants', 'July', '2023', '12:30:pm', '2023-Jul-22nd', 'Booked', '70110'),
(87, 'Sumaila Frimong ', '0243398144', 'sooso20@ymail.com', '15:30', '2023-07-24', 'To see boss and also make payment for Romania client', 'July', '2023', '12:38:pm', '2023-Jul-22nd', 'Booked', '24617'),
(88, 'Star gurl', '0200889708', 'blessananga9@gmail.com', '09:30', '2023-07-24', 'Make payment', 'July', '2023', '12:41:pm', '2023-Jul-22nd', 'Attended', '23319'),
(89, 'Samish Consult', '0202650513', 'bempong.sab@gmail.com', '12:00', '2023-07-24', 'To see boss', 'July', '2023', '13:07:pm', '2023-Jul-22nd', 'Booked', '10151'),
(92, 'Cnaya Travels ', '+233241240645', 'cnayastravles@gmail.com', '10:00', '2023-07-24', 'Make payments ', 'July', '2023', '14:18:pm', '2023-Jul-22nd', 'Attended', '17841'),
(93, 'Nathan yeboah', '0248366626', 'obcharisconsult@gmail.com', '12:30', '2023-07-24', 'Make payment and see boss', 'July', '2023', '14:44:pm', '2023-Jul-22nd', 'Booked', '3711'),
(94, 'Ama Siaw', '+233 242131183', 'amasiaw24@gmail.com', '01:00', '2023-07-24', 'Make payment and see boss ', 'July', '2023', '14:49:pm', '2023-Jul-22nd', 'Attended', '14373'),
(95, 'Kumi Sherif', '0544824714', 'kumisherif@gmail.com', '14:00', '2023-07-24', 'To see boss', 'July', '2023', '14:57:pm', '2023-Jul-22nd', 'Booked', '87834'),
(96, 'Adom Savior', '+23324 4206168', 'Saviouradom@gmail.Com', '14:30', '2023-07-24', 'To see boss', 'July', '2023', '15:01:pm', '2023-Jul-22nd', 'Attended', '35554'),
(97, 'Kobby', '0244406211', ' kobby@hotmail.com', '01:30', '2023-07-24', 'Bring clients & to make payment', 'July', '2023', '05:37:am', '2023-Jul-24th', 'Attended', '20436'),
(98, 'Dr. Munkaila & Dr. Osei', '0246733443', 'mabdulai11@gmai.com', '11:41', '2023-07-24', 'To see boss ', 'July', '2023', '07:41:am', '2023-Jul-24th', 'Booked', '100947'),
(99, 'Jonas Sablah', '0245884804', 'nan@nan.com', '12:24', '2023-07-24', 'Comin to  Loudy', 'July', '2023', '08:26:am', '2023-Jul-24th', 'Booked', '77974'),
(100, 'Phillip and Alhaji', '0247287068', 'info.knelheights@gmail.com', '12:29', '2023-07-24', 'Coming to see Boss', 'July', '2023', '08:30:am', '2023-Jul-24th', 'Booked', '69999'),
(101, 'Amoah Stephen Oheneba', '0256413746', 'amoahst46@gmail.com', '', '2023-07-24', 'Coming to see the general Manager', 'July', '2023', '08:46:am', '2023-Jul-24th', 'Booked', '6943'),
(102, 'Kwame Antwi', '0242711511', 'antwikwame2014@gmail.com', '13:31', '2023-07-24', 'To see boss about and check status of visa', 'July', '2023', '09:32:am', '2023-Jul-24th', 'Attended', '66093'),
(103, 'Mad. Adiza', '0244314579', 'emmiesamtrade.gmail.com', '16:00', '2023-07-24', 'To see Boss', 'July', '2023', '12:00:pm', '2023-Jul-24th', 'Booked', '68227'),
(104, 'Kobby ', '+233 24 440 6211', 'Kobbyc@hotmail.com', '10:17', '2023-07-25', 'Personal reasons ', 'July', '2023', '05:18:am', '2023-Jul-25th', 'Booked', '47257'),
(105, 'DAVID DOMPREH', '0240684175', 'daviddompreh3@gmail.com', '', '2023-07-25', 'TO SE BOSS FOR A FOLLOW UP', 'July', '2023', '05:34:am', '2023-Jul-25th', 'Booked', '5907'),
(106, 'Emmanuel Katt ', '024 910 5595', 'emmanuelkat21@gmail.com', '10:35', '2023-07-25', 'To make personal arrangements and also meet his clients ', 'July', '2023', '05:35:am', '2023-Jul-25th', 'Booked', '97084'),
(107, 'MARK AMO DORTEY', '0246038084', 'macdartey@yahoo.com', '', '2023-07-25', 'TO SEE BOSS AND MAKE A FOLLOW UP ON HIS VISA', 'July', '2023', '05:38:am', '2023-Jul-25th', 'Booked', '70463'),
(108, 'Emmanuel katt', '024 910 5595', 'emmanuelkat21@gmail.com', '11:00', '2023-07-25', 'To make payment and also attend to his clients ', 'July', '2023', '05:42:am', '2023-Jul-25th', 'Booked', '51974'),
(109, '', '024 910 5595', 'emmanuelkat21@gmail.com', '14:00', '2023-07-25', 'To meet his clients ', 'July', '2023', '05:44:am', '2023-Jul-25th', 'Booked', '27507'),
(110, 'Kumi sheriff ', '054 482 4714', 'kumisherif@gmail.com', '11:30', '2023-07-25', 'Bringing clients to payment ', 'July', '2023', '05:51:am', '2023-Jul-25th', 'Booked', '77882'),
(111, 'Evelyn Ahiagbe', '0240671755', 'evelynemefa91@gmail.com', '', '2023-07-25', 'Coming to see Kobby', 'July', '2023', '06:29:am', '2023-Jul-25th', 'Booked', '54387'),
(112, 'Helen Avitty', '0242630765', 'avittyh@gmail.com', '', '2023-07-25', 'Coming to see Kobby', 'July', '2023', '06:32:am', '2023-Jul-25th', 'Booked', '49226'),
(113, 'DESMOND', '0549535070', 'desmondjjkwame7@gmail.com', '', '2023-07-25', 'TO SEE BOSS', 'July', '2023', '06:56:am', '2023-Jul-25th', 'Booked', '29322'),
(114, 'Grace Baah', '0245007415', 'bgracebaah@gmail.com', '', '0001-01-01', 'Coming to see Kobby', 'July', '2023', '06:56:am', '2023-Jul-25th', 'Booked', '36115'),
(115, 'ANDY', '0244795759', 'andyokyeregh@yahoo.com', '', '2023-07-18', 'TO SEE BOSS ', 'July', '2023', '08:19:am', '2023-Jul-25th', 'Booked', '73911'),
(116, 'Faisail', '055022603', 'none@none.com', '16:10', '2023-07-25', ' Visitor - to see boss', 'July', '2023', '12:11:pm', '2023-Jul-25th', 'Booked', '38090'),
(117, 'Oforiwaa', '050 080 0750', 'Oforiwaamaccarthy@gmail.com', '12:00', '2023-07-26', 'Coming to meet her clients ', 'July', '2023', '17:05:pm', '2023-Jul-25th', 'Booked', '57146'),
(118, 'Savior Adom', ' +233 24 420 6168', 'Saviouradom@Gmail.com', '01:08', '2023-07-26', 'Coming to meet his clients ', 'July', '2023', '17:07:pm', '2023-Jul-25th', 'Booked', '17519'),
(119, 'Kwame Nyamaa', '0531175448', 'kwamenyamaa@gmail.com', '10:00', '2023-07-26', 'Coming to see Boss', 'July', '2023', '05:19:am', '2023-Jul-26th', 'Booked', '24879'),
(120, 'Cletus', 'N/A', 'N/A', '10:30', '2023-07-26', 'Coming to see Boss', 'July', '2023', '05:22:am', '2023-Jul-26th', 'Booked', '30638'),
(121, 'Gifty', 'N/A', 'N/A', '11:00', '2023-07-26', 'Coming to see Boss', 'July', '2023', '05:23:am', '2023-Jul-26th', 'Rescheduled', '98515'),
(122, 'Kobby ', '0244406211', 'N/A', '11:30', '2023-07-26', 'Coming to see Boss', 'July', '2023', '05:32:am', '2023-Jul-26th', 'Attended', '81902'),
(123, 'EMMANUEL', '0202650513', 'bempong.sab@gmail.com', '13:30', '2023-07-26', 'TO SEE BOSS FOR INQUIRY', 'July', '2023', '06:31:am', '2023-Jul-26th', 'Booked', '16068'),
(124, 'Wendiline Adjei', '0244719446', 'delybabay@yahoo.com', '', '2023-07-26', 'Coming to see Katt', 'July', '2023', '06:52:am', '2023-Jul-26th', 'Booked', '72020'),
(125, 'Johnson Athjal', '0540817956', 'N/A', '', '2023-07-26', 'Coming to see Kobby', 'July', '2023', '07:08:am', '2023-Jul-26th', 'Booked', '67466'),
(126, 'Emmanuel Katt', '0269455550', 'emmanuelkat12@gmail.com', '10:00', '2023-07-27', 'Coming to attend to his clients', 'July', '2023', '03:26:am', '2023-Jul-27th', 'Booked', '15259'),
(127, 'Emmanuel Katt', '0269455550', 'emmanuelkat12@gmail.com', '11:00', '2023-07-27', 'Attending to clients', 'July', '2023', '03:27:am', '2023-Jul-27th', 'Booked', '41001'),
(128, 'Emmanuel Katt', '0269455550', 'emmanuelkat12@gmail.com', '12:00', '2023-07-27', 'Attending to clients', 'July', '2023', '03:27:am', '2023-Jul-27th', 'Booked', '46352'),
(129, 'YAKUBU ABDUL-KADIR', '0204752832', 'yakubuabdulkadir1911@gmail.com', '13:30', '2023-07-27', 'Coming to see Boss', 'July', '2023', '03:43:am', '2023-Jul-27th', 'Booked', '94076'),
(130, 'Diana A Botchway', '0243705297', 'dianabotcway82@gmail.com', '', '2023-07-27', 'Coming to see Star Girl', 'July', '2023', '05:26:am', '2023-Jul-27th', 'Booked', '69073'),
(131, 'Isaac Mbroh', '0249742827', 'isaacmbroh@gmail.com', '', '2023-07-27', 'Coming to see Ofosu', 'July', '2023', '05:29:am', '2023-Jul-27th', 'Booked', '86806'),
(132, 'SHERIF', '02686641481', 'kumisherif@gmail.com', '', '2023-07-27', 'TO SEE YOUR BOSS', 'July', '2023', '05:34:am', '2023-Jul-27th', 'Rescheduled', '55309'),
(133, 'sherif', '0268641481', 'kumisherif@gmail.com', '', '2023-07-27', 'to see Boss for a refund', 'July', '2023', '05:37:am', '2023-Jul-27th', 'Booked', '19086'),
(134, 'kobby', '0244406211', 'kobby@hotmail.com', '', '2023-07-27', 'TO SEE  BOSS', 'July', '2023', '06:43:am', '2023-Jul-27th', 'Booked', '44055'),
(135, 'STARGURL', '020889708', 'blassananga9@gmail.com', '', '2023-07-23', 'TO SEE BOSS', 'July', '2023', '06:45:am', '2023-Jul-27th', 'Booked', '73818'),
(136, 'Hawa Suleman', '0240299711', 'shaklespakle16@gmail.com', '', '2023-07-28', 'Coming to see Kobby', 'July', '2023', '05:21:am', '2023-Jul-28th', 'Booked', '72499'),
(137, 'FC Michael', '0243037401', 'nan@nan.com', '', '2023-07-28', 'Coming to see Boss', 'July', '2023', '05:28:am', '2023-Jul-28th', 'Booked', '44988'),
(138, 'Augustin', '0243541789', 'augustinmensah@gmail.com', '', '2023-07-28', 'Coming to see to the General Manager', 'July', '2023', '05:32:am', '2023-Jul-28th', 'Booked', '77214'),
(139, 'Kobby', '0244406211', 'nan@nan.com', '', '2023-07-28', 'Coming to see Boss', 'July', '2023', '05:34:am', '2023-Jul-28th', 'Booked', '61356'),
(140, 'BOATENG', '0241202708', 'boatengjohnpaul@gmail.com', '12:30', '2023-07-28', 'TO TAKE HIS VISA', 'July', '2023', '07:09:am', '2023-Jul-28th', 'Booked', '89795'),
(141, 'SAMEUL LAMBON', '0246467659', 'sameullambon@gmail.com', '13:00', '2023-07-28', 'TO TAKE VISA', 'July', '2023', '07:24:am', '2023-Jul-28th', 'Booked', '83512'),
(142, 'Richmond', '0558898585', 'mensahrichmatt@gmail.com', '', '2023-07-31', 'Coming to see Boss', 'July', '2023', '05:21:am', '2023-Jul-31st', 'Rescheduled', '93457'),
(143, 'Ruby', '0245500344', 'ab.ruby@gmail.com', '', '2023-07-31', 'Coming to see Boss', 'July', '2023', '05:26:am', '2023-Jul-31st', 'Booked', '45320'),
(144, 'Rex Nii', '0241799335', 'N/A', '', '2023-07-31', 'Coming to see Star girl', 'July', '2023', '05:27:am', '2023-Jul-31st', 'Booked', '90969'),
(145, 'SHERIFF', '0268641481', 'kumisherif@gmail.com', '11:30', '2023-07-31', 'TO SEE BOSS', 'July', '2023', '06:11:am', '2023-Jul-31st', 'Booked', '42069'),
(146, 'KOBBY', '0244406211', 'kobby@hotmail.com', '12:00', '2023-07-31', 'TO SEE BOSS', 'July', '2023', '06:13:am', '2023-Jul-31st', 'Booked', '14737'),
(147, 'OWUSU ISSAC', '0244133274', 'inkopink@gmail.com', '12:30', '2023-07-31', 'to make a follow up', 'July', '2023', '06:16:am', '2023-Jul-31st', 'Booked', '13000'),
(148, 'Theophilus', '0249193427', 'theophilusayi@gmail.com', '', '2023-07-31', 'Coming to see Kobby', 'July', '2023', '06:21:am', '2023-Jul-31st', 'Booked', '56723'),
(149, 'FIDEL BLAQUE', '0272518000', 'blaqueconsult@gmail.com', '23:00', '2023-07-31', 'TO SEE BOSS', 'July', '2023', '06:23:am', '2023-Jul-31st', 'Booked', '59634'),
(150, 'GIDEON OPOKU DANKAH', '05556433116', 'N/A', '11:00', '2023-07-31', 'FOR HIS VISA', 'July', '2023', '06:44:am', '2023-Jul-31st', 'Booked', '65502'),
(151, 'Francis', '0249720196', 'francisadioo@gmail.c0m', '', '2023-07-31', 'Coming to see Mic ', 'July', '2023', '07:01:am', '2023-Jul-31st', 'Booked', '76937'),
(152, 'Asare', '0246708198', 'N/A', '', '2023-07-31', 'Coming to see Christabel', 'July', '2023', '07:06:am', '2023-Jul-31st', 'Booked', '25600'),
(153, 'Mariam', '0249283703', 'N/A', '', '2023-07-31', 'Coming to see Boss', 'July', '2023', '07:11:am', '2023-Jul-31st', 'Booked', '90645'),
(154, 'Rukaya', '0246805564', 'N/A', '', '2023-07-31', 'Coming to see Boss', 'July', '2023', '07:11:am', '2023-Jul-31st', 'Booked', '68978'),
(155, 'Habiba', '0242811444', 'N/A', '', '2023-07-31', 'Coming to see Sherif', 'July', '2023', '08:00:am', '2023-Jul-31st', 'Booked', '69383'),
(156, 'Frankiln Addo', '0249999955', 'N/A', '', '2023-08-01', 'Coming to see Katt', 'August', '2023', '06:31:am', '2023-Aug-1st', 'Booked', '7325'),
(157, 'ENOCH', '0551795895', 'enouchdogbey@gmail.com', '12:45', '2023-08-01', 'TO SEE BOSS FOR VISA', 'August', '2023', '07:19:am', '2023-Aug-1st', 'Attended', '71782'),
(158, 'FIDEL BLAQUE', '027', 'blaqueconsult@gmail.com', '12:00', '2023-01-08', 'TO SEE BOSS', 'August', '2023', '07:23:am', '2023-Aug-1st', 'Booked', '6122'),
(159, 'FIDEL', '0272518000', 'blaqueconsult@gmail.com', '12:00', '2023-08-01', 'TO SEE BOSS', 'August', '2023', '07:24:am', '2023-Aug-1st', 'Attended', '52040'),
(160, 'FAISAL', '0541367103', 'zakanibrahimf@gmail.com', '12:30', '2023-08-01', 'TO SEE BOSS', 'August', '2023', '07:26:am', '2023-Aug-1st', 'Booked', '62228'),
(161, 'KWESI BOTWE', '0208488544', 'paakwesi@gmail.com', '12:55', '2023-08-01', 'TO SEE BOSS FOR VISA', 'August', '2023', '08:24:am', '2023-Aug-1st', 'Booked', '35996'),
(162, 'edmund', '0555206010', 'mikrokemikal@yahoo.com', '14:00', '2023-08-01', 'TO GET A VISA', 'August', '2023', '09:04:am', '2023-Aug-1st', 'Booked', '44475'),
(163, 'SWEETY', '0599304400', 'N/A', '14:30', '20223-08-01', 'TO TAKE HER VISA', 'August', '2023', '09:52:am', '2023-Aug-1st', 'Booked', '65255'),
(164, 'John', '0243926673', 'johneaglemaxS@gmail.com', '16:00', '2023-08-01', 'TO SEE BOSS', 'August', '2023', '11:10:am', '2023-Aug-1st', 'Booked', '21699'),
(165, 'Joseph Baidoo', '0550730550', 'joseph.paakwesi@yahoo.com', '', '2023-08-03', 'Coming to see Star gal', 'August', '2023', '05:44:am', '2023-Aug-3rd', 'Booked', '17930'),
(166, 'Kwame Nyamaa', '0531175448', 'N/A', '', '2023-08-03', 'Coming to see Boss', 'August', '2023', '05:47:am', '2023-Aug-3rd', 'Booked', '7548'),
(167, 'Rosina Essienne', '0246149550', 'N/A', '', '2023-08-03', 'Coming to see Star gal', 'August', '2023', '05:50:am', '2023-Aug-3rd', 'Booked', '46780'),
(168, 'Mohammed Alhassan', '0595388416', 'N/A', '', '2023-08-03', 'Coming to see Sheriff', 'August', '2023', '06:17:am', '2023-Aug-3rd', 'Booked', '67344'),
(169, 'ANDY', '0244795759', 'andyokyeregh@yahoo.com', '12:30', '20223-08-03', 'APPOINTMENT WITH BOSS', 'August', '2023', '06:25:am', '2023-Aug-3rd', 'Booked', '20658'),
(170, 'KOBBY', '0244406211', 'kobby@hotmail.com', '11:30', '2023-08-03', 'TO SEE BNOSS', 'August', '2023', '06:27:am', '2023-Aug-3rd', 'Booked', '26540'),
(171, 'SHERIF', '0544824714', 'kumisherif@gmail.com', '13:30', '2023-08-03', 'to see boss', 'August', '2023', '06:35:am', '2023-Aug-3rd', 'Booked', '79953'),
(172, 'JEMIMA', '0263761034', 'jemmier1044@gmail.com', '13:00', '2023-08-03', 'TO SEE BOSS', 'August', '2023', '06:52:am', '2023-Aug-3rd', 'Booked', '67217'),
(173, 'MCMIKE', '0243037401', 'mcladrie542@gmail.com', '13:15', '2023-08-03', 'TO SEE BOSS', 'August', '2023', '06:59:am', '2023-Aug-3rd', 'Booked', '82292'),
(174, 'EMMANUEL KATT', '0249105595', 'emmanuelkat21@gmail.com', '12:00', '2023-08-03', 'TO SEE BOSS', 'August', '2023', '07:15:am', '2023-Aug-3rd', 'Booked', '35902'),
(175, 'AMA SIAW', '0243571165', 'AMASIAW24@GMAIL.COM', '11:30', '2023-08-07', 'TO SEE BOSS', 'August', '2023', '05:00:am', '2023-Aug-7th', 'Booked', '83211'),
(176, 'MOSSES BOADU', '0552477880', 'mozaah80@gmail.com', '12:00', '2023-08-07', 'TO SEE BOSS', 'August', '2023', '05:02:am', '2023-Aug-7th', 'Booked', '53549'),
(177, 'ROBERT TAGOE', '0200506903', 'ROBEERTAGOE@GMAIL.COM', '', '2023-08-07', 'COMING FOR HIS PASSPORT', 'August', '2023', '05:05:am', '2023-Aug-7th', 'Booked', '101534'),
(178, 'EMMANUEL', '0557108285', 'EMMANUEL@GMAIL.COM', '10:00', '2023-08-07', 'ADVANCEMENT OF THE COMPANY', 'August', '2023', '05:16:am', '2023-Aug-7th', 'Booked', '4435'),
(179, 'NANA', '0553968043', 'NANA@GMAIL.COM', '12:30', '2023-08-07', 'TO MAKE ENQUIRER FROM BOSS', 'August', '2023', '06:04:am', '2023-Aug-7th', 'Booked', '99059'),
(180, 'JOE', 'N/A', 'N/A', '', '2023-08-07', 'COMING TO SEE BOSS', 'August', '2023', '07:59:am', '2023-Aug-7th', 'Booked', '91208'),
(181, 'Clement', '0243318473', 'N/A', '', '2023-08-07', 'coming to see boss', 'August', '2023', '08:01:am', '2023-Aug-7th', 'Booked', '21163'),
(182, 'francis aidw', '0249720196', 'francis@gmail.com', '13:00', '2023-08-07', 'coming for visa', 'August', '2023', '08:05:am', '2023-Aug-7th', 'Booked', '77989'),
(183, 'Jesse James', '0544013085', 'jakefine34@gmail.com', '18:59', '2023-10-27', 'Coming to make payment ', 'October', '2023', '13:01:pm', '2023-Oct-26th', 'Booked', '65905'),
(184, 'Asante Micheal', '0206817724', 'nanakweku608@gmail.com', '17:02', '2023-10-26', 'Payment', 'October', '2023', '13:02:pm', '2023-Oct-26th', 'Booked', '97121');

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `id` int(11) NOT NULL,
  `client` varchar(100) NOT NULL,
  `passport_number` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `marital` varchar(100) DEFAULT NULL,
  `birthplace` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `children` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `spouse` varchar(100) DEFAULT NULL,
  `spousedate` varchar(100) DEFAULT NULL,
  `spousephone` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `spousecity` varchar(100) DEFAULT NULL,
  `spouseregion` varchar(100) DEFAULT NULL,
  `mother` varchar(100) DEFAULT NULL,
  `father` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `passport` varchar(100) DEFAULT NULL,
  `issueing_authority` varchar(100) DEFAULT NULL,
  `passport_number` varchar(100) DEFAULT NULL,
  `issue_date` varchar(100) DEFAULT NULL,
  `expiry_date` varchar(100) DEFAULT NULL,
  `pictures` varchar(100) DEFAULT NULL,
  `medical` varchar(100) DEFAULT NULL,
  `police_report` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `agent_name` varchar(100) DEFAULT NULL,
  `agent_id` varchar(100) DEFAULT NULL,
  `approval` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `fullname`, `dob`, `marital`, `birthplace`, `region`, `telephone`, `city`, `email`, `skill`, `experience`, `children`, `nationality`, `country`, `spouse`, `spousedate`, `spousephone`, `occupation`, `spousecity`, `spouseregion`, `mother`, `father`, `address`, `passport`, `issueing_authority`, `passport_number`, `issue_date`, `expiry_date`, `pictures`, `medical`, `police_report`, `status`, `agent_name`, `agent_id`, `approval`, `time`, `month`, `year`, `date_created`) VALUES
(40, 'RAYMOND SMITH', '1990-07-04', 'Single', 'SECONDI', 'N/A', '0546737086', 'SEKONDI', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'JANET ANANI', 'N/A', 'A696/15 MATAHEKO', 'Yes', 'GHANA GOVERNMENT', 'G3584746', '2022-04-27', '2032-04-26', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '07:26:am', 'March', '2023', '2023-Mar-7th'),
(41, 'FRANCIS MARTIN BAFFOE', '1980-04-04', 'Single', 'CAPE COAST', 'N/A', '0247850408', 'CAPE COAST', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', '  AGNES ANAUAH MENSAH', 'N/A', 'BOX AD 285, CAPE COAST', 'Yes', 'GHANA GOVERNMENT', 'G3046236', '2020-12-23', '2030-12-22', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '07:42:am', 'March', '2023', '2023-Mar-7th'),
(42, 'MOSES KABIR', '1993-09-11', 'Single', 'NANDOM', 'NORTHERN', '0242493050', 'NANDOM', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'MAVIS BUABENG', '1996-05-07', '0209900903', 'FARMER', 'NANDOM', 'NORTHERN', 'N/A', 'N/A', 'P.O.BOX TH 30, TECHIMAN BONO/EAST', 'Yes', 'GHANA GOVERNMENT', 'G2439379', '2019-05-22', '2029-05-21', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:46:am', 'March', '2023', '2023-Mar-7th'),
(43, 'SAMUEL DANSO ANKRAH', '1987-01-12', 'Married', 'ACCRA', 'N/A', '0208819987', 'ACCRA', NULL, 'Unskilled', '2YEARS', '3', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'AGNESS AMA ABOAGYEWAA', 'ALEXANDER KOFI DUKU', 'NO.4 STR 12 GAA, ADJINGEANOR', 'Yes', 'GHANA GOVERNMENT', 'A0088030', '2021-10-19', '2031-10-18', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:54:am', 'March', '2023', '2023-Mar-7th'),
(44, 'FREEMAN DOGBE', '1992-04-04', 'Single', 'SOGAKOPE', 'N/A', '0242971097', 'SOGAKOPE', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'BLESS GAMEDO AFENOR', 'N/A', 'EAST LEGON ABILITY SQUARE', 'Yes', 'GHANA GOVERNMENT', 'G3673483', '2022-06-21', '2032-06-20', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:06:pm', 'March', '2023', '2023-Mar-7th'),
(45, 'ALFRED MENSAH', '1984-05-30', 'Married', 'TEMA', 'N/A', '0245795533', 'TEMA', NULL, 'Unskilled', '2YEARS', '3', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', 'N/A', 'TRADER', 'N/A', 'N/A', 'THERESA MENSAH', 'N/A', '39/ENOCK KOFI NYARKO', 'Yes', 'GHANA GOVERNMENT', 'G3934075', '2022-12-22', '2032-12-21', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:13:pm', 'March', '2023', '2023-Mar-7th'),
(46, 'FRANCHESCA NANA OWUSU LARBI', '1990-07-07', 'Single', 'ACCRA', 'N/A', '0248987915', 'ACCRA', '', 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'IVY ANTWI', 'N/A', 'B239/32AC CRA', 'Yes', 'GHANA GOVERNMENT', 'G2413168', '2019-04-29', '2029-04-28', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '05:04:am', 'March', '2023', '2023-Mar-8th'),
(48, 'KWAKU AMANKWAH ANIAMPAM', '1985-02-27', 'Married', 'SUNYANI', 'N/A', '0249733120', 'SUNYANI', NULL, 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', '0558747220', 'N/A', 'N/A', 'N/A', 'MARGARETH NYARKO', 'N/A', 'PLOT 60, BLOCK S - KUMASI', 'Yes', 'GHANA GOVERNMENT', 'G2458482', '2019-06-12', '2029-06-11', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '05:14:am', 'March', '2023', '2023-Mar-8th'),
(50, 'KWAME ESSEL', '1994-10-06', 'Married', 'TAKORADI', 'N/A', '0244306919', 'TAKORADI', NULL, 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0271899555', 'N/A', 'N/A', 'N/A', 'EFUA BOMSOMFI ESSEL', 'N/A', '163A, DUCAN HIL AVENUE, KWEKUMA, SEK', 'Yes', 'GHANA GOVERNMENT', 'A0069686', '2021-02-09', '2031-01-09', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '06:36:am', 'March', '2023', '2023-Mar-8th'),
(51, 'TESTIMONY GODSWAY ADZAFI', '1985-07-15', 'Married', 'ASHAIMAN', 'N/A', '0545726374', 'ACCRA', 'testimony@mail.com', 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'VIDA KAMASAH', 'N/A', 'GL-038-9678', 'Yes', 'GHANA GOVERNMENT', 'G3531670', '2022-04-05', '2032-04-04', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '10:49:am', 'March', '2023', '2023-Mar-8th'),
(52, 'JUSTICE KORANKYE AMOAKO', '1989-02-20', 'Single', 'ACCRA', 'N/A', '0597602620', 'ACCRA', NULL, 'Unskilled', '2YEARS', '3', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'FELICIA DARKO', 'N/A', 'ACCRA - AWOSHIE', 'Yes', 'GHANA GOVERNMENT', 'G3216761', '2021-06-08', '2031-06-07', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:07:am', 'March', '2023', '2023-Mar-8th'),
(53, 'CHAME BENICE', '1995-08-20', 'Single', 'DUAYAW-NKWANTA', 'N/A', '0547023217', 'DUAYAW-NKWANTA', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', '0249185634', 'N/A', 'N/A', 'N/A', 'MANSA MAGARET', 'N/A', 'GP-028-8/379 MONICA AKWATIA LANE 60', 'Yes', 'GHANA GOVERNMENT', 'G3604340', '2022-05-06', '2032-05-05', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:15:am', 'March', '2023', '2023-Mar-8th'),
(54, 'ERIC ARKSON', '1983-07-29', 'Married', 'ACCRA', 'N/A', '0244152215', 'ACCRA', NULL, 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '054775773', 'N/A', 'N/A', 'N/A', 'VIDA ANANE KUNAKO', 'N/A', 'HYM-LANE AMASAMAN', 'Yes', 'GHANA GOVERNMENT', 'G2341166', '2019-03-07', '2024-03-07', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:23:am', 'March', '2023', '2023-Mar-8th'),
(55, 'EMMANUEL AGYEI', '1988-11-05', 'Married', 'KUMASI', 'N/A', '0246524947', 'KUMASI', NULL, 'Unskilled', '2YEARS', '4', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0249708137', 'N/A', 'N/A', 'N/A', 'DIANA OWUSU', 'N/A', 'PLOT 363 BLOCK E', 'Yes', 'GHANA GOVERNMENT', 'G2461751', '2019-06-13', '2029-06-21', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:57:am', 'March', '2023', '2023-Mar-8th'),
(56, 'GETRUDE DERY', '1995-05-20', 'Married', 'SEKONDI', 'N/A', '0545342124', 'TAKORADI', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0545342124', 'N/A', 'N/A', 'N/A', 'LAMISI JOHN', 'N/A', 'HSE. NO. 124/3', 'Yes', 'GHANA GOVERNMENT', 'G3602328', '2022-05-05', '2032-05-04', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:11:pm', 'March', '2023', '2023-Mar-8th'),
(57, 'MOSES KWAKU NUGLOZE', '1978-09-05', 'Single', 'DANSOMAN', 'N/A', 'N/A', 'ACCRA', NULL, 'Unskilled', '2YEARS', '7', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'TOLI SELINA', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNMENT', 'G3839769', '2022-11-02', '2032-11-01', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:18:pm', 'March', '2023', '2023-Mar-8th'),
(58, 'EFFAH COSMOS', '1998-06-15', 'Single', 'NKORANZA', 'N/A', '0556157033', 'NKORANZA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0242050984', 'N/A', 'N/A', 'N/A', 'TWUMWAA GRACE', 'OPOKU ISAAC', 'N/A', 'Yes', 'GHANA GOVERNMENT', 'G2399108', '2019-04-12', '2029-04-11', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:24:pm', 'March', '2023', '2023-Mar-8th'),
(59, 'RICHARD OWUSU-ANSAH', '1998-04-20', 'Married', 'KUMASI', 'N/A', '0248601010', 'KUMASI', NULL, 'Unskilled', '2YEARS', '4', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0242215382', 'N/A', 'N/A', 'N/A', 'AFUA ADOMAKOAA', 'N/A', 'NT 352 KIBI', 'Yes', 'GHANA GOVERNMENT', 'G3805969', '2022-01-05', '2032-10-04', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '13:14:pm', 'March', '2023', '2023-Mar-8th'),
(60, 'AWITI EVANS', '1987-03-18', 'Married', 'NKORANZA', 'N/A', '0279548213', 'NKORANZA', NULL, 'Unskilled', '2YEARS', '4', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '05547903580', 'N/A', 'N/A', 'N/A', 'AMOFA VICTORIA', 'N/A', 'NKORANZA - BREMAN', 'Yes', 'GHANA GOVERNMENT', 'G2541563', '2019-08-06', '2029-08-05', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '13:19:pm', 'March', '2023', '2023-Mar-8th'),
(61, 'EDMOND ALEXANDER AMPENE', '1998-05-05', 'Single', 'ACCRA', 'N/A', '0203038375', 'ACCRA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0553304747', 'N/A', 'N/A', 'N/A', 'LETICIA ANTWI', 'N/A', 'METTE ST. AWOSHIE ACCRA', 'Yes', 'GHANA GOVERNMENT', 'G3477148', '2021-12-15', '2031-12-14', 'Yes', 'No', 'Yes', 'Waiting for visa', NULL, '', '', '13:23:pm', 'March', '2023', '2023-Mar-8th'),
(62, 'PRINCE ADU ACHEAMPONG', '1994-08-29', 'Single', 'KUMASI', 'N/A', '0542938646', 'KUMASI', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0542938646', 'N/A', 'N/A', 'N/A', 'MAD. ESTHER NTI', 'N/A', 'GE-268-1730 TAIFA, ACCRA', 'Yes', 'GHANA GOVERNMENT', 'G3501681', '2022-03-17', '2032-03-16', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '13:30:pm', 'March', '2023', '2023-Mar-8th'),
(63, 'CHARLES KENYENSO', '1993-08-07', 'Single', 'ACCRA', 'N/A', '0249348522', 'ACCRA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Malta', 'N/A', '0001-01-01', '0557737083', 'N/A', 'N/A', 'N/A', 'AKOSUA OBRENYE', 'N/A', 'KASOA AKWELEY', 'Yes', 'GHANA GOVERNMENT', 'G3067183', '2021-01-19', '2031-01-18', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '13:34:pm', 'March', '2023', '2023-Mar-8th'),
(64, 'ISAAC ASATINGA', '1993-12-28', 'Single', 'ACCRA', 'N/A', '0240649305', 'ACCRA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'CECELIA ASATING', 'N/A', 'LAPAZ B751/23', 'Yes', 'GHANA GOVERNMENT', 'G2753427', '2020-01-14', '2030-01-13', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:16:pm', 'March', '2023', '2023-Mar-9th'),
(65, 'MENSAH ROBBERT', '1985-04-14', 'Married', 'ADANSI PRASO-QUANSAH-KRO', 'N/A', '0246488278', 'ADANSI PRASO', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '1992-05-14', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'AK-5348278', 'Yes', 'GHANA GOVERNMENT', 'G2928963', '2020-09-03', '2030-09-02', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:23:pm', 'March', '2023', '2023-Mar-9th'),
(67, 'AGBLOE KWEKU ONESIMUS', '1997-07-29', 'Single', 'TEMA', 'N/A', '0548785038', 'TEMA', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', '0545416072', 'N/A', 'N/A', 'N/A', 'JOYCE OCANSEY', 'N/A', 'ANT/Z4/037', 'Yes', 'GHANA GOVERNMENT', 'G3754093', '2022-08-18', '2032-08-17', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '09:55:am', 'March', '2023', '2023-Mar-13th'),
(68, 'ASHONG ERNEST', '1983-08-23', 'Married', 'TEMA', 'N/A', '02483600224', 'TEMA', NULL, 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0556368784', 'N/A', 'N/A', 'N/A', 'AGBOLOSU VICTORIA', 'N/A', 'A/002 LEBENON', 'Yes', 'GHANA GOVERNMENT', 'G4015249', '2023-01-26', '2033-01-25', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '10:02:am', 'March', '2023', '2023-Mar-13th'),
(69, 'EMMANUEL ASIAMAH', '1984-10-13', 'Married', 'MATIA SEFWI', 'N/A', '0201044574', 'SEFWI', NULL, 'Unskilled', '2YEARS', '4', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0248091437', 'N/A', 'N/A', 'N/A', 'AKOSUA MINTAAH', 'N/A', 'AK-520-0296', 'Yes', 'GHANA GOVERNMENT', 'G3600132', '2022-05-04', '2032-05-03', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '10:09:am', 'March', '2023', '2023-Mar-13th'),
(70, 'OSEI MENSAH PRINCE', '1986-12-16', 'Married', 'KUMASI', 'N/A', '024176761', 'KUMASI', '', 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0599129209', 'N/A', 'N/A', 'N/A', 'CECILIA TAWIAH', 'N/A', 'PLOT 6, BLOCK B, DOASE', 'Yes', 'GHANA GOVERNMENT', 'G3841300', '2022-11-01', '2032-10-31', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '10:14:am', 'March', '2023', '2023-Mar-13th'),
(72, 'STEPHEN AKAINYAH ARMACHIE', '1978-04-29', 'Married', 'HALF ASINI', 'N/A', '054293021', 'HALF ASINI', NULL, 'Professional', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'LUCY GYENZU', 'N/A', 'AH3 ANIHU , OHIAMA ADWENE', 'Yes', 'GHANA GOVERNMENT', 'G3649615', '2022-06-07', '2032-06-06', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '10:29:am', 'March', '2023', '2023-Mar-13th'),
(73, 'JONATHAN KOFI MENSAH', '1990-12-07', 'Single', 'ASHAIMAN', 'N/A', '0241236963', 'TEMA', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0552178919', 'N/A', 'N/A', 'N/A', 'DORCAS APPIAH', 'N/A', 'GY-0728-7547', 'Yes', 'GHANA GOVERNMENT', 'G4103882', '2023-03-02', '2032-03-01', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '10:33:am', 'March', '2023', '2023-Mar-13th'),
(74, 'ABIGAIL MIREKU', '1998-04-23', 'Single', 'ACCRA', 'N/A', '0543712067', 'ACCRA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0244219646', 'N/A', 'N/A', 'N/A', 'RITA AMPONSAH', 'N/A', 'SUPERCLOSE', 'Yes', 'GHANA GOVERNMENT', 'G3354730', '2021-09-16', '2031-09-15', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:40:am', 'March', '2023', '2023-Mar-13th'),
(75, 'LAWRENCIA AMERLEY AMAH', '1996-06-14', 'Single', 'TESHIE', 'N/A', '057574112', 'TESHIE', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0544996476', 'N/A', 'N/A', 'N/A', 'NOAMI AMARTEY', 'N/A', '283/5 KING KOTEY RD', 'Yes', 'GHANA GOVERNMENT', 'G4077818', '2023-02-22', '2033-02-21', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:44:am', 'March', '2023', '2023-Mar-13th'),
(76, 'CULES HECTOR SEKYI', '1985-03-17', 'Married', 'TAKORADI', 'N/A', '0554323218', 'APREMDO', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '05479164633', 'N/A', 'N/A', 'N/A', 'COMFORT SEKYI', 'N/A', 'PT 63/64 APREMDO', 'Yes', 'GHANA GOVERNMENT', 'G4076274', '2023-02-21', '2032-02-20', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:48:am', 'March', '2023', '2023-Mar-13th'),
(77, 'YAW DADI', '1979-07-01', 'Single', 'DAMANKO', 'N/A', '0244307978', 'DAMANKA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'MANYABAN', 'N/A', 'HS NO. 74', 'Yes', 'GHANA GOVERNMENT', 'G4079975', '2023-02-24', '2033-02-23', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:53:am', 'March', '2023', '2023-Mar-13th'),
(78, 'ABIGAIL GYAMPO NYAMEKYE BOAMAH', '1988-03-20', 'Married', 'ACCRA', 'N/A', '0206921551', 'ACCRA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0277470914', 'N/A', 'N/A', 'N/A', 'JULIANA JAMPO', 'N/A', '2nd BATTALLION OF INFANTRY, APREMDO, TAKORADI', 'Yes', 'GHANA GOVERNMENT', 'G4070089', '2023-02-20', '2033-02-19', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '11:59:am', 'March', '2023', '2023-Mar-13th'),
(79, 'PRINCE AWUKU', '1987-03-24', 'Single', 'ACCRA', 'N/A', '0246614869', 'ACCRA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0557456343', 'N/A', 'N/A', 'N/A', 'COMFORT ODI-AWUKU', 'N/A', 'SANTAMARIA-TALLY AKINS STREET', 'Yes', 'GHANA GOVERNMENT', 'G2205099', '2018-10-30', '2023-10-29', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:03:pm', 'March', '2023', '2023-Mar-13th'),
(80, 'ALEX AYIVIE', '1985-06-01', 'Single', 'ACCRA', 'N/A', '0242880848', 'ACCRA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '054607402', 'N/A', 'N/A', 'N/A', 'MARY DAKPO', 'N/A', 'TEMPO ESTATE HIS 71', 'Yes', 'GHANA GOVERNMENT', 'G4020325', '2023-02-01', '2033-01-21', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:07:pm', 'March', '2023', '2023-Mar-13th'),
(81, 'ATTAM LOUIS', '1996-04-27', 'Single', 'TEMA', 'N/A', '0264761256', 'TEMA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0271560517', 'N/A', 'N/A', 'N/A', 'HLOFORBU BEATRICE', 'N/A', 'ASHAIMAN-LEBANON ZONE Z /B002', 'Yes', 'GHANA GOVERNMENT', 'G3591004', '2022-04-29', '2032-04-28', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:11:pm', 'March', '2023', '2023-Mar-13th'),
(82, 'HAMDU YUSIF', '1990-07-24', 'Single', 'EJURA', 'N/A', '0241019681', 'EJURA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0245750726', 'N/A', 'N/A', 'N/A', 'MAYAM YAMDALI', 'N/A', 'HC 63', 'Yes', 'GHANA GOVERNMENT', 'G2719628', '2019-12-05', '2029-12-04', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:15:pm', 'March', '2023', '2023-Mar-13th'),
(83, 'JOHN KOJO SAM', '1990-05-11', 'Single', 'PRESTEA', 'N/A', '0200088988', 'PRESTEA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0243985667', 'N/A', 'N/A', 'N/A', 'MAGRET SAM', 'N/A', 'WP-0004-1997', 'Yes', 'GHANA GOVERNMENT', 'G2504971', '2019-07-11', '2029-07-10', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:20:pm', 'March', '2023', '2023-Mar-13th'),
(84, 'DIAMEH SMITH EUGENE', '1988-02-04', 'Single', 'ACCRA', 'N/A', '0246224405', 'ACCRA', 'eugenesmithdiameh@gmail.com', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'FAUSTINA SUMAH', 'FRANCIS KOFI DIAMEH', 'TEMA COMMUNITY 25 Hs. No. 47 DPS', 'Yes', 'GHANA GOVERNMENT', 'A0172236', '2022-03-15', '2032-03-14', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '12:57:pm', 'March', '2023', '2023-Mar-13th'),
(85, 'ASANTE KWESI', '1975-12-25', 'Married', 'ACCRA', 'N/A', '0557444799', 'ACCRA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'NANA ABPRETSIWAH', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNMENT', 'G3130943', '2021-03-11', '2031-03-10', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '13:02:pm', 'March', '2023', '2023-Mar-13th'),
(86, 'ODURO PORTIA', '1993-04-20', 'Single', 'EFIDUASE', 'N/A', '0241168187', 'EJISU', NULL, 'Unskilled', '4YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0559301716', 'N/A', 'N/A', 'N/A', 'ANGELINA AGYEI', 'N/A', 'AR-0005-3224', 'Yes', 'GHANA GOVERNMENT', 'G4114518', '2023-03-11', '2033-03-10', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '08:41:am', 'March', '2023', '2023-Mar-14th'),
(87, 'DZIEDZORM TSINIGO', '1984-07-12', 'Married', 'BATTOR', 'N/A', '0244418162', 'BATTOR', NULL, 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0248920697', 'N/A', 'N/A', 'N/A', 'CORDELIA GARDOR', 'N/A', 'ADENTA SNNIT FLATS, VANILLA STREET, BLOCK 43', 'Yes', 'GHANA GOVERNMENT', 'A0003342', '2020-06-10', '2030-06-09', 'Yes', 'Yes', 'Yes', 'Visa Approved', NULL, '', '', '08:53:am', 'March', '2023', '2023-Mar-14th'),
(88, 'EMMANUEL ARMAH MENSAH', '1984-12-03', 'Single', 'ACCRA NEWTOWN', 'N/A', '0544557747', 'ACCRA', NULL, 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0547166140', 'N/A', 'N/A', 'N/A', 'ADUGBA ZORNU', 'N/A', '40 TIEKU BAAH STREET', 'Yes', 'GHANA GOVERNMENT', 'G2828764', '2020-03-25', '2030-03-24', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '08:57:am', 'March', '2023', '2023-Mar-14th'),
(89, 'NAMBAKI HAKIM', '1986-05-18', 'Married', 'SUNYANI', 'N/A', '0557575999', 'SUNYANI', NULL, 'Unskilled', '2YEARS', '3', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0245849074', 'N/A', 'N/A', 'N/A', 'MARIAM AFANI', 'N/A', 'S/ CHALEP - 0-9', 'Yes', 'GHANA GOVERNMENT', 'G3629889', '2022-05-19', '2032-05-18', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '09:05:am', 'March', '2023', '2023-Mar-14th'),
(91, 'BARISON ETHEL SANDIEBA', '1994-07-01', 'Single', 'BOLGATANGA', 'N/A', '055581352', 'BOLGATANGA', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0242950077', 'N/A', 'N/A', 'N/A', 'JANET ACOMAH BARISON', 'N/A', 'c/o KINROSSMIANING COMPANY P.O.BOX 57, CHIRANA', 'Yes', 'GHANA GOVERNMENT', 'G3617239', '2022-05-12', '2032-05-11', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '05:45:am', 'March', '2023', '2023-Mar-15th'),
(92, 'SAMUEL RICHARD NANA BAIDOO', '1993-05-30', 'Single', 'TAKORADI', 'N/A', '0558739274', 'TAKORADI', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0208078101', 'N/A', 'N/A', 'N/A', 'GEORGINA NEIZER', 'N/A', 'PT 103 BU STREETS SEKONDI TAKORADI', 'Yes', 'GHANA GOVERNMENT', 'G3820405', '2022-10-17', '2032-10-16', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '05:57:am', 'March', '2023', '2023-Mar-15th'),
(93, 'NYAMADOR VINCENT TORGA', '1983-03-19', 'Single', 'TEMA', 'N/A', '0244934041', 'TEMA', '', 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0241764503', 'N/A', 'N/A', 'N/A', 'EDITH NYSMADOR', 'N/A', 'TEME COUNTRY GOLF CLUB . GN-009-6079', 'Yes', 'GHANA GOVERNMENT', 'G4004200', '2023-02-01', '2033-01-31', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '06:36:am', 'March', '2023', '2023-Mar-15th'),
(94, 'DEXTER EMMANUEL BOATENG', '1980-02-17', 'Married', 'TECHIMAN', 'N/A', '0596185187', 'TECHIMAN', '', 'Unskilled', '2YEARS', '4', 'Ghanaian', 'Canada,Australia', 'N/A', '0001-01-01', '0545907744', 'N/A', 'N/A', 'N/A', 'MARY BOAHEMAA', 'N/A', 'T.M.A 129WI-TECHIMAN WIASO', 'Yes', 'GHANA GOVERNMENT', 'G2907579', '2020-08-05', '2030-08-04', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '06:44:am', 'March', '2023', '2023-Mar-15th'),
(95, 'BRIGHT OBENG BENTUM', '1988-04-29', 'Single', 'AGONA SWEDRU', 'N/A', '0244763032', 'AGONA SWEDRU', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0594951120', 'N/A', 'N/A', 'N/A', 'SOPHIA OTABIL', 'N/A', 'CE 164 BREGENZ ST, GM-174-7991', 'Yes', 'GHANA GOVERNMENT', 'G2417372', '2019-05-02', '2031-05-01', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '07:37:am', 'March', '2023', '2023-Mar-15th'),
(96, 'ISAAC ADU BREMPONG', '1975-07-24', 'Married', 'ACCRA', 'N/A', '0249155086', 'ACCRA', NULL, 'Unskilled', '2YEARS', '4', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0594913930', 'N/A', 'N/A', 'N/A', 'ADUSOA MENSIMAH', 'N/A', 'RAFIK, JUMETRION KOTOKU', 'Yes', 'GHANA GOVERNMENT', 'A0127111', '2022-02-01', '2032-01-31', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '07:41:am', 'March', '2023', '2023-Mar-15th'),
(98, 'SAMUEL ASARE-DANKWAH', '1992-12-03', 'Single', 'NKAWKAW ', 'N/A', '0240407916', 'NKAWKAW', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0544653867', 'N/A', 'N/A', 'N/A', 'STELLA DANKWAH', 'N/A', 'NT 831', 'Yes', 'GHANA GOVERNMENT', 'G3333147', '2021-09-08', '2031-09-07', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '07:52:am', 'March', '2023', '2023-Mar-15th'),
(100, 'STEPHEN JAKE-BOATENG WHYTE', '1989-10-10', 'Single', 'TECHIMAN', 'N/A', '0554827685', 'TECHIMAN', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0245412603', 'N/A', 'N/A', 'N/A', 'RUTH ADDAI', 'N/A', 'No.3 15TH DWOMOR LANE, TECHIMAN B/E', 'Yes', 'GHANA GOVERNMENT', 'G1980467', '2018-04-03', '2023-04-02', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '13:04:pm', 'March', '2023', '2023-Mar-15th'),
(101, 'FRANCISCA BEMAH TAKYIWAA', '1993-05-16', 'Single', 'SUNYANI', 'N/A', '0508084006', 'SUNYANI', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0556457550', 'N/A', 'N/A', 'N/A', 'BOATEMAA FAUSTINA', 'N/A', 'EIKWE -000 -000 -000', 'Yes', 'GHANA GOVERNMENT', 'G2641786', '2019-10-08', '2029-10-07', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '13:19:pm', 'March', '2023', '2023-Mar-15th'),
(103, 'NKETIA SIMON', '1989-09-06', 'Married', 'DWENEM ', 'N/A', '0543979396', 'DWENEM', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'BRENTH MANU MATILDA', 'OBENG NKETIA SAMUEL', 'TNDA 20453T', 'Yes', 'GHANA GOVERNMENT', 'G3450316', '2021-11-18', '2031-11-17', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, '', '', '13:41:pm', 'March', '2023', '2023-Mar-15th'),
(104, 'RICHLOVE JENNIFER JANICE', '1986-05-11', 'Single', 'KUMASI', 'N/A', '0243582446', 'KUMASI', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'FAUSTINA ZATRA', 'N/A', 'GD-2241-1932', 'Yes', 'GHANA GOVERNMENT', 'G3865564', '2022-11-12', '2032-11-11', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '11:28:am', 'March', '2023', '2023-Mar-20th'),
(105, 'JEFFERY FRANK HUGES', '1999-06-11', 'Single', 'TAKORADI', 'N/A', '0203325871', 'TAKORADI', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0504398611', 'N/A', 'N/A', 'N/A', 'GLADYS ARTHUR', 'N/A', 'WS-669-7354', 'Yes', 'GHANA GOVERNMENT', 'G4108878', '2023-03-07', '2033-03-06', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '12:37:pm', 'March', '2023', '2023-Mar-20th'),
(106, 'ALICE KOUFIE', '1980-04-24', 'Single', 'CAPE COAST', 'N/A', '0543503250', 'CAPE COAST', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0243639275', 'N/A', 'N/A', 'N/A', 'MARY KOUFIE', 'N/A', 'G120/1 TANTRI CAPE-COAST', 'Yes', 'GHANA GOVERNMENT', 'G4082872', '2023-02-23', '2032-03-22', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '12:44:pm', 'March', '2023', '2023-Mar-20th'),
(107, 'JEFFERY ZAK TETTEH', '1988-04-10', 'Single', 'ACCRA', 'N/A', '0244038530', 'ACCRA', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0559753085', 'N/A', 'N/A', 'N/A', 'MARY BOANAH', 'N/A', 'A883/14', 'Yes', 'GHANA GOVERNMENT', 'G2857559', '2020-04-17', '2030-04-16', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '12:59:pm', 'March', '2023', '2023-Mar-20th'),
(108, 'DERRICK CUJO HANS', '1988-04-18', 'Single', 'DZODZE', 'N/A', '0246484262', 'DZODZE', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0243621706', 'N/A', 'N/A', 'N/A', 'BEATRICE FAFALI ATIEGO', 'N/A', 'ZU/579 ZENU', 'Yes', 'GHANA GOVERNMENT', 'G3274978', '2021-07-13', '2031-07-12', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '13:08:pm', 'March', '2023', '2023-Mar-20th'),
(109, 'ERIC DUODU', '1983-11-11', 'Married', 'ADUM BANSO', 'N/A', '0244483013', 'ADUM BANSO', NULL, 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', '0555097599', 'N/A', 'N/A', 'N/A', 'BOAFO BADU', 'N/A', 'ATONSU-KUMASI', 'Yes', 'GHANA GOVERNMENT', 'G4037901', '2023-02-02', '2032-02-01', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '13:12:pm', 'March', '2023', '2023-Mar-20th'),
(110, 'DANIEL MENSAH KITSON', '1979-07-31', 'Married', 'KOMENDA', 'N/A', '0547547794', 'KOMENDA', NULL, 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'AMA SARFO', 'N/A', 'ESS 838 SECONDI', 'Yes', 'GHANA GOVERNMENT', 'A0071248', '2021-09-06', '2031-09-05', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '13:16:pm', 'March', '2023', '2023-Mar-20th'),
(111, 'ANTWI GABRIEL', '2001-04-26', 'Single', 'MAMPONG AKUAPEM', 'N/A', '059666763', 'AKUAPEM', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0598464692', 'N/A', 'N/A', 'N/A', 'REBECCA OSAE', 'N/A', 'ACCRA UTC', 'Yes', 'GHANA GOVERNMENT', 'G3648586', '2022-06-03', '2032-06-02', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '05:49:am', 'March', '2023', '2023-Mar-21st'),
(112, 'OWUSU FRIMPONG', '1986-09-18', 'Married', 'TECHIMAN', 'N/A', '0543398873', 'TECHIMAN', NULL, 'Unskilled', '2YEARS', '3', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'OBOUR ESTHER', 'KWAYIE FRIMPONG', 'TMA 051 R/2, KONIMASE AREA2', 'Yes', 'GHANA GOVERNMENT', 'G2652183', '2019-10-18', '2029-10-17', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '05:55:am', 'March', '2023', '2023-Mar-21st'),
(113, 'SALAM ISSAKA', '1997-05-05', 'Single', 'JEMA', 'N/A', '0546314556', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0543250073', 'N/A', 'N/A', 'N/A', 'AFIA ADIZA', 'ISSAKA DAWUDA', 'HANSUA TECHIMAN', 'Yes', 'GHANA GOVERNMENT', 'G3712792', '2022-07-13', '2032-07-12', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '06:01:am', 'March', '2023', '2023-Mar-21st'),
(115, 'GYAMFI GIDEON', '1989-12-01', 'Married', 'KINTAMPO', 'N/A', '0559857326', 'KINTAMPO', '', 'Professional', '2YEARS', '2', 'Ghanaian', 'Canada', 'ASMAN MOHAMMED', '1992-01-01', '059633975', 'TRADER', 'N/A', 'N/A', 'N/A', 'N/A', 'BT-0077-3049', 'Yes', 'GHANA GOVERNMENT', 'G3111303', '2021-02-12', '2031-02-11', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, 'No', '06:18:am', 'March', '2023', '2023-Mar-21st'),
(116, 'ASSA GODFRED TAKYI', '1997-06-08', 'Single', 'TECHIMAN', 'N/A', '0203694836', 'TECHIMAN', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0559013194', 'N/A', 'N/A', 'N/A', 'TWI-BREMPONG CHRISTIAN', 'N/A', 'TMA 561E', 'Yes', 'GHANA GOVERNMENT', 'G3628628', '2022-05-19', '2032-05-18', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '06:22:am', 'March', '2023', '2023-Mar-21st'),
(117, 'YAW ASUBONTENG', '1996-11-14', 'Single', 'KUMASI', 'N/A', '0556958220', 'KUMASI', NULL, 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0245545088', 'N/A', 'N/A', 'N/A', 'JANET DONKOR', 'N/A', 'ASH-TOWN', 'Yes', 'GHANA GOVERNMENT', 'G3510026', '2022-03-25', '2032-03-24', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '06:25:am', 'March', '2023', '2023-Mar-21st'),
(118, 'BOAMAH FAUSTINA', '1996-04-18', 'Married', 'KUMASI', 'N/A', '059618155', 'KUMASI', 'buaryshelly3@gmail.com', 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0554711972', 'N/A', 'N/A', 'N/A', 'ELIZABETH BOAMAH', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNMENT', 'A0080464', '2021-09-23', '2031-09-22', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:24:am', 'March', '2023', '2023-Mar-21st'),
(119, 'DAVID DOMPREH', '1996-12-25', 'Single', 'ACCRA', 'N/A', '0240684175', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'GOH ROSE', 'N/A', 'GIMPA, BLOCK D', 'Yes', 'GHANA GOVERNMENT', 'G2787362', '2020-02-25', '2030-02-24', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:07:am', 'March', '2023', '2023-Mar-27th'),
(120, 'YAKUBU ABDUL-KADIR', '1991-12-05', 'Single', 'YENDI', 'N/A', '0204752832', 'YENDI', '', 'Professional', '2YEARS', '0', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'HOUSE No. 16 GBALOKPALSI / TAMALE', 'Yes', 'GHANA GOVERNMENT', 'G3379618', '2021-10-04', '2031-10-03', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:15:am', 'March', '2023', '2023-Mar-30th'),
(121, 'RESTEL GYADU SARFO', '1994-03-06', 'Married', 'ACCRA', 'N/A', '0245212894', 'ACCRA', '', 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', '0547397626', 'N/A', 'N/A', 'N/A', 'BRESE DAPAAH REGINA', 'N/A', 'B68921 ABEKA', 'Yes', 'GHANA GOVERNMENT', 'G2615208', '2019-09-18', '2029-08-18', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:28:am', 'April', '2023', '2023-Apr-4th'),
(122, 'EMMANUEL ADUSEI POKU', '1983-08-24', 'Married', 'KUMASI', 'N/A', '0244178314', 'KUMASI', '', 'Unskilled', '2YEARS', '3', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0249751711', 'N/A', 'N/A', 'N/A', 'AGNES OWUSU PEPRAH', 'N/A', 'PLOT 54 BLOCK R, TAFO NHYIAESO', 'Yes', 'GHANA GOVERNMENT', 'G2981522', '2020-10-20', '2030-10-19', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:47:am', 'April', '2023', '2023-Apr-4th'),
(123, 'ROSE ESI AKORFUL', '1986-04-06', 'Single', 'ACCRA', 'N/A', '0553105302', 'ACCRA', '', 'Unskilled', '2YEARS', '1', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0596524602', 'N/A', 'N/A', 'N/A', 'AUGUSTINA AMOAH', 'N/A', 'KS 87, KASOA', 'Yes', 'GHANA GOVERNMENT', 'A0147762', '2022-02-18', '2032-02-17', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:03:am', 'April', '2023', '2023-Apr-4th'),
(124, 'TARIQ AMARH AKUETTEH', '1993-08-17', 'Single', 'ACCRA', 'N/A', '0559846932', 'ACCRA', '', 'Maison', '2YEARS', '0', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0551752944', 'N/A', 'N/A', 'N/A', 'NAIAMAH NADEI AKUETTEH', 'N/A', 'G334/6 LA-ACCRA', 'Yes', 'GHANA GOVERNMENT', 'G2368645', '2019-03-19', '2029-03-18', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:18:am', 'April', '2023', '2023-Apr-4th'),
(125, 'BOATENG WILLIAMS', '1993-05-04', 'Single', 'ACCRA', 'N/A', '0240868689', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0559049229', 'N/A', 'N/A', 'N/A', 'CYNTHIA KYEI BAFFOUR', 'N/A', 'GC-020-4361', 'Yes', 'GHANA GOVERNMENT', 'G2486623', '2019-06-25', '2029-06-24', 'Yes', 'No', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:51:am', 'April', '2023', '2023-Apr-5th'),
(126, 'AVORNU WILLIAM AGBESE', '1991-08-09', 'Single', 'ASHAIMAN', 'N/A', '0558610932', 'ASHAIMAN', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'ESTHER LARTEY', 'N/A', 'J/111 PORTUPHY STREET', 'Yes', 'GHANA GOVERNMENT', 'G3994859', '2023-02-20', '2033-02-19', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '11:05:am', 'April', '2023', '2023-Apr-11th'),
(127, 'DAVID ADJEIWODA', '1985-11-10', 'Single', 'TEMA', 'N/A', '0249498088', 'ACCRA', '', 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', '0544716464', 'N/A', 'N/A', 'N/A', 'MERCY ADJEIWODA', 'N/A', 'jerico road - ashaiman j1/52', 'Yes', 'GHANA GOVERNMENT', 'G3699528', '2022-06-29', '2032-06-28', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '11:12:am', 'April', '2023', '2023-Apr-11th'),
(128, 'ALHASSAN MANAF', '1994-08-11', 'Single', 'TAMALE', 'N/A', '0554672655', 'TAMALAE', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'ALHASSAN SEKINATU', 'N/A', 'NKZ-33', 'Yes', 'GHANA GOVERNMENT', 'G3711156', '2022-07-12', '2032-07-11', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '11:35:am', 'April', '2023', '2023-Apr-11th'),
(129, 'ABIGAIL ADOM AMPONSAH', '1994-06-20', 'Single', 'OLD - TAFO KUMASI', 'N/A', '0540885868', 'KUMASI', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0556744274', 'N/A', 'N/A', 'N/A', 'VIDA NOMENE', 'N/A', 'AZ-0008-7259', 'Yes', 'GHANA GOVERNMENT', 'G2752682', '2020-01-13', '2030-01-12', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '11:45:am', 'April', '2023', '2023-Apr-11th'),
(188, 'ANIAPAM KWAME ASABRE', '2023-06-21', 'Single', 'KUMASI', 'GREATER ACCRA', '0279548213', 'ACCRA', '', 'Professional', '2YEARS', '3', 'Ghanaian', 'Canada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12:24:pm', 'June', '2023', '2023-Jun-21st'),
(189, 'RICHMOND SMITH', '2023-06-21', 'Single', 'KUMASI', 'WESTERN REGION', '0243196276', 'KUMASI', '', 'Professional', '2YEARS', '4', 'Ghanaian', 'Canada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12:56:pm', 'June', '2023', '2023-Jun-21st'),
(131, 'AMOS ASAMOAH KYERE', '1993-05-05', 'Married', 'ACCRA', 'N/A', '055797897', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0592377278', 'N/A', 'N/A', 'N/A', 'REBECCA KYERE', 'N/A', 'TEMA COMMUNITY 25', 'Yes', 'GHANA GOVERNMENT', 'A0124967', '2022-01-25', '2032-01-24', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:36:am', 'April', '2023', '2023-Apr-14th'),
(132, 'MOHAMMED SARI', '1990-02-13', 'Married', 'KUMASI', 'N/A', '0243222668', 'KUMASI', '', 'Unskilled', '2YEARS', '3', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0243222668', 'N/A', 'N/A', 'N/A', 'HASIYA MOHAMMED', 'N/A', 'NZ 51 NEW ZONGO-MANHYIA', 'Yes', 'GHANA GOVERNMENT', 'G2491286', '2019-06-28', '2029-06-27', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:50:am', 'April', '2023', '2023-Apr-14th'),
(133, 'FLORENCE ANDOH', '1990-12-30', 'Single', 'SENYA - BERAKU', 'N/A', '0543176276', 'BERAKU', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0597448596', 'N/A', 'N/A', 'N/A', 'MARGARET AWAUH', 'N/A', 'HS. No. 39 SUNFLOWER LINK UBUNTU COURT OYARIFA, ACCRA', 'Yes', 'GHANA GOVERNMENT', 'G3123297', '2021-03-01', '2031-02-28', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:55:am', 'April', '2023', '2023-Apr-14th'),
(134, 'DONKOR SETH', '1985-03-22', 'Married', 'ACCRA', 'N/A', '0246654540', 'ACCRA', '', 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0249606402', 'N/A', 'N/A', 'N/A', 'OLIVIA OKAI', 'N/A', 'TAIFA BURKINA POST OFFICE', 'Yes', 'GHANA GOVERNMENT', 'G3758190', '2022-08-23', '2032-08-22', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:39:am', 'April', '2023', '2023-Apr-14th'),
(135, 'BERLINDA ARTHUR', '1999-03-26', 'Single', 'TEMA', 'N/A', '0553628480', 'TEMA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'FATI ABUBAKAR(ARTHUR)', 'N/A', 'GL-071-1204, LESHIE STREET', 'Yes', 'GHANA GOVERNMENT', 'G3136438', '2021-03-18', '2031-03-17', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:48:am', 'April', '2023', '2023-Apr-17th'),
(136, 'ISAAC BOADU', '1977-07-17', 'Married', 'KUMASI', 'N/A', '0244569362', 'KUMASI', '', 'Unskilled', '2YEARS', '3', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0240684235', 'N/A', 'N/A', 'N/A', 'MERY BOADU', 'N/A', 'PLOT 1 BLOCK 1 SAFO ROAD - KOTEY NEW SITE', 'Yes', 'GHANA GOVERNMENT', 'G3051318', '2020-12-30', '2030-12-29', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:53:am', 'April', '2023', '2023-Apr-17th'),
(137, 'JENNIFER OPARE DANQUAH', '1987-08-23', 'Married', 'ACCRA', 'N/A', '0548216675', 'ACCRA', '', 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0240144818', 'N/A', 'N/A', 'N/A', 'THERESA OTCHERE', 'N/A', 'GM243-0688', 'Yes', 'GHANA GOVERNMENT', 'G3321330', '2021-08-26', '2031-08-27', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:04:am', 'April', '2023', '2023-Apr-17th'),
(138, 'GBENOR AARON TEYE MENSAH', '1995-05-25', 'Single', 'CAPE COAST', 'N/A', '0245730005', 'CAPE COAST', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0240276633', 'N/A', 'N/A', 'N/A', 'ERNESTINA OFORI', 'N/A', 'GN-0665-6433', 'Yes', 'GHANA GOVERNMENT', 'G2505694', '2019-07-12', '2029-07-11', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:14:am', 'April', '2023', '2023-Apr-17th'),
(140, 'NII DANIEL OKPOTI OKERCHIRI', '1989-05-05', 'Single', 'ACCRA', 'N/A', '0244455360', 'KUMASI', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '1989-05-05', '0244455360', 'N/A', 'N/A', 'N/A', 'CYNTHIA AKO', 'N/A', 'LA', 'Yes', 'GHANA GOVERNMENT', 'G2397619', '2019-04-12', '2029-04-11', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '06:18:am', 'April', '2023', '2023-Apr-18th'),
(143, 'OTABIL EMMANUEL YAW', '1997-07-18', 'Single', 'ACCRA', 'N/A', '0552185799', 'ACCRA', '', 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'MARY KORKOR', 'N/A', 'HNo. 279/6 NUNGUA COCO BEACH', 'Yes', 'GHANA GOVERNMENT', 'A0069068', '2021-08-31', '2031-08-30', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '06:31:am', 'April', '2023', '2023-Apr-18th'),
(144, 'KYEI STEPHEN', '2003-02-07', 'Single', 'ACCRA', 'N/A', '0599330553', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0595729849', 'N/A', 'N/A', 'N/A', 'ESTHER OWUSU', 'N/A', 'NUNGUA', 'Yes', 'GHANA GOVERNMENT', 'A0185228', '2023-04-06', '2033-04-05', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '06:34:am', 'April', '2023', '2023-Apr-18th'),
(146, 'ANIAPAM KWAME ASABRE', '2002-04-27', 'Single', 'SUNYANI', 'N/A', '0243196276', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0550747220', 'N/A', 'N/A', 'N/A', 'MARGARET NYARKO', 'N/A', 'KWAMOSO HABITAT', 'Yes', 'GHANA GOVERNMENT', 'G4038416', '2023-02-03', '2033-02-02', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '06:47:am', 'April', '2023', '2023-Apr-18th'),
(148, 'DORCAS MENSAH', '1994-02-09', 'Single', 'ASAAM MANPONG ASHANTI', 'N/A', '0243401400', 'MAMPONG', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0249606402', 'N/A', 'N/A', 'N/A', 'OLIVIA OKAI', 'N/A', 'TAIFA-BRUKINA - POST OFFICE', 'Yes', 'GHANA GOVERNMENT', 'G3770328', '2022-08-29', '2032-08-28', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '06:59:am', 'April', '2023', '2023-Apr-18th'),
(149, 'GEORGE', '1970-07-07', 'Married', 'ACCRA', 'N/A', '0243854794', 'ACCRA', '', 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0592750690', 'N/A', 'N/A', 'N/A', 'ESTHER ARYEE', 'N/A', 'B797/4 MATAHEKO  - ACCRA', 'Yes', 'GHANA GOVERNMENT', 'G4030620', '2023-01-02', '2033-01-31', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:09:am', 'April', '2023', '2023-Apr-18th'),
(150, 'JUSTICE SMART ABLETOR', '1985-12-28', 'Single', 'MAFI - MEDIAGE', 'N/A', '0244085585', 'MAFI ', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0248556701', 'N/A', 'N/A', 'N/A', 'VIVIAN SUGLO', 'N/A', '30/16 SYCHAR OGBOFO, EAST LEGON', 'Yes', 'GHANA GOVERNMENT', 'G3939838', '2022-12-28', '2032-12-27', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:16:am', 'April', '2023', '2023-Apr-18th'),
(151, 'SARFO LYDIA', '1994-05-05', 'Single', 'KUMASI', 'N/A', '0241940891', 'KUMASI', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0241916522', 'N/A', 'N/A', 'N/A', 'AMA AKOSAH', 'N/A', 'TEMA GOLF CITY', 'Yes', 'GHANA GOVERNMENT', 'G4042852', '2023-02-08', '2032-02-07', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:20:am', 'April', '2023', '2023-Apr-18th'),
(152, 'BINEY GLORITA', '1995-04-20', 'Single', 'TEMA', 'N/A', '0503965243', 'TEMA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0570940825', 'N/A', 'N/A', 'N/A', 'EMELIA BINEY', 'N/A', 'TEMA GOLF CITY FLOWER CLOSE(5) FIVE', 'Yes', 'GHANA GOVERNMENT', 'G2303653', '2019-02-22', '2024-02-21', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:25:am', 'April', '2023', '2023-Apr-18th'),
(153, 'ADJETEY STEPHEN', '1994-05-29', 'Single', 'ACCRA', 'N/A', '0206449673', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0504976522', 'N/A', 'N/A', 'N/A', 'MILLICENT MENSAH', 'N/A', 'GZ-121-1356, MARKET HIGH STREET', 'Yes', 'GHANA GOVERNMENT', 'G3515764', '2022-03-31', '2032-03-30', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:47:am', 'April', '2023', '2023-Apr-18th'),
(154, 'EMMANUEL KORLETEY MENSAH', '1984-01-04', 'Married', 'ACCRA', 'N/A', '0244473899', 'ACCRA', '', 'Unskilled', '2YEARS', '3', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0552520631', 'N/A', 'N/A', 'N/A', 'GLADYS ATAA ADDO', 'N/A', 'J 7/24 NUNGUA', 'Yes', 'GHANA GOVERNMENT', 'G2626452', '2019-09-26', '2029-09-25', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:52:am', 'April', '2023', '2023-Apr-18th'),
(155, 'JAMES OBIL', '1984-10-21', 'Married', 'YAMORANSA', 'N/A', '0243255474', 'YAMORANSA', '', 'Unskilled', '2YEARS', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0276028946', 'N/A', 'N/A', 'N/A', 'SOPHIA QUAINOO', 'N/A', 'takoradi-apowa tuc new estate, plot num 44i', 'Yes', 'GHANA GOVERNMENT', 'G3469084', '2021-12-06', '2031-12-05', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:35:am', 'April', '2023', '2023-Apr-18th'),
(156, 'WAHAB DANSO BAOTENG', '1994-11-30', 'Single', 'ACCRA', 'N/A', '0553629714', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0203492433', 'N/A', 'N/A', 'N/A', 'HABIBA MUSAH', 'N/A', '16 park avenue teshie nungua estate', 'Yes', 'GHANA GOVERNMENT', 'G3547762', '2022-04-11', '2032-04-10', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:39:am', 'April', '2023', '2023-Apr-18th'),
(157, 'ALBERT OHENE OKANTA', '2003-10-24', 'Married', 'ACCRA', 'N/A', '0594187924', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0551755920', 'N/A', 'N/A', 'N/A', 'BERNICE OKANTA', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNMENT', 'A0127386', '2022-02-20', '2032-02-10', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:42:am', 'April', '2023', '2023-Apr-18th'),
(158, 'THELMA NAA LAMILEY LAMPTEY', '1986-01-01', 'Single', 'ACCRA', 'N/A', '0243140614', 'ACCRA', '', 'Unskilled', '2YEARS', '1', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0243275871', 'N/A', 'N/A', 'N/A', 'PATIENCE ADJORKOR', 'N/A', 'kasoa', 'Yes', 'GHANA GOVERNMENT', 'A0000318', '2020-02-21', '2030-02-20', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:02:am', 'April', '2023', '2023-Apr-18th'),
(159, 'ABUAKWAH ENOCK BAAH', '1989-07-02', 'Married', 'ACCRA', 'N/A', '0558380019', 'ACCRA', '', 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0247053032', 'N/A', 'N/A', 'N/A', 'VIDA ODOOM', 'N/A', '26 beatrice clottey st, anyaa', 'Yes', 'GHANA GOVERNMENT', 'G296048', '2023-11-03', '2030-11-02', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:07:am', 'April', '2023', '2023-Apr-18th'),
(160, 'NAS QUARTEY ', '1987-02-05', 'Married', 'APAM', 'N/A', '02443682138', 'APAM', '', 'Unskilled', '2years', '2', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'SABINA QUAYSON', 'N/A', 'H.N E28 MAMFAM / APAM', 'Yes', 'GHANA GOVERNMENT', 'G2758872', '2020-01-21', '2030-01-20', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '06:33:am', 'April', '2023', '2023-Apr-20th'),
(161, 'YEBOAH KWADWO', '1974-01-16', 'Married', 'GOMAO FETTEH', 'N/A', '0273088400', 'GOMOA', '', 'Unskilled', '2YEARS', '3', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0273088400', 'N/A', 'N/A', 'N/A', 'AMA SERWAA', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNMENT', 'A0183877', '2023-04-04', '2033-04-03', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:44:am', 'April', '2023', '2023-Apr-25th'),
(162, 'DANIEL OFORI', '1988-02-05', 'Married', 'ACCRA', 'N/A', '02496844598', 'ACCRA', '', 'Unskilled', '2YEARS', '5', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0541000032', 'N/A', 'N/A', 'N/A', 'REBECCA ANUM', 'N/A', 'P.O.BOX 125 - DARKUMAN', 'Yes', 'GHANA GOVERNMENT', 'G2730122', '2019-12-12', '2029-12-11', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:54:am', 'April', '2023', '2023-Apr-25th'),
(163, 'DUNCAN KWAME AWUKU', '1982-10-21', 'Single', 'AFLAO', 'N/A', '0541700503', 'AFLAO', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'AKUYO AMEADEDONU', 'N/A', '30 POOKIE ST ASHAIMAN ADJEI KOJO', 'Yes', 'GHANA GOVERNMENT', 'G2880469', '2020-06-22', '2030-06-21', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:10:am', 'April', '2023', '2023-Apr-25th'),
(164, 'OWUSU MENSAH KWEKU OBENG', '2001-03-14', 'Single', 'ACCRA', 'N/A', '0245173972', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'MARTHA ESSUMANG', 'N/A', 'CD112, PANTANG HOSPITAL ROAD', 'Yes', 'GHANA GOVERNMENT', 'G3727147', '2022-07-29', '2032-07-28', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:15:am', 'April', '2023', '2023-Apr-25th'),
(165, 'SANSAH PAUL AKWASI', '2000-05-17', 'Single', 'BECHEM', 'N/A', '0599321626', 'BECHEM', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0559536128', 'N/A', 'N/A', 'N/A', 'AMA ATTAH', 'N/A', 'HNN126', 'Yes', 'GHANA GOVERNMENT', 'A0119665', '2022-01-26', '2032-01-25', 'Yes', 'No', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:11:am', 'May', '2023', '2023-May-8th'),
(166, 'JOHN KWAME EKLU', '1996-08-31', 'Single', 'DODOWA', 'N/A', '0557224626', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0540750922', 'N/A', 'N/A', 'N/A', 'LYDIA AKU KOTOKA EKLU', 'N/A', 'kpone Bawalehsie', 'Yes', 'GHANA GOVERNMENT', 'A0038519', '2022-09-28', '2032-09-27', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:24:am', 'May', '2023', '2023-May-8th'),
(167, 'OPATA RICHARD NARH', '1992-11-28', 'Single', 'KOFORIDUA', 'N/A', '0551291578', 'KOFORIDUA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0545011346', 'N/A', 'N/A', 'N/A', 'DORA TEI', 'N/A', 'DODOWA AZ140 OBOM STREET', 'Yes', 'GHANA GOVERNMENT', 'G2795933', '2020-02-28', '2030-02-27', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:28:am', 'May', '2023', '2023-May-8th'),
(168, 'ADJANOR EMMANUEL', '1990-01-02', 'Single', 'ASHAIMAN', 'N/A', '0553146737', 'ASHAIMAN', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Cambodia', 'N/A', '0001-01-01', '0547970682', 'N/A', 'N/A', 'N/A', 'MRS. COMMFORT ADJANOR', 'N/A', 'ASHAIMAN ATADEKA', 'Yes', 'GHANA GOVERNMENT', 'G3734831', '2022-08-08', '2032-08-07', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:32:am', 'May', '2023', '2023-May-8th'),
(169, 'COMFORT AMFOH', '1996-11-15', 'Single', 'ASSIN FOSU', 'N/A', '0598685127', 'ASSIN FOSU', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Singapore', 'N/A', '0001-01-01', '0599294085', 'N/A', 'N/A', 'N/A', 'LUCY OPPONG', 'N/A', 'MP8, MEMPEASEM - ASSIN FOSU', 'Yes', 'GHANA GOVERNMENT', 'G2197049', '2018-10-10', '2023-10-09', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:38:am', 'May', '2023', '2023-May-8th');
INSERT INTO `clients` (`id`, `fullname`, `dob`, `marital`, `birthplace`, `region`, `telephone`, `city`, `email`, `skill`, `experience`, `children`, `nationality`, `country`, `spouse`, `spousedate`, `spousephone`, `occupation`, `spousecity`, `spouseregion`, `mother`, `father`, `address`, `passport`, `issueing_authority`, `passport_number`, `issue_date`, `expiry_date`, `pictures`, `medical`, `police_report`, `status`, `agent_name`, `agent_id`, `approval`, `time`, `month`, `year`, `date_created`) VALUES
(170, 'BENJAMIN WIAFE ANSONG', '1986-03-03', 'Single', 'TEMA', 'N/A', '0243858866', 'TEMA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'JANET AMPEDU', 'N/A', 'P.O.BOX 1999, ACCRA NORTH', 'Yes', 'GHANA GOVERNMENT', 'G3832103', '2022-10-26', '2032-10-25', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:45:am', 'May', '2023', '2023-May-8th'),
(171, 'LUAD EDMOND HUGES', '1993-08-27', 'Single', 'TARKWAH EFFIE - NKWANTA HOSPITAL', 'N/A', '0591745637', 'TARKWAH', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0504398611', 'N/A', 'N/A', 'N/A', 'GLADYS ARTHUR', 'N/A', 'promise land Assalice House No. 6', 'Yes', 'GHANA GOVERNMENT', 'G4108877', '2023-03-07', '2033-03-06', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:22:am', 'May', '2023', '2023-May-9th'),
(172, 'OBENG PEPRAH PAMELA', '1981-05-23', 'Married', 'ACCRA', 'N/A', '0246318417', 'ACCRA', '', 'Unskilled', '2YEARS', '3', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0546817873', 'N/A', 'N/A', 'N/A', 'CECILIA OBENG', 'N/A', 'GD-198-7280', 'Yes', 'GHANA GOVERNMENT', 'G3018334', '2020-11-23', '2030-11-22', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:34:am', 'May', '2023', '2023-May-9th'),
(173, 'BENJAMIN KWAKU LARBI ASOMANI', '1990-12-20', 'Single', 'NKAWKAW', 'N/A', '0542982202', 'NKAWKAW', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0243269022', 'N/A', 'N/A', 'N/A', 'AMOAH ELIZABETH DARKO', 'N/A', 'NEW ACHIMOTA', 'Yes', 'GHANA GOVERNMENT', 'G3282014', '2021-07-21', '2031-07-20', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:42:am', 'May', '2023', '2023-May-9th'),
(174, 'EMMANUEL ACQUAH', '1995-04-29', 'Single', 'NUNGUA', 'N/A', 'N/A', 'NUNGUA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'FLORENCE AQUAH', 'N/A', 'GZ-008-3172', 'Yes', 'GHANA GOVERNMENT', 'A0166051', '2022-03-04', '2032-03-03', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:49:am', 'May', '2023', '2023-May-9th'),
(175, 'EMMANUEL DAPAAH', '2001-03-20', 'Single', 'ACCRA', 'N/A', '0557108285', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0243813265', 'N/A', 'N/A', 'N/A', 'theresa dapaah', 'N/A', 'OBUASI - BHE 15/C', 'Yes', 'GHANA GOVERNMENT', 'G3645670', '2022-06-01', '2032-05-31', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '07:54:am', 'May', '2023', '2023-May-9th'),
(176, 'SANUEL KOJO KARIKARI', '1995-09-04', 'Married', 'MANKRANSO', 'N/A', '0544248466', 'MANKRANSO', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0547262881', 'N/A', 'N/A', 'N/A', 'AGNES DONKOR', 'N/A', 'ASEMPA DOWN H/No. NK192/14 - KASOA', 'Yes', 'GHANA GOVERNMENT', 'G3217300', '2021-05-27', '2031-05-26', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:29:am', 'May', '2023', '2023-May-9th'),
(177, 'HAPPY APREKU', '1980-01-01', 'Single', 'ACCRA', 'N/A', '0242847596', 'ACCRA', '', 'Unskilled', '2YEARS', '4', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'JULIANA DAMESI', 'N/A', 'CX-076-3693', 'Yes', 'GHANA GOVERNMENT', 'G3920693', '2022-12-15', '2032-12-14', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:44:am', 'May', '2023', '2023-May-9th'),
(178, 'GYAMFI ISAAC OWUSU', '1996-11-03', 'Single', 'TANOSO - KUMASI', 'N/A', '0248754603', 'TANOSO', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0599131323', 'N/A', 'N/A', 'N/A', 'ESTHER OWUSU GYAMFI', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNMENT', 'G3487469', '2021-12-24', '2031-12-23', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:56:am', 'May', '2023', '2023-May-9th'),
(179, 'BINDIFRIM YAYANYI EMMANUEL', '1996-01-01', 'Married', 'KPANDAI - LUNGNI', 'N/A', '0507055053', 'KPANDAI - LUNGNI', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Australia', 'N/A', '0001-01-20', 'N/A', 'N/A', 'N/A', 'N/A', 'GMALPOM BINDIBIL', 'N/A', 'ODANKWA CL GA-477-1273', 'Yes', 'GHANA GOVERNMENT', 'G2664164', '2019-10-30', '2029-01-29', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:21:am', 'May', '2023', '2023-May-9th'),
(181, 'VERA NANA EFFAH', '1995-06-18', 'Single', 'ACCRA', 'VOLTA', '0548112838', 'ACCRA', '', 'Unskilled', '2017', '1', 'Ghanaian', 'Czech Republic', 'MARY KALE', '1972-03-17', '0249910978', 'FARMER', 'ACCRA', 'VOLTA', 'MARY KALE', 'MRS EMMA BOAFO YEBOAH', 'FRANK DARTEY', 'Yes', '17 may 2023', 'AO222552', '2023-05-17', '2023-05-16', 'Yes', 'No', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:24:am', 'June', '2023', '2023-Jun-15th'),
(182, 'SHERTA AFI AGINI', '1991-05-05', 'Single', 'ACCRA', 'VOLTA', '0553216200', 'ACCRA', '', 'Unskilled', '2015', '1', 'Ghanaian', 'Canada', 'ESTHER GARBA', '1972-03-20', '055 9194688', 'TRADER', 'VOLTA', 'VOLTA', 'ESTHER GARBA', 'ERIC KOFI', 'KASOA TOLLBOOTH', 'Yes', 'ACCRA', 'G2979370', '2020-10-20', '2030-10-19', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:08:am', 'June', '2023', '2023-Jun-15th'),
(183, 'PAUL SHIBO ALOLIGA', '1990-08-21', 'Married', 'ACCRA', 'VOLTA', '0554849463', 'ACCRA', '', 'Unskilled', '2015', '3', 'Ghanaian', 'Canada', 'REGINA ALOLIGA', '1963-07-05', '0543237920', 'TRADER', 'ACCRA', 'VOLTA', 'REGINA ALOLIGA', 'JOSEPHALOLIGA', 'AL26/4', 'Yes', 'ACCRA', 'G3014641', '2020-11-18', '2030-11-17', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:36:am', 'June', '2023', '2023-Jun-15th'),
(184, 'ROBERT EKOW QUANSAH', '1988-11-03', 'Married', 'ACCRA', 'ACCRA', '0243952626', 'ACCRA', '', 'Unskilled', '2017', '4', 'Ghanaian', 'Canada', 'samed baggrey', '1954-09-14', '0244099057', 'TRADER', 'ACCRA', 'ACCRA', 'BEATRICE NORTEY', 'YANICK BOSOMPREH', 'GC 0943797', 'Yes', 'ACCRA', 'G2882343', '2023-06-23', '2023-06-23', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:57:am', 'June', '2023', '2023-Jun-15th'),
(185, 'BENJAMINE KWASI OFORI DEBRAH', '1986-09-21', 'Married', 'ACCRA', 'ACCRA', '0249622680', 'ACCRA', '', 'Unskilled', '2012', '2', 'Ghanaian', 'Canada', 'SILAS YEBOAH', '1955-07-04', '02782274982', 'RETIRED', 'ACCRA', 'ACCRA', 'SALOME OSAM DEBRAH', 'SILAS YEBOAH', 'ACCRA', 'Yes', 'ACCRA', 'G2379845', '2019-04-11', '2029-04-04', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '11:11:am', 'June', '2023', '2023-Jun-15th'),
(191, 'BISMARK NCHIEN JALODO', '2002-01-26', 'Single', 'ACCRA', 'OTI', '0240201274', 'KASOA', '', 'Unskilled', '2002', '1', 'Ghanaian', 'Portugal', 'TIMOLIBE SAMUEL', '1968-01-25', '0554276175', 'FARMER', 'ACCRA', 'OTI', 'KUNGIN TIGHABAGIN', 'N/A', 'KPASSA-OTI ', 'Yes', 'ACCRA', 'G3285412', '2021-07-23', '2031-07-22', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:17:am', 'June', '2023', '2023-Jun-22nd'),
(192, 'FREDERICK ACHEAMPONG', '1994-04-14', 'Single', 'ASHAIMAN', 'ASHANTI', '0507313056', 'N/A', '', 'Unskilled', '2022', 'N/A', 'Ghanaian', 'Portugal', 'N/A', '0001-01-01', 'N/A', 'N/A', 'ACCRA', 'ASHANTI', 'ROSE TSUM', 'N/A', 'C/488 ASHAIMAN', 'Yes', 'ACCRA', 'G3554537', '2022-04-14', '2023-04-13', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:31:am', 'June', '2023', '2023-Jun-22nd'),
(193, 'DZOGBEWU STEPHEN ANKU', '1989-03-19', 'Married', 'ACCRA', 'ACCRA', '0245911943 / 0276911943', 'ACCRA', '', 'Unskilled', '2014-2021', '3', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', '0248525270', 'N/A', 'ACCRA', 'ACCRA', 'CHARITY DZOGBEWU', 'N/A', 'N/A', 'Yes', 'ACCRA', 'A0172200', '2022-03-15', '2032-03-14', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '08:52:am', 'June', '2023', '2023-Jun-22nd'),
(194, 'EMMANUELLA PADI', '1994-03-27', 'Single', 'ACCRA', 'ACCRA', '0242085404', 'TEMA', '', 'Unskilled', '2016-2022', 'N/A', 'Ghanaian', 'Portugal', 'N/A', '0001-01-01', '0242081223', 'TRADER', 'SOMANYA', 'ACCRA', 'N/A', 'N/A', 'N/A', 'Yes', 'ACCRA', 'G2322161', '2020-02-03', '2030-02-03', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:19:am', 'June', '2023', '2023-Jun-22nd'),
(195, 'ASRAH LAWRENCE', '1994-02-07', 'Single', 'HO', 'VOLTA', '0245125329', 'ACCRA', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0207106388', 'TRADER', 'ACCRA', 'VOLTA', 'MART JOHNSON', 'N/A', 'N/A', 'Yes', 'HO', 'G3965557', '2023-01-14', '2032-01-13', 'Yes', 'No', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:37:am', 'June', '2023', '2023-Jun-22nd'),
(196, 'IRENE LARBIE', '1979-03-16', 'Single', 'ACCRA', 'ACCRA', '0246234429', 'KASOA', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '1979-03-16', 'N/A', 'N/A', 'CENTRAL', 'ACCRA', 'COMFORT BONNEY', 'N/A', 'N/A', 'Yes', 'ACCRA', 'G3579146', '2022-04-23', '2032-04-22', 'Yes', 'No', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '10:13:am', 'June', '2023', '2023-Jun-22nd'),
(202, 'DIANA GYAWU', '1991-03-06', 'Single', 'ACCRA', 'N/A', '0246259688', 'ACCRA', '', 'Unskilled', '2YEARS', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0246259688', 'N/A', 'N/A', 'N/A', 'MARGARETH KOYO', 'N/A', 'ADUKUROM AKUAPEM', 'Yes', 'GHANA GOVERNMENT', 'G0812042', '2019-07-04', '2029-07-03', 'Yes', 'Yes', 'Yes', 'Waiting for visa', 'KOBINA FORDJOUR CODJOE', 'CMG-70023220234', 'Approved', '14:31:pm', 'July', '2023', '2023-Jul-19th'),
(203, 'ERIC OTOO', '1993-11-14', 'Single', 'AGONA SWEDRU', 'N/A', '0244930726', 'SWEDRU', '', 'Unskilled', '2years', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'JOSEPHINE OTOO', 'N/A', 'ADUM BANSO', 'Yes', 'GHANA GOVERNMENT', 'A0078296', '2021-09-28', '2031-09-27', 'Yes', 'Yes', 'Yes', 'Waiting for visa', '', 'N/A', 'Pending', '15:05:pm', 'July', '2023', '2023-Jul-21st'),
(204, '  Agyeman Duah Yeboah', '1993-05-23', 'Single', 'Ashanti Mampong', 'N/A', '0257559447', 'Nassau', '', 'Unskilled', '2 years', '0', 'Ghanaian', 'Bahamas', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Mary Owusu', 'Kwame Yeboah', 'AK-706-0414', 'Yes', 'Ghana Government', 'G2984865', '2020-11-02', '2030-11-01', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:58:am', 'July', '2023', '2023-Jul-24th'),
(205, 'Ofosu Theophilus Asiamah', '1997-11-26', 'Single', 'Accra', 'Greater Accra', '0558418988', 'N/A', '', 'Professional', '2 years', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Retired', 'N/A', 'Greater Accra', 'Diana Anokwah', 'Wiiliam Ofosu', 'F7, Ayensu River estate , Oyibi', 'Yes', 'Ghana Government', 'A0181706', '2023-07-13', '2033-07-12', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:04:am', 'July', '2023', '2023-Jul-24th'),
(206, 'Boateng John Paul', '1983-04-24', 'Single', 'Kumasi', 'N/A', '0241202708', 'Kumasi', '', 'Professional', '26', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Felicity Osei', 'Anthony Osei Boakye', 'N/A', 'Yes', 'Ghana Government', 'a0089383', '2021-10-29', '2031-10-28', 'Yes', 'Yes', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '09:16:am', 'July', '2023', '2023-Jul-24th'),
(207, 'Tracy Adinam Tuglo', '1992-12-26', 'Married', 'Accra', 'N/A', '0243315955', 'Greater Accra', '', 'Unskilled', '4', 'N/A', 'Ghanaian', 'Canada', 'frank anane', '1965-04-11', 'N/A', 'N/A', 'N/A', 'N/A', 'Mary Ama Toglo', 'koshie Kara Toglo', 'okoarmah16street', 'Yes', 'Ghana Government', 'A0260983', '2023-07-16', '2033-07-14', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:37:am', 'July', '2023', '2023-Jul-24th'),
(208, 'ADAMTEY RICHMOND KWAME', '1992-03-24', 'Single', 'TAMALE', 'N/A', '0241523986', 'WEST HOSPITAL TAMALE', '', 'Unskilled', '5years', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0500271812', 'N/A', 'N/A', 'N/A', 'DORA ADAMTEY KORANTENG', 'KINGSLEY KWAME ADAMTEY', 'GA-080-3118 OSU STATE HOUSE, 26TH ANGOLA ROAD', 'Yes', 'GHANA GOVERNENT', 'A01912276', '2023-04-14', '2033-04-13', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:47:am', 'July', '2023', '2023-Jul-24th'),
(209, 'Mary Elorm Hode', '1984-05-15', 'Single', 'Elubo', 'Greater Accra', '0242159832', 'Accra', '', 'Unskilled', '6 years', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'Greater Accra', 'N/A', 'N/A', 'CG-1612-1646', 'Yes', 'Ghana Government', 'G4267779', '2023-07-10', '2033-07-09', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:54:am', 'July', '2023', '2023-Jul-24th'),
(210, 'Adamtey Richmond Koranteng', '1992-03-24', 'Single', 'N/A', 'N/A', '0241523986', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Dora Adamtey Koranteng', 'N/A', 'GA-080-3118', 'Yes', 'Ghana Government', 'A0191276', '2023-04-14', '2033-04-13', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:43:pm', 'July', '2023', '2023-Jul-24th'),
(211, 'Michael Caesar junior', '1989-08-22', 'Married', 'Accra', 'N/A', '0273023965', 'Greater Accra', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Norway', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Victoria Caeser', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'A0197566', '2023-04-25', '2033-04-24', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '14:32:pm', 'July', '2023', '2023-Jul-24th'),
(212, 'Joyce Ashiokai Nortey', '1985-10-21', 'Married', 'Accra', 'N/A', '0545247107', 'Greater Accra', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Norway', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Paulina Baah', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4150691', '2023-04-11', '2033-04-10', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '14:38:pm', 'July', '2023', '2023-Jul-24th'),
(213, 'Richmond Osei', '1994-07-11', 'Single', 'Accra', 'N/A', '0247124041', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Sarah Boahenemaa', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4261683', '2023-07-10', '2033-07-09', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:33:am', 'July', '2023', '2023-Jul-25th'),
(214, 'Zore  Belinda Asibi ', '1983-03-06', 'Single', 'Accra', 'N/A', '0555588050', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Comfort Zore', 'N/A', 'Adenta', 'Yes', 'Ghana Government', 'A0027549', '2022-04-19', '2032-04-18', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:47:am', 'July', '2023', '2023-Jul-25th'),
(215, 'Samuel Kyeremeh', '1986-06-19', 'Married', 'Kumasi', 'N/A', '0249478452', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Veronica Yaa Agyeiwaa', 'N/A', 'Bremang Methodist', 'Yes', 'Ghana Government', 'G4110483', '2023-03-08', '2033-03-07', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:00:am', 'July', '2023', '2023-Jul-25th'),
(216, 'Solomon Dwamena', '1995-06-08', 'Single', 'New Jejeti', 'N/A', '0245975102', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0249948598', 'N/A', 'N/A', 'N/A', 'Martha Ofosua', 'N/A', 'New Jejiti', 'Yes', 'Ghana Government', 'G3415387', '2021-10-27', '2031-10-26', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:41:am', 'July', '2023', '2023-Jul-25th'),
(217, 'Mary Opoku', '1984-10-03', 'Married', 'Kumasi', 'N/A', '0556272573', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Rose Opoku', 'N/A', 'AG-08-70-70 72', 'Yes', 'Ghana Government', 'A0191031', '2023-04-17', '2033-04-16', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:51:am', 'July', '2023', '2023-Jul-25th'),
(218, 'Emmanuel Osei Mensah', '1984-07-06', 'Married', 'Kumasi', 'N/A', '0557231136', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Grace Manu', 'N/A', 'PLT  5, BLK.5', 'Yes', 'Ghana Government', 'A0191036', '2023-04-17', '2033-04-16', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:59:am', 'July', '2023', '2023-Jul-25th'),
(219, 'Adjorlolo Daniel Lumour', '1992-05-15', 'Single', 'Adidome', 'N/A', '0595419788', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Alordinya Dodzi Mary', 'N/A', 'XY-0412-5032', 'Yes', 'Ghana Government', 'G4251749', '2023-07-03', '2033-07-02', 'Yes', 'No', 'Yes', 'Waiting for visa', NULL, NULL, NULL, '11:11:am', 'July', '2023', '2023-Jul-25th'),
(220, 'Vincent Aboagye Antwi', '1991-12-17', 'Married', 'Accra', 'N/A', '0540651210', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Comfort Yirenkyi', 'N/A', 'Koforidua', 'Yes', 'Ghana Government', 'G2780976', '2020-02-18', '0030-02-17', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:11:pm', 'July', '2023', '2023-Jul-25th'),
(221, 'Benjamin Danso Yeboah', '2000-05-23', 'Single', 'Amantin', 'N/A', '0543378646', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Combat Mary', 'N/A', 'Amantin', 'Yes', 'Ghana Government', 'G4249879', '2023-06-27', '2033-06-26', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:24:pm', 'July', '2023', '2023-Jul-25th'),
(222, 'Nartey  Francis', '1976-03-21', 'Married', 'Korle-Bu Accra', 'N/A', '0547642012', 'Ashanti Akyem', '', 'Unskilled', 'N/A', '3', 'Ghanaian', 'Romania', 'N/A', '0001-01-01', '0277470532', 'N/A', 'N/A', 'N/A', 'ADEDE VICTORIA', 'N/A', 'GC-078-6827', 'Yes', 'GHANA GOVERNENT', 'G2967472', '2020-09-30', '2030-09-30', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:25:pm', 'July', '2023', '2023-Jul-25th'),
(223, 'Ellen Ganu', '1988-05-06', 'Married', 'Kofiridua', 'N/A', '0242624736', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Elizabeth Adjei', 'N/A', 'Koforidua', 'Yes', 'Ghana Government', 'G3505750', '2022-03-22', '2032-03-21', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:33:pm', 'July', '2023', '2023-Jul-25th'),
(224, 'Ebli Prince', '1994-05-03', 'Single', 'N/A', 'Ashanti Region', '0550311358', 'N/A', '', 'Unskilled', 'N/A', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0549172675', 'N/A', 'N/A', 'Ashanti Region', 'Mary Afriyie', 'N/A', 'F9 Prestea Dagarti Compound W/R', 'Yes', 'GHANA GOVERNENT', 'G3287713', '2031-07-25', '2031-07-26', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:38:pm', 'July', '2023', '2023-Jul-25th'),
(225, 'Ebli Prince', '1994-05-03', 'Single', 'N/A', 'Ashanti Region', '0550311358', 'N/A', '', 'Unskilled', 'N/A', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0549172675', 'N/A', 'N/A', 'Ashanti Region', 'Mary Afriyie', 'N/A', 'F9 Prestea Dagarti Compound W/R', 'Yes', 'GHANA GOVERNENT', 'G3287713', '2031-07-25', '2031-07-26', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:38:pm', 'July', '2023', '2023-Jul-25th'),
(226, 'Samuel Lartey Mingle', '1980-08-31', 'Married', 'Accra', 'N/A', '0246742332', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Jonna Davis', 'N/A', 'Dansoman last stop', 'Yes', 'Ghana Government', 'A0045953', '2021-02-11', '2031-02-10', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:39:pm', 'July', '2023', '2023-Jul-25th'),
(227, 'Duada Gordon', '1988-02-04', 'Single', 'Accra', 'N/A', '0204021851', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Abena Kyrewaa', 'N/A', 'P.O. Box Central Region', 'Yes', 'Ghana Government', 'G4229926', '2023-06-13', '2033-06-12', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:46:pm', 'July', '2023', '2023-Jul-25th'),
(228, 'AMPONSAH ALBERTHA ANIWAA', '0001-01-01', 'Single', 'N/A', 'N/A', '0242771316', 'N/A', '', 'Unskilled', 'N/A', '3', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', '0208206337', 'N/A', 'N/A', 'N/A', 'GLADYS GASU', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNENT', 'G3942737', '2023-03-01', '2033-02-01', 'Yes', 'Yes', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:49:pm', 'July', '2023', '2023-Jul-25th'),
(229, 'Emmanuel Peprah Boateng', '1992-07-25', 'Single', 'Kumasi', 'N/A', '0243538606', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Abena Mensah', 'N/A', 'Plot 8 blq Q North Patasi', 'No', 'Ghana Government', 'G2759942', '2020-01-22', '2030-01-21', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:53:pm', 'July', '2023', '2023-Jul-25th'),
(230, 'COLLINS AHIADAVOR', '1982-12-29', 'Married', 'KUMASI', 'N/A', '0243612141', 'N/A', '', 'Unskilled', 'N/A', '4', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0242921755', 'RETIRED TEACHER', 'N/A', 'N/A', 'ABOIONI VERONICA', 'N/A', 'NEW TAFO 159', 'Yes', 'GHANA GOVERNENT', 'G2519834', '2019-07-25', '2029-07-25', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:58:pm', 'July', '2023', '2023-Jul-25th'),
(231, 'Obro Faith Kwabena', '1993-02-02', 'Married', 'Accra', 'Greater Accra', '0270944618', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Romania', 'N/A', '0001-01-01', 'N/A', 'Bussiness', 'N/A', 'Greater Accra', 'Edna Tano', 'N/A', 'Volta Hohoe', 'Yes', 'Ghana Government', 'A0134939', '2022-02-08', '2032-02-07', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:53:am', 'July', '2023', '2023-Jul-26th'),
(232, 'Emmanuel Owiredu Bio', '1976-07-08', 'Married', 'Accra', 'N/A', '0243935948', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Police', 'N/A', 'N/A', 'Jemima Ofosua Bio', 'N/A', 'G14, Akim Asuboa South', 'Yes', 'Ghana Government', 'G4289721', '2023-07-20', '2023-07-19', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:02:am', 'July', '2023', '2023-Jul-26th'),
(233, 'Joseph Mprah Ghandy', '1991-08-05', 'Single', 'Nsawam', 'N/A', '0533983397', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0533983397', 'N/A', 'N/A', 'N/A', 'Rebecca Mprah', 'N/A', 'Nsawam', 'Yes', 'Ghana Government', 'G3572443', '2022-09-28', '2032-09-27', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:20:am', 'July', '2023', '2023-Jul-26th'),
(234, 'ABMUBAKARI HARUNA', '1984-10-15', 'Married', 'ACCRA', 'NORTHERN REGION', '0242943009', 'N/A', '', 'Unskilled', 'N/A', '5', 'Ghanaian', 'Norway', 'N/A', '0001-01-01', '0507352525', 'N/A', 'N/A', 'NORTHERN REGION', 'ADAMA ADAM', 'N/A', 'GK-0336-5850', 'Yes', 'GHANA GOVERNENT', 'A0073839', '2021-09-16', '2031-09-15', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:23:am', 'July', '2023', '2023-Jul-26th'),
(235, 'Stella Thompson', '1978-06-02', 'Married', 'Tema', 'N/A', '0552598032', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Elizabeth Gyan', 'N/A', 'ADT AD27 Tema Com 5', 'Yes', 'Ghana Government', 'G3507342', '2022-03-23', '2032-03-22', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '11:57:am', 'July', '2023', '2023-Jul-26th'),
(236, 'Abubakar Mohammed', '1984-08-15', 'Married', 'Cape Coast', 'N/A', '0244914125', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Operator', 'N/A', 'N/A', 'Fatuma Shaibu', 'N/A', 'Accra', 'Yes', 'Ghana Government', 'G3833039', '2022-10-27', '2032-10-26', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:04:pm', 'July', '2023', '2023-Jul-26th'),
(237, 'ALLOTEY ANAS KWAME', '1997-02-15', 'Single', 'ACCRA', 'N/A', '-0594759087', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United States', 'N/A', '0001-01-01', '0244428733', 'N/A', 'N/A', 'N/A', 'ADAKO MARIAMA', 'N/A', 'GZ-176-2497', 'Yes', 'GHANA GOVERNENT', 'G2383561', '2019-03-28', '2019-03-28', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:05:pm', 'July', '2023', '2023-Jul-26th'),
(238, 'Samuel Andoh', '1992-04-27', 'Single', 'Accra', 'N/A', '0244955505', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Comfort Arthur', 'N/A', 'No. 12 Korley Kojo Avenue, Odorkor, Accra', 'Yes', 'Ghana Government', 'G2485033', '2019-06-26', '2029-06-25', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:12:pm', 'July', '2023', '2023-Jul-26th'),
(239, 'ADJETEY STEPHEN', '1994-05-29', 'Single', 'ACCRA', 'GREATER ACCRA', '0208449673', 'ACCRA', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0504976522', 'BAKER', 'N/A', 'GREATER ACCRA', 'MILLICENT MENSAH', 'N/A', 'GZ-121-1356', 'Yes', 'GHANA GOVERNENT', 'G2-121-1356', '2022-03-31', '20332-03-30', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:14:pm', 'July', '2023', '2023-Jul-26th'),
(240, 'Jeffery Opoku', '1981-08-13', 'Single', 'Accra', 'N/A', '0244930726', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Insurance Agent', 'N/A', 'N/A', 'Joyce Minkah', 'N/A', 'B1159/13 Outer Ring Road', 'Yes', 'Ghana Government', 'G2343190', '2019-03-08', '2024-03-07', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:23:pm', 'July', '2023', '2023-Jul-26th'),
(241, 'MICHAEL MENSAH', '1996-05-06', 'Single', 'ACCRA', 'GREATER ACCRA', '0245996026', 'N/A', '', 'Driver', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0547326839', 'BAKER', 'N/A', 'GREATER ACCRA', 'THERESAH AIDOO', 'N/A', 'C419/11', 'Yes', 'GHANA GOVERNENT', 'G2451829', '2019-06-04', '2029-06-03', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:24:pm', 'July', '2023', '2023-Jul-26th'),
(242, 'EBENEZER OWUSU ', '1995-05-05', 'Single', 'KOKOFU', 'N/A', '0555719335', 'N/A', '', 'Unskilled', 'N/A', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0555719335', 'N/A', 'N/A', 'N/A', 'BEATRICE OPOKU ADOMAH', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNENT', 'G3147976', '2021-03-30', '2031-03-31', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:29:pm', 'July', '2023', '2023-Jul-26th'),
(243, 'Emmanuel Chikata', '1999-05-07', 'Single', 'Ejura', 'N/A', '0249105595', 'N/A', '', 'Driver', 'N/A', 'N/A', 'Ghanaian', 'Cameroon', 'N/A', '0001-01-01', 'N/A', 'Driver', 'N/A', 'N/A', 'Elizabeth Gyamfua', 'N/A', 'Ejura', 'Yes', 'Ghana Government', 'G3028338', '2022-12-02', '2030-12-01', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:29:pm', 'July', '2023', '2023-Jul-26th'),
(244, 'Ayesha Lotso Mohammed', '1996-04-16', 'Single', 'Accra', 'N/A', '0240065895', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Waitress', 'N/A', 'N/A', 'Adiza Zakari', 'N/A', 'C182/12', 'Yes', 'Ghana Government', 'G2397733', '2019-04-12', '2029-04-11', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:36:pm', 'July', '2023', '2023-Jul-26th'),
(245, 'TAWIAH GODWIN ', '1983-04-12', 'Married', 'ACCRA', 'WESTERN ', '0554503114', 'ACCRA', '', 'Unskilled', 'N/A', '5', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '024662110', 'TRADER', 'N/A', 'WESTERN ', 'ABENA SAAH', 'N/A', 'BE-73', 'Yes', 'GHANA GOVERNENT', 'G3174003', '2021-04-22', '2031-04-21', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:37:pm', 'July', '2023', '2023-Jul-26th'),
(246, 'HAIRAAT YAKUBU', '1995-09-13', 'Single', 'ACCRA', 'N/A', '0206474047', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0206474047', 'N/A', 'ACCRA', 'N/A', 'LARIA IBRAHIM', 'N/A', 'C2 26/6', 'Yes', 'GHANA GOVERNENT', 'A0066111', '2021-08-23', '2031-08-22', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:43:pm', 'July', '2023', '2023-Jul-26th'),
(247, 'Agyarkoh Luther  King', '1991-09-21', 'Single', 'Ghana', 'N/A', '0243929865', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Order Fulfilment Manager', 'N/A', 'N/A', 'Patricia Boadu', 'N/A', 'BLKD PLT 36 EJISU', 'Yes', 'Ghana Government', 'G2799208', '2020-03-03', '2030-03-02', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:43:pm', 'July', '2023', '2023-Jul-26th'),
(248, 'MUHAMMED IBRAHIM AHMED', '1984-06-29', 'Married', 'AGONA SWEDURU', 'N/A', '0206474047', 'N/A', '', 'Unskilled', 'N/A', '3', 'Ghanaian', 'Canada', 'N/A', '0001-09-01', '0248379477', 'TRADER', 'N/A', 'N/A', 'ASANA IBRAHIM', 'N/A', '1B177-12', 'Yes', 'GHANA GOVERNENT', 'G3457032', '2021-11-24', '2031-11-23', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:48:pm', 'July', '2023', '2023-Jul-26th'),
(249, 'Apprakusu Faustina', '1988-10-17', 'Single', 'Ho', 'N/A', 'N/A', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Cashier', 'N/A', 'N/A', 'Judith Yankey', 'N/A', '1st addogono Ave', 'Yes', 'Ghana Government', 'G3751132', '2022-10-17', '2032-10-16', 'No', 'Yes', 'No', 'Waiting for visa', NULL, NULL, NULL, '12:49:pm', 'July', '2023', '2023-Jul-26th'),
(250, 'ANITA AYAH', '1995-12-01', 'Married', 'TEMA', 'N/A', '0557415933', 'N/A', '', 'Unskilled', 'N/A', '0', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', '0208237696', 'N/A', 'N/A', 'N/A', 'JOANA APPIAH BAFFOE', 'N/A', 'COM 11I/76', 'Yes', 'GHANA GOVERNENT', 'A0182661', '2023-03-30', '2031-03-30', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:04:pm', 'July', '2023', '2023-Jul-26th'),
(251, 'Justice Amankwa', '1991-11-16', 'Single', 'Kumasi', 'N/A', '0244930726', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Faustina Appiah', 'N/A', 'G22 Smith Suntreso', 'Yes', 'Ghana Government', 'G2886738', '2020-06-30', '2030-06-29', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:11:pm', 'July', '2023', '2023-Jul-26th'),
(252, 'JOSEPHINE SERWAA  YEBOAH', '19982-02-09', 'Single', 'ACCRA', 'N/A', '0205037777', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', '0243301674', 'TRADER', 'N/A', 'N/A', 'VIVIAN ASANTEWA YEBOAH', 'N/A', 'AD-32', 'Yes', 'GHANA GOVERNENT', 'G3012557', '2020-11-16', '2020-11-17', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:17:pm', 'July', '2023', '2023-Jul-26th'),
(253, 'Amoako Henry', '1979-12-31', 'Married', 'Accra', 'N/A', '0240258927', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Technician', 'N/A', 'N/A', 'Gladys Ofori', 'N/A', 'F522/2 OSU NMETSOBU STREET', 'Yes', 'Ghana Government', 'G3205606', '2021-05-13', '2031-05-13', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:21:pm', 'July', '2023', '2023-Jul-26th'),
(254, 'BENJAMIN MAWUNYO FRIMPONG', '1994-11-16', 'Single', 'KOLRLE-BU ACCRA', 'CENTRAL REGION', '0545015674', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0277831968', 'TRADER', 'N/A', 'CENTRAL REGION', 'PATIENCE AGORSU', 'N/A', 'COASTAL EASTATE L7', 'Yes', 'GHANA GOVERNENT', 'A0218650', '2023-05-16', '2033-05-15', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:30:pm', 'July', '2023', '2023-Jul-26th'),
(255, 'Bernice Naa Asheley Armah', '1988-05-25', 'Single', 'Accra', 'N/A', '0543579957', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Nursing', 'N/A', 'N/A', 'Beatrice Ashie', 'N/A', 'G2-177-7990', 'Yes', 'Ghana Government', 'G3428288', '2021-11-04', '2031-11-03', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:31:pm', 'July', '2023', '2023-Jul-26th'),
(256, 'ALBERT KWEKU COBBINAH', '1997-12-20', 'Married', 'TEMA', 'N/A', '0249818191', 'N/A', '', 'Unskilled', 'N/A', '3', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0249818191', 'N/A', 'N/A', 'N/A', 'MARY MENSAH', 'N/A', 'GE-014-1581', 'Yes', 'GHANA GOVERNENT', 'G4241279', '2023-06-22', '2033-06-21', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:36:pm', 'July', '2023', '2023-Jul-26th'),
(257, 'Abdul Hamid Dauda', '1978-07-27', 'Married', 'Accra', 'N/A', '0244660984', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United States', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Asana Karimu', 'N/A', 'Nima / Alaska', 'Yes', 'Ghana Government', 'G4129810', '2023-03-21', '2033-03-20', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '13:38:pm', 'July', '2023', '2023-Jul-26th'),
(258, 'Francis Eduafo', '1986-10-19', 'Married', 'Anomabo', 'N/A', '0546179921', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Norway', 'N/A', '0001-01-01', 'N/A', 'Mechanical Engineering', 'N/A', 'N/A', 'Mary Quayson', 'N/A', 'Anomabo', 'Yes', 'Ghana Government', 'N/A', '2023-02-18', '2033-02-17', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:20:am', 'July', '2023', '2023-Jul-27th'),
(259, 'Owusu Kingsley Boakye', '1990-03-04', 'Married', 'Berekum', 'N/A', '0202234052', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teacher', 'N/A', 'N/A', 'Florence Agyeiwaa', 'N/A', ' Box 620, Berekum', 'Yes', 'Ghana Government', 'G3473892', '2021-12-13', '2031-12-12', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:37:am', 'July', '2023', '2023-Jul-27th'),
(260, 'Mabel Akutey', '1989-10-08', 'Single', 'Sefwi-New Papase', 'N/A', '0550661209', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Community Medical Health Officer', 'N/A', 'N/A', 'Mrs. Felicia Addo', 'N/A', 'C126 LEKANA ST', 'Yes', 'Ghana Government', 'G3483173', '2021-12-22', '2031-12-21', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:49:am', 'July', '2023', '2023-Jul-27th'),
(261, 'Mouktar Mukhtar Abdul Rashid', '2001-03-11', 'Single', 'Accra', 'N/A', '0503889080', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Driver', 'N/A', 'N/A', 'Fatima Saleh Omar', 'N/A', 'J25 MOUNT  CARMEL ST GD 069-4091', 'Yes', 'Ghana Government', 'G35563391', '2022-04-16', '2032-04-15', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:03:am', 'July', '2023', '2023-Jul-27th'),
(262, 'Appiah Francisca Owireduah', '1992-09-24', 'Single', 'Accra', 'N/A', '0246344685', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Midwife', 'N/A', 'N/A', 'Joyce Amoo', 'N/A', 'Kasoa- Amanfrom', 'Yes', 'Ghana Government', 'A0063670', '2021-08-16', '2031-08-15', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:47:am', 'July', '2023', '2023-Jul-27th'),
(263, 'Larbi Duodu Reuben', '1979-04-08', 'Single', 'Accra', 'N/A', '0244258777', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Student/ IT Technician', 'N/A', 'N/A', 'Margaret Asare', 'N/A', 'Kwashibu Accra', 'Yes', 'Ghana Government', 'G3359234', '2021-09-18', '2031-09-17', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:57:am', 'July', '2023', '2023-Jul-27th'),
(264, 'David Kpasrah', '1988-02-04', 'Married', 'N/A', 'N/A', '0249229721', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Painter', 'N/A', 'N/A', 'Klutsey Ami', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4172911', '2023-05-03', '2033-05-02', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:10:am', 'July', '2023', '2023-Jul-27th'),
(265, 'Marfo Ntiriwaa Elizabeth', '1994-12-16', 'Married', 'Akim Akroso', 'N/A', '0544107500', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Nurse', 'N/A', 'N/A', 'Joyce Anu', 'N/A', 'P.o.Box 10 Akroso Roman Church', 'Yes', 'Ghana Government', 'G3599304', '2022-05-01', '2032-05-01', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:15:am', 'July', '2023', '2023-Jul-27th'),
(266, 'Hilda Owusu', '1992-03-03', 'Single', 'Accra', 'N/A', '0544713147', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Nurse', 'N/A', 'N/A', 'Florence Odoom', 'N/A', 'B1522/15', 'Yes', 'Ghana Government', 'G3671900', '2022-06-24', '2032-06-23', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:25:am', 'July', '2023', '2023-Jul-27th'),
(267, 'Mr. David Attuguaye Botchway', '1977-06-18', 'Married', 'Eikwe', 'N/A', '0243243125', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Driving', 'N/A', 'N/A', 'Madam Veronica Maria Ashie', 'N/A', 'GE-283-7519', 'Yes', 'Ghana Government', 'G4285354', '2023-07-17', '2033-07-16', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:36:am', 'July', '2023', '2023-Jul-27th'),
(268, 'Antwi Godwin Baah', '1995-07-03', 'Single', 'Kumasi', 'N/A', '0530868017', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Painter', 'N/A', 'N/A', 'Ruth Sarkodie', 'N/A', 'Agona', 'Yes', 'Ghana Government', 'A0247145', '2023-06-19', '2033-06-18', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:53:am', 'July', '2023', '2023-Jul-27th'),
(269, 'Quansah Emmanuel', '2002-07-16', 'Single', 'Cape Coast', 'N/A', '0557032608', 'N/A', '', 'Professional', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teaching', 'N/A', 'N/A', 'Rebecca Appiah', 'N/A', '24 ABLK 12NEW AMAKOM', 'Yes', 'Ghana Government', 'G4080699', '2023-02-23', '2033-02-22', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:26:am', 'July', '2023', '2023-Jul-28th'),
(270, 'Francis Nartey', '1976-03-21', 'Married', 'Korlebu Accra', 'N/A', '0547642012', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Car Body Works', 'N/A', 'N/A', 'Adede Victoria', 'N/A', 'Ashanti Akem', 'Yes', 'Ghana Government', 'G2967472', '2020-09-30', '2030-09-09', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:59:am', 'July', '2023', '2023-Jul-28th'),
(271, 'Anthony Larbi', '1995-09-03', 'Single', 'Koforidua', 'N/A', '0247643811', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Auto Mechanic', 'N/A', 'N/A', 'Philomina Kwaotey', 'N/A', 'A01045', 'Yes', 'Ghana Government', 'G2797288', '2020-03-02', '2030-03-01', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:21:am', 'July', '2023', '2023-Jul-28th'),
(272, 'Synony Lartei', '1995-09-03', 'Single', 'Koforidua', 'N/A', '0543761712', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Auto Mechanic', 'N/A', 'N/A', 'Philimona Kwaotey', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G2797289', '2020-03-02', '2030-03-01', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:38:am', 'July', '2023', '2023-Jul-28th'),
(273, ' Quansah Emmanuel', '2002-07-16', 'Single', 'Cape Coast', 'N/A', '0557032608', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teaching', 'N/A', 'N/A', 'Rebecca Appiah', 'N/A', '24 ABLK 12NEW AMAKOM', 'Yes', 'Ghana Government', 'G4080699', '2023-02-23', '2033-02-23', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:55:am', 'July', '2023', '2023-Jul-28th'),
(274, 'Iddrisui Mumiru', '1973-06-29', 'Married', 'Accra', 'N/A', '0244663106', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Tailor', 'N/A', 'N/A', 'Habiba Adam', 'N/A', '42 KAI ABEN LN GA-475-2089', 'Yes', 'Ghana Government', 'G3205832', '2021-05-05', '2031-05-16', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:08:am', 'July', '2023', '2023-Jul-28th'),
(275, 'Emmanuel Osei Tutu', '1984-12-15', 'Single', 'Ejisu', 'N/A', '0246426578', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Health Worker', 'N/A', 'N/A', 'Abena Konadu', 'N/A', 'Akyem Asuoso', 'Yes', 'Ghana Government', 'A0210560', '2023-05-08', '2033-05-07', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:24:am', 'July', '2023', '2023-Jul-28th'),
(276, 'Osei Samuel', '1986-12-12', 'Married', 'Accra', 'N/A', '0249672419', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Mechanic (Car)', 'N/A', 'N/A', 'Gladys Okai', 'N/A', 'GC-O91-9461', 'Yes', 'Ghana Government', 'A0180791', '2023-03-29', '2033-03-28', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:15:am', 'July', '2023', '2023-Jul-28th'),
(277, 'Sophia Koomson', '1993-10-18', 'Single', 'Agona Swedru', 'N/A', '0557830060', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Joana Essel', 'N/A', 'Gomoa Kokofu', 'Yes', 'Ghana Government', 'G3624523', '2022-12-05', '2032-05-15', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:32:am', 'July', '2023', '2023-Jul-28th'),
(278, 'RAZAK ALI', '1980-02-25', 'Single', 'ACCRA', 'UPPER WEST', '0543743273', 'ACCRA', '', 'Unskilled', 'N/A', '\"', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', '0543743273', 'TRADER', 'N/A', 'UPPER WEST', 'HAWA GARIBA', 'N/A', 'SX743 WEIJA', 'Yes', 'GHANA GOVERNENT', 'G4248971', '2023-06-27', '2033-06-26', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:32:am', 'July', '2023', '2023-Jul-28th'),
(279, 'Marian Amponsah', '1980-12-24', 'Single', 'Takoradi', 'N/A', '0244762783', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3873988', '2022-11-17', '2032-11-16', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:42:am', 'July', '2023', '2023-Jul-28th'),
(280, 'ISSAC GYAN METTLE', '1995-12-29', 'Married', 'PRESTEA', 'N/A', '0591620148', 'PRESTEA', '', 'Unskilled', 'N/A', '4', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0556948382', 'N/A', 'N/A', 'N/A', 'BEATRICE GYAN', 'N/A', 'EX-063-8994', 'Yes', 'GHANA GOVERNENT', 'G2636058', '2019-11-02', '2029-10-01', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:45:am', 'July', '2023', '2023-Jul-28th'),
(281, 'David Selassie Dorwu', '1978-11-24', 'Married', ' K orlebu-Accra', 'N/A', '0241027978', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teacher', 'N/A', 'N/A', 'Bernice Dzormeku', 'N/A', 'HSE NO, 1717D,4TH LINK TESHIE NUNGUA ESTATE', 'Yes', 'Ghana Government', 'G2871443', '2020-04-28', '2030-04-27', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:54:am', 'July', '2023', '2023-Jul-28th'),
(282, 'RICHMOND BEDIAKO', '1998-08-28', 'Single', 'ACCRA', 'GREATER ACCRA', '025673972', 'ACCRA', '', 'Unskilled', 'N/A', '1', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0595664855', 'TRADER', 'N/A', 'GREATER ACCRA', 'LYDIA ANDERSON', 'N/A', 'CX-063-8994', 'Yes', 'GHANA GOVERNENT', 'G4033249', '2023-02-01', '2033-01-31', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:57:am', 'July', '2023', '2023-Jul-28th'),
(283, 'DAVID ASANTE AVEDZI', '1997-12-30', 'Single', 'ANYINAM', 'N/A', '0553402494', 'ANYINAM', '', 'Unskilled', 'N/A', '0', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', '0509944056', 'N/A', 'N/A', 'N/A', 'GRACE BOATEMAA', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNENT', 'N/A', '2023-07-05', '2033-07-04', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '11:13:am', 'July', '2023', '2023-Jul-28th'),
(284, 'DAVID ASANTE AVEDZI', '1997-12-30', 'Single', 'ANYINAM', 'N/A', '0553402494', 'ANYINAM', '', 'Unskilled', 'N/A', '0', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', '0509944056', 'N/A', 'N/A', 'N/A', 'GRACE BOATEMAA', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNENT', 'N/A', '2023-07-05', '2033-07-04', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '11:13:am', 'July', '2023', '2023-Jul-28th'),
(285, 'Enoch Tonto', '1993-03-03', 'Single', 'Kumasi', 'N/A', '0208997062', 'N/A', '', 'Professional', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Human Resource Manager', 'N/A', 'N/A', 'Felicia Tetteh', 'N/A', 'H/N PLOT 124 BLOCK SONVE-EJISLE', 'Yes', 'Ghana Government', 'G3976305', '2023-01-18', '2033-01-17', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:35:am', 'July', '2023', '2023-Jul-31st'),
(286, 'Abass Adamu', '1977-04-26', 'Married', 'Accra', 'N/A', '0266444888', 'N/A', '', 'Driver', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Driver', 'N/A', 'N/A', 'Marie Adama', 'N/A', 'B115/13 Dansoman-Accra', 'Yes', 'Ghana Government', 'G2452827', '2019-06-04', '2029-06-03', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:45:am', 'July', '2023', '2023-Jul-31st'),
(287, 'Idrisu Mumiru', '1973-06-29', 'Married', 'Accra', 'N/A', '0244663106', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Trailor', 'N/A', 'N/A', 'Habiba Adams', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3205832', '2021-05-17', '2031-05-16', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:56:am', 'July', '2023', '2023-Jul-31st'),
(288, 'Mohammed Yussif', '1981-03-04', 'Single', 'Bawku', 'N/A', 'N/A', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Memuna Innusah', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G14204849', '2023-06-01', '2033-05-31', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:28:am', 'July', '2023', '2023-Jul-31st'),
(289, 'William Ofori Davis', '1984-07-09', 'Married', 'Tema', 'N/A', '0244665137', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0244665137', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3873732', '2022-11-16', '2032-11-15', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:48:am', 'July', '2023', '2023-Jul-31st'),
(290, 'Gifty Aboagyewaa', '2003-07-31', 'Single', 'Accra', 'N/A', '0546682323', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United States', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Judith Aboagye', 'N/A', 'Kwabenya', 'No', 'Ghana Government', 'N/A', '0001-01-01', '0001-01-01', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:24:am', 'July', '2023', '2023-Jul-31st'),
(291, 'Diameh Smith Eugene', '1988-02-04', 'Single', 'Accra', 'N/A', '0246224405', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Real Estate Developer', 'N/A', 'N/A', 'Faustina Sumah', 'N/A', 'Tema Community 20 H/N 72B LASHIBI', 'Yes', 'Ghana Government', 'A0172236', '2022-03-15', '2032-03-14', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:34:am', 'July', '2023', '2023-Jul-31st'),
(292, 'Botwe Francis', '1983-06-26', 'Married', 'Ekumfi Srafa', 'N/A', '0246267178', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'New Zealand', 'N/A', '0001-01-01', 'N/A', 'Welder', 'N/A', 'N/A', 'Kwofie Gifty', 'N/A', 'AH 39 APAM JUNCTION', 'Yes', 'Ghana Government', 'G3600086', '2022-05-04', '2032-05-03', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:50:am', 'July', '2023', '2023-Jul-31st'),
(293, 'Azialaho Andrews Sterleon', '1995-01-16', 'Single', 'Accra', 'N/A', '0549428983', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Trader ', 'N/A', 'N/A', 'Vincentia Korgah', 'N/A', 'GD-0477229', 'No', 'Ghana Government', 'A0089274', '2021-10-25', '2031-10-24', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:05:am', 'July', '2023', '2023-Jul-31st'),
(294, 'Elvis Tsedey', '1987-02-21', 'Single', 'Ashiaman', 'N/A', 'N/A', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United States', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4172211', '2023-05-02', '2033-05-01', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:22:am', 'July', '2023', '2023-Jul-31st'),
(295, 'Joel Nketiah ', '1989-05-27', 'Single', 'Kumasi', 'N/A', '0244453033', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Vida Koranteng', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3475171', '2021-12-13', '2031-12-12', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:28:am', 'July', '2023', '2023-Jul-31st'),
(296, 'Evelyn Kwakye', '1995-10-18', 'Single', 'Duayaw Nkwanta', 'N/A', '0553714286', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Comfort Boadu', 'N/A', 'Plot 30, block B, Atwima dominase, Ghana', 'Yes', 'Ghana Government', 'G4306116', '2023-07-28', '2033-07-27', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:05:am', 'August', '2023', '2023-Aug-3rd'),
(297, 'Sarpong Patricia', '1981-08-06', 'Single', 'Kumasi', 'N/A', '0244782475', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Bankin                                                                  ', 'N/A', 'N/A', 'Patricia Sarpong', 'N/A', 'AK-128-2678', 'Yes', 'Ghana Government', 'G2491388', '2019-06-28', '2029-06-27', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:39:am', 'August', '2023', '2023-Aug-3rd'),
(298, 'Fordjour Alenxander Antwi', '1980-01-15', 'Single', 'Kumasi', 'N/A', '0243563327', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Afia Adutwumwaa', 'N/A', 'Plot 16, block 9 Patasi', 'Yes', 'Ghana Government', 'G2454432', '2019-06-06', '2029-06-05', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:45:am', 'August', '2023', '2023-Aug-3rd'),
(299, 'Emmanuel Asare', '1982-06-24', 'Married', 'Kumasi', 'N/A', '0246772828', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Self employed', 'N/A', 'N/A', 'Hannah Boatemaa', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3452124', '2021-11-19', '2031-11-18', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:52:am', 'August', '2023', '2023-Aug-3rd');
INSERT INTO `clients` (`id`, `fullname`, `dob`, `marital`, `birthplace`, `region`, `telephone`, `city`, `email`, `skill`, `experience`, `children`, `nationality`, `country`, `spouse`, `spousedate`, `spousephone`, `occupation`, `spousecity`, `spouseregion`, `mother`, `father`, `address`, `passport`, `issueing_authority`, `passport_number`, `issue_date`, `expiry_date`, `pictures`, `medical`, `police_report`, `status`, `agent_name`, `agent_id`, `approval`, `time`, `month`, `year`, `date_created`) VALUES
(300, 'Christopher Okyere Fianko', '1973-12-24', 'Married', 'Accra', 'N/A', '0244671628', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Glass Fubricator', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'A0084069', '2021-10-05', '2031-10-04', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:58:am', 'August', '2023', '2023-Aug-3rd'),
(301, 'Joseph Kitcher', '1977-07-31', 'Married', 'Accra', 'N/A', '0244886874', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Banker', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4260521', '2023-07-05', '2033-07-04', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:05:am', 'August', '2023', '2023-Aug-3rd'),
(302, 'Ebenezer Ankomah', '1990-07-17', 'Married', 'Kumasi', 'N/A', '0247207499', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Accountant', 'N/A', 'N/A', 'Elizabeth Bortey', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3932477', '2022-12-21', '2032-12-20', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:16:am', 'August', '2023', '2023-Aug-3rd'),
(303, 'Frank Tetteh', '1978-08-17', 'Married', 'Koforidua', 'N/A', '0249019014', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Bahamas', 'N/A', '0001-01-01', 'N/A', 'Civil Engineering', 'N/A', 'N/A', 'Elizabeth Tettheh', 'N/A', 'EN-004-8561', 'No', 'Ghana Government', 'G4299391', '2023-07-25', '2033-07-24', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:25:am', 'August', '2023', '2023-Aug-3rd'),
(304, 'George Boateng', '1968-08-22', 'Married', 'Accra', 'N/A', '0208425467', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Bahamas', 'N/A', '0001-01-01', 'N/A', 'Driver', 'N/A', 'N/A', 'Comfort Nyurku', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3563350', '2022-04-20', '2032-04-19', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:54:am', 'August', '2023', '2023-Aug-3rd'),
(305, 'OSMAN CHIEF', '1976-03-11', 'Married', 'ACCRA', 'BRONG AHAFO', '0243438359', 'ACCRA', '', 'Unskilled', 'N/A', '5', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0248004585', 'N/A', 'N/A', 'BRONG AHAFO', 'MARAIAMA ADAM', 'N/A', 'DA-263-6483', 'Yes', 'GHANA GOVERNENT', 'A0224803', '2023-05-18', '2033-05-17', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:56:am', 'August', '2023', '2023-Aug-3rd'),
(306, 'Elzertina Abena Adjei', '1997-12-29', 'Single', 'Assin-Bereku', 'N/A', '0550887554', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Romania', 'N/A', '0001-01-01', 'N/A', 'Self employed', 'N/A', 'N/A', 'Christiana Essel', 'N/A', 'Koforidua Abrewa Nkwanta St.21', 'No', 'Ghana Government', 'G4259789', '2023-07-04', '2033-07-03', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:05:am', 'August', '2023', '2023-Aug-3rd'),
(307, 'EBENEZER ASRAE YEBOAH', '1974-07-11', 'Married', 'ACCRA', 'N/A', '0276821451', 'ACCRA', '', 'Unskilled', 'N/A', '3', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0554545229', 'TRADER', 'N/A', 'N/A', 'AMA MANKO', 'N/A', '4133GM-189-8152', 'Yes', 'GHANA GOVERNENT', 'G4299508', '2023-07-21', '2033-07-20', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:08:am', 'August', '2023', '2023-Aug-3rd'),
(308, 'Paul Addo', '1991-02-22', 'Married', 'Accra', 'N/A', '0593382585', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Romania', 'N/A', '0001-01-01', 'N/A', 'Driver', 'N/A', 'N/A', 'Hannah Maamle Numo', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'A0253852', '2023-07-03', '2033-07-02', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:19:am', 'August', '2023', '2023-Aug-3rd'),
(309, 'CALEB ADJEI BOATENG', '1998-03-14', 'Single', 'DERMA', 'AHAFO', '0549763559', 'ACCRA', '', 'Unskilled', 'N/A', '3', 'Ghanaian', 'Australia', 'N/A', '0001-01-01', '0240302848', 'TRADER', 'N/A', 'AHAFO', 'CECILIA ADJEI BOATENG', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNENT', 'G325938', '2021-06-28', '2031-06-27', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:22:am', 'August', '2023', '2023-Aug-3rd'),
(310, 'David Danso-Dakwa', '1990-03-18', 'Married', 'Accra', 'N/A', '0246001744', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Romania', 'N/A', '0001-01-01', 'N/A', 'Self-Employed', 'N/A', 'N/A', 'Milicent Abrokwah Akoto', 'N/A', 'N/A', 'No', 'Ghana Government', 'A0253882', '2023-07-03', '2033-07-02', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:26:am', 'August', '2023', '2023-Aug-3rd'),
(311, 'Beatrice Obeng', '1991-10-14', 'Married', 'Accra', 'N/A', '0549835045', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Romania', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Comfort Akomea', 'N/A', 'N/A', 'No', 'Ghana Government', 'A0253507', '2023-07-01', '2033-06-30', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:47:am', 'August', '2023', '2023-Aug-3rd'),
(312, 'Boateng Wahab Danso', '1994-11-30', 'Single', 'Ghana', 'N/A', '0553629714', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Unemployed', 'N/A', 'N/A', 'Habiba Mensah', 'N/A', 'Kumasi', 'No', 'Ghana Government', ' G3547762                                                                                           ', '2022-04-11', '2032-04-10', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:07:am', 'August', '2023', '2023-Aug-3rd'),
(313, 'Nathaniel Azalekor', '1998-05-14', 'Single', 'Ghana', 'N/A', '0553676626', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Lydia Freeman', 'N/A', '4th Lane(GT-375-7555)', 'Yes', 'Ghana Government', 'G3633664', '2022-05-23', '2032-05-22', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:15:am', 'August', '2023', '2023-Aug-3rd'),
(314, 'Frimpong Harriet Ntiriwa', '1993-08-24', 'Married', 'Accra', 'N/A', '0549049850', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0549049850', 'Trader', 'N/A', 'N/A', 'Joyce Hammond', 'N/A', 'N/A', 'No', 'Ghana Government', 'G2635748', '2019-10-02', '0001-01-01', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:46:am', 'August', '2023', '2023-Aug-3rd'),
(315, 'Frank Nyarko Frimpong', '1984-12-27', 'Married', 'Accra', 'N/A', '0242528589', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Banking', 'N/A', 'N/A', 'Christian Darko', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3759701', '2022-08-23', '2032-08-22', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:57:am', 'August', '2023', '2023-Aug-3rd'),
(316, 'Stephen Kweku Benso', '1993-08-12', 'Single', 'Accra', 'N/A', '0240070992', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Felicia Benso', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4300320', '2023-07-31', '2033-07-30', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:07:am', 'August', '2023', '2023-Aug-3rd'),
(317, 'Abubakari Salim Mohammed', '1997-04-06', 'Single', 'Tamale', 'N/A', 'N/A', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Student', 'N/A', 'N/A', 'Ayisha Abukari', 'N/A', 'BOX 7690 ASHALE BOTWE', 'Yes', 'Ghana Government', 'G2631009', '2019-09-30', '2029-09-29', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '11:47:am', 'August', '2023', '2023-Aug-3rd'),
(318, 'King Joseph Niltan', '1983-06-18', 'Married', 'Accra', 'N/A', '0244930726', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Norway', 'N/A', '0001-01-01', 'N/A', 'Sales Person', 'N/A', 'N/A', 'Lilian Okai', 'N/A', 'Amasaman Eise(GW-0045-2992)', 'Yes', 'Ghana Government', 'Lilian Okai', '2019-05-06', '2029-05-05', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '11:57:am', 'August', '2023', '2023-Aug-3rd'),
(319, 'Ibrahim Mohammed Tasu', '1994-08-31', 'Single', 'Kumasi', 'N/A', 'N/A', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3435699', '2021-11-10', '2031-11-09', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:05:am', 'August', '2023', '2023-Aug-7th'),
(320, 'Caleb Nyamekye Owusu', '1993-03-18', 'Single', 'Kumasi', 'N/A', '0244930726', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Business', 'N/A', 'N/A', 'Mrs. Comfort Owusu', 'N/A', 'Plot 13 Block D Kwedaso', 'Yes', 'Ghana Government', 'G3973627', '2023-01-17', '2033-01-16', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:09:am', 'August', '2023', '2023-Aug-7th'),
(321, 'Husseni Abubakari', '1983-12-25', 'Married', 'Kojokom-Takrodi', 'N/A', '0559034278', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Barber', 'N/A', 'N/A', 'Mariam Tijani', 'N/A', '50/1 Sekandi Kitan', 'No', 'Ghana Government', 'G3840721', '2022-11-02', '2032-11-01', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:17:am', 'August', '2023', '2023-Aug-7th'),
(322, 'Baidoo Joseph Paa Kwesi', '1997-06-20', 'Single', 'Asokwa', 'N/A', '0556730550', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Marine Engineer', 'N/A', 'N/A', 'Emilia Baidoo', 'N/A', 'BK 23/27 opeikuma Kasoa', 'Yes', 'Ghana Government', 'G2900553', '2020-07-22', '2030-07-21', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:28:am', 'August', '2023', '2023-Aug-7th'),
(323, 'Prince Osei Tutu', '1985-02-26', 'Married', 'Kumasi', 'N/A', '0244930726', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Martha Kusi Konadu', 'N/A', 'Langland Road Nether Field', 'Yes', 'Ghana Government', 'G3551515', '2022-04-13', '2032-04-12', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:34:am', 'August', '2023', '2023-Aug-7th'),
(324, 'Ahyia Thomas Kwadwo', '2023-09-27', 'Single', 'Accra', 'N/A', '0244930726', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Maison', 'N/A', 'N/A', 'Grace Arhin Amissah', 'N/A', 'Agona Swedru', 'Yes', 'Ghana Government', 'G3342426', '2022-01-04', '2032-01-03', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:43:am', 'August', '2023', '2023-Aug-7th'),
(325, 'Mariam Tawiah Otoo', '1992-07-23', 'Single', 'Osu', 'N/A', '0557860406', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Togolese', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Registered Nurse Assistant ', 'N/A', 'N/A', 'Regina Mensah', 'N/A', 'GS-0486-7000 Kalabuley', 'Yes', 'Ghana Government', 'GH2305838', '2019-02-26', '2024-02-25', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:57:am', 'August', '2023', '2023-Aug-7th'),
(326, 'David Kweku Benson', '1991-07-24', 'Single', 'Accra', 'N/A', '0240070310', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Felicia Benson', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G2472547', '2019-07-03', '2029-07-02', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:15:am', 'August', '2023', '2023-Aug-7th'),
(327, 'Daniel Sey', '1997-06-08', 'Single', 'Apam', 'N/A', '0599193057', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Romania', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Gifty Quansah ', 'N/A', 'Apam', 'Yes', 'Ghana Government', 'G2765804', '2020-01-28', '2030-01-27', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:28:am', 'August', '2023', '2023-Aug-7th'),
(328, 'Mercy Christabel Mawunyo Ganyo', '1983-08-05', 'Single', 'Ho', 'N/A', '0249288386', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teaching', 'N/A', 'N/A', 'Elizabeth Kahia', 'N/A', 'N/A', 'No', 'Ghana Government', 'G3117348', '2021-02-22', '2031-02-21', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:37:am', 'August', '2023', '2023-Aug-7th'),
(329, 'Alfred Armah', '1992-08-17', 'Married', 'Accra', 'N/A', '0501120083', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Clearing Agent', 'N/A', 'N/A', 'Elizabeth Anan', 'N/A', 'GS-0487-8411', 'Yes', 'Ghana Government', 'N/A', '0001-01-01', '0001-01-01', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:53:am', 'August', '2023', '2023-Aug-7th'),
(330, 'Ayiku Eric Tettey', '1976-12-15', 'Married', 'Tema', 'N/A', '0243070472', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Driver', 'N/A', 'N/A', 'Comfort Asheiley Trebi', 'N/A', 'Tema Newtown ', 'Yes', 'Ghana Government', 'A0093230', '2021-11-15', '2031-11-14', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:02:am', 'August', '2023', '2023-Aug-7th'),
(331, 'Teye Naki Anita', '1995-10-19', 'Single', 'Tema', 'N/A', '0547115416', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Registered Nurse', 'N/A', 'N/A', 'Felicia Adonu', 'N/A', 'Zu/5/406', 'Yes', 'Ghana Government', 'G2665016', '2019-10-29', '2029-10-28', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:28:am', 'August', '2023', '2023-Aug-7th'),
(332, 'Sarah Adjei', '1987-05-30', 'Single', 'Tema', 'N/A', '0243659031', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Claims Officer', 'N/A', 'N/A', 'Comfort Appiah', 'N/A', 'tema', 'Yes', 'Ghana Government', 'C74119370', '2023-03-15', '2023-03-14', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:45:am', 'August', '2023', '2023-Aug-16th'),
(333, 'Wendyline Ruth Adjei', '1980-05-05', 'Single', 'Tema', 'N/A', '0244749446', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Clearing Agent', 'N/A', 'N/A', 'Comfort Appiah', 'N/A', 'Tema', 'Yes', 'Ghana Government', 'G3972591', '2023-01-17', '2033-01-16', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:58:am', 'August', '2023', '2023-Aug-16th'),
(334, 'Isaac Ackom', '1983-08-18', 'Married', 'Winneba', 'N/A', '0242682236', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Banker', 'N/A', 'N/A', 'Cynthia Dampson', 'N/A', 'South  odorkor, Busia lane 2', 'Yes', 'Ghana Government', 'G3928568', '2022-12-16', '2032-12-15', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:03:am', 'August', '2023', '2023-Aug-16th'),
(335, 'Daniel Oware Attafuah', '1984-12-09', 'Married', 'Akim Oda', 'N/A', '0207717254', 'N/A', '', 'Unskilled', 'N/A', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teacher', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A                                                                                                 ', 'Yes', 'Ghana Government', 'G3750508', '2022-08-17', '2032-08-16', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:41:am', 'August', '2023', '2023-Aug-17th'),
(336, 'Daniel Oware Attafuah', '1984-12-09', 'Married', 'Akim Oda', 'N/A', '0207717254', 'N/A', '', 'Unskilled', 'N/A', '2', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teacher', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A                                                                                                 ', 'Yes', 'Ghana Government', 'G3750508', '2022-08-17', '2032-08-16', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:41:am', 'August', '2023', '2023-Aug-17th'),
(337, 'Phillip Worchio Jefferson', '1985-04-02', 'Married', 'Tema', 'N/A', '0243070791', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Biomedical Scientist', 'N/A', 'N/A', 'Gifty Quarshie', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'A0086055', '2021-10-11', '12031-10-10', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:55:am', 'August', '2023', '2023-Aug-21st'),
(338, 'Alberta Afari Ohenewaa', '1988-05-16', 'Single', 'Madina', 'N/A', '0246985003', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Adelaide Boafo', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3256843', '2021-06-29', '2031-06-28', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:59:am', 'August', '2023', '2023-Aug-21st'),
(339, 'Aaron Ampofo Awuah ', '1995-03-01', 'Single', 'Tema', 'N/A', '0554833786', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0554833786', 'N/A', 'N/A', 'N/A', 'Elizabeth Anyan', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4165731', '2023-04-28', '2033-04-27', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:12:am', 'August', '2023', '2023-Aug-21st'),
(340, 'Alhassan Karimu', '1980-08-28', 'Single', 'Tema', 'N/A', '0559320070', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3977528', '2023-01-19', '2033-01-18', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '10:33:am', 'August', '2023', '2023-Aug-21st'),
(341, 'Charles Kofi Dogbatse', '1980-11-21', 'Married', 'Abor', 'N/A', '0243323943', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Public Relations', 'N/A', 'N/A', 'Charity Afi Gbeve', 'N/A', 'H/No. C115/10, Obaakrowa Street.Ant', 'Yes', 'Ghana Government', 'G3802096', '2022-09-30', '2032-09-29', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '05:52:am', 'August', '2023', '2023-Aug-28th'),
(342, 'Osei Linda Frimpomaa', '1986-07-04', 'Single', 'Asante Mampong', 'N/A', '0249714758', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'N/A', 'N/A', 'N/A', 'Sarpong Emelia', 'N/A', 'n/a', 'Yes', 'Ghana Government', 'G2590813', '2019-09-09', '2029-09-08', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:20:am', 'August', '2023', '2023-Aug-28th'),
(343, 'Isaac Ofori Ababio ', '1988-02-25', 'Single', 'Accra ', 'N/A', '0547001514', 'n/a', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'N/A', 'N/A', 'N/A', 'Rosemary Darko', 'N/A', 'OPA-405 OPAH SARPIEMAN', 'Yes', 'Ghana Government', 'G3552512', '2022-04-13', '2032-04-12', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:20:am', 'August', '2023', '2023-Aug-28th'),
(344, 'Dauda Mohammed Muntari', '1978-03-10', 'Married', 'Nkawkaw ', 'N/A', '0244906338', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Fashion', 'N/A', 'N/A', 'Mamunatu Adams', 'Mamunatu Adams', 'LakeSide', 'Yes', 'Ghana Government', 'G4068405', '2023-02-18', '2033-02-17', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:10:am', 'August', '2023', '2023-Aug-28th'),
(345, 'Osei Kwame', '1990-07-11', 'Single', 'Kumasi', 'N/A', '0242189284', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'Clearing Agent', 'N/A', 'N/A', 'Dora Kwartenmaa', 'N/A', 'Bremang Nkwantwima-Kumasi', 'No', 'Ghana Government', 'N/A', '0001-01-01', '0001-01-01', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:14:am', 'August', '2023', '2023-Aug-28th'),
(346, 'Aboagye Daniel', '1994-02-06', 'Single', 'Nkawkwa', 'N/A', '0559334440', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'N/A', 'N/A', 'N/A', 'Glayds Aboakye', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G2811337', '2020-03-13', '2020-03-12', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:58:am', 'August', '2023', '2023-Aug-28th'),
(347, 'Aboagye Daniel', '1994-02-06', 'Single', 'Nkawkwa', 'N/A', '0559334440', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'N/A', 'N/A', 'N/A', 'Glayds Aboakye', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G2811337', '2020-03-13', '2020-03-12', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:58:am', 'August', '2023', '2023-Aug-28th'),
(348, 'Aboagye Daniel', '1994-02-06', 'Single', 'Nkawkwa', 'N/A', '0559334440', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'N/A', 'N/A', 'N/A', 'Glayds Aboakye', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G2811337', '2020-03-13', '2020-03-12', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:58:am', 'August', '2023', '2023-Aug-28th'),
(349, 'Aboagye Daniel', '1994-02-06', 'Single', 'Nkawkwa', 'N/A', '0559334440', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'N/A', 'N/A', 'N/A', 'Glayds Aboakye', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G2811337', '2020-03-13', '2020-03-12', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '09:58:am', 'August', '2023', '2023-Aug-28th'),
(350, 'Louisa Naa Shormeh Nortey', '1991-04-04', 'Single', 'Drobo-Bono Region', 'N/A', '0269212366 / 0542242708', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'Nurse', 'N/A', 'N/A', 'Theresa Obeng', 'N/A', 'Sunyani Penkuase Queen of Peace', 'Yes', 'Ghana Government', 'G4321191', '2023-08-14', '2033-08-13', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:05:am', 'August', '2023', '2023-Aug-30th'),
(351, 'Patience Badu-Kumi', '1976-12-23', 'Single', 'Sunyani', 'N/A', '0541985838', 'N/A', '', 'Professional', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teacher', 'N/A', 'N/A', 'Christian Kyeremaa', 'N/A', 'n/a', 'Yes', 'Ghana Government', 'N/A', '2022-11-12', '2032-11-11', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:12:am', 'August', '2023', '2023-Aug-30th'),
(352, 'Patience Badu-Kumi', '1976-12-23', 'Single', 'Sunyani', 'N/A', '0541985838', 'N/A', '', 'Professional', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teacher', 'N/A', 'N/A', 'Christian Kyeremaa', 'N/A', 'n/a', 'Yes', 'Ghana Government', 'N/A', '2022-11-12', '2032-11-11', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:12:am', 'August', '2023', '2023-Aug-30th'),
(353, 'Ali Yussif', '1990-04-05', 'Married', 'Komenda', 'N/A', '0244990052', 'n/a', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'Business Man', 'N/A', 'N/A', 'Aminu Musah', 'Amina Musah', 'Hse z  36/1 Elmina Zongo', 'Yes', 'Ghana Government', 'G4212157', '2023-06-05', '2033-06-04', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:19:am', 'August', '2023', '2023-Aug-30th'),
(354, 'Humphrey Tetteh Nartey ', '1982-10-16', 'Married', 'Accra', 'N/A', '0243972935', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'Teacher', 'N/A', 'N/A', 'Augustina Nartey', 'N/A', 'Boxn3 220, weija-accra', 'Yes', 'Ghana Government', 'G3832364', '2022-10-25', '2032-10-25', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:26:am', 'August', '2023', '2023-Aug-30th'),
(355, 'Humphrey Tetteh Nartey ', '1982-10-16', 'Married', 'Accra', 'N/A', '0243972935', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'Teacher', 'N/A', 'N/A', 'Augustina Nartey', 'N/A', 'Boxn3 220, weija-accra', 'Yes', 'Ghana Government', 'G3832364', '2022-10-25', '2032-10-25', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:26:am', 'August', '2023', '2023-Aug-30th'),
(356, 'Usman Habiba', '1985-12-13', 'Married', 'Accra', 'N/A', '0242811444', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'Trader', 'N/A', 'N/A', 'Fatimatu Basari', 'N/A', 'Gw-0221-6553', 'Yes', 'Ghana Government', 'G3557249', '2022-04-15', '2032-04-14', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '06:32:am', 'August', '2023', '2023-Aug-30th'),
(357, 'Stephen Sackey ', '1986-04-03', 'Single', 'Tema', 'N/A', 'n/a', 'n/a', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'N/A', 'N/A', 'N/A', 'Rose Doku', 'N/A', 'n/a', 'Yes', 'Ghana Government', 'A0218249', '2023-04-16', '2033-05-15', 'Yes', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:08:am', 'August', '2023', '2023-Aug-30th'),
(358, 'Abigail Tuffour', '1996-12-25', 'Single', 'Kumasi', 'N/A', '0554994006', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'Operational Assistance', 'N/A', 'N/A', 'Felicia Tuffour', 'N/A', 'Block b plot 69', 'Yes', 'Ghana Government', 'G2431972', '2019-05-15', '2029-05-14', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:24:am', 'August', '2023', '2023-Aug-30th'),
(359, 'Grace Owusuwaa Danso', '1993-09-19', 'Married', 'Kumasi', 'N/A', '0245965690', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'Nurse', 'N/A', 'N/A', 'Felicia Mensah', 'N/A', 'AK-544-3901', 'Yes', 'Ghana Government', 'G3567769', '2022-04-21', '2032-04-20', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:34:am', 'August', '2023', '2023-Aug-30th'),
(360, 'Francis Quaku Asamoah', '1974-11-17', 'Married', 'Accra', 'N/A', '0244271749', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Sales and Marketing ', 'N/A', 'N/A', 'Rose A. Tullasi Asamoah', 'N/A', '298(A) JA ACCRA', 'Yes', 'Ghana Government', 'G4277289', '2023-07-13', '2033-07-12', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '07:48:am', 'August', '2023', '2023-Aug-30th'),
(361, 'Leonard Yao Apaloo', '1980-11-06', 'Married', 'Ho', 'N/A', '0243846845', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'Militarty', 'N/A', 'N/A', 'Mad. Josephine Abla Eklo', 'N/A', 'mamaga sashikpes residence, ave dakpa', 'Yes', 'Ghana Government', 'G2856991', '2020-04-16', '2030-04-15', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:11:am', 'August', '2023', '2023-Aug-30th'),
(362, 'Leonard Yao Apaloo', '1980-11-06', 'Married', 'Ho', 'N/A', '0243846845', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'n/a', 'Militarty', 'N/A', 'N/A', 'Mad. Josephine Abla Eklo', 'N/A', 'mamaga sashikpes residence, ave dakpa', 'Yes', 'Ghana Government', 'G2856991', '2020-04-16', '2030-04-15', 'No', 'No', 'No', 'Waiting for visa', NULL, NULL, NULL, '08:11:am', 'August', '2023', '2023-Aug-30th'),
(363, 'PHILOMENA DONKOR', '1988-01-05', 'Single', 'TAKORADI', 'N/A', '0243571165', 'TAKORADI', '', 'Unskilled', '2', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNMENT', 'G3928134', '2022-12-16', '2032-12-15', 'Yes', 'No', 'No', 'Visa Approved', NULL, NULL, NULL, '08:30:am', 'August', '2023', '2023-Aug-31st'),
(364, 'LAWER SAMUEL YAW', '1979-07-10', 'Married', 'TAKORADI', 'N/A', '0243571165', 'TAKORADI', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNMENT', 'G3928135', '2022-12-16', '2032-12-15', 'Yes', 'No', 'No', 'Visa Approved', NULL, NULL, NULL, '08:36:am', 'August', '2023', '2023-Aug-31st'),
(365, 'Prince Kofi Mensah', '1990-07-13', 'Married', 'Accra', 'N/A', '0249819476', 'n/a', '', 'Unskilled', 'N/A', 'n/a', 'Ghanaian', 'Canada', 'n/a', '0001-01-01', 'N/A', 'Self Employed', 'N/A', 'N/A', 'Christian Nyamaa', 'N/A', 'Israel Sowutuom', 'Yes', 'Ghana Government', 'G4139746', '2023-03-25', '2033-03-24', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '05:10:am', 'September', '2023', '2023-Sep-4th'),
(366, 'Christian Mensah', '1995-03-31', 'Single', 'Bisease', 'N/A', '0556188298', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Driver', 'N/A', 'N/A', 'Ruth Bontey', 'N/A', 'Bisease', 'Yes', 'Ghana Government', 'G4295999', '2023-08-01', '2033-07-31', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '05:15:am', 'September', '2023', '2023-Sep-4th'),
(367, 'Felicia Kwakai Quartey', '1992-07-25', 'Single', 'James town', 'N/A', '0542877213', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Nurse', 'N/A', 'N/A', 'Ageles Quaye', 'N/A', 'H/No. C115/10, Obaakrowa Street.Ant', 'Yes', 'Ghana Government', 'G3292714', '2021-07-30', '2031-07-29', 'No', 'Yes', 'No', 'Registered', NULL, NULL, NULL, '05:21:am', 'September', '2023', '2023-Sep-4th'),
(368, 'Augustina Nyantekye', '1993-03-21', 'Single', 'Fereso', 'N/A', '0591516635', 'n/a', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Tailor', 'N/A', 'N/A', 'philomina Kwartemah', 'N/A', 'n/a', 'Yes', 'Ghana Government', 'G4313251', '2023-08-11', '2032-08-10', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '05:30:am', 'September', '2023', '2023-Sep-4th'),
(369, 'Grace Safoa', '1986-03-03', 'Single', 'Accra', 'N/A', '0243061529', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teaching', 'N/A', 'N/A', 'Faustina Danquah', 'N/A', 'HSE NO. OIE D.4-KOFORIDUA OLD ESTATE', 'Yes', 'Ghana Government', 'G4248995', '2023-06-27', '2033-06-26', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '09:05:am', 'September', '2023', '2023-Sep-11th'),
(370, 'Owusu George Darko', '1993-01-07', 'Single', 'Accra', 'N/A', '0558698091', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Comfort Addea', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4003570', '2023-01-20', '2033-01-19', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '09:13:am', 'September', '2023', '2023-Sep-11th'),
(371, 'Jonathan Bill Anderson', '1983-05-31', 'Single', 'Sekondi', 'N/A', '0262887392', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Business man', 'N/A', 'N/A', 'N/A', 'N/A', ' n/a', 'Yes', 'Ghana Government', 'G2695529', '2020-10-15', '2030-10-14', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '09:37:am', 'September', '2023', '2023-Sep-11th'),
(372, 'Richmond Kwaw Blay', '1987-03-19', 'Single', 'Sefwi Wiawso', 'N/A', '0262887392', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Managing Director', 'N/A', 'N/A', 'N/A', 'N/A', 'H/No. C115/10, Obaakrowa Street.Ant', 'Yes', 'Ghana Government', 'N/A', '0001-01-01', '0001-01-01', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '10:05:am', 'September', '2023', '2023-Sep-11th'),
(373, 'Emmanuel Agyeman Nkansah', '1990-05-06', 'Married', 'offinso', 'N/A', '0244930726', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Norway', 'N/A', '0001-01-01', 'N/A', 'Driving', 'N/A', 'N/A', 'Adwoa Obour', 'N/A', 'n/a', 'Yes', 'Ghana Government', 'G4153450', '2023-04-12', '2033-04-11', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '10:14:am', 'September', '2023', '2023-Sep-11th'),
(374, 'Marfo Isaac Oduro', '2002-05-22', 'Single', 'Accra', 'N/A', '0207810358', 'n/a', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Student', 'N/A', 'N/A', 'Patience Frimpomaa', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3704958', '2022-07-04', '2032-07-04', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:43:am', 'September', '2023', '2023-Sep-14th'),
(375, 'Ebenezer Ewusi', '1992-06-19', 'Married', 'Daboase', 'N/A', '0547060515', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Romania', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Helena Takyi', 'N/A', 'H/No. C115/10, Obaakrowa Street.Ant', 'Yes', 'Ghana Government', 'A0009035', '2020-10-16', '2030-10-15', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:58:am', 'September', '2023', '2023-Sep-14th'),
(376, ' Fred Odame Kani', '1994-10-24', 'Single', 'Accra', 'N/A', '0247747931', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Elizabeth Boamah', 'N/A', 'GA-496-7596', 'Yes', 'Ghana Government', 'G4275326', '2023-07-12', '2033-07-11', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '05:02:am', 'September', '2023', '2023-Sep-15th'),
(377, 'Enock Selasi Darteh', '1985-03-09', 'Married', 'Accra', 'N/A', '0248489055', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Quality Assurance', 'N/A', 'N/A', 'Evelyn Fiadoku', 'N/A', 'ablekumah, agape, Accra', 'Yes', 'Ghana Government', 'G4408919', '2023-09-12', '2033-09-11', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '05:06:am', 'September', '2023', '2023-Sep-15th'),
(378, 'Ahenkorah Avastine', '1985-09-02', 'Married', 'Bontomuroso', 'N/A', '0244707614', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Farmer', 'N/A', 'N/A', 'Ama Dankwaah', 'N/A', 'ABK PLOT 97, BLOCK C', 'Yes', 'Ghana Government', 'G4299874', '2023-07-28', '2033-07-27', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '05:11:am', 'September', '2023', '2023-Sep-15th'),
(379, 'Avonka Ernest Ayamdoo', '1998-10-28', 'Single', 'Bolgatanga', 'N/A', '0557823765', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Mechanic', 'N/A', 'N/A', 'Akansise Adukor', 'N/A', 'p.o.box 43 Sekondi', 'Yes', 'Ghana Government', 'G4184750', '2023-05-16', '2033-05-15', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '05:31:am', 'September', '2023', '2023-Sep-15th'),
(380, 'Francis Okutu', '1980-04-02', 'Married', 'Accra-k', 'N/A', '0209715507', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Self employed', 'N/A', 'N/A', 'Madam Gladys Tetteh', 'N/A', 'Hno. 71916 , Teshie', 'Yes', 'Ghana Government', ' A0234187', '1980-04-25', '2033-05-24', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '05:41:am', 'September', '2023', '2023-Sep-15th'),
(381, 'Eunice Quartey', '1984-04-17', 'Married', 'Accra', 'N/A', '0262372811', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'IT programmer', 'N/A', 'N/A', 'Mercy Quarcoopome (Late)', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3923251', '2022-12-12', '2032-12-11', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:02:am', 'September', '2023', '2023-Sep-15th'),
(382, 'Ofori Francis Kwadwo', '1988-06-06', 'Married', 'Berekum', 'N/A', '0559650776', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Driver', 'N/A', 'N/A', 'Martha Pomaa', 'N/A', 'MW075 BEREKUM', 'Yes', 'Ghana Government', 'A0213867', '2023-05-12', '2033-05-11', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:09:am', 'September', '2023', '2023-Sep-15th'),
(383, 'Hiob Akwetey', '1984-06-04', 'Married', 'Accra', 'N/A', '0244921735', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Driving', 'N/A', 'N/A', 'Mamle Akwetey', 'N/A', 'SE3/037', 'Yes', 'Ghana Government', 'G3571282', '2022-08-04', '2032-08-03', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:26:am', 'September', '2023', '2023-Sep-15th'),
(384, 'Kyeremeh Precious', '1986-12-04', 'Married', 'Berekum', 'N/A', '0257201451', 'n/a', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Maison', 'N/A', 'N/A', 'Konama Esther', 'N/A', 'N/A', 'Yes', 'Ghana Government', '0257201451', '2021-09-08', '2031-09-07', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:33:am', 'September', '2023', '2023-Sep-15th'),
(385, 'Johnson Nketia Amponsah', '1985-09-18', 'Married', 'Drobo', 'N/A', '0246932522', 'charliejoe04@gmail.com', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teacher', 'N/A', 'N/A', 'Beatrice Abena Awuah', 'N/A', 'box 10 Dwenem', 'Yes', 'Ghana Government', 'G43325071', '2023-08-15', '2033-08-14', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:40:am', 'September', '2023', '2023-Sep-15th'),
(386, 'Adwubi Boatemaa Melisa', '1987-07-26', 'Single', 'Accra', 'N/A', '0207118481', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Fashion Designer', 'N/A', 'N/A', 'Ansu Owusuaa', 'N/A', 'BB-0857-4655', 'Yes', 'Ghana Government', 'G4261612', '2023-07-05', '2033-07-04', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:50:am', 'September', '2023', '2023-Sep-15th'),
(387, 'Asare Obed ', '1992-05-05', 'Married', 'Techiman', 'N/A', '0244870909', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'IT Manager', 'N/A', 'N/A', 'Asare Comfort', 'N/A', 'techiman bono east region', 'Yes', 'Ghana Government', 'A0262078', '2023-07-27', '2033-07-26', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:05:am', 'September', '2023', '2023-Sep-15th'),
(388, 'Collins Baffoe Gyasi', '1997-03-17', 'Married', 'Sunyani', 'N/A', '0246697672', 'n/a', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Hanna Agyeiwaa', 'N/A', 'H/No. C115/10, Obaakrowa Street.Ant', 'Yes', 'Ghana Government', 'A0042794', '2020-12-24', '2030-12-23', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:09:am', 'September', '2023', '2023-Sep-15th'),
(389, 'Abigail Ntim', '1994-12-25', 'Married', 'Ashanti Akim Agogo', 'N/A', '0559738231', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'United Kingdom', 'N/A', '0001-01-01', 'N/A', 'Midwife', 'N/A', 'N/A', 'Agartha Donkor', 'N/A', 'AB BLOCK D 26 KONONGO', 'Yes', 'Ghana Government', 'G3603340', '2022-05-05', '2032-05-04', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:15:am', 'September', '2023', '2023-Sep-15th'),
(390, 'Sanford Martey Tetteh', '2023-07-06', 'Single', 'Accra', 'N/A', '0245321844', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Customer Service Representative', 'N/A', 'N/A', 'Theresah Boateng', 'N/A', 'Tema newtown p.o.box TT 69', 'Yes', 'Ghana Government', 'G4331444', '2023-09-15', '2033-09-14', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:48:am', 'September', '2023', '2023-Sep-18th'),
(391, 'Hamdiya Adams', '1996-08-02', 'Single', 'Bawku', 'N/A', '0541442090', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Hawawu', 'N/A', '2 Ruby Street Accra', 'Yes', 'Ghana Government', 'G3146661', '2021-03-29', '2031-03-29', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '09:13:am', 'September', '2023', '2023-Sep-18th'),
(392, 'Olo Daniel', '1997-07-26', 'Married', 'Juaboso', 'N/A', '0247546573', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Abena Serwaa', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4377081', '2023-09-02', '2033-09-01', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '09:16:am', 'September', '2023', '2023-Sep-18th'),
(393, 'Atakyi Quainoo Emmanuel', '1994-08-30', 'Single', 'Kumasi', 'N/A', '0501427531', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Public Servant', 'N/A', 'N/A', 'Mary Yeboah', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4361749', '2023-08-30', '2033-08-29', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '09:20:am', 'September', '2023', '2023-Sep-18th'),
(394, 'Linda Afua Attah ', '1975-04-27', 'Single', 'Accra', 'N/A', '024964 4359', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Social Worker', 'N/A', 'N/A', 'Comfort Dzigborli Biaku', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3609736', '2022-05-07', '2032-05-06', 'Yes', 'No', 'Yes', 'Registered', NULL, NULL, NULL, '09:51:am', 'September', '2023', '2023-Sep-18th'),
(395, 'Pamela Joy Mawuli Biaku', '1993-10-31', 'Single', 'Accra', 'N/A', '0547726008', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Procurement Officer', 'N/A', 'N/A', 'Esther Biaku', 'N/A', 'GA-495-1201', 'Yes', 'Ghana Government', 'G3746501', '2022-08-15', '2032-08-14', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '09:56:am', 'September', '2023', '2023-Sep-18th'),
(396, 'RYAN SELORM YAO ATTAH', '2008-08-28', 'Single', 'ACCRA', 'N/A', '0249644359', 'ACCRA', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', '0249644359', 'N/A', 'VOLTA REGION', 'N/A', 'LINDA ENYO AFUA ATTAH', 'N/A', 'GA-495-1201', 'Yes', 'GHANA GOVERNENT', 'G3607859', '2022-05-07', '2032-05-06', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '10:02:am', 'September', '2023', '2023-Sep-18th'),
(397, 'Emmanuel Arrmah', '1983-09-21', 'Married', 'Accra', 'N/A', '0243919106', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Mechanical Engineering', 'N/A', 'N/A', 'Sarah Aiza Adamu', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G2190719', '2018-10-08', '2023-10-07', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '11:14:am', 'September', '2023', '2023-Sep-19th'),
(398, 'Ernest Gyasi Appiah', '1992-12-08', 'Single', 'Kumasi', 'N/A', '0534814130', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Business Man', 'N/A', 'N/A', 'Juliana Boateng', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3996932', '2023-05-17', '2033-05-16', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '11:33:am', 'September', '2023', '2023-Sep-19th'),
(399, 'Rabi Akwasi Gyamfi', '1996-01-09', 'Single', 'Kumasi', 'N/A', '0266210920', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Airline Representative', 'N/A', 'N/A', 'Ama Dede', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G34861467', '2022-11-10', '2032-11-09', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '13:12:pm', 'September', '2023', '2023-Sep-20th'),
(400, 'Jason Emmanuel Elikem Kwesi', '2015-02-08', 'Single', 'Accra', 'N/A', '0204706724', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Student', 'N/A', 'N/A', 'Yvonne Ewurabena Fordjor', 'N/A', 'GW-0297-6214', 'Yes', 'Ghana Government', 'G3898330 ', '2022-11-25', '2027-11-24', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:14:am', 'September', '2023', '2023-Sep-22nd'),
(401, 'Fanny Naa Ameley ', '1979-08-23', 'Single', 'Accra', 'N/A', '0244825752', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Nora Ayorkor Tetteh', 'N/A', '2ND RIVER LANE CLOSE TETEGU', 'Yes', 'Ghana Government', 'G3576716', '2022-04-23', '2032-04-22', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:35:am', 'September', '2023', '2023-Sep-22nd'),
(402, 'Lord Nkansah', '1993-05-11', 'Single', 'Kumasi', 'N/A', '0541375829', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Vida Asantewaa', 'N/A', 'n/a', 'Yes', 'Ghana Government', 'G2784061', '2020-02-21', '2030-02-20', 'No', 'Yes', 'Yes', 'Registered', NULL, NULL, NULL, '08:39:am', 'September', '2023', '2023-Sep-22nd'),
(403, 'Richard Komla Klukpui', '1982-04-13', 'Married', 'Ashiaman', 'N/A', '0244847778', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Capentry', 'N/A', 'N/A', 'Beatrice Kwameyiboe', 'N/A', 'H/494A VALCOFLAT ASHIAMAN', 'Yes', 'Ghana Government', 'G4412790', '2023-09-18', '2033-09-17', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:45:am', 'September', '2023', '2023-Sep-22nd'),
(404, 'Bekoe Bridget Anima', '1998-12-20', 'Married', 'Koforidua', 'N/A', '0243547638', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Registered Midwife', 'N/A', 'N/A', 'Agyeiwaa Elizabeth', 'N/A', 'En-085-8496', 'Yes', 'Ghana Government', 'G2688283', '2019-11-12', '2029-11-12', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:50:am', 'September', '2023', '2023-Sep-22nd'),
(405, 'Prince Kwasi Nutifafa Attah', '1977-07-03', 'Single', 'Accra', 'N/A', '0244691905', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Social Worker', 'N/A', 'N/A', 'Comfort Biaku', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3607881', '2022-05-07', '2032-05-06', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '10:12:am', 'September', '2023', '2023-Sep-22nd'),
(406, 'Mary Donkor', '1993-11-27', 'Married', 'Kumasi', 'N/A', '0240992220', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Addai Mary', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3399400', '2021-10-13', '2031-10-12', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '12:36:pm', 'September', '2023', '2023-Sep-22nd'),
(407, 'Appiah Obed', '1988-10-31', 'Single', 'Adakwame', 'N/A', '0249507865', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Togolese', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Minerals Commission', 'N/A', 'N/A', 'Abigail Asantewaa', 'N/A', 'PLOT4,BLOCK B,NEW-NKETIA,KSI', 'Yes', 'Ghana Government', ' G3593569', '2022-04-30', '2032-04-29', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '12:44:pm', 'September', '2023', '2023-Sep-22nd'),
(408, 'Apraku Bernard Gyimah', '1998-12-16', 'Single', 'Barekese', 'N/A', '0546749491', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Student', 'N/A', 'N/A', 'Sabina Boakye', 'N/A', 'plot4 block b new-nketia', 'Yes', 'Ghana Government', 'G4158295', '2023-04-13', '2032-04-12', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '12:51:pm', 'September', '2023', '2023-Sep-22nd'),
(409, 'Maclean Katore Lankono', '1989-03-20', 'Single', 'Kumasi', 'N/A', '0549680709', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Mary Lankono', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'A0191022', '2023-04-14', '2023-04-13', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:21:am', 'September', '2023', '2023-Sep-25th'),
(410, 'Enoch Kobina Abotsi-Koomson', '1983-02-15', 'Married', 'Tema', 'N/A', '024666234', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Social Worker', 'N/A', 'N/A', 'Mariam Ama Koomson', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3553822', '2022-04-20', '2032-04-13', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:26:am', 'September', '2023', '2023-Sep-25th'),
(411, 'Franklin Addo', '1982-03-24', 'Married', 'Koforidua', 'N/A', '0249999955', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Bussimen', 'N/A', 'N/A', 'Janet Ofenah', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G437605', '2023-09-02', '2033-09-01', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:30:am', 'September', '2023', '2023-Sep-25th'),
(412, 'George Adu Amankwah', '1983-11-11', 'Married', 'Accra', 'N/A', '0506786603', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Electrical Engineer', 'N/A', 'N/A', 'Cecilia Tweneboah', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'A0232330', '2023-05-25', '2033-05-24', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:35:am', 'September', '2023', '2023-Sep-25th'),
(413, 'Frank Brobbey', '1992-07-08', 'Single', 'Tema', 'N/A', '0535172434', 'n/a', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Electrician', 'N/A', 'N/A', 'Mercy Adjei', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3125109', '2021-03-03', '2034-03-03', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:42:am', 'September', '2023', '2023-Sep-25th'),
(414, 'Emmanuel Asante', '1987-08-05', 'Single', 'Mankessim', 'N/A', '0549725773', 'n/a', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Mary Mensah', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G288227', '2020-07-01', '2030-06-30', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:14:am', 'September', '2023', '2023-Sep-25th'),
(415, 'Appiah Ernest', '1984-05-19', 'Married', 'Kumasi', 'N/A', '0244809847', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Transport Manager', 'N/A', 'N/A', 'Janet Owusu Ansah', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3501431', '2022-03-17', '2032-03-16', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:33:am', 'September', '2023', '2023-Sep-25th'),
(416, 'Haruna Ibrahim', '1981-09-01', 'Married', 'Accra', 'N/A', '0249598202', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Electrician', 'N/A', 'N/A', 'Akosua Antwiwaa', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G2923166', '2020-08-26', '2030-08-25', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:37:am', 'September', '2023', '2023-Sep-25th'),
(417, 'Korley Nelly Teiko', '1991-02-28', 'Married', 'Koforidua', 'N/A', '0269908790', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Registered ', 'N/A', 'N/A', 'Everlyn Dela Hevi', 'N/A', 'GN-085-8496', 'Yes', 'Ghana Government', 'A0194893', '2023-04-20', '2033-04-19', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:51:am', 'September', '2023', '2023-Sep-25th'),
(418, 'Rita Frimpomaa', '1995-02-25', 'Single', 'Obuasi', 'N/A', '0594753030', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Abena Anokyewaa', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G3900975', '2022-11-25', '2032-11-23', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '08:57:am', 'September', '2023', '2023-Sep-25th'),
(419, 'Akanjobapo Christiana', '1987-04-02', 'Single', 'Accra', 'N/A', '0542531990', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Receptionist', 'N/A', 'N/A', 'Elizabeth Aponkurugu', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4277680', '2023-07-13', '2033-07-12', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '09:03:am', 'September', '2023', '2023-Sep-25th');
INSERT INTO `clients` (`id`, `fullname`, `dob`, `marital`, `birthplace`, `region`, `telephone`, `city`, `email`, `skill`, `experience`, `children`, `nationality`, `country`, `spouse`, `spousedate`, `spousephone`, `occupation`, `spousecity`, `spouseregion`, `mother`, `father`, `address`, `passport`, `issueing_authority`, `passport_number`, `issue_date`, `expiry_date`, `pictures`, `medical`, `police_report`, `status`, `agent_name`, `agent_id`, `approval`, `time`, `month`, `year`, `date_created`) VALUES
(420, 'Isaac Danso Essel', '1997-05-23', 'Single', 'Kumasi', 'N/A', '0549154625', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teaching', 'N/A', 'N/A', 'Margaret Boakye', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4048082', '2023-02-09', '2033-02-08', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '12:20:pm', 'September', '2023', '2023-Sep-27th'),
(421, 'Isaac Danso Essel', '1997-05-23', 'Single', 'Kumasi', 'N/A', '0549154625', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Teaching', 'N/A', 'N/A', 'Margaret Boakye', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4048082', '2023-02-09', '2033-02-08', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '12:20:pm', 'September', '2023', '2023-Sep-27th'),
(422, 'EMMA NKERBAH OKRAN', '1989-12-07', 'Married', 'TEMA', 'N/A', '0243058228', 'ACCRA', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'MAGRET OKRAN', 'N/A', 'G13 ADJEI KOJO TEMA WEST', 'Yes', 'GHANA GOVERNENT', 'G3037996', '2020-12-11', '2030-02-10', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '05:26:am', 'October', '2023', '2023-Oct-2nd'),
(423, 'NANA YAW OBENG ASAMOAH', '2001-09-06', 'Single', 'ACCRA', 'N/A', '0248346413', 'ACCRA', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'TRADER', 'N/A', 'N/A', 'JULLIET OBENG ASAMOAH', 'N/A', 'GM 045 9320', 'Yes', 'GHANA GOVERNENT', 'G2375961', '2019-03-26', '2024-03-25', 'Yes', 'Yes', 'No', 'Registered', NULL, NULL, NULL, '05:59:am', 'October', '2023', '2023-Oct-2nd'),
(424, 'BERVLYN ISHA DENYIRA', '1982-10-06', 'Married', 'ACCRA', 'N/A', '0244989371', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', ' 0244989371', 'N/A', 'N/A', 'N/A', 'THERESAH DENKYIRA ', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNENT', 'G4136595', '2023-03-23', '2033-03-22', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:30:am', 'October', '2023', '2023-Oct-2nd'),
(425, 'Marfo Deborah ', '1992-03-16', 'Single', 'Accra', 'N/A', '0241630623', 'n/a', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Self Employed', 'N/A', 'N/A', 'Araba Bentiwa', 'N/A', 'H/NO18  EASTERN REGION', 'Yes', 'Ghana Government', 'G3483751', '2021-12-22', '2031-12-21', 'No', 'Yes', 'Yes', 'Registered', NULL, NULL, NULL, '06:37:am', 'October', '2023', '2023-Oct-2nd'),
(426, 'Juliana Okrah', '1977-01-09', 'Single', 'Accra', 'N/A', '0545996341 ', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Abena Boatemaa', 'N/A', 'N/A', 'No', 'Ghana Government', 'G4416397', '2023-09-16', '2033-09-15', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:42:am', 'October', '2023', '2023-Oct-2nd'),
(427, 'MAAME FOSUA OBENG ASAMOAH', '2004-08-17', 'Single', 'ACCRA', 'N/A', '0268902437', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'JULLIET OBENG ASAMOAH', 'N/A', 'GM0459320', 'Yes', 'GHANA GOVERNENT', 'G3889638', '2022-11-21', '2033-02-11', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:43:am', 'October', '2023', '2023-Oct-2nd'),
(428, 'Papa Yaw Bediako', '1991-12-14', 'Single', 'Accra', 'N/A', '0542443 941', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Business Man', 'N/A', 'N/A', 'Akua Danquah', 'N/A', 'Hill Apartment', 'Yes', 'Ghana Government', 'G2756297', '2020-01-31', '2030-01-30', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:51:am', 'October', '2023', '2023-Oct-2nd'),
(429, 'Belinda Aziz Banda', '1999-12-22', 'Single', 'Kumasi', 'N/A', '0246308070', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'Patience Ama Arhiaa', 'N/A', 'kronum', 'Yes', 'Ghana Government', 'G4304482', '2023-07-28', '2033-07-27', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:05:am', 'October', '2023', '2023-Oct-2nd'),
(430, 'AMIDU FAWZIA ', '1992-03-07', 'Single', 'KUMASI', 'N/A', '0599042666', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'TRADER', 'N/A', 'N/A', 'BUKARI AYISHETU', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNENT', 'A0124042', '2022-01-27', '2032-01-26', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:13:am', 'October', '2023', '2023-Oct-2nd'),
(431, 'Philomena Afram', '1980-01-14', 'Married', 'Accra', 'N/A', '0543685841', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Trader', 'N/A', 'N/A', 'Mary Serwaa Akoto', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4396480', '2023-09-08', '2033-09-08', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:24:am', 'October', '2023', '2023-Oct-2nd'),
(432, 'Gladys Dickson Edubeteh', '1987-12-27', 'Single', 'Winneba', 'N/A', '0534399472', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Caterer', 'N/A', 'N/A', 'Florence Dickson', 'N/A', 'Winneba', 'Yes', 'Ghana Government', 'G4396537', '2023-09-11', '2033-09-10', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:30:am', 'October', '2023', '2023-Oct-2nd'),
(433, 'Gladys Dickson Edubeteh', '1987-12-27', 'Single', 'Winneba', 'N/A', '0534399472', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Caterer', 'N/A', 'N/A', 'Florence Dickson', 'N/A', 'Winneba', 'Yes', 'Ghana Government', 'G4396537', '2023-09-11', '2033-09-10', 'Yes', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:30:am', 'October', '2023', '2023-Oct-2nd'),
(434, 'Felicia Kuzular', '1988-06-19', 'Single', 'Kumasi', 'N/A', '0248273350', 'N/A', '', 'Unskilled', 'N/A', 'N/A', 'Ghanaian', 'Canada', 'N/A', '0001-01-01', 'N/A', 'Transport Operator', 'N/A', 'N/A', 'Abena Buluso', 'N/A', 'N/A', 'Yes', 'Ghana Government', 'G4062761', '2023-02-14', '2033-02-13', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '07:37:am', 'October', '2023', '2023-Oct-2nd'),
(435, 'FRANCIS PRAH ', '1982-05-28', 'Married', 'TAKORADI ', 'N/A', '0242144326/ 0550364675', 'TAKORADI ', '', 'Professional,Driver', '10YEARS ', '10', 'Ghanaian', 'Canada', 'N/A', '1990-10-01', '02427981390 ', 'N/A', 'NA', 'N/A', 'ELIZABETH CUDJOE ', 'N/A ', 'PT 72 WEST ANAJI', 'Yes', 'PASSPORT OFFICE ', 'G4185306', '2023-05-17', '2033-05-16', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '09:29:am', 'October', '2023', '2023-Oct-2nd'),
(436, 'NURUDEEN IBRAHIM OWUSU', '1983-10-22', 'Married', 'CAPE COAST', 'CENTRAL', '0207219421', 'CAPE COAST', '', 'Artisan', '8', '5', 'Ghanaian', 'Canada', 'N/A', '1989-06-20', '0545609038', 'TEACHER ', 'CAPE COAST', 'CENTRAL', 'SARAH NURUDEEN', 'N/A ', 'P.O BOX 9A,KUMASI ', 'Yes', 'ACCRA', 'G3651968', '2022-06-06', '2032-06-05', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '11:23:am', 'October', '2023', '2023-Oct-2nd'),
(437, 'AGYAPONG GRACE', '2000-12-26', 'Single', 'MAMPONG ASHANTI', 'N/A', '0530996009', 'MAMPONG', '', 'Unskilled', '0', '0', 'Ghanaian', 'Canada', 'N/A', '1999-09-13', '0591935010', 'N/A', 'N/A', 'N/A', 'VIDA BOAMAH', 'N/A ', 'TANTRA HILLS', 'Yes', 'PASSPORT OFFICE ', 'G4335240', '2023-08-22', '2033-08-21', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '11:42:am', 'October', '2023', '2023-Oct-2nd'),
(438, 'CECILIA  PATRICK ATAPSARE', '1374-04-21', 'Married', 'TAMALE', 'N/A', '0244419689', 'TAMALE', '', 'Professional', '5', '2', 'Ghanaian', 'Canada', 'N/A', '1982-06-12', '0209095100', 'N/A', 'N/A', 'N/A', 'STELLA KOG', 'N/A ', 'NO.20 BOAME ST NORTH KANESHIE-ACCRA', 'Yes', 'PASSPORT OFFICE ', 'G4318459', '2023-08-12', '2033-08-11', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '12:07:pm', 'October', '2023', '2023-Oct-2nd'),
(439, 'JOHN KWASI GANVU', '1975-09-14', 'Married', 'ACCRA', 'N/A', '0500226052', 'ACCRA', '', 'Professional', '8', '2', 'Ghanaian', 'Canada', 'N/A', '1979-09-16', 'N/A', 'BUSINESSWOMAN', 'TESHIE NUNGUA ESTATE', 'N/A', 'REBECCA GANVU', 'N/A ', 'BOX 608 TESHIE NUNGUA ESTATE', 'Yes', 'PASSPORT OFFICE ', 'G3745711', '2022-08-15', '2032-08-14', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '12:33:pm', 'October', '2023', '2023-Oct-2nd'),
(440, 'CHRISTIAN NTOW YAW', '1985-05-06', 'Married', 'DORMAA-AHENKRO', 'N/A', '0243703129/0207406851', 'DORMAA-AHENKRO', '', 'Professional', '10YEARS ', '3', 'Ghanaian', 'Canada', 'N/A', '1996-02-14', 'N/A', 'N/A', 'N/A', 'N/A', 'JOSEPHINE ODURO', 'N/A', 'N/A', 'Yes', 'PASSPORT OFFICE', 'G4287190', '2023-07-18', '2033-07-17', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '13:03:pm', 'October', '2023', '2023-Oct-2nd'),
(441, 'ELIDA ABA DACOSTA', '1994-08-05', 'Single', 'SEFWI WIAWSO', 'N/A', '0241295132', 'TAKORADI ', '', 'Professional', '5', '1', 'Ghanaian', 'Canada', 'N/A', '1995-01-15', '0254655128', 'PETTY TRDER', 'N/A', 'N/A', 'DIANA ACQUAH', 'N/A ', 'BG 44 NEWSITE RD WG-0091-6182', 'Yes', 'PASSPORT OFFICE ', 'G2749594', '2020-01-09', '2030-01-08', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '15:21:pm', 'October', '2023', '2023-Oct-2nd'),
(442, 'YEBOAA JOYCE', '1975-03-01', 'Single', 'DORMAA-AHENKRO', 'N/A', '0542379363', 'kumasi', '', 'Professional', '5', '0', 'Ghanaian', 'Canada', 'N/A', '1983-11-22', '0542379363', 'N/A', 'Kasoa', 'N/A', 'FELICIA SERWAA', 'N/A ', 'O.T.3 DORMAA AHENEKRO B/A', 'Yes', 'PASSPORT OFFICE ', 'G4158886', '2023-04-13', '2033-04-12', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '15:40:pm', 'October', '2023', '2023-Oct-2nd'),
(443, 'ABIGAIL BONSRAH', '1987-10-05', 'Married', 'TAKORADI ', 'N/A', '0241531233', 'TAKORADI ', '', 'Professional', '5', '3', 'Ghanaian', 'Canada', 'N/A', '1995-11-08', '0543260017', 'TRADER', 'N/A', 'N/A', 'ADELAIDE ADOBEA', 'N/A ', 'HSE  NO_ A11 LOWCOST,AGONA SWODRU', 'Yes', 'PASSPORT OFFICE ', 'G3071503', '2021-01-25', '2031-01-24', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '16:49:pm', 'October', '2023', '2023-Oct-2nd'),
(444, 'EUGENE KWABENA AKOWUAH', '1983-04-12', 'Married', 'LARTEH', 'N/A', '0247537791/0277221248', 'LARTEH', '', 'Unskilled', '0', '3', 'Ghanaian', 'Canada', 'N/A', '1989-03-14', '0553039425', 'N/A', 'N/A', 'N/A', 'MERCY MARTINSON', 'N/A ', 'BR 47 BLUEROSE ESTATE', 'Yes', 'PASSPORT OFFICE ', 'G4076880', '2023-02-21', '2033-02-20', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '17:12:pm', 'October', '2023', '2023-Oct-2nd'),
(445, 'EUGENE KWABENA AKOWUAH', '1983-04-12', 'Married', 'LARTEH', 'N/A', '0247537791/0277221248', 'LARTEH', '', 'Unskilled', '0', '3', 'Ghanaian', 'Canada', 'N/A', '1989-03-14', '0553039425', 'N/A', 'N/A', 'N/A', 'MERCY MARTINSON', 'N/A ', 'BR 47 BLUEROSE ESTATE', 'Yes', 'PASSPORT OFFICE ', 'G4076880', '2023-02-21', '2033-02-20', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '17:12:pm', 'October', '2023', '2023-Oct-2nd'),
(446, 'EUGENE KWABENA AKOWUAH', '1983-04-12', 'Married', 'LARTEH', 'N/A', '0247537791/0277221248', 'LARTEH', '', 'Unskilled', '0', '3', 'Ghanaian', 'Canada', 'N/A', '1989-03-14', '0553039425', 'N/A', 'N/A', 'N/A', 'MERCY MARTINSON', 'N/A ', 'BR 47 BLUEROSE ESTATE', 'Yes', 'PASSPORT OFFICE ', 'G4076880', '2023-02-21', '2033-02-20', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '17:12:pm', 'October', '2023', '2023-Oct-2nd'),
(447, 'NATHANIEL ARYEETEY', '1986-04-27', 'Married', 'ACCRA', 'N/A', '0243733432/0534350377', 'ACCRA', '', 'Unskilled', '0', '1', 'Ghanaian', 'Canada', 'N/A', '1987-05-12', '0242811090', 'N/A', 'N/A', 'N/A', 'AGNES OKWABI', 'N/A ', 'D66317 NORTH SWALABA', 'Yes', 'PASSPORT OFFICE ', 'G3705759', '2022-07-06', '2032-07-05', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '17:38:pm', 'October', '2023', '2023-Oct-2nd'),
(448, 'NATHANIEL ARYEETEY', '1986-04-27', 'Married', 'ACCRA', 'N/A', '0243733432/0534350377', 'ACCRA', '', 'Unskilled', '0', '1', 'Ghanaian', 'Canada', 'N/A', '1987-05-12', '0242811090', 'N/A', 'N/A', 'N/A', 'AGNES OKWABI', 'N/A ', 'D66317 NORTH SWALABA', 'Yes', 'PASSPORT OFFICE ', 'G3705759', '2022-07-06', '2032-07-05', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '17:38:pm', 'October', '2023', '2023-Oct-2nd'),
(449, 'MARIAMA ADAMA-ISSAH', '1987-12-25', 'Single', 'ACCRA', 'N/A', '0544713483', 'ACCRA', '', 'Unskilled', '0', '2', 'Ghanaian', 'Canada', 'N/A', '1988-12-16', '0241907856', 'N/A', 'N/A', 'N/A', 'EFUA HAWA ISSAH ', 'N/A ', 'NK15 MANKESSIM,CENTRAL REGION', 'Yes', 'PASSPORT OFFICE ', 'G4271755', '2023-07-12', '2033-07-11', 'Yes', 'Yes', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '17:56:pm', 'October', '2023', '2023-Oct-2nd'),
(450, 'ZACHARIA OWUSU', '1990-07-16', 'Single', 'ACCRA', 'N/A', '0547144782', 'ACCRA', '', 'Unskilled', '0', '0', 'Ghanaian', 'Canada', 'N/A', '0194-03-22', '0277633223', 'N/A', 'N/A', 'N/A', 'DINA MALM', 'N/A ', '538 ABBOTSFORD ST.OFANKOR', 'Yes', 'PASSPORT OFFICE ', 'G4425291', '2023-09-27', '2033-09-26', 'Yes', 'No', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '05:08:am', 'October', '2023', '2023-Oct-3rd'),
(451, 'ISSAHAKU LATIFA', '1979-09-26', 'Single', 'KUMASI', 'N/A', '0244923274', 'KUMASI', '', 'Unskilled', '0', '0', 'Ghanaian', 'Canada', 'N/A', '1989-09-26', 'N/A', 'TRADER', 'N/A', 'N/A', 'FATI ALHASSAN', 'N/A ', 'EGXT 605', 'Yes', 'PASSPORT OFFICE ', 'G269452', '2019-10-15', '2029-10-14', 'Yes', 'No', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '05:24:am', 'October', '2023', '2023-Oct-3rd'),
(452, 'NANA BAAH BINEY', '1991-04-11', 'Married', 'ACCRA', 'N/A', '0240291338', 'ACCRA', '', 'Professional', '5', '0', 'Ghanaian', 'Canada', 'N/A', '1995-06-15', '0244582415', 'TRADER', 'N/A', 'N/A', 'JUDITH BINEY', 'N/A ', 'GE-288-7836', 'Yes', 'PASSPORT OFFICE ', 'G3828107', '2022-10-26', '2032-10-25', 'Yes', 'No', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '06:25:am', 'October', '2023', '2023-Oct-3rd'),
(453, 'EUNICE AKUA AMOAH-ADDO', '1997-10-01', 'Single', 'ACCRA', 'N/A', '0553676876/0501658522', 'ACCRA', '', 'Unskilled', '0', '0', 'Ghanaian', 'Canada', 'N/A', '1995-09-18', '0244067023', 'NURSE', 'N/A', 'N/A', 'JULIANA AMOAH', 'N/A ', 'GZ-016-2031', 'Yes', 'PASSPORT OFFICE ', 'G3051301', '2020-12-30', '2030-12-29', 'Yes', 'No', 'No', 'Registered', '', 'CMG-6561420233', 'Pending', '06:39:am', 'October', '2023', '2023-Oct-3rd'),
(454, 'TWENEBOAH DIANA', '1985-07-27', 'Married', 'ACCRA', 'N/A', '0540459262', 'ACCRA', '', 'Unskilled', '2YEARS', '0', 'Ghanaian', 'Romania', 'N/A', '0001-01-01', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Yes', 'GHANA GOVERNMENT', 'G2835972', '2020-03-31', '2030-03-30', 'No', 'No', 'No', 'Registered', NULL, NULL, NULL, '06:36:am', 'October', '2023', '2023-Oct-25th');

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `id` int(11) NOT NULL,
  `client` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL,
  `permit` varchar(100) NOT NULL,
  `visa` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `client` varchar(100) DEFAULT NULL,
  `passport_number` varchar(100) DEFAULT NULL,
  `file_name` longblob DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `client`, `passport_number`, `file_name`, `month`, `year`, `date_created`) VALUES
(72, 'THELMA NAA LAMILEY LAMPTEY ', 'A0000318 ', 0x576861747341707020496d61676520323032332d30322d323620617420362e35332e343720414d2e6a706567, 'June', '2023', '2023-Jun-17th');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `date_created` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `file_name`, `month`, `year`, `date_created`) VALUES
(6, 'New zealand - new ad Maples.jpg', 'May', '2023', '2023-May-6th'),
(7, 'Romania - Maples.jpg', 'May', '2023', '2023-May-6th'),
(8, 'Cambodia - new ad Maples.jpg', 'May', '2023', '2023-May-6th'),
(9, 'brochure 1 Maple.jpg', 'May', '2023', '2023-May-6th');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `agent_name` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `Identification_number` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `demand` varchar(100) DEFAULT NULL,
  `supplied` varchar(1000) DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `agent_name`, `company`, `Identification_number`, `country`, `demand`, `supplied`, `month`, `year`, `time`, `date_created`) VALUES
(22, 'SHERIF K. KUMI', 'ODIKRO TRAVEL CONSULT ', 'CMG-6561420233', 'Armenia', '40', NULL, 'April', '2023', '09:34:am', '2023-Apr-4th'),
(21, 'SHERIF K. KUMI', 'ODIKRO TRAVEL CONSULT ', 'CMG-6561420233', 'Romania', '30', NULL, 'April', '2023', '09:33:am', '2023-Apr-4th'),
(23, 'SHERIF K. KUMI', 'ODIKRO TRAVEL CONSULT ', 'CMG-6561420233', 'Singapore', '40', NULL, 'April', '2023', '09:34:am', '2023-Apr-4th'),
(24, 'SHERIF K. KUMI', 'ODIKRO TRAVEL CONSULT ', 'CMG-6561420233', 'New Zealand', '50', NULL, 'April', '2023', '09:35:am', '2023-Apr-4th'),
(25, 'SHERIF K. KUMI', 'ODIKRO TRAVEL CONSULT ', 'CMG-6561420233', 'Australia', '50', NULL, 'April', '2023', '09:35:am', '2023-Apr-4th'),
(26, 'AMA SIAW', 'AMA SIAW CONSULT', 'CMG-734220233', 'Romania', '20', NULL, 'April', '2023', '09:39:am', '2023-Apr-4th'),
(27, 'AMA SIAW', 'AMA SIAW CONSULT', 'CMG-734220233', 'Armenia', '20', NULL, 'April', '2023', '09:40:am', '2023-Apr-4th'),
(28, 'AMA SIAW', 'AMA SIAW CONSULT', 'CMG-734220233', 'Singapore', '50', NULL, 'April', '2023', '09:40:am', '2023-Apr-4th'),
(29, 'AMA SIAW', 'AMA SIAW CONSULT', 'CMG-734220233', 'New Zealand', '60', NULL, 'April', '2023', '09:41:am', '2023-Apr-4th'),
(30, 'AMA SIAW', 'AMA SIAW CONSULT', 'CMG-734220233', 'Australia', '50', NULL, 'April', '2023', '09:42:am', '2023-Apr-4th'),
(31, 'FAUSTINA OFORIWAA MACCARTHY', 'MAPLES BINA CONSULT', 'CMG-6186520233', 'Romania', '10', NULL, 'April', '2023', '09:43:am', '2023-Apr-4th'),
(32, 'FAUSTINA OFORIWAA MACCARTHY', 'MAPLES BINA CONSULT', 'CMG-6186520233', 'Armenia', '10', NULL, 'April', '2023', '09:44:am', '2023-Apr-4th'),
(33, 'FAUSTINA OFORIWAA MACCARTHY', 'MAPLES BINA CONSULT', 'CMG-6186520233', 'Singapore', '20', NULL, 'April', '2023', '09:44:am', '2023-Apr-4th'),
(34, 'FAUSTINA OFORIWAA MACCARTHY', 'MAPLES BINA CONSULT', 'CMG-6186520233', 'New Zealand', '20', NULL, 'April', '2023', '09:46:am', '2023-Apr-4th'),
(35, 'FAUSTINA OFORIWAA MACCARTHY', 'MAPLES BINA CONSULT', 'CMG-6186520233', 'Australia', '20', NULL, 'April', '2023', '09:50:am', '2023-Apr-4th');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(100) NOT NULL,
  `client` varchar(100) NOT NULL,
  `passport_number` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `payfor` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `client`, `passport_number`, `telephone`, `destination`, `payfor`, `amount`, `currency`, `payment_mode`, `reference`, `month`, `year`, `time`, `date_created`) VALUES
(74, 'KWAME ESSEL', 'Walk-in-client', '0244306919', 'Australia', 'Form Fee', '200', 'Â¢', 'Cash', 'esselkwame40@gmail.com', 'March', '2023', '06:39:am', '2023-Mar-8th'),
(73, 'KWAME ESSEL', 'Walk-in-client', '0244306919', 'Australia', 'Documentations', '13000', 'Â¢', 'Cash', 'esselkwame40@gmail.com', 'March', '2023', '06:37:am', '2023-Mar-8th'),
(79, 'YAKUBU ABDUL-KADIR', 'CMG-6186520233', '0500800750', 'Singapore', 'Documentations', '13200', 'Â¢', 'Cash', 'oforiwaamaccarthey@gmailo.com', 'March', '2023', '07:22:am', '2023-Mar-30th'),
(80, 'LAWRENCIA AMERLEY AMAH', 'Walk-in-client', '0279548213', 'Canada', 'Documentations', '15000', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '04:33:am', '2023-Apr-6th'),
(81, 'ODURO PORTIA', 'Walk-in-client', '0279548213', 'Canada', 'Documentations', '1500', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '04:34:am', '2023-Apr-6th'),
(98, 'DZIEDZORM TSINIGO', 'Walk-in-client', '0279548213', 'Australia', 'Australia  documentation', '6000', 'Â¢', 'Cash', 'none@none.com', 'April', '2023', '09:11:am', '2023-Apr-18th'),
(83, 'BARISON ETHEL SANDIEBA', 'Walk-in-client', '0279548213', 'Canada', 'Documentations', '15000', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '04:38:am', '2023-Apr-6th'),
(84, 'JEFFERY FRANK HUGES', 'Walk-in-client', '0279548213', 'Australia', 'Documentations', '6000', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '05:13:am', '2023-Apr-6th'),
(85, 'RICHLOVE JENNIFER JANICE', 'Walk-in-client', '0279548213', 'Canada', 'Documentations', '20000', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '05:15:am', '2023-Apr-6th'),
(86, 'DAVID DOMPREH', 'Walk-in-client', '0279548213', 'Canada', 'Documentations', '24800', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '05:17:am', '2023-Apr-6th'),
(87, 'DIAMEH SMITH EUGENE', 'Walk-in-client', '0279548213', 'Canada', 'Documentations', '1000', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '05:19:am', '2023-Apr-6th'),
(88, 'YAKUBU ABDUL-KADIR', 'Walk-in-client', '0279548213', 'Singapore', 'Documentations', '14200', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '05:20:am', '2023-Apr-6th'),
(89, 'EMMANUEL ADUSEI POKU', 'Walk-in-client', '0279548213', 'Canada', 'Documentations', '10000', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '05:49:am', '2023-Apr-6th'),
(90, 'RESTEL GYADU SARFO', 'Walk-in-client', '0279548213', 'Singapore', 'Documentations', '15000', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '05:50:am', '2023-Apr-6th'),
(91, 'ROSE ESI AKORFUL', 'Walk-in-client', '0279548213', 'New Zealand', 'Documentations', '4000', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '05:52:am', '2023-Apr-6th'),
(92, 'LAWRENCIA AMERLEY AMAH', 'Walk-in-client', '0279548213', 'Canada', 'Documentations', '19500', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '05:53:am', '2023-Apr-6th'),
(93, 'BOATENG WILLIAMS', 'Walk-in-client', '0279548213', 'Canada', 'Documentations', '19500', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '05:53:am', '2023-Apr-6th'),
(94, 'ACQUAH ALVIN', 'CMG-6561420233', '0553417429', 'Romania', 'Documentations', '2500', 'Â¢', 'Cash', 'acquavin@gmail.com', 'April', '2023', '14:05:pm', '2023-Apr-11th'),
(95, 'MOHAMMED SARI', 'CMG-6561420233', '054482714', 'Australia', 'Visa processing', '2000', '$', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '08:12:am', '2023-Apr-14th'),
(96, 'LAWRENCIA AMERLEY AMAH', 'Walk-in-client', '0279548213', 'Canada', 'canada documentation', '15000', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '09:09:am', '2023-Apr-18th'),
(97, 'ODURO PORTIA', 'Walk-in-client', '0279548213', 'Canada', 'Canada documentation', '15000', 'Â¢', 'Cash', 'office@centralmigrationgrace.com', 'April', '2023', '09:10:am', '2023-Apr-18th'),
(99, 'WAHAB DANSO BAOTENG', 'Walk-in-client', '0279548213', 'New Zealand', 'New Zealand via process', '48400', 'Â¢', 'Cash', 'none@none.com', 'April', '2023', '09:14:am', '2023-Apr-18th'),
(100, 'BINEY GLORITA', 'Walk-in-client', '0279548213', 'Canada', 'Canada documentation', '10000', 'Â¢', 'Cash', 'none@none.com', 'April', '2023', '09:17:am', '2023-Apr-18th'),
(101, 'BINEY GLORITA', 'Walk-in-client', '0279548213', 'Canada', 'Canada documentation', '10000', 'Â¢', 'Cash', 'none@none.com', 'April', '2023', '09:17:am', '2023-Apr-18th'),
(102, 'SARFO LYDIA', 'Walk-in-client', '0279548213', 'Canada', 'Canada documentation', '10000', 'Â¢', 'Cash', 'none@none.com', 'April', '2023', '09:18:am', '2023-Apr-18th'),
(103, 'DIAMEH SMITH EUGENE', 'Walk-in-client', '0279548213', 'Canada', 'Canada documentation', '10000', 'Â¢', 'Cash', 'none@none.com', 'April', '2023', '09:20:am', '2023-Apr-18th'),
(104, 'ADJETEY STEPHEN', 'Walk-in-client', '0279548213', 'Canada', 'Canada documentation', '10000', 'Â¢', 'Cash', 'none@none.com', 'April', '2023', '09:21:am', '2023-Apr-18th'),
(105, 'NAS QUARTEY ', 'Walk-in-client', '0243682128', 'Australia', 'Australia work & Pay', '15000', 'Â¢', 'Cash', 'nasquartey2@gmail.com', 'April', '2023', '06:36:am', '2023-Apr-20th'),
(106, 'YEBOAH KWADWO', 'Walk-in-client', '0279548213', 'New Zealand', 'New Zealand via process', '20000', 'Â¢', 'Cash', 'none@none.com', 'April', '2023', '08:50:am', '2023-Apr-25th'),
(107, 'TWENEBOAH DIANA', 'Walk-in-client', '0540459262', 'Romania', 'Romania Down payment', '2500', 'Â£', 'Cash', 'nanakweku608@gmail.com', 'October', '2023', '06:38:am', '2023-Oct-25th');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(100) NOT NULL,
  `client` varchar(100) NOT NULL,
  `passport_number` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `flight_number` varchar(100) NOT NULL,
  `confirmation` varchar(100) NOT NULL,
  `departure_date` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `client`, `passport_number`, `destination`, `flight_number`, `confirmation`, `departure_date`, `month`, `year`, `date_created`) VALUES
(16, 'MOSES KABIR', ' G2439379', 'Hungary', 'EGYPT AIR - MS882', 'Yes', '2023-10-28', 'October', '2023', '2023-Oct-26th');

-- --------------------------------------------------------

--
-- Table structure for table `timeline`
--

CREATE TABLE `timeline` (
  `id` int(100) NOT NULL,
  `client` varchar(100) NOT NULL,
  `passport_number` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `tittle` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timeline`
--

INSERT INTO `timeline` (`id`, `client`, `passport_number`, `destination`, `tittle`, `message`, `date`, `time`, `month`, `year`) VALUES
(219, 'REGINA AYAMGA', '', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-5th', '08:19:am', 'July', '2023'),
(218, 'GYAN STEPHEN YAWSON', '', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-3rd', '10:39:am', 'July', '2023'),
(55, 'RICHMOND SMITH', 'G3584746', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-7th', '07:26:am', 'March', '2023'),
(56, 'FRANCIS MARTIN BAFFOE', 'G3046236', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-7th', '07:42:am', 'March', '2023'),
(57, 'MOSES KABIR', 'G2439379', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-7th', '11:46:am', 'March', '2023'),
(58, 'SAMUEL DANSO ANKRAH', 'A0088030', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-7th', '11:54:am', 'March', '2023'),
(59, 'FREEMAN DOGBE', 'G3673483', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-7th', '12:06:pm', 'March', '2023'),
(60, 'ALFRED MENSAH', 'G3934075', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-7th', '12:13:pm', 'March', '2023'),
(61, 'FRAMCHESCA NANA OWUSU LARBI', 'G2413168', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '05:04:am', 'March', '2023'),
(217, 'GYAN STEPHEN YAWSON', '', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-3rd', '10:33:am', 'July', '2023'),
(63, 'KWAKU AMANKWAH ANIAMPAM', 'G2458482', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '05:14:am', 'March', '2023'),
(216, 'IRENE LARBIE', 'G3579146', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-22nd', '10:13:am', 'June', '2023'),
(65, 'KWAME ESSEL', 'A0069686', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '06:36:am', 'March', '2023'),
(66, 'TESTIMONY GODSWAY ADZAFI', 'G3531670', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '10:49:am', 'March', '2023'),
(67, 'JUSTICE KORANKYE AMOAKO', 'G3216761', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '11:07:am', 'March', '2023'),
(68, 'CHAME BENICE', 'G3604340', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '11:15:am', 'March', '2023'),
(69, 'ERIC ARKSON', 'G2341166', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '11:23:am', 'March', '2023'),
(70, 'EMMANUEL AGYEI', 'G2461751', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '11:57:am', 'March', '2023'),
(71, 'GETRUDE DERY', 'G3602328', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '12:11:pm', 'March', '2023'),
(72, 'MOSES KWAKU NUGLOZE', 'G3839769', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '12:18:pm', 'March', '2023'),
(73, 'EFFAH COSMOS+', 'G2399108', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '12:24:pm', 'March', '2023'),
(74, 'KWAME ESSEL ', 'A0069686 ', 'Australia', 'ATTENDED TO EMBASSY', 'Client has gone to the embassy for biometrics , now waiting for visa decision', '2023-Mar-8th', '12:29:pm', 'March', '2023'),
(75, 'RICHARD OWUSU-ANSAH', 'G3805969', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '13:14:pm', 'March', '2023'),
(76, 'AWITI EVANS', 'G2541563', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '13:19:pm', 'March', '2023'),
(77, 'EDMOND ALEXANDER AMPENE', 'G3477148', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '13:23:pm', 'March', '2023'),
(78, 'PRINCE ADU ACHEAMPONG', 'G3501681', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '13:30:pm', 'March', '2023'),
(79, 'CHARLES KENYENSO', 'G3067183', 'Malta', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-8th', '13:34:pm', 'March', '2023'),
(80, 'ISAAC ASATINGA', 'G2753427', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-9th', '12:16:pm', 'March', '2023'),
(81, 'MENSAH ROBBERT', 'G2928963', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-9th', '12:23:pm', 'March', '2023'),
(215, 'ASRAH LAWRENCE', 'G3965557', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-22nd', '09:37:am', 'June', '2023'),
(83, 'AGBLOE KWEKU ONESIMUS', 'G3754093', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '09:55:am', 'March', '2023'),
(84, 'ASHONG ERNEST', 'G4015249', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '10:02:am', 'March', '2023'),
(85, 'EMMANUEL ASIAMAH', 'G3600132', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '10:09:am', 'March', '2023'),
(86, 'OSEI MENSAH', 'G3841300', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '10:14:am', 'March', '2023'),
(88, 'STEPHEN AKAINYAH ARMACHIE', 'G3649615', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '10:29:am', 'March', '2023'),
(89, 'JONATHAN KOFI MENSAH', 'G4103882', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '10:33:am', 'March', '2023'),
(90, 'ABIGAIL MIREKU', 'G3354730', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '11:40:am', 'March', '2023'),
(91, 'LAWRENCIA AMERLEY AMAH', 'G4077818', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '11:44:am', 'March', '2023'),
(92, 'CULES HECTOR SEKYI', 'G4076274', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '11:48:am', 'March', '2023'),
(93, 'YAW DADI', 'G4079975', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '11:53:am', 'March', '2023'),
(94, 'ABIGAIL GYAMPO NYAMEKYE BOAMAH', 'G4070089', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '11:59:am', 'March', '2023'),
(95, 'PRINCE AWUKU', 'G2205099', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '12:03:pm', 'March', '2023'),
(96, 'ALEX AYIVIE', 'G4020325', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '12:07:pm', 'March', '2023'),
(97, 'ATTAM LOUIS', 'G3591004', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '12:11:pm', 'March', '2023'),
(98, 'HAMDU YUSIF', 'G2719628', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '12:15:pm', 'March', '2023'),
(99, 'JOHN KOJO SAM', 'G2504971', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '12:20:pm', 'March', '2023'),
(100, 'DIAMEH SMITH EUGENE', 'A0172236', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '12:57:pm', 'March', '2023'),
(101, 'ASANTE KWESI', 'G3130943', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-13th', '13:02:pm', 'March', '2023'),
(102, 'ODURO PORTIA', 'G4114518', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-14th', '08:41:am', 'March', '2023'),
(103, 'DZIEDZORM', 'A0003342', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-14th', '08:53:am', 'March', '2023'),
(104, 'EMMANUEL ARMAH MENSAH', 'G2828764', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-14th', '08:57:am', 'March', '2023'),
(105, 'NAMBAKI HAKIM', 'G3629889', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-14th', '09:05:am', 'March', '2023'),
(106, 'DZIEDZORM TSINIGO ', 'A0003342 ', 'Australia', 'ATTENDED TO EMBASSY', 'HAS SUBMITTED TO THE EMBASSY', '2023-Mar-14th', '09:15:am', 'March', '2023'),
(214, 'EMMANUELLA PADI', 'G2322161', 'Portugal', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-22nd', '09:19:am', 'June', '2023'),
(108, 'BARISON ETHEL SANDIEBA', 'G3617239', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-15th', '05:45:am', 'March', '2023'),
(109, 'SAMUEL RICHARD NANA BAIDOO', 'G3820405', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-15th', '05:57:am', 'March', '2023'),
(110, 'NYAMADOR VINCENMT TORGA', 'G4004200', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-15th', '06:36:am', 'March', '2023'),
(111, 'DEXTER EMMANUEL ', 'G2907579', 'Canada,Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-15th', '06:44:am', 'March', '2023'),
(112, 'BRIGHT OBENG BENTUM', 'G2417372', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-15th', '07:37:am', 'March', '2023'),
(113, 'ISAAC ADU BREMPONG', 'A0127111', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-15th', '07:41:am', 'March', '2023'),
(213, 'EMMANUELLA PADI', 'G2322161', 'Portugal', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-22nd', '09:19:am', 'June', '2023'),
(115, 'SAMUEL ASARE-DANKWAH', 'G3333147', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-15th', '07:52:am', 'March', '2023'),
(212, 'DZOGBEWU STEPHEN ANKU', 'A0172200', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-22nd', '08:52:am', 'June', '2023'),
(117, 'STEPHEN JAKE-BOATENG WHYTE', 'G1980467', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-15th', '13:04:pm', 'March', '2023'),
(118, 'FRANCISCA BEMAH TAKYIWAA', 'G2641786', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-15th', '13:19:pm', 'March', '2023'),
(211, 'FREDERICK ACHEAMPONG', 'G3554537', 'Portugal', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-22nd', '08:31:am', 'June', '2023'),
(120, 'NKETIA SIMON', 'G3450316', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-15th', '13:41:pm', 'March', '2023'),
(121, 'RICHLOVE JENNIFER JANICE', 'G3865564', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-20th', '11:28:am', 'March', '2023'),
(122, 'JEFFERY FRANK HUGES', 'G4108878', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-20th', '12:37:pm', 'March', '2023'),
(123, 'ALICE KOUFIE', 'G4082872', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-20th', '12:44:pm', 'March', '2023'),
(124, 'JEFFERY ZAK TETTEH', 'G2857559', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-20th', '12:59:pm', 'March', '2023'),
(125, 'DERRICK CUJO HANS', 'G3274978', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-20th', '13:08:pm', 'March', '2023'),
(126, 'ERIC DUODU', 'G4037901', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-20th', '13:12:pm', 'March', '2023'),
(127, 'DANIEL MENSAH KITSON', 'A0071248', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-20th', '13:16:pm', 'March', '2023'),
(128, 'ANTWI GABRIEL', 'G3648586', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-21st', '05:49:am', 'March', '2023'),
(129, 'OWUSU FRIMPONG', 'G2652183', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-21st', '05:55:am', 'March', '2023'),
(130, 'SALAM ISAAKA', 'G3712792', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-21st', '06:01:am', 'March', '2023'),
(210, 'BISMARK NCHIEN JALODO', 'G3285412', 'Portugal', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-22nd', '08:17:am', 'June', '2023'),
(132, 'GYAMFI GIDEONQ', 'G3111303', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-21st', '06:18:am', 'March', '2023'),
(133, 'ASSA GODFRED TAKYI', 'G3628628', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-21st', '06:22:am', 'March', '2023'),
(134, 'YAW ASUBONTENG', 'G3510026', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-21st', '06:25:am', 'March', '2023'),
(135, 'BOAMAH FAUSTINA', 'A0080464', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-21st', '07:24:am', 'March', '2023'),
(136, 'DAVID DOMPREH', 'G2787362', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-27th', '10:07:am', 'March', '2023'),
(137, 'YAKUBU ABDUL-KADIR', 'G3379618', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Mar-30th', '07:15:am', 'March', '2023'),
(138, 'RESTEL GYADU SARFO', 'G2615208', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-4th', '08:28:am', 'April', '2023'),
(139, 'EMMANUEL ADUSEI POKU', 'G2981522', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-4th', '08:47:am', 'April', '2023'),
(140, 'ROSE ESI AKORFUL', 'A0147762', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-4th', '09:03:am', 'April', '2023'),
(141, 'TARIQ AMARH AKUETTEH', 'G2368645', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-4th', '09:18:am', 'April', '2023'),
(142, 'BOATENG WILLIAMS', 'G2486623', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-5th', '09:51:am', 'April', '2023'),
(143, 'AVORNU WILLIAM', 'G3994859', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-11th', '11:05:am', 'April', '2023'),
(144, 'DAVUD ADJEIWODA', 'G3699528', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-11th', '11:12:am', 'April', '2023'),
(145, 'ALHASSAN MANAF', 'G3711156', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-11th', '11:35:am', 'April', '2023'),
(146, 'ABIGAIL ADOM AMPONSAH', 'G2752682', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-11th', '11:45:am', 'April', '2023'),
(205, 'ANIAPAM KWAME ASABRE', '', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-21st', '12:24:pm', 'June', '2023'),
(148, 'AMOS ASAMOAH KYERE', 'A0124967', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-14th', '07:36:am', 'April', '2023'),
(149, 'MOHAMMED SARI', 'G2491286', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-14th', '07:50:am', 'April', '2023'),
(150, 'FLORENCE ANDOH', 'G3123297', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-14th', '07:55:am', 'April', '2023'),
(151, 'DONKOR SETH', 'G3758190', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-14th', '08:39:am', 'April', '2023'),
(152, 'BERLINDA ARTHUR', 'G3136438', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-17th', '08:48:am', 'April', '2023'),
(153, 'ISAAC BOADU', 'G3051318', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-17th', '08:53:am', 'April', '2023'),
(154, 'JENNIFER OPARE DANQUAH', 'G3321330', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-17th', '09:04:am', 'April', '2023'),
(155, 'GBENOR AARON TEYE MENSAH', 'G2505694', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-17th', '09:14:am', 'April', '2023'),
(209, 'ANIAPAM KWAME ASABRE', '', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-21st', '13:04:pm', 'June', '2023'),
(157, 'NII DANIEL OKPOTI OKERCHIRI', 'G2397619', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '06:18:am', 'April', '2023'),
(208, 'ANIAPAM KWAME ASABRE', '', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-21st', '13:02:pm', 'June', '2023'),
(207, 'RICHMOND SMITH', '', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-21st', '12:56:pm', 'June', '2023'),
(160, 'OTABIL EMMANUEL YAW', 'A0069068', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '06:31:am', 'April', '2023'),
(161, 'KYEI STEPHEN', 'A0185228', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '06:34:am', 'April', '2023'),
(206, 'ANIAPAM KWAME ASABRE', '', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-21st', '12:55:pm', 'June', '2023'),
(163, 'ANIAPAM KWAME ASABRE', 'G4038416', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '06:47:am', 'April', '2023'),
(204, 'Asante Micheal', '', 'USA', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-21st', '08:48:am', 'June', '2023'),
(165, 'DORCAS MENSAH', 'G3770328', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '06:59:am', 'April', '2023'),
(166, 'GEORGE', 'G4030620', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '07:09:am', 'April', '2023'),
(167, 'JUSTICE SMART ABLETOR', 'G3939838', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '07:16:am', 'April', '2023'),
(168, 'SARFO LYDIA', 'G4042852', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '07:20:am', 'April', '2023'),
(169, 'BINEY GLORITA', 'G2303653', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '07:25:am', 'April', '2023'),
(170, 'ADJETEY STEPHEN', 'G3515764', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '07:47:am', 'April', '2023'),
(171, 'EMMANUEL KORLETEY MENSAH', 'G2626452', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '07:52:am', 'April', '2023'),
(172, 'JAMES OBIL', 'G3469084', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '08:35:am', 'April', '2023'),
(173, 'WAHAB DANSO BAOTENG', 'G3547762', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '08:39:am', 'April', '2023'),
(174, 'ALBERT OHENE OKANTA', 'A0127386', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '08:42:am', 'April', '2023'),
(175, 'THELMA NAA LAMILEY LAMPTEY', 'A0000318', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '09:02:am', 'April', '2023'),
(176, 'ABUAKWAH ENOCK BAAH', 'G296048', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-18th', '09:07:am', 'April', '2023'),
(177, 'NAS QUARTEY ', 'G2758872', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-20th', '06:33:am', 'April', '2023'),
(178, 'YEBOAH KWADWO', 'A0183877', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-25th', '08:44:am', 'April', '2023'),
(179, 'DANIEL OFORI', 'G2730122', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-25th', '08:54:am', 'April', '2023'),
(180, 'DUNCAN KWAME AWUKU', 'G2880469', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-25th', '09:10:am', 'April', '2023'),
(181, 'OWUSU MENSAH KWEKU OBENG', 'G3727147', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Apr-25th', '09:15:am', 'April', '2023'),
(182, 'SANSAH PAUL AKWASI', 'A0119665', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-8th', '10:11:am', 'May', '2023'),
(183, 'JOHN KWAME EKLU', 'A0038519', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-8th', '10:24:am', 'May', '2023'),
(184, 'OPATA RICHARD NARH', 'G2795933', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-8th', '10:28:am', 'May', '2023'),
(185, 'ADJANOR EMMANUEL', 'G3734831', 'Cambodia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-8th', '10:32:am', 'May', '2023'),
(186, 'COMFORT AMFOH', 'G2197049', 'Singapore', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-8th', '10:38:am', 'May', '2023'),
(187, 'BENJAMIN WIAFE ANSONG', 'G3832103', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-8th', '10:45:am', 'May', '2023'),
(188, 'LUAD EDMOND HUGES', 'G4108877', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-9th', '07:22:am', 'May', '2023'),
(189, 'OBENG PEPRAH PAMELA', 'G3018334', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-9th', '07:34:am', 'May', '2023'),
(190, 'BENJAMIN KWAKU LARBI ASOMANI', 'G3282014', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-9th', '07:42:am', 'May', '2023'),
(191, 'EMMANUEL ACQUAH', 'A0166051', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-9th', '07:49:am', 'May', '2023'),
(192, 'EMMANUEL DAPAAH', 'G3645670', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-9th', '07:54:am', 'May', '2023'),
(193, 'SANUEL KOJO KARIKARI', 'G3217300', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-9th', '08:29:am', 'May', '2023'),
(194, 'HAPPY APREKU', 'G3920693', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-9th', '08:44:am', 'May', '2023'),
(195, 'GYAMFI ISAAC OWUSU', 'G3487469', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-9th', '08:56:am', 'May', '2023'),
(196, 'BINDIFRIM YAYANYI EMMANUEL', 'G2664164', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-May-9th', '10:21:am', 'May', '2023'),
(203, 'Asante Micheal', '', 'USA', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-21st', '08:35:am', 'June', '2023'),
(198, 'VERA NANA EFFAH', 'AO222552', 'Czech Republic', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-15th', '09:24:am', 'June', '2023'),
(199, 'SHERTA AFI AGINI', 'G2979370', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-15th', '10:08:am', 'June', '2023'),
(200, 'PAUL SHIBO ALOLIGA', 'G3014641', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-15th', '10:36:am', 'June', '2023'),
(201, 'ROBERT EKOW QUANSAH', 'G2882343', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-15th', '10:57:am', 'June', '2023'),
(202, 'BENJAMINE KWASI OFORI DEBRAH', 'G2379845', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jun-15th', '11:11:am', 'June', '2023'),
(220, '', '', '', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-10th', '11:14:am', 'July', '2023'),
(221, '', '', '', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-11th', '12:55:pm', 'July', '2023'),
(222, 'DIANA GYAWU', 'G0812042', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-19th', '14:31:pm', 'July', '2023'),
(223, 'ERIC OTOO', 'A0078296', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-21st', '15:05:pm', 'July', '2023'),
(224, '  Agyeman Duah Yeboah', 'G2984865', 'Bahamas', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-24th', '07:58:am', 'July', '2023'),
(225, 'Ofosu Theophilus Asiamah', 'A0181706', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-24th', '09:04:am', 'July', '2023'),
(226, 'Boateng John Paul', 'a0089383', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-24th', '09:16:am', 'July', '2023'),
(227, 'Tracy Adinam Tuglo', 'A0260983', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-24th', '09:37:am', 'July', '2023'),
(228, 'ADAMTEY RICHMOND KWAME', 'A01912276', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-24th', '09:47:am', 'July', '2023'),
(229, 'Mary Elorm Hode', 'G4267779', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-24th', '10:54:am', 'July', '2023'),
(230, 'Adamtey Richmond Koranteng', 'A0191276', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-24th', '12:43:pm', 'July', '2023'),
(231, 'Michael Caesar junior', 'A0197566', 'Norway', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-24th', '14:32:pm', 'July', '2023'),
(232, 'Joyce Ashiokai Nortey', 'G4150691', 'Norway', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-24th', '14:38:pm', 'July', '2023'),
(233, 'Richmond Osei', 'G4261683', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '07:33:am', 'July', '2023'),
(234, 'Zore  Belinda Asibi ', 'A0027549', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '07:47:am', 'July', '2023'),
(235, 'Samuel Kyeremeh', 'G4110483', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '08:00:am', 'July', '2023'),
(236, 'Solomon Dwamena', 'G3415387', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '10:41:am', 'July', '2023'),
(237, 'Mary Opoku', 'A0191031', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '10:51:am', 'July', '2023'),
(238, 'Emmanuel Osei Mensah', 'A0191036', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '10:59:am', 'July', '2023'),
(239, 'Adjorlolo Daniel Lumour', 'G4251749', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '11:11:am', 'July', '2023'),
(240, 'OTABIL EMMANUEL YAW ', 'A0069068 ', 'Germany', 'Canada Approval', 'We are hoping to get approval very soon', '2023-Jul-25th', '12:34:pm', 'July', '2023'),
(241, 'Vincent Aboagye Antwi', 'G2780976', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:11:pm', 'July', '2023'),
(242, 'Benjamin Danso Yeboah', 'G4249879', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:24:pm', 'July', '2023'),
(243, 'Nartey  Francis', 'G2967472', 'Romania', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:25:pm', 'July', '2023'),
(244, 'Ellen Ganu', 'G3505750', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:33:pm', 'July', '2023'),
(245, 'Ebli Prince', 'G3287713', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:38:pm', 'July', '2023'),
(246, 'Ebli Prince', 'G3287713', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:38:pm', 'July', '2023'),
(247, 'Samuel Lartey Mingle', 'A0045953', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:39:pm', 'July', '2023'),
(248, 'Duada Gordon', 'G4229926', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:46:pm', 'July', '2023'),
(249, 'AMPONSAH ALBERTHA ANIWAA', 'G3942737', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:49:pm', 'July', '2023'),
(250, 'Emmanuel Peprah Boateng', 'G2759942', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:53:pm', 'July', '2023'),
(251, 'COLLINS AHIADAVOR', 'G2519834', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:58:pm', 'July', '2023'),
(252, 'COLLINS AHIADAVOR', 'G2519834', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-25th', '13:58:pm', 'July', '2023'),
(253, 'Obro Faith Kwabena', 'A0134939', 'Romania', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '05:53:am', 'July', '2023'),
(254, 'Emmanuel Owiredu Bio', 'G4289721', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '06:02:am', 'July', '2023'),
(255, 'Joseph Mprah Ghandy', 'G3572443', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '06:20:am', 'July', '2023'),
(256, 'ABMUBAKARI HARUNA', 'A0073839', 'Norway', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '08:23:am', 'July', '2023'),
(257, 'Stella Thompson', 'G3507342', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '11:57:am', 'July', '2023'),
(258, 'Abubakar Mohammed', 'G3833039', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:04:pm', 'July', '2023'),
(259, 'ALLOTEY ANAS KWAME', 'G2383561', 'United States', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:05:pm', 'July', '2023'),
(260, 'Samuel Andoh', 'G2485033', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:12:pm', 'July', '2023'),
(261, 'Samuel Andoh', 'G2485033', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:12:pm', 'July', '2023'),
(262, 'ADJETEY STEPHEN', 'G2-121-1356', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:14:pm', 'July', '2023'),
(263, 'Jeffery Opoku', 'G2343190', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:23:pm', 'July', '2023'),
(264, 'MICHAEL MENSAH', 'G2451829', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:24:pm', 'July', '2023'),
(265, 'EBENEZER OWUSU ', 'G3147976', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:29:pm', 'July', '2023'),
(266, 'Emmanuel Chikata', 'G3028338', 'Cameroon', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:29:pm', 'July', '2023'),
(267, 'Ayesha Lotso Mohammed', 'G2397733', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:36:pm', 'July', '2023'),
(268, 'TAWIAH GODWIN ', 'G3174003', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:37:pm', 'July', '2023'),
(269, 'HAIRAAT YAKUBU', 'A0066111', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:43:pm', 'July', '2023'),
(270, 'Agyarkoh Luther  King', 'G2799208', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:43:pm', 'July', '2023'),
(271, 'MUHAMMED IBRAHIM AHMED', 'G3457032', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:48:pm', 'July', '2023'),
(272, 'Apprakusu Faustina', 'G3751132', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '12:49:pm', 'July', '2023'),
(273, 'ANITA AYAH', 'A0182661', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '13:04:pm', 'July', '2023'),
(274, 'Justice Amankwa', 'G2886738', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '13:11:pm', 'July', '2023'),
(275, 'JOSEPHINE SERWAA  YEBOAH', 'G3012557', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '13:17:pm', 'July', '2023'),
(276, 'JOSEPHINE SERWAA  YEBOAH', 'G3012557', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '13:17:pm', 'July', '2023'),
(277, 'Amoako Henry', 'G3205606', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '13:21:pm', 'July', '2023'),
(278, 'BENJAMIN MAWUNYO FRIMPONG', 'A0218650', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '13:30:pm', 'July', '2023'),
(279, 'Bernice Naa Asheley Armah', 'G3428288', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '13:31:pm', 'July', '2023'),
(280, 'ALBERT KWEKU COBBINAH', 'G4241279', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '13:36:pm', 'July', '2023'),
(281, 'ALBERT KWEKU COBBINAH', 'G4241279', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '13:36:pm', 'July', '2023'),
(282, 'Abdul Hamid Dauda', 'G4129810', 'United States', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-26th', '13:38:pm', 'July', '2023'),
(283, 'Francis Eduafo', 'N/A', 'Norway', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '05:20:am', 'July', '2023'),
(284, 'Owusu Kingsley Boakye', 'G3473892', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '05:37:am', 'July', '2023'),
(285, 'Mabel Akutey', 'G3483173', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '05:49:am', 'July', '2023'),
(286, 'Mouktar Mukhtar Abdul Rashid', 'G35563391', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '06:03:am', 'July', '2023'),
(287, 'Appiah Francisca Owireduah', 'A0063670', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '06:47:am', 'July', '2023'),
(288, 'Larbi Duodu Reuben', 'G3359234', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '06:57:am', 'July', '2023'),
(289, 'David Kpasrah', 'G4172911', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '07:10:am', 'July', '2023'),
(290, 'Marfo Ntiriwaa Elizabeth', 'G3599304', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '08:15:am', 'July', '2023'),
(291, 'Hilda Owusu', 'G3671900', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '08:25:am', 'July', '2023'),
(292, 'Mr. David Attuguaye Botchway', 'G4285354', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '08:36:am', 'July', '2023'),
(293, 'Antwi Godwin Baah', 'A0247145', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-27th', '08:53:am', 'July', '2023'),
(294, 'Quansah Emmanuel', 'G4080699', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '07:26:am', 'July', '2023'),
(295, 'Francis Nartey', 'G2967472', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '07:59:am', 'July', '2023'),
(296, 'Anthony Larbi', 'G2797288', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '08:21:am', 'July', '2023'),
(297, 'Synony Lartei', 'G2797289', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '08:38:am', 'July', '2023'),
(298, ' Quansah Emmanuel', 'G4080699', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '08:55:am', 'July', '2023'),
(299, 'Iddrisui Mumiru', 'G3205832', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '09:08:am', 'July', '2023'),
(300, 'Emmanuel Osei Tutu', 'A0210560', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '09:24:am', 'July', '2023'),
(301, 'Osei Samuel', 'A0180791', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '10:15:am', 'July', '2023'),
(302, 'Sophia Koomson', 'G3624523', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '10:32:am', 'July', '2023'),
(303, 'RAZAK ALI', 'G4248971', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '10:32:am', 'July', '2023'),
(304, 'Marian Amponsah', 'G3873988', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '10:42:am', 'July', '2023'),
(305, 'ISSAC GYAN METTLE', 'G2636058', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '10:45:am', 'July', '2023'),
(306, 'David Selassie Dorwu', 'G2871443', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '10:54:am', 'July', '2023'),
(307, 'RICHMOND BEDIAKO', 'G4033249', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '10:57:am', 'July', '2023'),
(308, 'DAVID ASANTE AVEDZI', 'N/A', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '11:13:am', 'July', '2023'),
(309, 'DAVID ASANTE AVEDZI', 'N/A', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-28th', '11:13:am', 'July', '2023'),
(310, 'Enoch Tonto', 'G3976305', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '05:35:am', 'July', '2023'),
(311, 'Abass Adamu', 'G2452827', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '05:45:am', 'July', '2023'),
(312, 'Idrisu Mumiru', 'G3205832', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '05:56:am', 'July', '2023'),
(313, 'Mohammed Yussif', 'G14204849', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '06:28:am', 'July', '2023'),
(314, 'William Ofori Davis', 'G3873732', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '06:48:am', 'July', '2023'),
(315, 'Gifty Aboagyewaa', 'N/A', 'United States', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '07:24:am', 'July', '2023'),
(316, 'Gifty Aboagyewaa', 'N/A', 'United States', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '07:24:am', 'July', '2023'),
(317, 'Diameh Smith Eugene', 'A0172236', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '08:34:am', 'July', '2023'),
(318, 'Botwe Francis', 'G3600086', 'New Zealand', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '08:50:am', 'July', '2023');
INSERT INTO `timeline` (`id`, `client`, `passport_number`, `destination`, `tittle`, `message`, `date`, `time`, `month`, `year`) VALUES
(319, 'Azialaho Andrews Sterleon', 'A0089274', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '09:05:am', 'July', '2023'),
(320, 'Elvis Tsedey', 'G4172211', 'United States', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '09:22:am', 'July', '2023'),
(321, 'Joel Nketiah ', 'G3475171', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Jul-31st', '09:28:am', 'July', '2023'),
(322, 'Evelyn Kwakye', 'G4306116', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '06:05:am', 'August', '2023'),
(323, 'Sarpong Patricia', 'G2491388', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '06:39:am', 'August', '2023'),
(324, 'Fordjour Alenxander Antwi', 'G2454432', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '06:45:am', 'August', '2023'),
(325, 'Emmanuel Asare', 'G3452124', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '06:52:am', 'August', '2023'),
(326, 'Christopher Okyere Fianko', 'A0084069', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '06:58:am', 'August', '2023'),
(327, 'Joseph Kitcher', 'G4260521', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '07:05:am', 'August', '2023'),
(328, 'Ebenezer Ankomah', 'G3932477', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '07:16:am', 'August', '2023'),
(329, 'Frank Tetteh', 'G4299391', 'Bahamas', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '07:25:am', 'August', '2023'),
(330, 'George Boateng', 'G3563350', 'Bahamas', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '07:54:am', 'August', '2023'),
(331, 'OSMAN CHIEF', 'A0224803', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '07:56:am', 'August', '2023'),
(332, 'Elzertina Abena Adjei', 'G4259789', 'Romania', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '08:05:am', 'August', '2023'),
(333, 'EBENEZER ASRAE YEBOAH', 'G4299508', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '08:08:am', 'August', '2023'),
(334, 'Paul Addo', 'A0253852', 'Romania', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '08:19:am', 'August', '2023'),
(335, 'CALEB ADJEI BOATENG', 'G325938', 'Australia', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '08:22:am', 'August', '2023'),
(336, 'David Danso-Dakwa', 'A0253882', 'Romania', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '08:26:am', 'August', '2023'),
(337, 'Beatrice Obeng', 'A0253507', 'Romania', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '08:47:am', 'August', '2023'),
(338, 'Boateng Wahab Danso', ' G3547762                                                                                           ', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '09:07:am', 'August', '2023'),
(339, 'Nathaniel Azalekor', 'G3633664', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '09:15:am', 'August', '2023'),
(340, 'Frimpong Harriet Ntiriwa', 'G2635748', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '09:46:am', 'August', '2023'),
(341, 'Frank Nyarko Frimpong', 'G3759701', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '09:57:am', 'August', '2023'),
(342, 'Stephen Kweku Benso', 'G4300320', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '10:07:am', 'August', '2023'),
(343, 'Abubakari Salim Mohammed', 'G2631009', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '11:47:am', 'August', '2023'),
(344, 'King Joseph Niltan', 'Lilian Okai', 'Norway', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-3rd', '11:57:am', 'August', '2023'),
(345, 'Ibrahim Mohammed Tasu', 'G3435699', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '05:05:am', 'August', '2023'),
(346, 'Caleb Nyamekye Owusu', 'G3973627', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '05:09:am', 'August', '2023'),
(347, 'Husseni Abubakari', 'G3840721', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '05:17:am', 'August', '2023'),
(348, 'Baidoo Joseph Paa Kwesi', 'G2900553', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '05:28:am', 'August', '2023'),
(349, 'Prince Osei Tutu', 'G3551515', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '05:34:am', 'August', '2023'),
(350, 'Ahyia Thomas Kwadwo', 'G3342426', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '05:43:am', 'August', '2023'),
(351, 'Mariam Tawiah Otoo', 'GH2305838', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '05:57:am', 'August', '2023'),
(352, 'David Kweku Benson', 'G2472547', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '06:15:am', 'August', '2023'),
(353, 'Daniel Sey', 'G2765804', 'Romania', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '06:28:am', 'August', '2023'),
(354, 'Mercy Christabel Mawunyo Ganyo', 'G3117348', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '06:37:am', 'August', '2023'),
(355, 'Alfred Armah', 'N/A', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '06:53:am', 'August', '2023'),
(356, 'Ayiku Eric Tettey', 'A0093230', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '07:02:am', 'August', '2023'),
(357, 'Teye Naki Anita', 'G2665016', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-7th', '07:28:am', 'August', '2023'),
(358, 'Sarah Adjei', 'C74119370', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-16th', '06:45:am', 'August', '2023'),
(359, 'Wendyline Ruth Adjei', 'G3972591', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-16th', '06:58:am', 'August', '2023'),
(360, 'Wendyline Ruth Adjei', 'G3972591', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-16th', '06:58:am', 'August', '2023'),
(361, 'Isaac Ackom', 'G3928568', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-16th', '07:03:am', 'August', '2023'),
(362, 'Daniel Oware Attafuah', 'G3750508', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-17th', '07:41:am', 'August', '2023'),
(363, 'Daniel Oware Attafuah', 'G3750508', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-17th', '07:41:am', 'August', '2023'),
(364, 'Phillip Worchio Jefferson', 'A0086055', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-21st', '09:55:am', 'August', '2023'),
(365, 'Alberta Afari Ohenewaa', 'G3256843', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-21st', '09:59:am', 'August', '2023'),
(366, 'Aaron Ampofo Awuah ', 'G4165731', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-21st', '10:12:am', 'August', '2023'),
(367, 'Alhassan Karimu', 'G3977528', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-21st', '10:33:am', 'August', '2023'),
(368, 'Charles Kofi Dogbatse', 'G3802096', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-28th', '05:52:am', 'August', '2023'),
(369, 'Charles Kofi Dogbatse', 'G3802096', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-28th', '05:52:am', 'August', '2023'),
(370, 'Osei Linda Frimpomaa', 'G2590813', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-28th', '06:20:am', 'August', '2023'),
(371, 'Isaac Ofori Ababio ', 'G3552512', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-28th', '07:20:am', 'August', '2023'),
(372, 'Dauda Mohammed Muntari', 'G4068405', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-28th', '09:10:am', 'August', '2023'),
(373, 'Osei Kwame', 'N/A', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-28th', '09:14:am', 'August', '2023'),
(374, 'Aboagye Daniel', 'G2811337', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-28th', '09:58:am', 'August', '2023'),
(375, 'Aboagye Daniel', 'G2811337', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-28th', '09:58:am', 'August', '2023'),
(376, 'Aboagye Daniel', 'G2811337', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-28th', '09:58:am', 'August', '2023'),
(377, 'Aboagye Daniel', 'G2811337', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-28th', '09:58:am', 'August', '2023'),
(378, 'Louisa Naa Shormeh Nortey', 'G4321191', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '06:05:am', 'August', '2023'),
(379, 'Louisa Naa Shormeh Nortey', 'G4321191', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '06:05:am', 'August', '2023'),
(380, 'Patience Badu-Kumi', 'N/A', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '06:12:am', 'August', '2023'),
(381, 'Patience Badu-Kumi', 'N/A', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '06:12:am', 'August', '2023'),
(382, 'Ali Yussif', 'G4212157', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '06:19:am', 'August', '2023'),
(383, 'Ali Yussif', 'G4212157', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '06:19:am', 'August', '2023'),
(384, 'Ali Yussif', 'G4212157', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '06:19:am', 'August', '2023'),
(385, 'Humphrey Tetteh Nartey ', 'G3832364', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '06:26:am', 'August', '2023'),
(386, 'Humphrey Tetteh Nartey ', 'G3832364', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '06:26:am', 'August', '2023'),
(387, 'Usman Habiba', 'G3557249', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '06:32:am', 'August', '2023'),
(388, 'Stephen Sackey ', 'A0218249', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '07:08:am', 'August', '2023'),
(389, 'Abigail Tuffour', 'G2431972', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '07:24:am', 'August', '2023'),
(390, 'Grace Owusuwaa Danso', 'G3567769', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '07:34:am', 'August', '2023'),
(391, 'Grace Owusuwaa Danso', 'G3567769', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '07:34:am', 'August', '2023'),
(392, 'Francis Quaku Asamoah', 'G4277289', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '07:48:am', 'August', '2023'),
(393, 'Francis Quaku Asamoah', 'G4277289', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '07:48:am', 'August', '2023'),
(394, 'Leonard Yao Apaloo', 'G2856991', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '08:11:am', 'August', '2023'),
(395, 'Leonard Yao Apaloo', 'G2856991', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-30th', '08:11:am', 'August', '2023'),
(396, 'PHILOMENA DONKOR', 'G3928134', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-31st', '08:30:am', 'August', '2023'),
(397, 'LAWER SAMUEL YAW', 'G3928135', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Aug-31st', '08:36:am', 'August', '2023'),
(398, 'Prince Kofi Mensah', 'G4139746', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-4th', '05:10:am', 'September', '2023'),
(399, 'Prince Kofi Mensah', 'G4139746', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-4th', '05:10:am', 'September', '2023'),
(400, 'Christian Mensah', 'G4295999', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-4th', '05:15:am', 'September', '2023'),
(401, 'Felicia Kwakai Quartey', 'G3292714', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-4th', '05:21:am', 'September', '2023'),
(402, 'Augustina Nyantekye', 'G4313251', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-4th', '05:30:am', 'September', '2023'),
(403, 'Leonard Yao Apaloo', 'G2856991', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-11th', '08:55:am', 'September', '2023'),
(404, 'Grace Safoa', 'G4248995', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-11th', '09:05:am', 'September', '2023'),
(405, 'Owusu George Darko', 'G4003570', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-11th', '09:13:am', 'September', '2023'),
(406, 'Jonathan Bill Anderson', 'G2695529', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-11th', '09:37:am', 'September', '2023'),
(407, 'Richmond Kwaw Blay', 'N/A', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-11th', '10:05:am', 'September', '2023'),
(408, 'Emmanuel Agyeman Nkansah', 'G4153450', 'Norway', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-11th', '10:14:am', 'September', '2023'),
(409, 'Marfo Isaac Oduro', 'G3704958', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-14th', '08:43:am', 'September', '2023'),
(410, 'Ebenezer Ewusi', 'A0009035', 'Romania', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-14th', '08:58:am', 'September', '2023'),
(411, ' Fred Odame Kani', 'G4275326', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '05:02:am', 'September', '2023'),
(412, 'Enock Selasi Darteh', 'G4408919', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '05:06:am', 'September', '2023'),
(413, 'Ahenkorah Avastine', 'G4299874', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '05:11:am', 'September', '2023'),
(414, 'Ebenezer Ewusi', 'A0009035', 'Romania', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '05:15:am', 'September', '2023'),
(415, 'Avonka Ernest Ayamdoo', 'G4184750', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '05:31:am', 'September', '2023'),
(416, 'Francis Okutu', ' A0234187', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '05:41:am', 'September', '2023'),
(417, 'Eunice Quartey', 'G3923251', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '06:02:am', 'September', '2023'),
(418, 'Ofori Francis Kwadwo', 'A0213867', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '06:09:am', 'September', '2023'),
(419, 'Hiob Akwetey', 'G3571282', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '06:26:am', 'September', '2023'),
(420, 'Kyeremeh Precious', '0257201451', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '06:33:am', 'September', '2023'),
(421, 'Johnson Nketia Amponsah', 'G43325071', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '06:40:am', 'September', '2023'),
(422, 'Adwubi Boatemaa Melisa', 'G4261612', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '06:50:am', 'September', '2023'),
(423, 'Asare Obed ', 'A0262078', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '07:05:am', 'September', '2023'),
(424, 'Collins Baffoe Gyasi', 'A0042794', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '07:09:am', 'September', '2023'),
(425, 'Abigail Ntim', 'G3603340', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '07:15:am', 'September', '2023'),
(426, 'Abigail Ntim', 'G3603340', 'United Kingdom', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-15th', '07:15:am', 'September', '2023'),
(427, 'Sanford Martey Tetteh', 'G4331444', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-18th', '06:48:am', 'September', '2023'),
(428, 'Hamdiya Adams', 'G3146661', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-18th', '09:13:am', 'September', '2023'),
(429, 'Olo Daniel', 'G4377081', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-18th', '09:16:am', 'September', '2023'),
(430, 'Atakyi Quainoo Emmanuel', 'G4361749', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-18th', '09:20:am', 'September', '2023'),
(431, 'Atakyi Quainoo Emmanuel', 'G4361749', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-18th', '09:20:am', 'September', '2023'),
(432, 'Linda Afua Attah ', 'G3609736', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-18th', '09:51:am', 'September', '2023'),
(433, 'Pamela Joy Mawuli Biaku', 'G3746501', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-18th', '09:56:am', 'September', '2023'),
(434, 'RYAN SELORM YAO ATTAH', 'G3607859', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-18th', '10:02:am', 'September', '2023'),
(435, 'Emmanuel Arrmah', 'G2190719', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-19th', '11:14:am', 'September', '2023'),
(436, 'Ernest Gyasi Appiah', 'G3996932', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-19th', '11:33:am', 'September', '2023'),
(437, 'Rabi Akwasi Gyamfi', 'G34861467', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-20th', '13:12:pm', 'September', '2023'),
(438, 'Rabi Akwasi Gyamfi', 'G34861467', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-20th', '13:12:pm', 'September', '2023'),
(439, 'Rabi Akwasi Gyamfi', 'G34861467', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-20th', '13:12:pm', 'September', '2023'),
(440, 'Rabi Akwasi Gyamfi', 'G34861467', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-20th', '13:12:pm', 'September', '2023'),
(441, 'Jason Emmanuel Elikem Kwesi', 'G3898330 ', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '08:14:am', 'September', '2023'),
(442, 'Fanny Naa Ameley ', 'G3576716', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '08:35:am', 'September', '2023'),
(443, 'Lord Nkansah', 'G2784061', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '08:39:am', 'September', '2023'),
(444, 'Richard Komla Klukpui', 'G4412790', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '08:45:am', 'September', '2023'),
(445, 'Bekoe Bridget Anima', 'G2688283', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '08:50:am', 'September', '2023'),
(446, 'Prince Kwasi Nutifafa Attah', 'G3607881', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '10:12:am', 'September', '2023'),
(447, 'Prince Kwasi Nutifafa Attah', 'G3607881', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '10:12:am', 'September', '2023'),
(448, 'Mary Donkor', 'G3399400', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:36:pm', 'September', '2023'),
(449, 'Mary Donkor', 'G3399400', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:36:pm', 'September', '2023'),
(450, 'Appiah Obed', ' G3593569', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:44:pm', 'September', '2023'),
(451, 'Appiah Obed', ' G3593569', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:44:pm', 'September', '2023'),
(452, 'Appiah Obed', ' G3593569', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:44:pm', 'September', '2023'),
(453, 'Appiah Obed', ' G3593569', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:44:pm', 'September', '2023'),
(454, 'Appiah Obed', ' G3593569', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:44:pm', 'September', '2023'),
(455, 'Appiah Obed', ' G3593569', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:44:pm', 'September', '2023'),
(456, 'Appiah Obed', ' G3593569', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:44:pm', 'September', '2023'),
(457, 'Appiah Obed', ' G3593569', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:44:pm', 'September', '2023'),
(458, 'Appiah Obed', ' G3593569', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:44:pm', 'September', '2023'),
(459, 'Appiah Obed', ' G3593569', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:44:pm', 'September', '2023'),
(460, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(461, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(462, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(463, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(464, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(465, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(466, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(467, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(468, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(469, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(470, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(471, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(472, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(473, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(474, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(475, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(476, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(477, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:51:pm', 'September', '2023'),
(478, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:52:pm', 'September', '2023'),
(479, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:52:pm', 'September', '2023'),
(480, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:52:pm', 'September', '2023'),
(481, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:52:pm', 'September', '2023'),
(482, 'Apraku Bernard Gyimah', 'G4158295', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-22nd', '12:52:pm', 'September', '2023'),
(483, 'Maclean Katore Lankono', 'A0191022', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '07:21:am', 'September', '2023'),
(484, 'Enoch Kobina Abotsi-Koomson', 'G3553822', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '07:26:am', 'September', '2023'),
(485, 'Franklin Addo', 'G437605', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '07:30:am', 'September', '2023'),
(486, 'George Adu Amankwah', 'A0232330', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '07:35:am', 'September', '2023'),
(487, 'Frank Brobbey', 'G3125109', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '07:42:am', 'September', '2023'),
(488, 'Emmanuel Asante', 'G288227', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '08:14:am', 'September', '2023'),
(489, 'Appiah Ernest', 'G3501431', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '08:33:am', 'September', '2023'),
(490, 'Haruna Ibrahim', 'G2923166', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '08:37:am', 'September', '2023'),
(491, 'Korley Nelly Teiko', 'A0194893', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '08:51:am', 'September', '2023'),
(492, 'Rita Frimpomaa', 'G3900975', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '08:57:am', 'September', '2023'),
(493, 'Akanjobapo Christiana', 'G4277680', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-25th', '09:03:am', 'September', '2023'),
(494, 'Isaac Danso Essel', 'G4048082', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-27th', '12:20:pm', 'September', '2023'),
(495, 'Isaac Danso Essel', 'G4048082', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Sep-27th', '12:20:pm', 'September', '2023'),
(496, 'EMMA NKERBAH OKRAN', 'G3037996', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '05:26:am', 'October', '2023'),
(497, 'NANA YAW OBENG ASAMOAH', 'G2375961', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '05:59:am', 'October', '2023'),
(498, 'BERVLYN ISHA DENYIRA', 'G4136595', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '06:30:am', 'October', '2023'),
(499, 'Marfo Deborah ', 'G3483751', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '06:37:am', 'October', '2023'),
(500, 'Juliana Okrah', 'G4416397', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '06:42:am', 'October', '2023'),
(501, 'MAAME FOSUA OBENG ASAMOAH', 'G3889638', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '06:43:am', 'October', '2023'),
(502, 'Papa Yaw Bediako', 'G2756297', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '06:51:am', 'October', '2023'),
(503, 'Belinda Aziz Banda', 'G4304482', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '07:05:am', 'October', '2023'),
(504, 'AMIDU FAWZIA ', 'A0124042', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '07:13:am', 'October', '2023'),
(505, 'Philomena Afram', 'G4396480', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '07:24:am', 'October', '2023'),
(506, 'Gladys Dickson Edubeteh', 'G4396537', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '07:30:am', 'October', '2023'),
(507, 'Gladys Dickson Edubeteh', 'G4396537', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '07:30:am', 'October', '2023'),
(508, 'Felicia Kuzular', 'G4062761', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '07:37:am', 'October', '2023'),
(509, 'FRANCIS PRAH ', 'G4185306', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '09:29:am', 'October', '2023'),
(510, 'NURUDEEN IBRAHIM OWUSU', 'G3651968', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '11:23:am', 'October', '2023'),
(511, 'AGYAPONG GRACE', 'G4335240', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '11:42:am', 'October', '2023'),
(512, 'CECILIA  PATRICK ATAPSARE', 'G4318459', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '12:07:pm', 'October', '2023'),
(513, 'JOHN KWASI GANVU', 'G3745711', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '12:33:pm', 'October', '2023'),
(514, 'CHRISTIAN NTOW YAW', 'G4287190', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '13:03:pm', 'October', '2023'),
(515, 'ELIDA ABA DACOSTA', 'G2749594', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '15:21:pm', 'October', '2023'),
(516, 'YEBOAA JOYCE', 'G4158886', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '15:40:pm', 'October', '2023'),
(517, 'ABIGAIL BONSRAH', 'G3071503', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '16:49:pm', 'October', '2023'),
(518, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(519, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(520, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(521, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(522, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(523, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(524, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(525, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(526, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(527, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(528, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(529, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(530, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(531, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(532, 'EUGENE KWABENA AKOWUAH', 'G4076880', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:12:pm', 'October', '2023'),
(533, 'NATHANIEL ARYEETEY', 'G3705759', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:38:pm', 'October', '2023'),
(534, 'NATHANIEL ARYEETEY', 'G3705759', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:38:pm', 'October', '2023'),
(535, 'MARIAMA ADAMA-ISSAH', 'G4271755', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-2nd', '17:56:pm', 'October', '2023'),
(536, 'ZACHARIA OWUSU', 'G4425291', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-3rd', '05:08:am', 'October', '2023'),
(537, 'ISSAHAKU LATIFA', 'G269452', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-3rd', '05:24:am', 'October', '2023'),
(538, 'NANA BAAH BINEY', 'G3828107', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-3rd', '06:25:am', 'October', '2023'),
(539, 'EUNICE AKUA AMOAH-ADDO', 'G3051301', 'Canada', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-3rd', '06:39:am', 'October', '2023'),
(540, 'TWENEBOAH DIANA', 'G2835972', 'Romania', 'Registeration Successfull', 'Registration has been done and candidate is now elligible to apply for job', '2023-Oct-25th', '06:36:am', 'October', '2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeline`
--
ALTER TABLE `timeline`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `checklist`
--
ALTER TABLE `checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `timeline`
--
ALTER TABLE `timeline`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
