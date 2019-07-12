/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 10.1.30-MariaDB : Database - db_marketplace
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_marketplace` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_marketplace`;

/*Table structure for table `agenda` */

DROP TABLE IF EXISTS `agenda`;

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL AUTO_INCREMENT,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `agenda` */

insert  into `agenda`(`id_agenda`,`tema`,`tema_seo`,`isi_agenda`,`tempat`,`pengirim`,`gambar`,`tgl_mulai`,`tgl_selesai`,`tgl_posting`,`jam`,`dibaca`,`username`) values (64,'Elton John Greatest Hits Tour','elton-john-greatest-hits-tour','<p>November ini,&nbsp; Indonesia akan disuguhkan salah satu konser megah dari legenda musik dunia yaitu Elton John. Penampilan Elton John yang pertama kalinya di Indonesia akan berlangsung pada 17 November 2012, di&nbsp; Sentul International Convention Center, Bogor yang lokasinya tidak begitu jauh dari Jakarta.<br />\r\n<br />\r\nKonser Elton John ini merupakan bagian dari tur dunianya yang bertajuk &ldquo;Greatest Hits Tour&rdquo; dan akan dimulai pada awal November dari Latvia sampai ke Australia. Elton John akan membawa band lamanya yang terdiri dari Davey Johnstone, Nigel Olsson, Robert Birch, Kim Bullard dan John Mahon, dan empat backing vocal yaitu Rose&nbsp; Batu (Sly dan The Family Stone), Lisa Bank, Tata Vega, dan Jean Witherspoon.</p>\r\n','Sentul International Convention Center','Robby Prihandaya','','2012-11-17','2012-11-17','2012-08-20','02:00:00 - 13:30:00',89,'admin'),(62,'Maroon Live in Jakarta 2012','maroon-live-in-jakarta-2012','Maroon 5 akan kembali menghibur penggemar Jakarta mereka dengan sebuah konser pada 5 Oktober 2012 di Istora Senayan, Jakarta. Ini akan menjadi penampilan kedua mereka di tanah air setelah tampil pada konser sold out 27 April 2011 lalu. Grup musik beraliran pop rock yang berasal dari Los Angeles, California Amerika Serikat. Rencananya menggelar konsernya pada 5 Oktober 2012, di Istora Senayan, Jakarta. Java Musikindo selaku promotor telah mengumumkan pembagian kelas serta harga tiket konser. Band yang digawangi oleh Adam Levine (vokal/gitar), Jesse Carmichael (keyboard/gitar),Mickey Madden (bass), James Valentine (gitar), Matt Flynn (drum) ini menggelar konser di Jakarta sebagai bagian dari promo album barunya, Overexposed, yang dirilis Juni lalu.\r\n','Istora Senayan Jakarta','Muhammad Arsenio','','2012-10-05','2012-10-05','2012-08-19','20:00:00 - Selesai',25,'admin'),(63,'Festival Musik Bambu Nusa','festival-musik-bambu-nusantara-2012','Bambu Nusantara ke-6 tahun ini akan digelar di Jakarta Convention Center (JCC), di Jalan Jenderal Gatot Subroto, Jakarta, pada 1 - 2 September 2012. Acara tersebut akan menghadirkan beraneka kreasi berbahan bambu dan tampilnya beragam seni dari bambu. Selain suguhan musik etnik berpadu dengan musik modern, dalam Acara ini juga akan turut diisi dengan pameran, seminar, merchandise, kuliner, dan fashion yang dipadu padankan dengan karya berbahan bambu.<br />\r\n','Jakarta Convention Center (JCC), Jakarta','Dewiit Safitri','','2012-09-01','2012-09-02','2012-08-20','09:00:00 - 21:00:00',42,'admin');

/*Table structure for table `album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT '1',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `album` */

insert  into `album`(`id_album`,`jdl_album`,`album_seo`,`keterangan`,`gbr_album`,`aktif`,`hits_album`,`tgl_posting`,`jam`,`hari`,`username`) values (30,'Konser Kantata Barock 2018 berlangsung Dramatis','konser-kantata-barock-2018-berlangsung-dramatis','<p>Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta, Jumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya setelah 21 tahun vakum dari dunia musik.</p>\r\n\r\n<div style=\"background-color:#ffffff; border:medium none; color:#000000; overflow:hidden; text-align:left; text-decoration:none\">&nbsp;</div>\r\n','konser.png','Y',36,'2012-08-20','09:12:06','Senin','admin'),(31,'Asunt in anim uis aute irure dolor in reprehenderit','asunt-in-anim-uis-aute-irure-dolor-in-reprehenderit','<p>Asunt in anim uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum. Allamco laboris nisi ut aliquip ex ea commodo consequat. Aser velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum.</p>\r\n','maxresdefault.jpg','Y',10,'2012-08-20','09:40:01','Senin','admin'),(28,'Murah Meriah belanja puas di Pasar Asemka','murah-meriah-belanja-puas-di-pasar-asemka','<p>Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.</p>\r\n','Murah-Meriah.jpg','Y',61,'2012-08-18','23:14:05','Sabtu','admin'),(29,'Karpet Raksasa dari Bunga mendapatkan rekor muri','karpet-raksasa-dari-bunga-mendapatkan-rekor-muri','<p>Belgia sedang memperingati peristiwa tahunan &quot;La Fete De La Fleur&quot; atau pesta bunga di bulan Agustus. Ahli bunga merancang karpet raksasa dari bunga di depan Grand Place di Brussel. Karpet ini dibuat menggunakan 700 ribu bunga.</p>\r\n','karpet.jpg','Y',118,'2012-08-19','03:02:27','Minggu','admin'),(51,'Jalan-jalan bersama pemenang quiz online swarakalibata','jalanjalan-bersama-pemenang-quiz-online-swarakalibata','<p>Israel pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.</p>\r\n','quiz.jpg','Y',0,'2018-04-21','22:55:11','Sabtu','admin');

/*Table structure for table `background` */

DROP TABLE IF EXISTS `background`;

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) NOT NULL,
  PRIMARY KEY (`id_background`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `background` */

insert  into `background`(`id_background`,`gambar`) values (1,'pink');

/*Table structure for table `banner` */

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `banner` */

insert  into `banner`(`id_banner`,`judul`,`url`,`gambar`,`tgl_posting`) values (19,'Private Training Web Development','https://phpmu.com','','2017-05-21'),(20,'Kursus Web Programming Online','https://phpmu.com','','2017-05-21'),(21,'Komunitas Belajar web Programming','https://phpmu.com','','2017-05-21'),(22,'Jasa Pembuatan Website Murah','https://phpmu.com','','2017-05-21'),(23,'Komunitas  Pecinta CMS Lokomedia','https://phpmu.com','','2017-05-21');

/*Table structure for table `berita` */

DROP TABLE IF EXISTS `berita`;

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM AUTO_INCREMENT=686 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `berita` */

/*Table structure for table `download` */

DROP TABLE IF EXISTS `download`;

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `download` */

insert  into `download`(`id_download`,`judul`,`nama_file`,`tgl_posting`,`hits`) values (11,'Total Biaya Pembuatan Aplikasi Simpeg','Contoh_File_Download_1.txt','2014-09-23',8),(12,'Type atau Jenis Join di MySQL','Contoh_File_Download_1.txt','2014-09-23',68),(13,'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)','Contoh_File_Download_1.txt','2014-09-23',34),(14,'Pembayaran Tunjangan Remunerasi','Contoh_File_Download_1.txt','2014-09-23',24),(15,'Target PNBP Umum & PNBP Fungsional TA.2015','Contoh_File_Download_1.txt','2014-09-23',3),(16,'Pelaksanaan Disiplin Pasca Idul Fitri 1435','Contoh_File_Download_1.txt','2014-09-23',90),(17,'Kegiatan Akurasi Data Semester I TA. 2014','Contoh_File_Download_1.txt','2014-09-23',14),(18,'Rapat Koordinasi dan Konsultasi','Contoh_File_Download_1.txt','2014-09-23',5),(19,'Lomba dan Penilaian SIMPEG dan E-DOCu','Contoh_File_Download_1.txt','2014-09-23',90),(20,'Pemanggilan Peserta Bimtek Hakim Tahun 2014','Contoh_File_Download_1.txt','2014-09-23',33),(21,'Penyusunan PAGU Indikatif Tahun Anggaran 2015','Contoh_File_Download_1.txt','2014-09-23',57),(22,'Revisi Tata Cara Restore Backup SAKPA13 Audited','Contoh_File_Download_1.txt','2014-09-23',44),(23,'Penyusunan RKAKL Alokasi Anggaran DIPA (04)','Contoh_File_Download_1.txt','2014-09-23',24),(24,'Tindaklanjut Temuan Pemeriksaan BPK RI','Contoh_File_Download_1.txt','2014-09-23',12),(25,'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN','Contoh_File_Download_1.txt','2014-09-23',3),(26,'Instruksi Ketua Umum IPASPI Pusat (new)','Contoh_File_Download_1.txt','2014-09-23',24),(27,'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg','Contoh_File_Download_1.txt','2014-09-23',6);

/*Table structure for table `gallery` */

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL AUTO_INCREMENT,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM AUTO_INCREMENT=261 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `gallery` */

insert  into `gallery`(`id_gallery`,`id_album`,`username`,`jdl_gallery`,`gallery_seo`,`keterangan`,`gbr_gallery`) values (238,30,'admin','Lautan Penonton','lautan-penonton','Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n',''),(237,30,'admin','Mengenang WS. Rendra','mengenang-ws-rendra','Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n',''),(240,31,'admin','Doa Bersamaaa','doa-bersamaaa','<p>Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.cbcvb</p>\r\n',''),(239,30,'admin','Semangat Kantata','semangat-kantata','Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n',''),(236,30,'admin','Iwan Fals','iwan-fals','Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n',''),(235,30,'admin','Iwan dan Oemar Bakrie','iwan-dan-oemar-bakrie','Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n',''),(234,30,'admin','Bento...Bento..!!','bentobento','Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n',''),(232,29,'admin','Karpet Raksasa dari Bunga 008','karpet-raksasa-dari-bunga-008','sdasdasd',''),(233,30,'admin','Sujud Syukur','sujud-syukur','Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n',''),(231,29,'admin','Karpet Raksasa dari Bunga 007','karpet-raksasa-dari-bunga-007','',''),(230,29,'admin','Karpet Raksasa dari Bunga 006','karpet-raksasa-dari-bunga-006','',''),(229,29,'admin','Karpet Raksasa dari Bunga 005','karpet-raksasa-dari-bunga-005','',''),(228,29,'admin','Karpet Raksasa dari Bunga 004','karpet-raksasa-dari-bunga-004','',''),(227,29,'admin','Karpet Raksasa dari Bunga 003','karpet-raksasa-dari-bunga-003','',''),(225,29,'admin','Karpet Raksasa dari Bunga 001','karpet-raksasa-dari-bunga-001','',''),(226,29,'admin','Karpet Raksasa dari Bunga 002','karpet-raksasa-dari-bunga-002','',''),(224,28,'admin','Favorit','favorit','Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n',''),(223,28,'admin','Suasana Pasar Asemka','suasana-pasar-asemka','Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n',''),(222,28,'admin','Petasan','petasan','Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n',''),(221,28,'admin','Merah Marun','merah-marun','Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n',''),(220,28,'admin','Menata Cincin','menata-cincin','Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n',''),(219,28,'admin','Suvenir','suvenir','Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n',''),(218,28,'admin','Seorang Wanita Pedagang','seorang-wanita-pedagang','Seorang wanita sedang menunggu kios aksesorisnya.\r\n',''),(217,28,'admin','Suasana Pasar','suasana-pasar','Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n',''),(216,28,'admin','Pedagang','pedagang','Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n',''),(254,1,'admin','Screenshot 1 ','screenshot-1-','Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ','');

/*Table structure for table `halamanstatis` */

DROP TABLE IF EXISTS `halamanstatis`;

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_halaman`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `halamanstatis` */

insert  into `halamanstatis`(`id_halaman`,`judul`,`judul_seo`,`isi_halaman`,`tgl_posting`,`gambar`,`username`,`dibaca`,`jam`,`hari`) values (48,'Alamat Perusahaan','alamat-perusahaan','<p>Kami berlokasi di Bekasi Utara</p>\r\n','2014-04-07','','admin',24,'13:32:28','Senin'),(52,'Tentang kami','tentang-kami','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n','2019-07-10','','admin',1,'17:30:48','Rabu');

/*Table structure for table `header` */

DROP TABLE IF EXISTS `header`;

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_header`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `header` */

insert  into `header`(`id_header`,`judul`,`url`,`gambar`,`tgl_posting`) values (31,'Header3','','header3.jpg','2011-04-06'),(32,'Header2','','header1.jpg','2011-04-06'),(33,'Header1','','header2.jpg','2011-04-06');

/*Table structure for table `hubungi` */

DROP TABLE IF EXISTS `hubungi`;

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `hubungi` */

insert  into `hubungi`(`id_hubungi`,`nama`,`email`,`subjek`,`pesan`,`tanggal`,`jam`,`dibaca`,`lampiran`) values (39,'Robby Prihandaya','robby.prihandaya@gmail.com','::1','Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.','2017-01-23','21:56:12','Y',''),(35,'yusri renor','aciafifah@gmail.com','pertanyaan','bagaimana cara mengunduh nomor ujian fak. pertanian','2014-01-19','00:00:00','Y',''),(36,'Lusi Rahmawati','robby.prihandaya@gmail.com','xvgxcvxc','gbvibviubuibiub','2014-07-02','00:00:00','Y',''),(38,'Udin Sedunia','udin.sedunia@gmail.com','Ip Pengirim : 120.177.28.244','Silahkan menghubungi kami melalui private message melalui form yang berada pada bagian kanan halaman ini. Kritik dan saran Anda sangat penting bagi kami untuk terus meningkatkan kualitas produk dan layanan yang kami berikan kepada Anda.','2015-06-02','00:00:00','Y',''),(40,'Robby Prihandaya','robby.prihandaya@gmail.com','::1','Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.','2017-01-25','09:54:45','Y',''),(41,'Robby Prihandaya','todaynews.co.id@gmail.coms','::1','asdasdasd','2018-05-04','19:33:01','N','');

/*Table structure for table `identitas` */

DROP TABLE IF EXISTS `identitas`;

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL AUTO_INCREMENT,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL,
  PRIMARY KEY (`id_identitas`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `identitas` */

insert  into `identitas`(`id_identitas`,`nama_website`,`email`,`url`,`facebook`,`rekening`,`no_telp`,`meta_deskripsi`,`meta_keyword`,`favicon`,`maps`) values (1,'Motor Lawas Bekasi','motorlawasbekasi@gmail.com','','https://www.facebook.com/motorlawasbekasi','001122334455','081267771344','Jual beli Motor Lawas tua bangka','','favicon.ico','');

/*Table structure for table `iklanatas` */

DROP TABLE IF EXISTS `iklanatas`;

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_iklanatas`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `iklanatas` */

insert  into `iklanatas`(`id_iklanatas`,`judul`,`username`,`url`,`gambar`,`tgl_posting`) values (40,'Iklan atas 1','admin','https://members.phpmu.com/','1.jpg','2019-03-26'),(41,'Iklan atas 2','admin','https://members.phpmu.com/','2.jpg','2019-03-26'),(42,'Iklan atas 3','admin','https://members.phpmu.com/','3.jpg','2019-03-26'),(43,'Iklan atas 4','admin','https://members.phpmu.com/','4.jpg','2019-03-26'),(44,'Iklan atas 5','admin','https://members.phpmu.com/','5.jpg','2019-03-26');

/*Table structure for table `iklantengah` */

DROP TABLE IF EXISTS `iklantengah`;

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_iklantengah`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `iklantengah` */

insert  into `iklantengah`(`id_iklantengah`,`judul`,`username`,`url`,`gambar`,`tgl_posting`) values (1,'Iklan Home No 1','admin','http://phpmu.com','home.jpg','2015-03-17'),(2,'Iklan Home No 2','admin','http://phpmu.com','home.jpg','2015-03-17'),(3,'Iklan Home No 3','admin','http://phpmu.com','home.jpg','2015-03-17'),(4,'Iklan Bawah Detail Berita','admin','http://phpmu.com','home.jpg','2015-03-17'),(5,'Iklan dibawah Detail Video','admin','http://phpmu.com','home.jpg','2015-03-18'),(6,'Iklan dibawah Detail Berita Foto','admin','http://phpmu.com','home.swf','2015-03-19'),(7,'Iklan dibawah Halaman Download','admin','http://phpmu.com','home.jpg','2015-03-17'),(8,'Iklan dibawah detail agenda','admin','http://phpmu.com','home.jpg','2015-03-21'),(9,'Iklan dibawah halaman statis','admin','http://phpmu.com','','2015-03-21');

/*Table structure for table `katajelek` */

DROP TABLE IF EXISTS `katajelek`;

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL AUTO_INCREMENT,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_jelek`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `katajelek` */

insert  into `katajelek`(`id_jelek`,`kata`,`username`,`ganti`) values (4,'sex','','s**'),(2,'bajingan','','b*******'),(3,'bangsat','','b******'),(5,'fuck','admin','f**k'),(6,'pantat','admin','p****t');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`,`username`,`kategori_seo`,`aktif`,`sidebar`) values (19,'Teknologi','','teknologi','Y',2),(2,'Olahraga','','olahraga','Y',4),(21,'Ekonomi','','ekonomi','Y',7),(22,'Politik','','politik','N',0),(23,'Hiburan','','hiburan','Y',3),(31,'Kesehatan ','','kesehatan-','Y',5),(36,'Komunitas','','komunitas','N',0),(34,'Seni & Budaya','','seni--budaya','N',0),(37,'Sekitar Kita','','sekitar-kita','N',0),(39,'Internasional','','internasional','Y',1),(40,'Kuliner','','kuliner','Y',0),(41,'Metropolitan','','metropolitan','Y',6),(42,'Dunia Islam','','dunia-islam','N',0),(44,'Wisata','','wisata','N',0),(46,'Daerah','','daerah','N',0),(47,'Gaya Hidup','','gaya-hidup','Y',0),(48,'Hukum','','hukum','Y',0),(52,'Sejarah Indonesia','admin','sejarah-indonesia','N',0),(53,'Tokoh','admin','tokoh','N',0),(54,'Tutorial','admin','tutorial','N',0);

/*Table structure for table `komentar` */

DROP TABLE IF EXISTS `komentar`;

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `komentar` */

insert  into `komentar`(`id_komentar`,`id_berita`,`nama_komentar`,`url`,`isi_komentar`,`tgl`,`jam_komentar`,`aktif`,`email`) values (84,650,'Robby Prihandaya','robby.prihandaya@gmail.com','Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ','2012-01-05','00:15:45','N','robby.prihandaya@gmail.com'),(88,650,'Udin Sedunia','www.belajarkonseling.com',' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ','2012-01-13','20:09:07','Y','www.belajarkonseling.com'),(90,650,'Rizal Faizal','www.rizal-online.co.cc',' asyik  aja  dehh...   ','2012-02-25','15:01:40','Y','www.rizal-online.co.cc'),(91,645,'Eka Praja W','komputerkampus.com',' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ','2012-03-08','20:06:07','Y','komputerkampus.com'),(137,650,'Lukmanul Hakim','',' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ','2013-01-19','18:56:25','Y','lukmanul.haskim@gmai;.com'),(146,645,'Tommy Utama','tommy.utama@gmail.com',' Calon  hakim  agung  Muhammad  Daming  Sanusi  menyatakan,  hukuman  mati  tidak  layak  diberlakukan  bagi  pelaku  pemerkosaan.   ','2014-07-21','21:03:04','Y','tommy.utama@gmail.com'),(147,655,'Robby Prihandaya','robby.prihandaya@gmail.com','Mudah-mudahan  windows  8.2  tampilannya  lebih  keren  lagi  dari  windows  8.1 sebelumnya  yang  kurang  enak  di gunakan.  heheheee   ','2014-07-22','08:33:04','Y','robby.prihandaya@gmail.com'),(144,650,'Tommy Utama','tommy.utama@gmail.com','Pengamat  politik  dari  Charta  Politika,  Yunarto  Wijaya  mempertanyakan  dasar  keputusan  SBY  menunjuk  Roy  Suryo  sebagai  Menpora.   ','2014-07-21','20:59:16','Y','tommy.utama@gmail.com'),(143,650,'Udin Sedunia','udin.sedunia@gmail.com','Menurut  Yunarto,  Roy  selama  ini  lebih  dikenal  sebagai  pakar  foto  digital  dan  video  serta  dosen  di  sebuah  perguruan  tinggi  negeri.   ','2014-07-21','20:57:52','Y','udin.sedunia@gmail.com'),(148,662,'Robby Prihandaya','robby.prihandaya@gmail.com','pantat negara yahudi yang sangat perlu untuk dihancurkan /  musnahkan  dan  bantai  seluruh  warga israel..!!!   ','2014-07-24','09:29:20','Y','robby.prihandaya@gmail.com'),(149,662,'Edo Ikfianda','edomuhammad90@gmail.com','Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.','2014-08-09','17:34:35','Y','edomuhammad90@gmail.com'),(152,650,'Dewi Safitriir','dewi_safitri@gmail.com','Peremimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei  menyampaikan  pernyataan  kontroversial  terkait  ketegangan  di  Gaza.Israele.   ','2014-08-17','17:46:28','N','dewi_safitri@gmail.com'),(153,662,'Robby Prihandaya','ww.phpmu.com','Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.','2015-03-25','06:10:12','Y','robby.prihandaya@gmail.com'),(154,642,'Tommy Utama','tommyutama.com',' Para  pengunjuk  rasa  membawa  bendera-bendera  Palestina  dan  foro-foto  pemimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei.   ','2016-11-24','10:24:15','Y','tommy.utama@gmail.com'),(164,656,'Robby Prihandaya','https://phpmu.com','Komentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.','2018-04-20','10:41:54','Y','robby.prihandaya@gmail.com');

/*Table structure for table `komentarvid` */

DROP TABLE IF EXISTS `komentarvid`;

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `komentarvid` */

insert  into `komentarvid`(`id_komentar`,`id_video`,`nama_komentar`,`url`,`isi_komentar`,`tgl`,`jam_komentar`,`aktif`) values (107,160,'Prabowo Subianto','Prabowo@gmail.com',' Your  email  address  will  not  be  published.  Required  fields  are  marked','2014-07-21','13:29:29','N'),(108,163,'Robby Prihandaya','robby.prihandaya@gmail.com',' Kita  memang  harus  selamatkan  hutan  indonesia,  walau  apapun  yang  terjadi.   ','2014-07-21','13:31:10','Y'),(109,160,'Robby Prihandaya','robby.prihandaya@gmail.com',' Swarakalibata  V.3 sekarang  hadir  dengan  tampilan  baru  yang  pastinya  sudah  jauh  lebih  maju  dari  versi  sebelumnya.','2014-07-21','21:09:31','Y'),(112,166,'Robby Prihandaya','robby.prihandaya@gmail.com','Exclusive Di IDAFF Acedemy - &quot;Social Blogging Mastery 2&quot; - Workshop 2 Hari Yang Akan Merubah Hidup Anda Di Tahun 2017. Di Bongkar Oleh Ahlinya Cara Paling Mudah Memiliki Penghasillan Sampingan Lewat Internet Hingga Jutaan Rupiah Setiap Bulannya.','2017-01-25','09:40:01','Y'),(113,166,'Dewiit Safitri','dewiit.safitri@gmail.com','Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA.','2017-01-25','09:40:55','Y');

/*Table structure for table `logo` */

DROP TABLE IF EXISTS `logo`;

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_logo`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `logo` */

insert  into `logo`(`id_logo`,`gambar`) values (15,'logo1.png');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL AUTO_INCREMENT,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`id_menu`,`id_parent`,`nama_menu`,`link`,`aktif`,`position`,`urutan`) values (115,0,'Alamat Kami','halaman/detail/alamat-perusahaan','Ya','Top',3),(113,0,'Tentang Kami','halaman/detail/tentang-kami-tunggul-news','Ya','Top',2),(112,22,'Dalam Negeri','#','Ya','Bottom',20),(161,0,'Order Report','members/orders_report','Ya','Bottom',26),(116,0,'Hubungi Kami','hubungi','Ya','Top',4),(119,0,'Index Berita','berita/indeks_berita','Ya','Top',1),(126,22,'Luar Negeri','#','Ya','Bottom',21),(160,0,'Konfirmasi Pembayaran','konfirmasi','Ya','Bottom',25),(158,0,'Semua Penjual','produk/reseller','Ya','Bottom',23),(157,0,'Semua Produk','produk','Ya','Bottom',22),(162,0,'About Us','halaman/detail/tentang-kami','Ya','Bottom',27);

/*Table structure for table `mod_alamat` */

DROP TABLE IF EXISTS `mod_alamat`;

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL AUTO_INCREMENT,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_alamat`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `mod_alamat` */

insert  into `mod_alamat`(`id_alamat`,`alamat`) values (1,'<strong>Haloo!</strong>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br />\r\n<br />\r\nKami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.\r\n');

/*Table structure for table `mod_ym` */

DROP TABLE IF EXISTS `mod_ym`;

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `mod_ym` */

/*Table structure for table `modul` */

DROP TABLE IF EXISTS `modul`;

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*Data for the table `modul` */

insert  into `modul`(`id_modul`,`nama_modul`,`username`,`link`,`static_content`,`gambar`,`publish`,`status`,`aktif`,`urutan`,`link_seo`) values (2,'Manajemen User','admin','manajemenuser','','','Y','user','Y',0,''),(18,'Berita','admin','listberita','','','Y','user','Y',0,''),(71,'Background Website','admin','background','','','N','admin','N',0,''),(10,'Manajemen Modul','admin','manajemenmodul','','','Y','user','Y',0,''),(31,'Kategori Berita ','admin','kategorikategori','','','Y','user','Y',0,''),(33,'Jajak Pendapat','admin','jajakpendapat','','','Y','user','Y',0,''),(34,'Tag Berita','admin','tagberita','','','Y','user','Y',0,''),(35,'Komentar Berita','admin','komentarberita','','','Y','user','Y',0,''),(41,'Agenda','admin','agenda','','','Y','user','Y',0,''),(43,'Berita Foto','admin','album','','','Y','user','Y',0,''),(44,'Galeri Berita Foto','admin','gallery','','','Y','user','Y',0,''),(45,'Template Website','admin','templatewebsite','','','Y','user','Y',0,''),(46,'Sensor Kata','admin','sensorkomentar','','','Y','user','Y',0,''),(61,'Identitas Website','admin','identitaswebsite','','','Y','user','Y',0,''),(57,'Menu Website','admin','menuwebsite','','','Y','user','Y',0,''),(59,'Halaman Baru','admin','halamanbaru','','','Y','user','Y',0,''),(62,'Video','admin','video','','','Y','user','Y',0,''),(63,'Playlist Video','admin','playlist','','','Y','user','Y',0,''),(64,'Tag Video','admin','tagvideo','','','Y','user','Y',0,''),(65,'Komentar Video','admin','komentarvideo','','','Y','user','Y',0,''),(66,'Logo Website','admin','logowebsite','','','Y','user','Y',0,''),(67,'Iklan Sidebar','admin','iklansidebar','','','N','admin','N',0,''),(68,'Iklan Home','admin','iklanhome','','','N','admin','N',0,''),(69,'Iklan Atas','admin','iklanatas','','','N','admin','N',0,''),(70,'Pesan Masuk','admin','pesanmasuk','','','Y','user','Y',0,''),(72,'Sekilas Info','admin','sekilasinfo','','','N','admin','N',0,''),(73,'Yahoo Messanger','admin','ym','','','N','admin','N',0,''),(74,'Download Area','admin','download','','','Y','admin','Y',0,''),(75,'Alamat Kontak','admin','alamat','','','Y','admin','Y',0,'');

/*Table structure for table `pasangiklan` */

DROP TABLE IF EXISTS `pasangiklan`;

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_pasangiklan`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `pasangiklan` */

insert  into `pasangiklan`(`id_pasangiklan`,`judul`,`username`,`url`,`gambar`,`tgl_posting`) values (1,'Iklan Sidebar Kiri','admin','http://phpmu.com','kiri.jpg','2014-06-22'),(2,'Iklan Sidebar Kanan','admin','http://phpmu.com','kanan.jpg','2014-06-22');

/*Table structure for table `playlist` */

DROP TABLE IF EXISTS `playlist`;

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_playlist`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `playlist` */

insert  into `playlist`(`id_playlist`,`jdl_playlist`,`username`,`playlist_seo`,`gbr_playlist`,`aktif`) values (56,'Playlist Video 1','admin','playlist-video-1','','Y'),(57,'Playlist Video 2','admin','playlist-video-2','','Y'),(61,'Playlist Video 4','admin','playlist-video-4','','Y'),(60,'Playlist Video 3','admin','playlist-video-3','','Y');

/*Table structure for table `poling` */

DROP TABLE IF EXISTS `poling`;

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_poling`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `poling` */

insert  into `poling`(`id_poling`,`pilihan`,`status`,`username`,`rating`,`aktif`) values (18,'Siapakah Calon Walikota dan Wakil Walikota Padang Favorit Anda?','Pertanyaan','admin',0,'Y'),(25,'Mahyeldi Ansyarullah - Emzalmi','Jawaban','admin',25,'Y'),(31,'Robby Prihandaya - Dewi Safitri','Jawaban','admin',1,'Y'),(32,'Tommy Utama - Laura Hikmah','Jawaban','admin',3,'Y'),(33,'Willy Fernando - Vicky Armita','Jawaban','admin',9,'Y'),(35,'Laura Himah i Nisaa - Safaruddin','Jawaban','admin',5,'Y');

/*Table structure for table `rb_bonus` */

DROP TABLE IF EXISTS `rb_bonus`;

CREATE TABLE `rb_bonus` (
  `id_bonus` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `waktu_bonus` datetime NOT NULL,
  PRIMARY KEY (`id_bonus`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `rb_bonus` */

insert  into `rb_bonus`(`id_bonus`,`username`,`nominal`,`status`,`waktu_bonus`) values (8,'arsenio',100000,'1','2017-04-10 23:55:38'),(7,'robby',100000,'1','2017-04-10 23:55:38');

/*Table structure for table `rb_kategori_produk` */

DROP TABLE IF EXISTS `rb_kategori_produk`;

CREATE TABLE `rb_kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `kategori_seo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori_produk`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `rb_kategori_produk` */

insert  into `rb_kategori_produk`(`id_kategori_produk`,`nama_kategori`,`kategori_seo`) values (12,'SPAREPART','sparepart'),(13,'MOTOR LAWAS','motor-lawas');

/*Table structure for table `rb_kategori_produk_sub` */

DROP TABLE IF EXISTS `rb_kategori_produk_sub`;

CREATE TABLE `rb_kategori_produk_sub` (
  `id_kategori_produk_sub` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori_sub` varchar(255) NOT NULL,
  `kategori_seo_sub` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori_produk_sub`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `rb_kategori_produk_sub` */

insert  into `rb_kategori_produk_sub`(`id_kategori_produk_sub`,`id_kategori_produk`,`nama_kategori_sub`,`kategori_seo_sub`) values (1,2,'Kiyora Sedang','kiyora-sedang'),(2,2,'Kiyora Dalam','kiyora-dalam'),(3,1,'Motherboard','motherboard'),(4,1,'Storage External','storage-external'),(6,13,'HONDA','honda'),(7,13,'SUZUKI','suzuki'),(8,13,'YAMAHA','yamaha'),(9,13,'VESPA','vespa'),(10,12,'HONDA','honda'),(11,12,'YAMAHA','yamaha'),(12,12,'SUZUKI','suzuki'),(13,12,'VESPA','vespa');

/*Table structure for table `rb_keterangan` */

DROP TABLE IF EXISTS `rb_keterangan`;

CREATE TABLE `rb_keterangan` (
  `id_keterangan` int(5) NOT NULL AUTO_INCREMENT,
  `id_reseller` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_posting` date NOT NULL,
  PRIMARY KEY (`id_keterangan`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `rb_keterangan` */

insert  into `rb_keterangan`(`id_keterangan`,`id_reseller`,`keterangan`,`tanggal_posting`) values (1,2,'<b>Informasi dari Reseller :</b><p></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis.&nbsp; dfsdfsdf</p><p>Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero. ertert</p>','2017-03-31');

/*Table structure for table `rb_konfirmasi_pembayaran` */

DROP TABLE IF EXISTS `rb_konfirmasi_pembayaran`;

CREATE TABLE `rb_konfirmasi_pembayaran` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL,
  PRIMARY KEY (`id_konfirmasi_pembayaran`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `rb_konfirmasi_pembayaran` */

insert  into `rb_konfirmasi_pembayaran`(`id_konfirmasi_pembayaran`,`id_penjualan`,`total_transfer`,`id_rekening`,`nama_pengirim`,`tanggal_transfer`,`bukti_transfer`,`waktu_konfirmasi`) values (1,14,'Rp 3,605,000',2,'Robby Prihandaya','2017-06-01','Transfer_Member_PHP.png','2017-06-01 17:17:55'),(2,58,'Rp 700,000',1,'ttt','2018-09-12','','2018-09-12 14:43:39'),(3,68,'Rp 1,332,900',1,'Reseller Utama','2018-12-26','234.JPG','2018-12-26 08:19:57'),(4,91,'Rp 399,000',1,'Murni Jaya','2019-03-22','Screenshot_20190227-155933_BCA_mobile.jpg','2019-03-22 06:28:27');

/*Table structure for table `rb_konfirmasi_pembayaran_konsumen` */

DROP TABLE IF EXISTS `rb_konfirmasi_pembayaran_konsumen`;

CREATE TABLE `rb_konfirmasi_pembayaran_konsumen` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL,
  PRIMARY KEY (`id_konfirmasi_pembayaran`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `rb_konfirmasi_pembayaran_konsumen` */

insert  into `rb_konfirmasi_pembayaran_konsumen`(`id_konfirmasi_pembayaran`,`id_penjualan`,`total_transfer`,`id_rekening`,`nama_pengirim`,`tanggal_transfer`,`bukti_transfer`,`waktu_konfirmasi`) values (2,19,'Rp 1,278,000',1,'Robby Prihandaya','2017-06-02','00011.jpg','2017-06-02 15:19:40'),(3,43,'Rp 4,799,000',0,'Dewiit Safitri ','2017-06-04','0755.png','2017-06-04 11:27:01'),(5,47,'Rp 728,000',1,'Agus Raharjo','2017-06-07','1.png','2017-06-07 21:06:06'),(6,57,'Rp 945,900',1,'Robby Prihandaya','2018-12-11','','2018-12-11 14:01:05'),(7,57,'Rp 945,900',1,'Robby Prihandaya','2018-12-11','','2018-12-11 14:02:22'),(8,57,'Rp 945,900',1,'Robby Prihandaya','2018-12-11','zhe_mandiri_logo.png','2018-12-11 14:03:11'),(9,61,'Rp 110,900',1,'Robby Prihandaya','2018-12-23','bukti_transfer_phpmu1.jpeg','2018-12-23 07:39:30'),(10,85,'Rp 776,000',2,'Robby Prihandaya','2019-03-21','bukti_transfer3.jpg','2019-03-21 12:04:31'),(11,86,'Rp 141,000',1,'Robby Prihandaya','2019-03-21','IMG-20190217-WA0002.jpg','2019-03-21 12:09:00'),(12,87,'Rp 82,000',1,'Muhammad Arsenio','2019-03-21','IMG-20190115-WA0013.jpg','2019-03-21 12:11:56');

/*Table structure for table `rb_konsumen` */

DROP TABLE IF EXISTS `rb_konsumen`;

CREATE TABLE `rb_konsumen` (
  `id_konsumen` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  PRIMARY KEY (`id_konsumen`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `rb_konsumen` */

insert  into `rb_konsumen`(`id_konsumen`,`username`,`password`,`nama_lengkap`,`email`,`jenis_kelamin`,`tanggal_lahir`,`tempat_lahir`,`alamat_lengkap`,`kecamatan`,`kota_id`,`no_hp`,`foto`,`tanggal_daftar`) values (27,'mrdenis','9970f16668b0ce09b694293b5164ae2b211fb9a23e9026bb4d0d1aef370f192120dd5f5a8e78c06d57fa036de0975c09b528ea7dc49262aee10c3247e62964fa','Denista Setiawan','denisklimis2@yahoo.co.id','Laki-laki','1998-02-13','Tebet','Jln. Mawar Becek No.6','Bekasi utara',55,'0835546374','','2019-07-09'),(28,'bewok','1ea164a495be6a22fbef32d4419676f4bbc542a7b2510f1a09075e353b030780e78584bf77c7562479e5738e35cbade34eec7d800a18db5db51e652fe802413d','Bewok Bucindtoss','bewokbucin@gmail.com','Laki-laki','0000-00-00','','Kaga tau','Kaga Tau',55,'0878801244125','','2019-07-10');

/*Table structure for table `rb_kota` */

DROP TABLE IF EXISTS `rb_kota`;

CREATE TABLE `rb_kota` (
  `kota_id` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  PRIMARY KEY (`kota_id`)
) ENGINE=MyISAM AUTO_INCREMENT=502 DEFAULT CHARSET=latin1;

/*Data for the table `rb_kota` */

insert  into `rb_kota`(`kota_id`,`provinsi_id`,`nama_kota`) values (17,1,'Badung'),(32,1,'Bangli'),(94,1,'Buleleng'),(114,1,'Denpasar'),(128,1,'Gianyar'),(161,1,'Jembrana'),(170,1,'Karangasem'),(197,1,'Klungkung'),(447,1,'Tabanan'),(27,2,'Bangka'),(28,2,'Bangka Barat'),(29,2,'Bangka Selatan'),(30,2,'Bangka Tengah'),(56,2,'Belitung'),(57,2,'Belitung Timur'),(334,2,'Pangkal Pinang'),(106,3,'Cilegon'),(232,3,'Lebak'),(331,3,'Pandeglang'),(402,3,'Serang'),(403,3,'Serang'),(455,3,'Tangerang'),(456,3,'Tangerang'),(457,3,'Tangerang Selatan'),(62,4,'Bengkulu'),(63,4,'Bengkulu Selatan'),(64,4,'Bengkulu Tengah'),(65,4,'Bengkulu Utara'),(175,4,'Kaur'),(183,4,'Kepahiang'),(233,4,'Lebong'),(294,4,'Muko Muko'),(379,4,'Rejang Lebong'),(397,4,'Seluma'),(39,5,'Bantul'),(135,5,'Gunung Kidul'),(210,5,'Kulon Progo'),(419,5,'Sleman'),(501,5,'Yogyakarta'),(151,6,'Jakarta Barat'),(152,6,'Jakarta Pusat'),(153,6,'Jakarta Selatan'),(154,6,'Jakarta Timur'),(155,6,'Jakarta Utara'),(189,6,'Kepulauan Seribu'),(77,7,'Boalemo'),(88,7,'Bone Bolango'),(129,7,'Gorontalo'),(130,7,'Gorontalo'),(131,7,'Gorontalo Utara'),(361,7,'Pohuwato'),(50,8,'Batang Hari'),(97,8,'Bungo'),(156,8,'Jambi'),(194,8,'Kerinci'),(280,8,'Merangin'),(293,8,'Muaro Jambi'),(393,8,'Sarolangun'),(442,8,'Sungaipenuh'),(460,8,'Tanjung Jabung Barat'),(461,8,'Tanjung Jabung Timur'),(471,8,'Tebo'),(22,9,'Bandung'),(23,9,'Bandung'),(24,9,'Bandung Barat'),(34,9,'Banjar'),(54,9,'Bekasi'),(55,9,'Bekasi'),(78,9,'Bogor'),(79,9,'Bogor'),(103,9,'Ciamis'),(104,9,'Cianjur'),(107,9,'Cimahi'),(108,9,'Cirebon'),(109,9,'Cirebon'),(115,9,'Depok'),(126,9,'Garut'),(149,9,'Indramayu'),(171,9,'Karawang'),(211,9,'Kuningan'),(252,9,'Majalengka'),(332,9,'Pangandaran'),(376,9,'Purwakarta'),(428,9,'Subang'),(430,9,'Sukabumi'),(431,9,'Sukabumi'),(440,9,'Sumedang'),(468,9,'Tasikmalaya'),(469,9,'Tasikmalaya'),(37,10,'Banjarnegara'),(41,10,'Banyumas'),(49,10,'Batang'),(76,10,'Blora'),(91,10,'Boyolali'),(92,10,'Brebes'),(105,10,'Cilacap'),(113,10,'Demak'),(134,10,'Grobogan'),(163,10,'Jepara'),(169,10,'Karanganyar'),(177,10,'Kebumen'),(181,10,'Kendal'),(196,10,'Klaten'),(209,10,'Kudus'),(249,10,'Magelang'),(250,10,'Magelang'),(344,10,'Pati'),(348,10,'Pekalongan'),(349,10,'Pekalongan'),(352,10,'Pemalang'),(375,10,'Purbalingga'),(377,10,'Purworejo'),(380,10,'Rembang'),(386,10,'Salatiga'),(398,10,'Semarang'),(399,10,'Semarang'),(427,10,'Sragen'),(433,10,'Sukoharjo'),(445,10,'Surakarta (Solo)'),(472,10,'Tegal'),(473,10,'Tegal'),(476,10,'Temanggung'),(497,10,'Wonogiri'),(498,10,'Wonosobo'),(31,11,'Bangkalan'),(42,11,'Banyuwangi'),(51,11,'Batu'),(74,11,'Blitar'),(75,11,'Blitar'),(80,11,'Bojonegoro'),(86,11,'Bondowoso'),(133,11,'Gresik'),(160,11,'Jember'),(164,11,'Jombang'),(178,11,'Kediri'),(179,11,'Kediri'),(222,11,'Lamongan'),(243,11,'Lumajang'),(247,11,'Madiun'),(248,11,'Madiun'),(251,11,'Magetan'),(256,11,'Malang'),(255,11,'Malang'),(289,11,'Mojokerto'),(290,11,'Mojokerto'),(305,11,'Nganjuk'),(306,11,'Ngawi'),(317,11,'Pacitan'),(330,11,'Pamekasan'),(342,11,'Pasuruan'),(343,11,'Pasuruan'),(363,11,'Ponorogo'),(369,11,'Probolinggo'),(370,11,'Probolinggo'),(390,11,'Sampang'),(409,11,'Sidoarjo'),(418,11,'Situbondo'),(441,11,'Sumenep'),(444,11,'Surabaya'),(487,11,'Trenggalek'),(489,11,'Tuban'),(492,11,'Tulungagung'),(61,12,'Bengkayang'),(168,12,'Kapuas Hulu'),(176,12,'Kayong Utara'),(195,12,'Ketapang'),(208,12,'Kubu Raya'),(228,12,'Landak'),(279,12,'Melawi'),(364,12,'Pontianak'),(365,12,'Pontianak'),(388,12,'Sambas'),(391,12,'Sanggau'),(395,12,'Sekadau'),(415,12,'Singkawang'),(417,12,'Sintang'),(18,13,'Balangan'),(33,13,'Banjar'),(35,13,'Banjarbaru'),(36,13,'Banjarmasin'),(43,13,'Barito Kuala'),(143,13,'Hulu Sungai Selatan'),(144,13,'Hulu Sungai Tengah'),(145,13,'Hulu Sungai Utara'),(203,13,'Kotabaru'),(446,13,'Tabalong'),(452,13,'Tanah Bumbu'),(454,13,'Tanah Laut'),(466,13,'Tapin'),(44,14,'Barito Selatan'),(45,14,'Barito Timur'),(46,14,'Barito Utara'),(136,14,'Gunung Mas'),(167,14,'Kapuas'),(174,14,'Katingan'),(205,14,'Kotawaringin Barat'),(206,14,'Kotawaringin Timur'),(221,14,'Lamandau'),(296,14,'Murung Raya'),(326,14,'Palangka Raya'),(371,14,'Pulang Pisau'),(405,14,'Seruyan'),(432,14,'Sukamara'),(19,15,'Balikpapan'),(66,15,'Berau'),(89,15,'Bontang'),(214,15,'Kutai Barat'),(215,15,'Kutai Kartanegara'),(216,15,'Kutai Timur'),(341,15,'Paser'),(354,15,'Penajam Paser Utara'),(387,15,'Samarinda'),(96,16,'Bulungan (Bulongan)'),(257,16,'Malinau'),(311,16,'Nunukan'),(450,16,'Tana Tidung'),(467,16,'Tarakan'),(48,17,'Batam'),(71,17,'Bintan'),(172,17,'Karimun'),(184,17,'Kepulauan Anambas'),(237,17,'Lingga'),(302,17,'Natuna'),(462,17,'Tanjung Pinang'),(21,18,'Bandar Lampung'),(223,18,'Lampung Barat'),(224,18,'Lampung Selatan'),(225,18,'Lampung Tengah'),(226,18,'Lampung Timur'),(227,18,'Lampung Utara'),(282,18,'Mesuji'),(283,18,'Metro'),(355,18,'Pesawaran'),(356,18,'Pesisir Barat'),(368,18,'Pringsewu'),(458,18,'Tanggamus'),(490,18,'Tulang Bawang'),(491,18,'Tulang Bawang Barat'),(496,18,'Way Kanan'),(14,19,'Ambon'),(99,19,'Buru'),(100,19,'Buru Selatan'),(185,19,'Kepulauan Aru'),(258,19,'Maluku Barat Daya'),(259,19,'Maluku Tengah'),(260,19,'Maluku Tenggara'),(261,19,'Maluku Tenggara Barat'),(400,19,'Seram Bagian Barat'),(401,19,'Seram Bagian Timur'),(488,19,'Tual'),(138,20,'Halmahera Barat'),(139,20,'Halmahera Selatan'),(140,20,'Halmahera Tengah'),(141,20,'Halmahera Timur'),(142,20,'Halmahera Utara'),(191,20,'Kepulauan Sula'),(372,20,'Pulau Morotai'),(477,20,'Ternate'),(478,20,'Tidore Kepulauan'),(1,21,'Aceh Barat'),(2,21,'Aceh Barat Daya'),(3,21,'Aceh Besar'),(4,21,'Aceh Jaya'),(5,21,'Aceh Selatan'),(6,21,'Aceh Singkil'),(7,21,'Aceh Tamiang'),(8,21,'Aceh Tengah'),(9,21,'Aceh Tenggara'),(10,21,'Aceh Timur'),(11,21,'Aceh Utara'),(20,21,'Banda Aceh'),(59,21,'Bener Meriah'),(72,21,'Bireuen'),(127,21,'Gayo Lues'),(230,21,'Langsa'),(235,21,'Lhokseumawe'),(300,21,'Nagan Raya'),(358,21,'Pidie'),(359,21,'Pidie Jaya'),(384,21,'Sabang'),(414,21,'Simeulue'),(429,21,'Subulussalam'),(68,22,'Bima'),(69,22,'Bima'),(118,22,'Dompu'),(238,22,'Lombok Barat'),(239,22,'Lombok Tengah'),(240,22,'Lombok Timur'),(241,22,'Lombok Utara'),(276,22,'Mataram'),(438,22,'Sumbawa'),(439,22,'Sumbawa Barat'),(13,23,'Alor'),(58,23,'Belu'),(122,23,'Ende'),(125,23,'Flores Timur'),(212,23,'Kupang'),(213,23,'Kupang'),(234,23,'Lembata'),(269,23,'Manggarai'),(270,23,'Manggarai Barat'),(271,23,'Manggarai Timur'),(301,23,'Nagekeo'),(304,23,'Ngada'),(383,23,'Rote Ndao'),(385,23,'Sabu Raijua'),(412,23,'Sikka'),(434,23,'Sumba Barat'),(435,23,'Sumba Barat Daya'),(436,23,'Sumba Tengah'),(437,23,'Sumba Timur'),(479,23,'Timor Tengah Selatan'),(480,23,'Timor Tengah Utara'),(16,24,'Asmat'),(67,24,'Biak Numfor'),(90,24,'Boven Digoel'),(111,24,'Deiyai (Deliyai)'),(117,24,'Dogiyai'),(150,24,'Intan Jaya'),(157,24,'Jayapura'),(158,24,'Jayapura'),(159,24,'Jayawijaya'),(180,24,'Keerom'),(193,24,'Kepulauan Yapen (Yapen Waropen)'),(231,24,'Lanny Jaya'),(263,24,'Mamberamo Raya'),(264,24,'Mamberamo Tengah'),(274,24,'Mappi'),(281,24,'Merauke'),(284,24,'Mimika'),(299,24,'Nabire'),(303,24,'Nduga'),(335,24,'Paniai'),(347,24,'Pegunungan Bintang'),(373,24,'Puncak'),(374,24,'Puncak Jaya'),(392,24,'Sarmi'),(443,24,'Supiori'),(484,24,'Tolikara'),(495,24,'Waropen'),(499,24,'Yahukimo'),(500,24,'Yalimo'),(124,25,'Fakfak'),(165,25,'Kaimana'),(272,25,'Manokwari'),(273,25,'Manokwari Selatan'),(277,25,'Maybrat'),(346,25,'Pegunungan Arfak'),(378,25,'Raja Ampat'),(424,25,'Sorong'),(425,25,'Sorong'),(426,25,'Sorong Selatan'),(449,25,'Tambrauw'),(474,25,'Teluk Bintuni'),(475,25,'Teluk Wondama'),(60,26,'Bengkalis'),(120,26,'Dumai'),(147,26,'Indragiri Hilir'),(148,26,'Indragiri Hulu'),(166,26,'Kampar'),(187,26,'Kepulauan Meranti'),(207,26,'Kuantan Singingi'),(350,26,'Pekanbaru'),(351,26,'Pelalawan'),(381,26,'Rokan Hilir'),(382,26,'Rokan Hulu'),(406,26,'Siak'),(253,27,'Majene'),(262,27,'Mamasa'),(265,27,'Mamuju'),(266,27,'Mamuju Utara'),(362,27,'Polewali Mandar'),(38,28,'Bantaeng'),(47,28,'Barru'),(87,28,'Bone'),(95,28,'Bulukumba'),(123,28,'Enrekang'),(132,28,'Gowa'),(162,28,'Jeneponto'),(244,28,'Luwu'),(245,28,'Luwu Timur'),(246,28,'Luwu Utara'),(254,28,'Makassar'),(275,28,'Maros'),(328,28,'Palopo'),(333,28,'Pangkajene Kepulauan'),(336,28,'Parepare'),(360,28,'Pinrang'),(396,28,'Selayar (Kepulauan Selayar)'),(408,28,'Sidenreng Rappang/Rapang'),(416,28,'Sinjai'),(423,28,'Soppeng'),(448,28,'Takalar'),(451,28,'Tana Toraja'),(486,28,'Toraja Utara'),(493,28,'Wajo'),(25,29,'Banggai'),(26,29,'Banggai Kepulauan'),(98,29,'Buol'),(119,29,'Donggala'),(291,29,'Morowali'),(329,29,'Palu'),(338,29,'Parigi Moutong'),(366,29,'Poso'),(410,29,'Sigi'),(482,29,'Tojo Una-Una'),(483,29,'Toli-Toli'),(53,30,'Bau-Bau'),(85,30,'Bombana'),(101,30,'Buton'),(102,30,'Buton Utara'),(182,30,'Kendari'),(198,30,'Kolaka'),(199,30,'Kolaka Utara'),(200,30,'Konawe'),(201,30,'Konawe Selatan'),(202,30,'Konawe Utara'),(295,30,'Muna'),(494,30,'Wakatobi'),(73,31,'Bitung'),(81,31,'Bolaang Mongondow (Bolmong)'),(82,31,'Bolaang Mongondow Selatan'),(83,31,'Bolaang Mongondow Timur'),(84,31,'Bolaang Mongondow Utara'),(188,31,'Kepulauan Sangihe'),(190,31,'Kepulauan Siau Tagulandang Biaro (Sitaro)'),(192,31,'Kepulauan Talaud'),(204,31,'Kotamobagu'),(267,31,'Manado'),(285,31,'Minahasa'),(286,31,'Minahasa Selatan'),(287,31,'Minahasa Tenggara'),(288,31,'Minahasa Utara'),(485,31,'Tomohon'),(12,32,'Agam'),(93,32,'Bukittinggi'),(116,32,'Dharmasraya'),(186,32,'Kepulauan Mentawai'),(236,32,'Lima Puluh Koto/Kota'),(318,32,'Padang'),(321,32,'Padang Panjang'),(322,32,'Padang Pariaman'),(337,32,'Pariaman'),(339,32,'Pasaman'),(340,32,'Pasaman Barat'),(345,32,'Payakumbuh'),(357,32,'Pesisir Selatan'),(394,32,'Sawah Lunto'),(411,32,'Sijunjung (Sawah Lunto Sijunjung)'),(420,32,'Solok'),(421,32,'Solok'),(422,32,'Solok Selatan'),(453,32,'Tanah Datar'),(40,33,'Banyuasin'),(121,33,'Empat Lawang'),(220,33,'Lahat'),(242,33,'Lubuk Linggau'),(292,33,'Muara Enim'),(297,33,'Musi Banyuasin'),(298,33,'Musi Rawas'),(312,33,'Ogan Ilir'),(313,33,'Ogan Komering Ilir'),(314,33,'Ogan Komering Ulu'),(315,33,'Ogan Komering Ulu Selatan'),(316,33,'Ogan Komering Ulu Timur'),(324,33,'Pagar Alam'),(327,33,'Palembang'),(367,33,'Prabumulih'),(15,34,'Asahan'),(52,34,'Batu Bara'),(70,34,'Binjai'),(110,34,'Dairi'),(112,34,'Deli Serdang'),(137,34,'Gunungsitoli'),(146,34,'Humbang Hasundutan'),(173,34,'Karo'),(217,34,'Labuhan Batu'),(218,34,'Labuhan Batu Selatan'),(219,34,'Labuhan Batu Utara'),(229,34,'Langkat'),(268,34,'Mandailing Natal'),(278,34,'Medan'),(307,34,'Nias'),(308,34,'Nias Barat'),(309,34,'Nias Selatan'),(310,34,'Nias Utara'),(319,34,'Padang Lawas'),(320,34,'Padang Lawas Utara'),(323,34,'Padang Sidempuan'),(325,34,'Pakpak Bharat'),(353,34,'Pematang Siantar'),(389,34,'Samosir'),(404,34,'Serdang Bedagai'),(407,34,'Sibolga'),(413,34,'Simalungun'),(459,34,'Tanjung Balai'),(463,34,'Tapanuli Selatan'),(464,34,'Tapanuli Tengah'),(465,34,'Tapanuli Utara'),(470,34,'Tebing Tinggi'),(481,34,'Toba Samosir');

/*Table structure for table `rb_pembayaran_bonus` */

DROP TABLE IF EXISTS `rb_pembayaran_bonus`;

CREATE TABLE `rb_pembayaran_bonus` (
  `id_pembayaran_bonus` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `nominal_bayar` int(10) NOT NULL,
  `waktu_bayar` date NOT NULL,
  PRIMARY KEY (`id_pembayaran_bonus`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `rb_pembayaran_bonus` */

insert  into `rb_pembayaran_bonus`(`id_pembayaran_bonus`,`username`,`nominal_bayar`,`waktu_bayar`) values (1,'arsenio',50000,'2017-04-11'),(2,'robby',70000,'2017-04-11');

/*Table structure for table `rb_pembelian` */

DROP TABLE IF EXISTS `rb_pembelian`;

CREATE TABLE `rb_pembelian` (
  `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pembelian` varchar(50) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `waktu_beli` datetime NOT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `rb_pembelian` */

insert  into `rb_pembelian`(`id_pembelian`,`kode_pembelian`,`id_supplier`,`waktu_beli`) values (1,'PO-0001',1,'2017-05-23 10:13:05'),(2,'PO-0002',2,'2017-05-24 07:05:11'),(3,'PO-0003',1,'2017-05-27 14:58:50'),(5,'PO-0004',1,'2017-05-30 09:30:02'),(6,'PO-0005',1,'2017-06-01 10:29:39'),(8,'PO-0006',1,'2019-02-20 07:44:57'),(9,'PO-20190321100135',2,'2019-03-21 10:01:41'),(10,'PO-20190707211311',3,'2019-07-07 21:13:17');

/*Table structure for table `rb_pembelian_detail` */

DROP TABLE IF EXISTS `rb_pembelian_detail`;

CREATE TABLE `rb_pembelian_detail` (
  `id_pembelian_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_pesan` int(11) NOT NULL,
  `jumlah_pesan` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pembelian_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `rb_pembelian_detail` */

insert  into `rb_pembelian_detail`(`id_pembelian_detail`,`id_pembelian`,`id_produk`,`harga_pesan`,`jumlah_pesan`,`satuan`) values (1,1,1,260000,100,'pcs'),(2,1,2,455000,150,'pcs'),(3,2,1,255000,235,'pcs'),(5,2,2,3000000,58,'pcs'),(9,3,1,600000,3,'pcs'),(7,3,2,3000000,43,'pcs'),(12,5,6,320000,25,'unit'),(13,5,5,6990000,10,'unit'),(14,5,4,1000000,45,'unit'),(16,6,13,45900,16,'pcs'),(17,6,12,490000,12,'unit'),(18,6,11,8299000,10,'pcs'),(19,6,9,584000,15,'unit'),(20,6,8,275000,6,'unit'),(21,6,7,879000,11,'unit'),(22,6,3,14998000,1,'unit'),(23,6,0,0,0,''),(26,8,13,55000,8,'pcs'),(27,9,13,55000,13,'pcs'),(28,10,27,5000000,1,'unit');

/*Table structure for table `rb_pencairan_bonus` */

DROP TABLE IF EXISTS `rb_pencairan_bonus`;

CREATE TABLE `rb_pencairan_bonus` (
  `id_pencairan_bonus` int(11) NOT NULL AUTO_INCREMENT,
  `id_reseller` int(11) NOT NULL,
  `bonus_referral` int(11) NOT NULL,
  `waktu_pencairan` datetime NOT NULL,
  PRIMARY KEY (`id_pencairan_bonus`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `rb_pencairan_bonus` */

insert  into `rb_pencairan_bonus`(`id_pencairan_bonus`,`id_reseller`,`bonus_referral`,`waktu_pencairan`) values (2,1,20000,'2017-06-04 13:39:15'),(4,1,24450,'2019-03-22 08:18:17');

/*Table structure for table `rb_pencairan_reward` */

DROP TABLE IF EXISTS `rb_pencairan_reward`;

CREATE TABLE `rb_pencairan_reward` (
  `id_pencairan_reward` int(11) NOT NULL AUTO_INCREMENT,
  `id_reseller` int(11) NOT NULL,
  `id_reward` int(11) NOT NULL,
  `reward_date` varchar(10) NOT NULL,
  `waktu_pencairan` datetime NOT NULL,
  PRIMARY KEY (`id_pencairan_reward`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `rb_pencairan_reward` */

insert  into `rb_pencairan_reward`(`id_pencairan_reward`,`id_reseller`,`id_reward`,`reward_date`,`waktu_pencairan`) values (5,2,1,'2019-03','2019-03-22 09:12:01');

/*Table structure for table `rb_penjualan` */

DROP TABLE IF EXISTS `rb_penjualan`;

CREATE TABLE `rb_penjualan` (
  `id_penjualan` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_penjual` int(11) NOT NULL DEFAULT '0',
  `status_pembeli` enum('reseller','konsumen') NOT NULL,
  `status_penjual` enum('admin','reseller') NOT NULL,
  `kurir` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `proses` enum('0','1','2') NOT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

/*Data for the table `rb_penjualan` */

insert  into `rb_penjualan`(`id_penjualan`,`kode_transaksi`,`id_pembeli`,`id_penjual`,`status_pembeli`,`status_penjual`,`kurir`,`service`,`ongkir`,`waktu_transaksi`,`proses`) values (117,'TRX-20190707222509',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 22:25:09','1'),(116,'TRX-20190707222224',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 22:22:24','1'),(115,'TRX-20190707221906',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 22:19:06','1'),(114,'TRX-20190707221524',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 22:15:24','1'),(113,'TRX-20190707221122',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 22:11:22','1'),(112,'TRX-20190707220515',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 22:05:15','1'),(111,'TRX-20190707220102',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 22:01:02','1'),(110,'TRX-20190707215330',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 21:53:30','1'),(107,'TRX-20190707211819',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 21:18:19','1'),(108,'TRX-20190707214234',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 21:42:34','1'),(109,'TRX-20190707214821',1,1,'reseller','admin','','Stok Otomatis (Pribadi)',0,'2019-07-07 21:48:21','1'),(106,'TRX-20190707211533',1,0,'reseller','admin','','',0,'2019-07-07 21:15:38','0'),(105,'TRX-20190707211500',1,0,'reseller','admin','','',0,'2019-07-07 21:15:07','0'),(118,'TRX-20190709144223',27,1,'konsumen','reseller','','',0,'2019-07-09 14:42:23','0'),(119,'TRX-20190710135700',28,1,'konsumen','reseller','jne','OKE',95000,'2019-07-10 13:57:00','0');

/*Table structure for table `rb_penjualan_detail` */

DROP TABLE IF EXISTS `rb_penjualan_detail`;

CREATE TABLE `rb_penjualan_detail` (
  `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_penjualan_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;

/*Data for the table `rb_penjualan_detail` */

insert  into `rb_penjualan_detail`(`id_penjualan_detail`,`id_penjualan`,`id_produk`,`jumlah`,`diskon`,`harga_jual`,`satuan`) values (184,117,38,1,0,0,'unit'),(183,116,37,1,0,0,'unit'),(182,115,36,1,0,0,'unit'),(181,114,35,1,0,0,'unit'),(180,113,34,1,0,0,'unit'),(179,112,33,1,0,0,'unit'),(178,111,32,1,0,0,'unit'),(177,110,31,1,0,0,'unit'),(176,109,30,1,0,0,'unit'),(174,107,28,1,0,0,'unit'),(175,108,29,1,0,0,'unit'),(173,106,27,1,0,5000000,'unit'),(172,105,27,1,0,5000000,'unit'),(185,118,37,1,0,10000000,'unit'),(186,119,30,1,0,7500000,'unit');

/*Table structure for table `rb_penjualan_temp` */

DROP TABLE IF EXISTS `rb_penjualan_temp`;

CREATE TABLE `rb_penjualan_temp` (
  `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(50) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `waktu_order` datetime NOT NULL,
  PRIMARY KEY (`id_penjualan_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

/*Data for the table `rb_penjualan_temp` */

/*Table structure for table `rb_produk` */

DROP TABLE IF EXISTS `rb_produk`;

CREATE TABLE `rb_produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk_perusahaan` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `id_kategori_produk_sub` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `produk_seo` varchar(255) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_reseller` int(11) NOT NULL,
  `harga_konsumen` int(11) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `rb_produk` */

insert  into `rb_produk`(`id_produk`,`id_produk_perusahaan`,`id_kategori_produk`,`id_kategori_produk_sub`,`id_reseller`,`nama_produk`,`produk_seo`,`satuan`,`harga_beli`,`harga_reseller`,`harga_konsumen`,`berat`,`gambar`,`keterangan`,`username`,`waktu_input`) values (38,0,13,9,1,'Vespa Super','vespa-super','unit',8500000,0,9900000,'9000','Super.png','<p>Mesin 2 Tak</p><p>Pengapian Platina</p><p>Bore x Stroke 57 x 57 mm</p><p>Kapasitas 150 CC</p><p>Kelistrikan 6/12 volt</p><p><br></p><p>Khusus COD</p>','reseller','2019-07-07 22:25:09'),(33,0,13,8,1,'Yamaha AS 3 Twin','yamaha-as-3-twin','unit',6500000,0,8000000,'5600','YamahaAs3.png','<p>Mesin : 2 Tak 2 Silinder</p><p>Kapasitas Mesin : 125 CC</p><p>Bore x Stroke : 43 x 43 mm</p><p>Max Power : 11,7 kw 9800 Rpm</p><p>Top Speed : 127 Kpj</p><p>Transmisi : 4 percepatan</p><p><br></p><p>Khusus COD</p>','reseller','2019-07-07 22:05:15'),(34,0,13,8,1,'Yamaha RS-100','yamaha-rs100','unit',6600000,0,8500000,'6700','Untitled1.png','<p>Mesin : 2 Tak 2 Silinder</p><p>Kapasitas : 97 CC</p><p>Bore x Stroke : 52 x 45,6 mm</p><p>Max Power : 10.5 hp 7500 Rpm</p><p>Transmisi : 5 Percepatan</p><p><br></p><p>Khusus COD</p>','reseller','2019-07-07 22:11:22'),(35,0,13,7,1,'Suzuki RC-80','suzuki-rc80','unit',450000,0,5500000,'6500','SuzukiRC80.png','<p>Mesin : 2 Tak Reed Valve JetCooled</p><p>Bore x Stroke : 47 x 46 mm</p><p>Transmisi 4 Percepatan</p><p>Starter Electric &amp; Kick</p><p><br></p><p>Khusus COD</p>','reseller','2019-07-07 22:15:24'),(36,0,13,7,1,'Suzuki GT-185','suzuki-gt185','unit',7000000,0,9500000,'6700','GT185.png','<p>Mesin : 2 Tak 2 Silinder</p><p>Kapasitas : 184 CC</p><p>Transmisi : 5 Percepatan</p><p>Pengapian : CDI</p><p>Wheelbase : 1290 mm</p><p><br></p><p>Khusus COD</p>','reseller','2019-07-07 22:19:06'),(37,0,13,9,1,'Vespa Sprinter','vespa-sprinter','unit',7000000,0,10000000,'9000','Sprint.png','<p>Mesin : 2 Tak 1 Silinder</p><p>Bore x Stroke : 57 x 57 mm</p><p>Kapasitas : 145 CC</p><p>Max Power : 7.1 hp @5000 Rpm</p><p>Transmisi 4 Percepatan</p><p><br></p><p>Khusus COD</p>','reseller','2019-07-07 22:22:24'),(27,0,13,6,0,'Honda C-50 ','honda-c50-','unit',5000000,5000000,5000000,'500','C50.png','<p>Mesin 4 Tak OHC 1 Silinder</p>\r\n\r\n<p>Kapasitas Mesin 49.5 CC</p>\r\n\r\n<p>Rasio Kompresi 8.8 : 1</p>\r\n\r\n<p>Max Power 4.8 BHP @10000RPM</p>\r\n\r\n<p>Transmisi 3 Speed (N-1-2-3)</p>\r\n\r\n<p>Karburator : Keihin</p>\r\n\r\n<p>Pengapian : Platina</p>\r\n\r\n<p>Battery : ACCU 6V</p>\r\n\r\n<p>Starter : Kick</p>\r\n','admin','2019-07-07 21:11:49'),(28,0,13,6,1,'Honda C-50 ','honda-c50-','unit',5000000,0,6000000,'500','C501.png','<p>\r\n\r\n</p><p>Mesin 4 Tak OHC 1 Silinder</p><p>Kapasitas Mesin 49.5 CC</p><p>Rasio Kompresi 8.8 : 1</p><p>Max Power 4.8 BHP @10000RPM</p><p>Transmisi 3 Speed (N-1-2-3)</p><p>Karburator : Keihin</p><p>Pengapian : Platina</p><p>Battery : ACCU 6V</p><p>Starter : Kick</p><p><br></p><p>Khusus COD</p><p></p>','reseller','2019-07-07 21:18:19'),(32,0,13,6,1,'Honda XL 125','honda-xl-125','unit',6500000,0,8000000,'6000','Untitled.png','<p>Mesin : 4 Tak OHC 1 Silinder</p><p>Kapasitas : 124 CC</p><p>Bore X Stroke : 56x49 mm</p><p>Pengapian : Platina</p><p>Starter Kick</p><p>Max Power : 12.5 @10000 Rpm</p><p>Trasmisi : 4 Percepatan</p><p><br></p><p>Khusus COD</p>','reseller','2019-07-07 22:01:02'),(29,0,13,6,1,'Honda C-70','honda-c70','unit',5000000,0,7000000,'4500','C70.png','<p>Mesin : OHC, 4 Tak</p><p>Kapasitas : 71,8 CC</p><p>Bore x Stroke : 47 x 41,4 mm</p><p>Rasio Kompresi : 8,8 : 1</p><p>Sistem Pendingin : Udara</p><p>Max Power : 4,5 kW (6 bhp) @9000 Rpm</p><p>Max Torque : 0.53 kg.m @7000 Rpm</p><p>Sistem pengapian : Platina</p><p><br></p><p>Khusus COD</p>','reseller','2019-07-07 21:42:34'),(30,0,13,6,1,'Honda CB-100','honda-cb100','unit',6000000,0,7500000,'5000','HondaCB100.png','<p>Kapasitas Mesin : 99 CC, OHC</p><p>Mesin : 4 Tak 1 Silinder</p><p>Power : 11,5 HP @10.500 Rpm</p><p>Top Speed : 110 km/h</p><p>Bore x Stroke : 50.5 x 49,5 mm</p><p>Pengapian : Platina</p><p>Transmisi : 5 Speed</p><p><br></p><p>Khusus COD</p>','reseller','2019-07-07 21:48:21'),(31,0,13,6,1,'Honda S-90','honda-s90','unit',400000,0,5500000,'4500','S90.png','<p>Mesin : 4 Tak OHC 1 Silinder</p><p>Kapasitas : 89 CC</p><p>Max Power : 8,02 HP @9500 Rpm</p><p>Max Torsi : 6,37 HP @8000 Rpm</p><p>Transmisi : Manual&nbsp; 4 Percepatan</p><p><br></p><p>Khusus COD</p>','reseller','2019-07-07 21:48:51');

/*Table structure for table `rb_produk_diskon` */

DROP TABLE IF EXISTS `rb_produk_diskon`;

CREATE TABLE `rb_produk_diskon` (
  `id_produk_diskon` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  PRIMARY KEY (`id_produk_diskon`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `rb_produk_diskon` */

insert  into `rb_produk_diskon`(`id_produk_diskon`,`id_produk`,`id_reseller`,`diskon`) values (24,34,1,0),(23,32,1,0),(22,29,1,0),(21,30,1,0),(20,31,1,0),(19,28,1,0);

/*Table structure for table `rb_provinsi` */

DROP TABLE IF EXISTS `rb_provinsi`;

CREATE TABLE `rb_provinsi` (
  `provinsi_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(50) NOT NULL,
  PRIMARY KEY (`provinsi_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `rb_provinsi` */

insert  into `rb_provinsi`(`provinsi_id`,`nama_provinsi`) values (1,'Bali'),(2,'Bangka Belitung'),(3,'Banten'),(4,'Bengkulu'),(5,'DI Yogyakarta'),(6,'DKI Jakarta'),(7,'Gorontalo'),(8,'Jambi'),(9,'Jawa Barat'),(10,'Jawa Tengah'),(11,'Jawa Timur'),(12,'Kalimantan Barat'),(13,'Kalimantan Selatan'),(14,'Kalimantan Tengah'),(15,'Kalimantan Timur'),(16,'Kalimantan Utara'),(17,'Kepulauan Riau'),(18,'Lampung'),(19,'Maluku'),(20,'Maluku Utara'),(21,'Nanggroe Aceh Darussalam (NAD)'),(22,'Nusa Tenggara Barat (NTB)'),(23,'Nusa Tenggara Timur (NTT)'),(24,'Papua'),(25,'Papua Barat'),(26,'Riau'),(27,'Sulawesi Barat'),(28,'Sulawesi Selatan'),(29,'Sulawesi Tengah'),(30,'Sulawesi Tenggara'),(31,'Sulawesi Utara'),(32,'Sumatera Barat'),(33,'Sumatera Selatan'),(34,'Sumatera Utara');

/*Table structure for table `rb_rekening` */

DROP TABLE IF EXISTS `rb_rekening`;

CREATE TABLE `rb_rekening` (
  `id_rekening` int(5) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL,
  PRIMARY KEY (`id_rekening`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `rb_rekening` */

insert  into `rb_rekening`(`id_rekening`,`nama_bank`,`no_rekening`,`pemilik_rekening`) values (1,'MANDIRI','15512677235','Habib Madue'),(2,'BCA','1122554216','Habib Madue');

/*Table structure for table `rb_rekening_reseller` */

DROP TABLE IF EXISTS `rb_rekening_reseller`;

CREATE TABLE `rb_rekening_reseller` (
  `id_rekening_reseller` int(11) NOT NULL AUTO_INCREMENT,
  `id_reseller` int(11) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL,
  PRIMARY KEY (`id_rekening_reseller`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `rb_rekening_reseller` */

insert  into `rb_rekening_reseller`(`id_rekening_reseller`,`id_reseller`,`nama_bank`,`no_rekening`,`pemilik_rekening`) values (1,2,'Bank Danamon','56234234000','Syarii Sentral'),(2,2,'Bank BCA','10823422','Syarii Sentral'),(3,3,'Bank Mandiri','234123123332','Kalifah Umayyah'),(6,1,'BCA','0123456789','Tukang Rongsok');

/*Table structure for table `rb_reseller` */

DROP TABLE IF EXISTS `rb_reseller`;

CREATE TABLE `rb_reseller` (
  `id_reseller` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_reseller` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kode_pos` int(7) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `referral` varchar(50) NOT NULL,
  `tanggal_daftar` datetime NOT NULL,
  PRIMARY KEY (`id_reseller`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `rb_reseller` */

insert  into `rb_reseller`(`id_reseller`,`username`,`password`,`nama_reseller`,`jenis_kelamin`,`kota_id`,`alamat_lengkap`,`no_telpon`,`email`,`kode_pos`,`keterangan`,`foto`,`referral`,`tanggal_daftar`) values (1,'reseller','d073f60ff87c6ffe0abd48687b939667c3bdfd019df58d670ed45d230c470b94a0389d825453d40978c48e6f49ddb1368b16c069ab8bf27cfe8a9e1e2c15e954','Penjual Rongsok','Laki-laki',318,'Jl. Angkasa Pura Raya, No 456 BG','681267771355','penjualrongsok@gmail.com',26125,'Tidak ada keterangan...','Mozilla_Firefox.png','','2017-05-23 00:00:00'),(9,'kodokgoreng','bbc5f1e56a1f3ef3f5f5c76b30b6869c26d80f61657c4b05e2d8ea62b799006194f0b4ed8abc2b5a801cbdf05c6bb60736cc8d12886d01dd710c03d41774f830','Lapak Retro','Laki-laki',55,'Jln.Jambu No.8','0874664545','lapakretro21@gmail.com',133241,'','','retropolis','2019-07-09 14:57:23'),(10,'lapakretro','3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b','Lawas Stroe','Laki-laki',78,'kayuputih no.9','08324567','lapakretro21@gmail.com',22245,'','','retropolis','2019-07-09 15:37:22'),(11,'bewok','7d0b6095ec1ee6163eb1754de765184b2f9043bf7b5ce8a2b365b634bb8f56b565cd8f8baa8c62683a26d028aa54a60909ad413d2f0dad98e02c77bc5556a1bb','Bewok Bucindteross','Laki-laki',55,'gak tau mas broo','0812312441414','bewok@gmail.com',17124,'','','bewok','2019-07-10 15:38:43');

/*Table structure for table `rb_reward` */

DROP TABLE IF EXISTS `rb_reward`;

CREATE TABLE `rb_reward` (
  `id_reward` int(5) NOT NULL AUTO_INCREMENT,
  `posisi` int(100) NOT NULL,
  `reward` varchar(255) NOT NULL,
  PRIMARY KEY (`id_reward`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `rb_reward` */

insert  into `rb_reward`(`id_reward`,`posisi`,`reward`) values (4,90000000,'Mobil Seken Senilai 50.000.000'),(5,120000000,'Mobil Mewah Senilai 80.000.000');

/*Table structure for table `rb_setting` */

DROP TABLE IF EXISTS `rb_setting`;

CREATE TABLE `rb_setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `referral` int(11) NOT NULL,
  `tanggal_pencairan` varchar(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `rb_setting` */

insert  into `rb_setting`(`id_setting`,`referral`,`tanggal_pencairan`,`aktif`) values (1,5,'1','Y');

/*Table structure for table `rb_supplier` */

DROP TABLE IF EXISTS `rb_supplier`;

CREATE TABLE `rb_supplier` (
  `id_supplier` int(11) NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(255) NOT NULL,
  `kontak_person` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `rb_supplier` */

insert  into `rb_supplier`(`id_supplier`,`nama_supplier`,`kontak_person`,`alamat_lengkap`,`no_hp`,`alamat_email`,`kode_pos`,`no_telpon`,`fax`,`keterangan`) values (3,'PT.Antasari Jaya Melajaya','Roberto Duransi','Jl. Kilometer Jaya Raya','081288991244','roberto.melajaya@gmail.com',12456,'0751890231','0751890234','Tidak ada keterangan untuk supplier ini...');

/*Table structure for table `sekilasinfo` */

DROP TABLE IF EXISTS `sekilasinfo`;

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL AUTO_INCREMENT,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_sekilas`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `sekilasinfo` */

insert  into `sekilasinfo`(`id_sekilas`,`info`,`tgl_posting`,`gambar`,`aktif`) values (1,'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.','2015-04-11','','Y'),(2,'WHO merilis, 30 persen anak di dunia kecanduan komputer dan menonton televisi.','2015-03-16','','Y'),(3,'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lama.','2015-04-17','','Y'),(4,'Menurut United Stated Trade Representatives, 25% obat yang beredar di adalah palsu.','2015-04-17','','Y');

/*Table structure for table `statistik` */

DROP TABLE IF EXISTS `statistik`;

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `statistik` */

insert  into `statistik`(`ip`,`tanggal`,`hits`,`online`) values ('223.255.231.148','2014-05-06',1,'1399357334'),('223.255.231.147','2014-05-15',3,'1400119147'),('223.255.224.73','2014-05-15',12,'1400123797'),('223.255.224.69','2014-05-16',2,'1400215103'),('118.96.51.231','2014-05-16',19,'1400233044'),('223.255.231.146','2014-05-16',2,'1400228049'),('::1','2014-06-20',2,'1403230579'),('::1','2014-06-22',8,'1403436591'),('223.255.231.154','2014-06-26',1,'1403739948'),('223.255.231.148','2014-06-26',6,'1403745715'),('223.255.224.74','2014-06-26',1,'1403748060'),('223.255.224.69','2014-06-26',1,'1403753239'),('223.255.224.77','2014-06-29',1,'1404039342'),('::1','2014-07-02',6,'1404277263'),('127.0.0.1','2014-07-17',2,'1405582494'),('127.0.0.1','2014-07-21',1,'1405929828'),('36.76.60.43','2014-07-21',1,'1405951864'),('223.255.231.154','2014-07-21',2,'1405957200'),('223.255.227.21','2014-07-22',1,'1405995171'),('223.255.231.146','2014-07-22',1,'1405997152'),('223.255.227.21','2014-07-23',1,'1406100212'),('223.255.227.17','2014-07-23',1,'1406104552'),('223.255.227.23','2014-07-24',1,'1406168095'),('223.255.231.153','2014-07-24',1,'1406204439'),('223.255.231.146','2014-07-25',1,'1406268985'),('180.76.5.193','2014-08-06',1,'1407302738'),('180.76.5.23','2014-08-06',1,'1407304739'),('202.67.36.241','2014-08-06',1,'1407305643'),('198.148.27.22','2014-08-06',1,'1407306703'),('180.251.170.42','2014-08-06',7,'1407310167'),('128.199.171.191','2014-08-06',3,'1407323435'),('223.255.231.149','2014-08-06',2,'1407309879'),('223.255.227.28','2014-08-06',8,'1407311801'),('103.24.49.242','2014-08-06',1,'1407312326'),('223.255.231.146','2014-08-06',1,'1407313297'),('180.214.233.34','2014-08-06',1,'1407321063'),('66.249.77.87','2014-08-06',1,'1407323509'),('223.255.227.30','2014-08-06',1,'1407325862'),('180.254.207.13','2014-08-06',5,'1407330687'),('114.79.13.199','2014-08-06',1,'1407336900'),('202.152.199.34','2014-08-06',7,'1407337100'),('180.76.6.21','2014-08-07',1,'1407347753'),('114.79.13.55','2014-08-07',3,'1407354277'),('114.125.41.136','2014-08-07',1,'1407352625'),('180.76.6.147','2014-08-07',1,'1407355344'),('180.76.6.64','2014-08-07',1,'1407367237'),('69.171.247.116','2014-08-07',1,'1407379834'),('69.171.247.119','2014-08-07',1,'1407379834'),('69.171.247.114','2014-08-07',1,'1407379834'),('69.171.247.115','2014-08-07',1,'1407379834'),('202.67.34.29','2014-08-07',2,'1407380415'),('36.76.52.112','2014-08-07',1,'1407380496'),('223.255.231.145','2014-08-07',5,'1407387045'),('223.255.231.153','2014-08-07',2,'1407388883'),('223.255.227.27','2014-08-07',1,'1407393087'),('180.76.5.25','2014-08-07',1,'1407394749'),('223.255.231.146','2014-08-07',1,'1407397183'),('157.55.39.248','2014-08-07',1,'1407397231'),('180.254.200.55','2014-08-07',2,'1407399466'),('110.139.67.15','2014-08-07',8,'1407399221'),('180.242.17.64','2014-08-07',11,'1407414373'),('141.0.8.59','2014-08-07',1,'1407412384'),('110.76.149.91','2014-08-07',1,'1407422367'),('223.255.231.151','2014-08-07',3,'1407426943'),('82.145.209.206','2014-08-07',1,'1407430369'),('223.255.227.28','2014-08-08',3,'1407469589'),('66.93.156.50','2014-08-08',1,'1407472340'),('202.62.17.47','2014-08-08',1,'1407484393'),('36.70.135.163','2014-08-08',6,'1407485987'),('173.252.74.115','2014-08-08',1,'1407485153'),('118.96.58.136','2014-08-08',2,'1407486347'),('114.79.29.68','2014-08-08',1,'1407502537'),('66.220.156.113','2014-08-08',1,'1407503375'),('112.215.66.79','2014-08-08',1,'1407503381'),('125.163.113.156','2014-08-08',9,'1407508824'),('180.76.5.94','2014-08-08',1,'1407508624'),('120.172.9.192','2014-08-08',1,'1407515634'),('202.67.41.51','2014-08-08',1,'1407515702'),('180.253.243.222','2014-08-09',1,'1407542724'),('36.75.224.20','2014-08-09',1,'1407548005'),('180.76.5.65','2014-08-09',1,'1407548865'),('66.249.77.77','2014-08-09',2,'1407582711'),('180.76.6.137','2014-08-09',1,'1407553037'),('66.249.77.87','2014-08-09',1,'1407554836'),('66.249.77.97','2014-08-09',2,'1407562640'),('120.177.44.126','2014-08-09',2,'1407558625'),('223.255.231.145','2014-08-09',3,'1407558663'),('36.73.64.113','2014-08-09',1,'1407558640'),('36.72.187.12','2014-08-09',1,'1407560351'),('202.67.41.51','2014-08-09',1,'1407561096'),('114.125.60.68','2014-08-09',4,'1407561514'),('202.67.40.50','2014-08-09',1,'1407562007'),('180.76.6.136','2014-08-09',1,'1407562581'),('110.232.81.2','2014-08-09',5,'1407563275'),('146.185.28.59','2014-08-09',1,'1407564768'),('120.174.157.139','2014-08-09',1,'1407568139'),('223.255.227.23','2014-08-09',2,'1407570163'),('193.105.210.119','2014-08-09',1,'1407577518'),('125.162.57.66','2014-08-09',2,'1407579822'),('180.241.163.1','2014-08-09',8,'1407580493'),('36.76.44.163','2014-08-09',6,'1407603574'),('180.76.5.144','2014-08-09',1,'1407582757'),('107.167.103.40','2014-08-09',1,'1407586189'),('36.68.48.23','2014-08-09',1,'1407586974'),('192.99.218.151','2014-08-09',4,'1407587574'),('36.74.55.24','2014-08-09',3,'1407589161'),('118.97.212.184','2014-08-09',8,'1407595169'),('36.72.114.118','2014-08-09',2,'1407597684'),('180.76.5.153','2014-08-09',1,'1407602870'),('180.76.5.59','2014-08-09',1,'1407603153'),('180.76.5.18','2014-08-10',1,'1407606581'),('180.254.155.156','2014-08-10',2,'1407607003'),('180.76.6.42','2014-08-10',1,'1407608363'),('36.68.242.217','2014-08-10',5,'1407627100'),('66.249.77.77','2014-08-10',2,'1407633623'),('202.67.44.64','2014-08-10',1,'1407629598'),('180.76.6.43','2014-08-10',1,'1407631270'),('118.97.212.182','2014-08-10',4,'1407632228'),('139.0.102.140','2014-08-10',1,'1407633944'),('66.249.77.87','2014-08-10',1,'1407636902'),('66.249.77.97','2014-08-10',1,'1407639983'),('180.76.6.159','2014-08-10',1,'1407640798'),('118.97.212.181','2014-08-10',3,'1407642556'),('36.68.46.37','2014-08-10',2,'1407642940'),('180.76.5.69','2014-08-10',1,'1407645158'),('180.76.5.80','2014-08-10',1,'1407648268'),('180.76.5.143','2014-08-10',1,'1407650068'),('223.255.231.145','2014-08-10',1,'1407650216'),('180.76.6.149','2014-08-10',1,'1407657020'),('36.77.183.218','2014-08-10',2,'1407657119'),('127.0.0.1','2014-08-10',2,'1407660057'),('127.0.0.1','2014-08-11',2,'1407725194'),('127.0.0.1','2014-08-12',1,'1407862185'),('127.0.0.1','2014-08-13',1,'1407899819'),('127.0.0.1','2014-08-17',44,'1408287630'),('127.0.0.1','2014-08-18',253,'1408372590'),('127.0.0.1','2014-08-19',4,'1408413702'),('::1','2014-08-19',90,'1408433250'),('::1','2014-08-31',1,'1409487043'),('::1','2015-03-11',11,'1426061663'),('::1','2015-03-12',1,'1426114982'),('::1','2015-03-15',32,'1426430637'),('::1','2015-03-18',137,'1426666506'),('::1','2015-03-19',143,'1426751746'),('::1','2015-03-21',198,'1426912294'),('::1','2015-03-22',554,'1427039069'),('127.0.0.1','2015-03-22',1,'1427030317'),('::1','2015-03-23',275,'1427093113'),('::1','2015-03-24',42,'1427179474'),('::1','2015-03-25',45,'1427251499'),('39.225.164.2','2015-05-14',7,'1431584409'),('119.110.72.130','2015-05-14',30,'1431595368'),('89.145.95.2','2015-05-14',1,'1431582645'),('66.220.158.118','2015-05-14',1,'1431582842'),('66.220.158.115','2015-05-14',1,'1431582852'),('66.220.158.112','2015-05-14',3,'1431595371'),('66.220.158.119','2015-05-14',1,'1431582942'),('114.125.43.185','2015-05-14',5,'1431602132'),('119.110.72.130','2015-05-15',1,'1431673658'),('114.125.45.206','2015-05-16',18,'1431741581'),('66.220.158.116','2015-05-16',1,'1431741049'),('66.220.158.118','2015-05-16',1,'1431741224'),('66.220.158.114','2015-05-16',1,'1431741233'),('39.229.6.148','2015-05-16',11,'1431791037'),('39.225.236.155','2015-05-17',8,'1431862096'),('119.110.72.130','2015-05-19',6,'1432006569'),('89.145.95.42','2015-05-19',2,'1432006661'),('114.121.133.117','2015-05-19',3,'1432046663'),('124.195.114.65','2015-05-28',16,'1432832381'),('66.220.158.119','2015-05-28',1,'1432831000'),('66.220.158.115','2015-05-28',1,'1432831013'),('66.220.158.116','2015-05-28',1,'1432832385'),('124.195.114.65','2015-05-29',77,'1432836214'),('66.220.158.113','2015-05-29',1,'1432835961'),('66.249.84.178','2015-05-29',1,'1432836220'),('103.246.200.14','2015-05-29',1,'1432851867'),('103.246.200.59','2015-05-29',1,'1432851916'),('114.124.5.250','2015-05-29',6,'1432852876'),('173.252.105.114','2015-05-29',1,'1432852770'),('120.180.175.150','2015-05-29',36,'1432864082'),('103.246.200.50','2015-05-29',1,'1432863615'),('103.246.200.1','2015-05-29',1,'1432863650'),('103.246.200.33','2015-05-29',1,'1432863711'),('103.246.200.44','2015-05-29',1,'1432863795'),('120.174.144.115','2015-05-29',1,'1432908445'),('119.110.72.130','2015-05-29',27,'1432912022'),('173.252.90.117','2015-05-29',1,'1432910852'),('173.252.90.116','2015-05-29',1,'1432910873'),('173.252.90.118','2015-05-29',1,'1432911344'),('173.252.90.122','2015-05-29',1,'1432911470'),('66.249.84.190','2015-05-30',1,'1432945579'),('39.254.117.222','2015-05-30',1,'1432991226'),('66.249.84.178','2015-05-31',1,'1433037242'),('120.176.92.190','2015-06-01',3,'1433128955'),('66.102.6.210','2015-06-01',1,'1433134430'),('120.164.44.28','2015-06-01',13,'1433149419'),('124.195.118.227','2015-06-01',1,'1433170960'),('120.177.28.244','2015-06-02',8,'1433220043'),('66.249.84.190','2015-06-02',1,'1433247837'),('120.190.75.179','2015-06-03',7,'1433302768'),('119.110.72.130','2015-06-03',4,'1433302761'),('89.145.95.2','2015-06-03',1,'1433302690'),('66.249.71.147','2015-06-07',46,'1433696370'),('66.249.71.130','2015-06-07',30,'1433696150'),('66.249.71.164','2015-06-07',37,'1433696154'),('173.252.74.113','2015-06-07',8,'1433694061'),('173.252.74.117','2015-06-07',3,'1433676319'),('66.249.64.57','2015-06-07',1,'1433674283'),('173.252.88.89','2015-06-07',5,'1433677999'),('173.252.88.86','2015-06-07',2,'1433677597'),('173.252.74.119','2015-06-07',7,'1433694862'),('66.249.79.117','2015-06-07',1,'1433674983'),('173.252.88.84','2015-06-07',2,'1433676738'),('173.252.74.115','2015-06-07',3,'1433676460'),('173.252.74.114','2015-06-07',2,'1433694204'),('173.252.74.118','2015-06-07',3,'1433676180'),('173.252.74.112','2015-06-07',5,'1433695314'),('173.252.88.85','2015-06-07',2,'1433677804'),('173.252.88.90','2015-06-07',1,'1433676251'),('173.252.74.116','2015-06-07',5,'1433695249'),('173.252.88.87','2015-06-07',2,'1433677488'),('173.252.88.88','2015-06-07',1,'1433677370'),('66.249.79.130','2015-06-07',1,'1433694848'),('66.220.156.116','2015-06-07',2,'1433696197'),('66.249.67.104','2015-06-07',1,'1433696147'),('66.220.156.112','2015-06-07',2,'1433696173'),('66.220.146.22','2015-06-07',1,'1433696162'),('66.249.67.117','2015-06-07',1,'1433696288'),('66.220.156.114','2015-06-07',1,'1433696309'),('66.220.156.117','2015-06-08',3,'1433711204'),('66.249.71.164','2015-06-08',32,'1433779112'),('66.220.146.25','2015-06-08',2,'1433736854'),('66.220.156.116','2015-06-08',2,'1433709422'),('66.249.71.147','2015-06-08',29,'1433748751'),('66.220.156.112','2015-06-08',4,'1433715007'),('66.220.146.20','2015-06-08',1,'1433696744'),('66.249.71.130','2015-06-08',38,'1433777391'),('66.220.156.118','2015-06-08',2,'1433712628'),('66.220.146.27','2015-06-08',1,'1433712556'),('66.220.146.26','2015-06-08',1,'1433712746'),('66.249.67.104','2015-06-08',4,'1433746797'),('66.220.146.22','2015-06-08',1,'1433714244'),('66.220.156.115','2015-06-08',2,'1433714821'),('66.249.67.117','2015-06-08',2,'1433780504'),('120.176.251.49','2015-06-08',2,'1433737104'),('66.220.156.119','2015-06-08',1,'1433737457'),('66.249.71.147','2015-06-09',3,'1433836081'),('66.249.71.130','2015-06-09',4,'1433835126'),('66.249.67.104','2015-06-09',1,'1433788622'),('66.249.71.164','2015-06-09',1,'1433823064'),('66.249.71.130','2015-06-10',5,'1433953790'),('66.249.67.117','2015-06-10',1,'1433911605'),('66.249.71.164','2015-06-10',3,'1433954890'),('66.249.71.147','2015-06-10',2,'1433953573'),('66.249.71.147','2015-06-11',1,'1433957808'),('66.249.71.164','2015-06-11',2,'1433990805'),('68.180.228.104','2015-06-11',1,'1433975257'),('66.249.71.130','2015-06-11',1,'1433991891'),('36.68.28.19','2015-06-14',5,'1434224041'),('120.164.46.127','2015-06-14',2,'1434239557'),('66.249.67.248','2015-06-15',1,'1434362861'),('104.193.10.50','2015-06-15',3,'1434372762'),('104.193.10.50','2015-06-16',2,'1434454308'),('36.80.234.114','2015-06-16',4,'1434443273'),('173.252.74.115','2015-06-16',1,'1434443264'),('173.252.74.114','2015-06-16',1,'1434443279'),('119.110.72.130','2015-06-16',1,'1434467216'),('124.195.116.71','2015-06-17',3,'1434551738'),('120.184.130.21','2015-06-27',1,'1435386862'),('66.249.84.246','2015-06-27',1,'1435387150'),('120.176.176.106','2015-06-28',7,'1435461088'),('66.220.158.114','2015-06-28',1,'1435461007'),('66.249.84.129','2015-06-28',1,'1435466083'),('66.249.84.246','2015-06-29',2,'1435563211'),('66.249.84.252','2015-06-29',1,'1435563206'),('66.249.84.246','2015-06-30',3,'1435677685'),('66.249.84.252','2015-06-30',1,'1435645799'),('66.249.84.252','2015-07-01',1,'1435710707'),('66.249.84.129','2015-07-01',1,'1435711780'),('120.177.18.200','2015-07-02',1,'1435824891'),('::1','2015-11-25',15,'1448407930'),('::1','2015-12-01',12,'1448944568'),('::1','2015-12-03',9,'1449138520'),('::1','2015-12-05',26,'1449279360'),('::1','2015-12-07',4,'1449442678'),('::1','2015-12-08',8,'1449532582'),('::1','2015-12-13',31,'1449974628'),('::1','2015-12-18',9,'1450418535'),('::1','2015-12-21',10,'1450654644'),('::1','2015-12-24',3,'1450917714'),('::1','2015-12-25',4,'1451037761'),('::1','2015-12-26',5,'1451086546'),('::1','2016-01-01',1,'1451626224'),('::1','2016-01-12',2,'1452564572'),('::1','2016-01-16',7,'1452913899'),('::1','2016-01-17',150,'1453036730'),('::1','2016-07-24',24,'1469318037'),('::1','2016-07-29',1,'1469767572'),('::1','2016-07-31',1,'1469936872'),('::1','2016-08-01',14,'1470019073'),('::1','2016-08-12',4,'1470940786'),('::1','2016-08-14',3,'1471191885'),('::1','2016-08-22',5,'1471851644'),('::1','2016-08-26',4,'1472207940'),('::1','2016-08-29',9,'1472475500'),('::1','2016-08-30',1,'1472531831'),('::1','2016-09-13',4,'1473760584'),('::1','2016-09-16',7,'1473998550'),('::1','2016-09-17',3,'1474076080'),('::1','2016-09-20',4,'1474335445'),('::1','2016-09-21',5,'1474470987'),('::1','2016-09-26',8,'1474866854'),('::1','2016-11-21',20,'1479719811'),('::1','2016-11-22',26,'1479795839'),('::1','2016-12-24',1,'1482592503'),('::1','2016-12-23',2,'1482451494'),('::1','2016-12-20',7,'1482205377'),('::1','2016-12-14',4,'1481717872'),('::1','2016-12-13',24,'1481593512'),('::1','2016-12-09',1,'1481243159'),('::1','2016-12-03',3,'1480741491'),('::1','2016-11-28',32,'1480303392'),('::1','2016-11-27',2,'1480224412'),('::1','2016-11-24',403,'1479984680'),('::1','2016-11-23',2,'1479913316'),('::1','2017-01-03',9,'1483421812'),('::1','2017-01-04',2,'1483534977'),('::1','2017-01-05',3,'1483627230'),('::1','2017-01-14',1,'1484352852'),('::1','2017-01-17',3,'1484663823'),('::1','2017-01-25',12,'1485359750'),('::1','2017-01-26',37,'1485414680'),('::1','2017-01-27',70,'1485508785'),('::1','2017-01-28',1,'1485567010'),('::1','2017-02-04',1,'1486213804'),('::1','2017-02-09',14,'1486659480'),('::1','2017-02-10',3,'1486684650'),('::1','2017-02-11',11,'1486773431'),('::1','2017-02-12',6,'1486869838'),('::1','2017-02-13',5,'1486995163'),('::1','2017-02-15',3,'1487123924'),('::1','2017-02-21',1,'1487659967'),('::1','2017-02-23',7,'1487832476'),('::1','2017-02-26',4,'1488064851'),('::1','2017-03-13',44,'1489366890'),('::1','2017-03-17',24,'1489744337'),('::1','2017-03-20',1,'1489988038'),('::1','2017-03-25',1,'1490413626'),('::1','2017-03-29',7,'1490744633'),('::1','2017-04-02',1,'1491122695'),('::1','2017-04-06',56,'1491462329'),('::1','2017-04-07',59,'1491524075'),('::1','2017-04-09',20,'1491711058'),('::1','2017-04-11',9,'1491877995'),('::1','2017-04-12',124,'1492006218'),('::1','2017-04-13',53,'1492088580'),('::1','2017-05-14',133,'1494767093'),('::1','2017-05-20',167,'1495299592'),('::1','2017-05-21',234,'1495359950'),('::1','2018-04-19',1,'1524111568'),('::1','2018-04-21',1,'1524249582'),('::1','2018-04-24',19,'1524509093'),('::1','2018-05-04',13,'1525441129'),('::1','2018-05-05',36,'1525494921'),('::1','2018-05-06',5,'1525614861'),('::1','2018-05-11',15,'1525998298'),('::1','2018-05-18',4,'1526611139'),('::1','2018-05-19',6,'1526701697'),('::1','2018-05-20',13,'1526833607'),('::1','2018-05-22',13,'1526947912'),('::1','2018-05-23',16,'1527056425'),('::1','2018-05-31',1,'1527743948'),('::1','2018-06-01',2,'1527815549'),('::1','2018-06-03',191,'1528045141'),('::1','2018-06-04',100,'1528127678'),('::1','2018-12-11',315,'1544522200'),('::1','2018-12-21',68,'1545398144'),('::1','2018-12-22',81,'1545450822'),('::1','2018-12-23',310,'1545529051'),('::1','2018-12-26',70,'1545792411'),('::1','2018-12-28',21,'1545959894'),('::1','2019-01-01',40,'1546327662'),('::1','2019-01-11',1,'1547192056'),('::1','2019-01-15',1,'1547535461'),('::1','2019-02-03',21,'1549151755'),('::1','2019-02-08',2,'1549583794'),('::1','2019-02-14',5,'1550143909'),('::1','2019-02-16',139,'1550293098'),('::1','2019-02-17',12,'1550360900'),('::1','2019-02-18',9,'1550451537'),('::1','2019-02-19',11,'1550552634'),('::1','2019-02-20',115,'1550632680'),('::1','2019-02-20',115,'1550632680'),('::1','2019-02-22',83,'1550824388'),('::1','2019-02-23',143,'1550910213'),('::1','2019-03-03',2,'1551627040'),('::1','2019-03-05',1,'1551794436'),('::1','2019-03-21',127,'1553174723'),('::1','2019-03-22',25,'1553221802'),('::1','2019-03-23',255,'1553343322'),('::1','2019-03-24',151,'1553429554'),('::1','2019-03-25',292,'1553521395'),('::1','2019-03-26',236,'1553603754'),('::1','2019-03-27',135,'1553688661'),('::1','2019-07-02',60,'1562053019'),('::1','2019-07-07',79,'1562514249'),('::1','2019-07-08',6,'1562593696'),('::1','2019-07-09',55,'1562662870'),('::1','2019-07-10',29,'1562754725'),('::1','2019-07-11',1,'1562831493');

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tag` */

insert  into `tag`(`id_tag`,`nama_tag`,`username`,`tag_seo`,`count`) values (22,'Hiburan','','hiburan',19),(28,'Teknologi','','teknologi',12),(27,'Metropolitan','','metropolitan',32),(26,'Nasional','','nasional',42),(25,'Kesehatan','','kesehatan',16),(24,'Olahraga','','olahraga',11),(34,'Wisata','','wisata',4),(36,'Hukum','','hukum',16),(37,'Film','','film',25),(40,'Internasional','','internasional',28),(41,'Bola','','bola',21),(43,'Selebritis','','selebritis',9),(49,'Palestina','admin','palestina',6),(50,'Israel','admin','israel',3),(51,'Yahudi','admin','yahudi',4);

/*Table structure for table `tagvid` */

DROP TABLE IF EXISTS `tagvid`;

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tagvid` */

insert  into `tagvid`(`id_tag`,`nama_tag`,`username`,`tag_seo`,`count`) values (34,'perang','admin','perang',2),(35,'Teknologi','admin','teknologi',0),(36,'Nasional','admin','nasional',1);

/*Table structure for table `tbl_comment` */

DROP TABLE IF EXISTS `tbl_comment`;

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_comment` */

insert  into `tbl_comment`(`id_komentar`,`reply`,`nama_lengkap`,`alamat_email`,`isi_pesan`,`tanggal_komentar`,`jam_komentar`) values (1,0,'Robby Prihandaya','robby.prihandaya@gmail.com','Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								','2014-11-19','00:00:00'),(2,1,'si anu','anu@gmail.com','Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.','2014-11-19','00:00:00'),(3,0,'Rio Saputra','rio.saputra@gmail.com','Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								','2014-11-21','00:00:00'),(4,1,'Anggun Pratiwi','angun@gmail.com','itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.','2014-11-21','00:00:00'),(5,3,'Dewi Safitri','dewi.safitri@gmail.com','Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.','2014-11-21','00:00:00'),(6,0,'Ahmad Hunaldi','ahmad@gmail.com','badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								','2014-11-21','00:00:00'),(7,6,'Prasmana Enru','prasmana@gmail.com','Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.','2014-11-21','00:00:00'),(9,3,'Robby Prihandaya','robby.prihandaya@gmail.com','Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.','2015-01-22','00:00:00'),(14,0,'Udin Sedunia','udin.sedubia@gmail.com','Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.','2015-05-29','00:54:31'),(15,6,'Robby Prihandaya','robby.prihandaya@gmail.com','Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.','2015-05-29','00:59:50'),(23,20,'Robby Prihandaya','robby.prihandaya@gmail.com','I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.','2017-01-24','16:31:47'),(24,14,'Robby Prihandaya','robby.prihandaya@gmail.com','Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut','2017-04-09','11:07:23');

/*Table structure for table `templates` */

DROP TABLE IF EXISTS `templates`;

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_templates`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `templates` */

insert  into `templates`(`id_templates`,`judul`,`username`,`pembuat`,`folder`,`aktif`) values (22,'PHPMU-Tigo - Swarakalibata Template','admin','Robby Prihandaya','phpmu-tigo','Y');

/*Table structure for table `testimoni` */

DROP TABLE IF EXISTS `testimoni`;

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL AUTO_INCREMENT,
  `id_konsumen` int(11) NOT NULL,
  `isi_testimoni` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `waktu_testimoni` datetime NOT NULL,
  PRIMARY KEY (`id_testimoni`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `testimoni` */

insert  into `testimoni`(`id_testimoni`,`id_konsumen`,`isi_testimoni`,`aktif`,`waktu_testimoni`) values (1,1,'Saya berusaha mencoba memaklumi mereka tentang kesan menjadi entrepreneur instan ini dengan menjadi seorang MLM-ers, dengan menanyakan penyebab bisa memunculkan kesan instan tersebut. Mereka memberikan jawaban beragam berkaitan dengan proses instan seorang entrepreneur ini. ','Y','2016-09-11 03:25:21'),(2,3,'<p>Menjadi seorang sukses dengan cara instan memang impian banyak orang dan saya yakin anda pun akan menyetujuinya. Namun, kembali lagi kepada diri anda sendiri apakah anda benar-benar memahami makna menjadi seorang entrepreneur sesungguhnya atau hanya memaknai seperti halnya membuat mie instan.</p>\n','Y','2016-09-12 07:09:16'),(5,6,'Saya berusaha mencoba memaklumi mereka tentang kesan menjadi entrepreneur instan ini dengan menjadi seorang MLM-ers, dengan menanyakan penyebab bisa memunculkan kesan instan tersebut. Mereka memberikan jawaban beragam berkaitan dengan proses instan seorang entrepreneur ini.','Y','2016-09-14 14:11:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`username`,`password`,`nama_lengkap`,`email`,`no_telp`,`foto`,`level`,`blokir`,`id_session`) values ('admin','edbd881f1ee2f76ba0bd70fd184f87711be991a0401fd07ccd4b199665f00761afc91731d8d8ba6cbb188b2ed5bfb465b9f3d30231eb0430b9f90fe91d136648','Galih ','admin@admin.com','081267771344','download.png','admin','N','q173s8hs1jl04st35169ccl8o7'),('dewi','82712d6185313c5cab37780e6aa1bb571b2283efa92fd7153a28bbb3e34b0489dcc5a943ae7f61c5380184fea2ee750c40718a1601d9e7748427a767bdc3f64b','Dewiiit Safitri','dewi.safitri@gmail.com','081267778899','','kontributor','N','ed1d859c50262701d92e5cbf39652792-20170120090507'),('arsen','dac396a174a4a2aa2526bf23c05f0adbe6139f53047c273fd65e1fb813a05ce42a82d8e9b997972937a87238702dab4e981b184083d5d83b6542f79f29f8bde0','Muhammad Arsenio','muhammad.arsenio@gmail.com','081267773333','','kontributor','N','f76ad5ee772ac196cbc09824e24859ee');

/*Table structure for table `users_modul` */

DROP TABLE IF EXISTS `users_modul`;

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL AUTO_INCREMENT,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL,
  PRIMARY KEY (`id_umod`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `users_modul` */

insert  into `users_modul`(`id_umod`,`id_session`,`id_modul`) values (1,'ed1d859c50262701d92e5cbf39652792-20170120090507',70),(2,'ed1d859c50262701d92e5cbf39652792-20170120090507',65),(3,'ed1d859c50262701d92e5cbf39652792-20170120090507',63),(4,'f76ad5ee772ac196cbc09824e24859ee',70),(5,'f76ad5ee772ac196cbc09824e24859ee',65),(6,'f76ad5ee772ac196cbc09824e24859ee',63),(7,'ed1d859c50262701d92e5cbf39652792-20170120090507',18),(8,'ed1d859c50262701d92e5cbf39652792-20170120090507',66),(9,'ed1d859c50262701d92e5cbf39652792-20170120090507',33),(10,'3460d81e02faa3559f9e02c9a766fcbd-20170124215625',18),(11,'ed1d859c50262701d92e5cbf39652792-20170120090507',41),(12,'6bec9c852847242e384a4d5ac0962ba0-20170406140423',18),(13,'fa7688658d8b38aae731826ea1daebb5-20170521103501',18),(14,'cfcd208495d565ef66e7dff9f98764da-20180421112213',18);

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL AUTO_INCREMENT,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT '1',
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `video` */

insert  into `video`(`id_video`,`id_playlist`,`username`,`jdl_video`,`video_seo`,`keterangan`,`gbr_video`,`video`,`youtube`,`dilihat`,`hari`,`tanggal`,`jam`,`tagvid`) values (160,56,'admin','Selamatkan Hutan di Indonesia','selamatkan-hutan-di-indonesia','Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. \"Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,\" kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. \"Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,\" katanya.','','','http://www.youtube.com/embed/hkzpLJjZQbA',31,'Rabu','2014-07-02','07:30:12',''),(161,56,'admin','Hutan Hujan Tropis Indonesia','hutan-hujan-tropis-indonesia','Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.\r\n\r\nSementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.\r\n\r\n\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.\r\n\r\nIni bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.','','','http://www.youtube.com/embed/5biK_PcT7S0',24,'Rabu','2014-07-02','07:31:23',''),(162,57,'admin','Perang Sengit Pasukan Darat Israel Vs Hamas','perang-sengit-pasukan-darat-israel-vs-hamas','Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.\r\n\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.\r\n\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan Associated Press, Rabu (23/7/2014).\r\n\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.','','','https://www.youtube.com/watch?v=CeNjeD8yknI',16,'Rabu','2014-07-23','15:23:10',''),(163,57,'admin','Isael dan Palestina Memanas','isael-dan-palestina-memanas','Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.\r\n\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.\r\n\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.','','','https://www.youtube.com/watch?v=oaJpxuDh5Ds',31,'Rabu','2014-07-23','15:24:30',''),(164,57,'admin','Israel Tembak Mati Warga Palestina Saat Gencatan','israel-tembak-mati-warga-palestina-saat-gencatan','Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.\r\n\r\nMelansir Boston Herald, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.\r\n\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.\r\n\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.\r\n\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.','','','https://www.youtube.com/watch?v=L6R-5XUcDSY',44,'Rabu','2014-07-23','15:29:41',''),(165,57,'admin','Gaza conflict: Israel & Hamas face allegations of war crimes','gaza-conflict-israel--hamas-face-allegations-of-war-crimes','<p>Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.</p>\r\n','','','http://www.youtube.com/embed/aqI4DOilySg',24,'Minggu','2014-08-17','16:49:33',''),(166,57,'admin','Chomsky: Calling for change on US support for Israelll','chomsky-calling-for-change-on-us-support-for-israelll','<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. \"Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,\" sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n\r\n<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat, sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n','','','http://www.youtube.com/embed/gQRJEnoxr2A',122,'Minggu','2014-08-17','16:51:04','perang');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
