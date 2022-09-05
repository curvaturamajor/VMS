-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Eyl 2022, 22:24:47
-- Sunucu sürümü: 10.4.24-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cvmsdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `AdminRole` char(9) NOT NULL DEFAULT 'USER',
  `MobileNumber` bigint(11) DEFAULT NULL,
  `TcKimlik` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `AdminRole`, `MobileNumber`, `TcKimlik`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin Deneme', 'admin', 'ADMIN', 3274326481, NULL, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-04-22 06:26:14'),
(2, 'admin2', 'admin2', 'ADMIN', 5053349275, NULL, 'admin2@gmail.com', 'a8f5f167f44f4964e6c998dee827110c', '2022-08-25 10:45:11'),
(4, 'sysadmin', 'sysadmin', 'SYSADMIN', 5053349266, NULL, 'sysadmin@gmail.com', 'a8f5f167f44f4964e6c998dee827110c', '2022-08-25 10:45:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblvisitor`
--

CREATE TABLE `tblvisitor` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(120) CHARACTER SET utf32 COLLATE utf32_turkish_ci DEFAULT NULL,
  `Kart` char(4) DEFAULT NULL,
  `Email` varchar(120) CHARACTER SET utf32 COLLATE utf32_turkish_ci DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `TcKimlik` char(11) NOT NULL,
  `Address` varchar(250) CHARACTER SET utf32 COLLATE utf32_turkish_ci DEFAULT NULL,
  `WhomtoMeet` varchar(120) CHARACTER SET utf32 COLLATE utf32_turkish_ci DEFAULT NULL,
  `Deptartment` varchar(120) CHARACTER SET utf32 COLLATE utf32_turkish_ci DEFAULT NULL,
  `ReasontoMeet` varchar(120) CHARACTER SET utf32 COLLATE utf32_turkish_ci DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp(),
  `remark` varchar(255) CHARACTER SET utf32 COLLATE utf32_turkish_ci DEFAULT NULL,
  `outtime` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Ban` char(6) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tblvisitor`
--

INSERT INTO `tblvisitor` (`ID`, `FullName`, `Kart`, `Email`, `MobileNumber`, `TcKimlik`, `Address`, `WhomtoMeet`, `Deptartment`, `ReasontoMeet`, `EnterDate`, `remark`, `outtime`, `Ban`) VALUES
(3, 'Salim Demir', NULL, 'salimdemir@hotmail.com', 8979897979, '8979897979', 'Aksaray', 'Mahmut Bey', 'Dijital Varlıklar', 'Ziyaret', '2019-04-21 18:30:00', '', '2022-09-01 20:40:12', 'HAYIR'),
(5, 'Emrah Önlü', NULL, 'emrahonlu@gmail.com', 7897897979, '7897897979', 'Akçay', 'Emre Bey', 'Bilgi İşlem', 'Teknik Destek', '2019-04-23 11:00:34', 'Teknik destek verildi.', '2022-09-01 16:41:26', 'HAYIR'),
(12, 'Ziya Bir', NULL, 'ziyabir@hotmail.com', 7897974697, '7897974697', 'Çorum', 'Emre Bey', 'Bilgi İşlem', 'Teknik Destek', '2019-04-23 11:14:45', NULL, '2022-09-01 16:41:31', 'HAYIR'),
(13, 'Bilge Dede', NULL, 'bilgeded@gmail.com', 1234567890, '1234567890', 'Üsküdar Çamlı Mahallesi', 'Emre Bey', 'Bilgi İşlem', 'Teknik Destek', '2019-04-23 17:43:00', NULL, '2022-09-01 16:41:35', 'HAYIR'),
(14, 'Murat Şahi', NULL, 'muratsah@gmail.com', 5054220783, '5054220783', 'İstanbul', 'Emre Bey', 'Bilgi İşlem', 'Teknik Destek', '2022-08-31 07:23:07', 'Çıkış yapıldı.', '2022-09-01 16:41:38', 'HAYIR'),
(15, 'Ertem Şener', NULL, 'ertemsener@gmail.com', 3425624362, '3425624362', 'wegweg', 'wegweg', 'wegweg', 'wegweg', '2022-09-01 10:08:19', NULL, '2022-09-01 16:41:52', 'EVET'),
(16, 'eıogtewgj', NULL, 'dspgkjdsgk@mnewt.com', 3295832795, '3295832795', 'egewgewgew', 'wegew', 'wegwe', 'egweg', '2022-09-01 10:12:34', NULL, '2022-09-01 16:41:58', 'HAYIR'),
(17, 'Ahmet Er', NULL, 'ahmeter@gmail.com', 2147483647, '2144483647', 'Eminönü', 'Emre Bey', 'İnsan Kaynakları', 'İş Görüşmesi', '2022-09-01 11:47:53', 'sre era era era rewwerw', '2022-09-01 19:55:31', 'EVET'),
(18, 'Ahmet', NULL, 'ahmet@yahoo.de', 4857364646, '57384967593', 'Istanbul Yenibosna', 'Oğuzhan', 'Finans', 'İmza', '2022-09-01 17:31:35', '', '2022-09-01 20:29:15', 'EVET'),
(19, 'Kuzey Şentürk', NULL, 'kuzey@yahoo.de', 3432423432, '65441231111', 'Yenibosna Bahçelieveler', 'Hamdi ATA', 'Dİjital Varlıklar', 'Staj', '2022-09-01 17:46:52', NULL, NULL, 'HAYIR'),
(20, 'asdas asdfas', NULL, 'qwrqwr@yahoo.cd', 2342352352, '35234235236', 'asdasd ', 'rwq rqw r', 'qw r qw', 'r qwr qwrqrq', '2022-09-01 18:14:12', 'asfas wa rwr', '2022-09-01 19:48:10', 'HAYIR'),
(21, 'd awraw raw', NULL, 'qwrqwr@asfasnet', 2342352362, '76423245566', 'asda wr war ', 'f aw fw', ' e ', 't es set', '2022-09-01 19:54:16', 'qwe qwe qwe qwe', '2022-09-03 18:25:18', 'EVET'),
(22, 'asd asd asd asd asd', NULL, 'bizz@yahoo.nl', 1235375474, '54370000006', 's ret e rey', ' ert ey rt yr u', ' ytu tyu tyu tyu t', 'ftgbtr trtbyrt rtbyt rtybtr ', '2022-09-03 18:42:43', 'çıktı', '2022-09-03 22:09:10', 'EVET'),
(25, 'Ahmet Erdem', NULL, 'merdem@yahoo.de', 2342342342, '12312312312', 'başakşehir', 'qwe qwe qwe', 'qweqwe', ' qwe qwe qwe qwe qwe', '2022-09-03 21:49:13', NULL, NULL, 'HAYIR'),
(27, 'Recep Baltaş', '1234', 'Recep@teknopat.net', 2352352352, '56845756089', 'Ankara Mah. Kızılay', 'Mehmet Emre', 'Finans', 'Mülakat', '2022-09-05 18:32:25', NULL, NULL, 'HAYIR');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `tblvisitor`
--
ALTER TABLE `tblvisitor`
  ADD PRIMARY KEY (`ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `tblvisitor`
--
ALTER TABLE `tblvisitor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
