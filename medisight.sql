/*
SQLyog Community v13.3.0 (64 bit)
MySQL - 5.7.44-google-log : Database - medisight
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`medisight` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `medisight`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `foto_article` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `editor` varchar(100) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `articles` */

insert  into `articles`(`id`,`title`,`foto_article`,`content`,`author`,`editor`,`source`,`published_date`,`created_at`) values 
(1,'Memahami Luka Ringan: Mengapa Perawatan Luka yang Tepat Itu Penting','https://res.cloudinary.com/dk0z4ums3/image/upload/v1646129190/attached_image/hal-hal-yang-perlu-diketahui-tentang-perawatan-luka-0-alodokter.jpg','Hal-hal yang Perlu Diketahui tentang Perawatan Luka\r\nPerawatan luka adalah tindakan yang dilakukan untuk merawat luka akibat kecelakaan, pasca operasi, pasca jahitan, atau luka dekubitus. Perawatan yang tepat dapat mencegah infeksi dan mempercepat pemulihan. Artikel ini akan membahas pentingnya perawatan luka, langkah-langkah yang harus dilakukan, dan komplikasi yang mungkin terjadi.\r\n\r\nJenis Luka dan Penyebabnya\r\nLuka dapat terjadi akibat berbagai hal, seperti:\r\nSayatan benda tajam: Pisau, kaca, atau logam.\r\nCedera fisik: Jatuh dari motor, terbentur benda keras.\r\nKomplikasi penyakit: Seperti diabetes yang memengaruhi kemampuan penyembuhan luka.\r\nLuka tidak hanya terjadi di permukaan kulit, tetapi juga dapat merusak struktur di bawah kulit, seperti otot, tulang, atau saraf. Setiap jenis luka membutuhkan perawatan yang sesuai untuk mencegah kerusakan lebih lanjut.\r\n\r\nTujuan Perawatan Luka\r\nPerawatan luka bertujuan untuk:\r\nMembersihkan luka dari nanah dan sel kulit mati.\r\nMencegah infeksi pada luka.\r\nMengganti perban atau balutan secara rutin.\r\nMempercepat proses penyembuhan.\r\nMeminimalkan risiko bekas luka atau keloid.\r\n\r\nProsedur Perawatan Luka\r\nBerikut adalah langkah umum perawatan luka yang dilakukan oleh tenaga medis:\r\nPersiapan: Dokter mencuci tangan dan memakai sarung tangan steril.\r\nPembukaan perban: Perban dilepas perlahan, atau dibasahi dengan larutan salin steril jika sulit dilepas.\r\nPemeriksaan luka: Melihat apakah ada nanah, nyeri, tanda infeksi, atau jaringan mati.\r\nPembersihan luka: Menggunakan kasa steril yang dibasahi larutan saline.\r\nPengobatan: Mengoleskan salep atau krim khusus sesuai jenis luka.\r\nPenutupan luka: Menutup luka dengan balutan steril sesuai lokasi dan jenis luka.\r\n\r\n\r\nTanda-tanda Kondisi Luka Memburuk\r\nSegera hubungi dokter jika Anda mengalami:\r\nDemam.\r\nBau tidak sedap dari luka.\r\nNyeri hebat di sekitar luka.\r\nDarah atau nanah yang terus keluar dari luka.\r\n\r\nTips untuk Mendukung Penyembuhan Luka\r\nKonsumsi makanan bergizi yang kaya vitamin A dan C.\r\nMinum air putih yang cukup.\r\nHindari menggaruk atau mengelupas luka yang baru mengering.\r\nKonsultasikan penggunaan krim untuk mengurangi jaringan parut dengan dokter.\r\nHindari aktivitas yang dapat memperparah luka, terutama jika memiliki riwayat diabetes.\r\n\r\nKomplikasi Perawatan Luka\r\nKeberhasilan perawatan luka dipengaruhi oleh kondisi luka, jenis perawatan, dan kesehatan pasien. Komplikasi yang mungkin terjadi meliputi:\r\nBekas luka atau keloid.\r\nInfeksi sekunder.\r\nSelulitis (infeksi jaringan lunak).\r\nAbses atau sepsis (infeksi menyebar ke darah).\r\nPertumbuhan belatung di luka.\r\nPenyebaran infeksi ke organ lain.\r\n\r\nKesimpulan\r\nPerawatan luka yang tepat sangat penting untuk mencegah infeksi, mempercepat penyembuhan, dan mengurangi risiko komplikasi. Selalu ikuti saran dokter dan perhatikan kondisi luka selama masa pemulihan. Jangan ragu untuk segera mencari bantuan medis jika luka memburuk atau tidak menunjukkan tanda-tanda perbaikan.\r\n','dr. Pittara','Ayu Juliana','Alodokter - Perawatan Luka (https://www.alodokter.com/hal-hal-yang-perlu-diketahui-tentang-perawatan-luka)','2024-11-27','2024-11-30 22:23:24'),
(2,'Luka Sayat - Pertolongan Pertama untuk Luka Sayat','https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2022/12/21002524/Ini-5-Cara-Menghentikan-Pendarahan-karena-Luka-Sayatan.jpg','Pendarahan karena Luka Sayatan\r\nCedera, termasuk luka sayatan, dapat menyebabkan pendarahan yang seringkali memicu kecemasan. Meskipun begitu, pendarahan sebenarnya merupakan bagian alami dari proses penyembuhan. Namun, tetap penting untuk memahami cara menghentikan pendarahan dengan tepat, baik sebagai pertolongan pertama maupun sembari menunggu bantuan medis.\r\nBerikut ini adalah lima cara yang dapat kamu lakukan untuk menghentikan pendarahan akibat luka sayatan.\r\n\r\n5 Cara Menghentikan Pendarahan akibat Luka Sayatan\r\n1. Tekan Luka yang Berdarah\r\nMenekan luka adalah langkah awal yang paling penting untuk menghentikan aliran darah. Darah perlu menggumpal agar proses penyembuhan dapat dimulai.\r\nLangkah:\r\nGunakan kain kasa steril atau pembalut luka untuk menutupi dan menekan luka.\r\nJika kain kasa tidak tersedia, gunakan handuk bersih.\r\n Tekanan pada luka membantu mempercepat pembekuan darah.\r\n2. Tinggikan Bagian Tubuh yang Berdarah\r\nMengangkat bagian tubuh yang terluka hingga berada di atas posisi jantung dapat memperlambat aliran darah karena pengaruh gravitasi.\r\nLangkah:\r\nJika tangan terluka, angkat tangan hingga lebih tinggi dari dada.\r\nTetap tekan luka selama posisi dinaikkan untuk hasil yang optimal.\r\n3. Bersihkan Luka\r\nSetelah pendarahan melambat atau berhenti, bersihkan area luka untuk mencegah infeksi.\r\nLangkah:\r\nGunakan air bersih mengalir dan sabun untuk membersihkan luka.\r\nHindari penggunaan bahan antiseptik seperti hidrogen peroksida karena dapat menyebabkan iritasi dan memperparah luka.\r\n4. Tutup Luka dengan Perban\r\nMenutup luka dengan perban sangat penting untuk melindungi luka dari kotoran, debu, atau gesekan.\r\nLangkah:\r\nGunakan perban kedap air untuk luka di area seperti tangan atau lutut.\r\nGanti perban setiap hari, atau segera setelah basah atau kotor, untuk menjaga luka tetap bersih dan kering.\r\n5. Oleskan Krim Antibiotik\r\nUntuk luka yang terlihat kotor, oleskan salep antibiotik untuk mencegah infeksi dan mempercepat proses penyembuhan.\r\nCatatan:\r\nGunakan salep antibiotik hanya setelah berkonsultasi dengan dokter, terutama jika kamu memiliki riwayat alergi.\r\n\r\nKapan Harus Mencari Bantuan Medis?\r\nSegera hubungi dokter jika:\r\nPendarahan tidak berhenti setelah 10 menit meskipun sudah ditekan.\r\nLuka tampak dalam atau lebar.\r\nMuncul tanda-tanda infeksi seperti kemerahan, pembengkakan, atau nanah.\r\n\r\nKesimpulan\r\nMenghentikan pendarahan akibat luka sayatan dapat dilakukan dengan langkah-langkah sederhana seperti menekan luka, mengangkat bagian tubuh, membersihkan luka, menutupnya dengan perban, dan menggunakan krim antibiotik. Jika kamu ragu atau kondisinya tidak membaik, segera konsultasikan ke dokter.\r\n','dr. Rizal Fadli','Ayu Juliana','Halodoc - Hentikan Pendarahan Luka Sayat (https://www.halodoc.com/artikel/ini-5-cara-menghentikan-pendarahan-karena-luka-sayatan?srsltid=AfmBOoqKLJQcWoAsTLDQzcfnU4C3tdIXAz78RlNpG4UJmTC6GuYE8bUD)','2024-11-27','2024-11-30 22:26:19'),
(3,'Kesembuhan Luka Memar dan Perubahan Warnanya','https://res.cloudinary.com/dk0z4ums3/image/upload/v1687492167/attached_image/kesembuhan-luka-memar-dan-perubahan-warnanya-0-alodokter.jpg','Penyembuhan Luka Memar dan Perubahan Warnanya\r\nLuka memar sering kali muncul akibat pecahnya pembuluh darah kecil di bawah kulit. Proses penyembuhannya biasanya memakan waktu 2–4 minggu dan ditandai dengan perubahan warna memar secara bertahap. Memahami tahapan penyembuhan ini dapat membantu mengelola luka memar dengan lebih baik.\r\n\r\nApa Itu Luka Memar?\r\nLuka memar terjadi ketika pembuluh darah kecil di bawah kulit rusak akibat benturan atau tekanan, sehingga darah merembes ke jaringan sekitarnya dan membeku. Kondisi ini menyebabkan kulit terlihat kemerahan, kebiruan, hingga keunguan, disertai bengkak dan nyeri.\r\nPenyebab Luka Memar:\r\nBenturan dengan benda keras.\r\nKecelakaan atau olahraga berat.\r\nTerjatuh atau keseleo.\r\nKekurangan vitamin C.\r\nUsia lanjut yang membuat pembuluh darah lebih rapuh.\r\nPenggunaan obat tertentu seperti pengencer darah.\r\nPenyakit seperti hemofilia, anemia, atau leukemia.\r\n\r\nTahapan Perubahan Warna Luka Memar\r\nMerah:\r\nSetelah pembuluh darah pecah, memar awalnya tampak merah dan sedikit bengkak. Area tersebut juga terasa nyeri jika disentuh.\r\nKebiruan hingga Ungu Gelap:\r\nDalam 1–2 hari, memar berubah menjadi biru atau ungu gelap akibat minimnya oksigen di area tersebut. Perubahan ini terjadi karena hemoglobin di dalam darah mulai terurai.\r\nHijau Pucat:\r\nPada hari keenam, memar akan tampak kehijauan. Ini menandakan hemoglobin yang terurai mulai diproses oleh tubuh.\r\nKuning Kecokelatan:\r\nSetelah seminggu, warna memar menjadi kuning atau cokelat muda, yang menandai tahap akhir penyembuhan. Warna ini perlahan menghilang hingga kulit kembali normal.\r\n\r\nCara Menangani Luka Memar di Rumah\r\nUntuk mempercepat penyembuhan dan mengurangi nyeri serta bengkak, lakukan langkah berikut:\r\nIstirahatkan Area yang Memar:\r\nHindari aktivitas yang dapat memperparah luka memar.\r\nKompres Dingin:\r\nGunakan es yang dibungkus kain bersih selama 20–30 menit, segera setelah memar muncul. Ini membantu mengurangi bengkak.\r\nBalut dengan Perban Elastis:\r\nMembungkus area memar dapat membantu mengontrol pembengkakan, tetapi jangan terlalu kencang.\r\nTinggikan Area yang Terluka:\r\nJika memar berada di lengan atau tungkai, posisikan lebih tinggi dari dada saat berbaring untuk mengurangi aliran darah ke area tersebut.\r\nGunakan Kompres Hangat (Setelah 2 Hari):\r\nLakukan kompres hangat 2–3 kali sehari untuk meningkatkan aliran darah dan mempercepat penyembuhan.\r\nGunakan Obat Oles:\r\nSalep atau gel yang mengandung heparin dapat membantu mengurangi nyeri, bengkak, dan mempercepat penyembuhan.\r\n\r\nKapan Harus Berkonsultasi dengan Dokter?\r\nSegera konsultasikan ke dokter jika:\r\nMemar disertai nyeri hebat atau pembengkakan ekstrem.\r\nTerdapat darah di urine atau tinja.\r\nMemar tidak sembuh setelah 2–3 minggu.\r\nDemam atau tanda infeksi muncul.\r\n\r\nKesimpulan\r\nLuka memar biasanya sembuh dengan sendirinya, tetapi perawatan yang tepat dapat mempercepat pemulihan dan mengurangi keluhan. Perhatikan tanda-tanda yang memerlukan perhatian medis dan konsultasikan ke dokter jika perlu. Dengan langkah yang tepat, memar dapat diatasi secara efektif dan tanpa komplikasi.\r\n','dr. Merry Dame Cristy Pane','Ayu Juliana','Alodokter - Luka Memar (https://www.alodokter.com/kesembuhan-luka-memar-dan-perubahan-warnanya)','2024-11-27','2024-11-30 22:28:45'),
(4,'Anti Kusam: Cara Cepat Pulihkan Kulit Terbakar Matahari','https://res.cloudinary.com/dk0z4ums3/image/upload/v1599533192/attached_image/tips-mudah-atasi-kulit-terbakar-matahari-di-rumah-0-alodokter.jpg','Apa Itu Kulit Terbakar Matahari?\r\nSunburn terjadi akibat paparan sinar ultraviolet (UV) yang berlebihan pada kulit. Kondisi ini biasanya muncul beberapa jam setelah terlalu lama berada di bawah matahari tanpa tabir surya atau pakaian pelindung. Gejalanya meliputi:\r\nKulit kemerahan.\r\nBengkak dan terasa hangat.\r\nGatal atau nyeri saat disentuh.\r\nDalam kasus parah, kulit bisa melepuh dan mengelupas.\r\n\r\nCara Mengatasi Kulit Terbakar Matahari\r\nKompres Dingin\r\nGunakan handuk bersih yang direndam dalam air dingin atau air es untuk mengompres area yang terbakar selama 10–15 menit.\r\nLakukan beberapa kali sehari untuk meredakan peradangan dan kemerahan.\r\nBerendam dengan Bahan Alami\r\nBerendamlah dalam air dingin selama 15 menit untuk mengurangi rasa perih.\r\nHindari kolam dengan klorin karena dapat memperparah iritasi.\r\nTambahkan bahan alami seperti:\r\nGandum utuh untuk mengurangi gatal.\r\nCuka apel untuk menyeimbangkan pH kulit.\r\nBaking soda untuk mengurangi kemerahan.\r\nMinyak esensial seperti chamomile atau lavender untuk mengurangi rasa perih.\r\nGunakan Bahan Alami dari Dapur\r\nOleskan timun, lidah buaya, madu, atau minyak zaitun ke area yang terbakar.\r\nTimun dan lidah buaya dapat dihaluskan terlebih dahulu untuk mendapatkan efek mendinginkan.\r\nPerbanyak Minum Air\r\nKulit yang terbakar matahari cenderung lebih kering, sehingga penting untuk menjaga tubuh tetap terhidrasi dengan minum banyak air putih atau jus buah.\r\nGunakan Obat-Obatan\r\nJika nyeri tidak tertahankan, konsumsi obat pereda nyeri seperti ibuprofen atau paracetamol.\r\nGunakan salep kortikosteroid untuk meredakan peradangan, tetapi konsultasikan dengan dokter sebelum penggunaan.\r\n\r\nTips Tambahan untuk Pemulihan Kulit\r\nGunakan pelembab saat kulit mulai mengelupas.\r\nHindari memencet lepuhan untuk mencegah infeksi. Jika lepuhan pecah, bersihkan dengan lembut.\r\nGunakan pakaian berbahan lembut dan menutupi kulit saat beraktivitas di luar ruangan.\r\nHindari sabun dengan bahan kimia keras, seperti yang mengandung pewangi atau antibakteri.\r\n\r\nPencegahan Kulit Terbakar Matahari\r\nUntuk mencegah sunburn, lakukan langkah berikut:\r\nGunakan tabir surya dengan SPF minimal 30 sebelum keluar rumah.\r\nKenakan pakaian lengan panjang, topi bertepi lebar, dan kacamata hitam dengan perlindungan UV.\r\nHindari aktivitas di bawah sinar matahari langsung antara pukul 10 pagi hingga 4 sore.\r\n\r\nKapan Harus ke Dokter?\r\nSegera konsultasikan dengan dokter jika:\r\nKulit terbakar menimbulkan lepuhan parah.\r\nTerjadi pembengkakan atau rasa sakit yang ekstrem.\r\nDisertai demam atau kondisi tidak kunjung membaik setelah beberapa hari.\r\n\r\nKesimpulan\r\nKulit terbakar matahari adalah kondisi yang sering terjadi tetapi bisa dicegah dan ditangani dengan langkah-langkah sederhana. Dengan perawatan yang tepat, kulit akan pulih dalam waktu seminggu. Namun, untuk kasus yang lebih parah, jangan ragu mencari bantuan medis.\r\n','dr. Kevin Adrian','Ayu Juliana','Alodokter - Kulit Terbakar Matahari (https://www.alodokter.com/tips-mudah-atasi-kulit-terbakar-matahari-di-rumah)','2024-11-27','2024-11-30 22:31:21'),
(5,'Jangan Anggap Sepele! Cara Mengatasi Luka Lecet Anak dengan Benar','https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2024/02/28044049/Ibu-Ini-5-Cara-Mengatasi-Luka-Lecet-Anak-agar-Tidak-Infeksi.jpg','Atasi Luka Lecet Anak agar Tidak Infeksi\r\nLuka lecet pada anak adalah hal yang umum terjadi, terutama karena anak-anak sering aktif bermain dan bereksplorasi. Meski biasanya tidak serius, luka lecet tetap memerlukan penanganan cepat dan tepat agar tidak menyebabkan infeksi. Berikut ini adalah langkah-langkah sederhana yang dapat dilakukan untuk merawat luka lecet pada anak.\r\n\r\nMengapa Anak Rentan Mengalami Luka Lecet?\r\nKulit anak lebih tipis dan sensitif dibandingkan orang dewasa, sehingga lebih mudah terkena luka akibat gesekan atau iritasi. Selain itu, koordinasi motorik anak yang belum sempurna membuat mereka lebih sering terjatuh saat bermain atau beraktivitas. Oleh karena itu, penting bagi orang tua untuk mengetahui cara menangani luka lecet dengan benar.\r\n\r\n5 Langkah Mengatasi Luka Lecet pada Anak\r\nTenangkan Anak Terlebih Dahulu\r\n Luka lecet sering membuat anak menangis karena rasa sakit yang dirasakan. Tenangkan anak dengan memberikan emosi positif, seperti pelukan atau kata-kata yang menenangkan. Hal ini penting agar proses perawatan luka dapat berjalan dengan lancar.\r\nBersihkan Luka\r\nCuci tangan terlebih dahulu untuk mencegah bakteri berpindah ke luka anak.\r\nBersihkan luka dengan air mengalir atau larutan saline. Hindari penggunaan sabun atau bahan yang dapat menyebabkan iritasi.\r\nPastikan tidak ada kotoran, pasir, atau benda lain yang menempel di luka.\r\nHentikan Pendarahan\r\nJika luka anak mengalami pendarahan, tekan area luka dengan kain kasa bersih secara perlahan.\r\nJika pendarahan tidak berhenti dalam beberapa menit, segera bawa anak ke fasilitas kesehatan terdekat.\r\nOleskan Antiseptik dan Tutup Luka\r\nGunakan antiseptik seperti betadine atau alkohol 70% untuk membunuh bakteri dan mencegah infeksi.\r\nSetelah itu, tutup luka dengan perban bersih. Ganti perban setiap hari atau jika sudah basah atau kotor.\r\nAmati Tanda-Tanda Infeksi\r\nPerhatikan tanda-tanda seperti kemerahan, pembengkakan, nyeri yang meningkat, atau keluarnya cairan kuning atau hijau dari luka.\r\nJika tanda-tanda tersebut muncul, segera konsultasikan ke dokter untuk penanganan lebih lanjut.\r\n\r\nTips Tambahan untuk Mencegah Infeksi\r\nPastikan anak mengenakan pakaian dan alas kaki yang sesuai saat bermain untuk mengurangi risiko cedera.\r\nJangan melarang anak bereksplorasi, tetapi pastikan mereka bermain di tempat yang aman dan diawasi dengan baik.\r\nSelalu sediakan kotak pertolongan pertama di rumah untuk mengantisipasi cedera yang tidak terduga.\r\n\r\nKapan Harus Membawa Anak ke Dokter?\r\nSegera konsultasikan ke dokter jika:\r\nLuka tidak kunjung sembuh setelah beberapa hari.\r\nTerjadi pendarahan hebat yang sulit dihentikan.\r\nMuncul tanda-tanda infeksi seperti demam atau pembengkakan yang semakin parah.\r\n\r\nKesimpulan\r\nLuka lecet pada anak dapat diatasi dengan langkah sederhana di rumah. Namun, perhatian dan pengawasan orang tua sangat penting untuk mencegah komplikasi. Dengan perawatan yang tepat, luka anak akan cepat sembuh dan mereka dapat kembali aktif bermain. Jangan ragu untuk menggunakan layanan kesehatan terpercaya seperti Halodoc untuk mendapatkan informasi dan obat-obatan terbaik.\r\n','dr. Rizal Fadli','Ayu Juliana','Halodoc - Atasi Luka Lecet (https://www.halodoc.com/artikel/ibu-ini-5-cara-mengatasi-luka-lecet-anak-agar-tidak-infeksi?srsltid=AfmBOoqWptMUrJDN7uOpDnIETbtbLxGRbob0HzUkLOsp_A5lvWjaBNJ6)','2024-11-27','2024-11-30 22:32:48');

/*Table structure for table `faskes` */

DROP TABLE IF EXISTS `faskes`;

CREATE TABLE `faskes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_faskes` varchar(255) NOT NULL,
  `foto_url` varchar(255) NOT NULL,
  `link_maps` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `faskes` */

insert  into `faskes`(`id`,`nama_faskes`,`foto_url`,`link_maps`) values 
(1,'Rumah Sakit Umum Negara','https://lh3.googleusercontent.com/p/AF1QipP7oeryUow0wdNUuDHyjF5_O4mIftL-NLeUqiez=s1360-w1360-h1020','https://maps.app.goo.gl/mxBwtLXfsHtbwPBWA'),
(2,'Puskesmas I Jembrana','https://lh3.googleusercontent.com/p/AF1QipOWM65DBug83vTIzUyUcIuZH7KNTRMxt_4UsMQ=s1360-w1360-h1020','https://maps.app.goo.gl/wjddop3mt34pPe2s9'),
(3,'Apotek Kita Negara','https://lh3.googleusercontent.com/p/AF1QipOAoxmppJP8JtsB5-GZSVpm5LXn99Wp013z1w1G=s1360-w1360-h1020','https://maps.app.goo.gl/cUrinGgF3XRfubny9'),
(4,'Rumah Sakit Mangusada Badung','https://lh3.googleusercontent.com/p/AF1QipO6v-j66WhYJI653Ua_ZfWMcQ8aKyqNRpaeW4u-=s1360-w1360-h1020','https://maps.app.goo.gl/CpRALuYiDdq2qxGP7?g_st=com.google.maps.preview.copy'),
(5,'UPTD.Puskesmas Kuta I','https://lh3.googleusercontent.com/p/AF1QipPb_zz6YjupZJWjLtz1k6IBiReEGaxBEwkQIQg=s1360-w1360-h1020','https://maps.app.goo.gl/ofWbTioex5oPxjYaA?g_st=ic'),
(6,'Apotek Star Medika','https://lh3.googleusercontent.com/p/AF1QipPhQF29_7QrMLgxjNOxRv5d_XPs4kU1DIiPSG7x=s1360-w1360-h1020','https://maps.app.goo.gl/UqoXX4SoSxbTbz3p8?g_st=com.google.maps.preview.copy'),
(7,'Apotek Ginanti Buleleng','https://lh3.googleusercontent.com/p/AF1QipPyMq6laYsQGeDkwChnFlxKb_PoLbU8VrSc2Ov5=s1360-w1360-h1020','https://maps.app.goo.gl/bkntN4DAvdABBSps9'),
(8,'Puskesmas Buleleng I','https://lh3.googleusercontent.com/p/AF1QipPHjKDd6mimLYOlhaq2SvsTZ2oxws8xa9H8QPQB=s1360-w1360-h1020','https://maps.app.goo.gl/vmyp7B2X4JBVwdzi8'),
(9,'RSUD Kabupaten Buleleng','https://lh3.googleusercontent.com/p/AF1QipPs-gV6jlTFCqcJezuZ4BGq7ew6FkmgS07ijjQJ=s1360-w1360-h1020','https://maps.app.goo.gl/DUzAvMF79tVEHTQj7'),
(10,'RSUD Tabanan','https://lh3.googleusercontent.com/p/AF1QipNluddgWSfPw1AHXNaBLJmBbM2UaPHakQ2QnHJE=s1360-w1360-h1020','https://maps.app.goo.gl/f3UKoKuHa1soXf5U8'),
(11,'UPTD Puskesmas Tabanan III','https://lh3.googleusercontent.com/p/AF1QipOYSFD4v5YAwKKowFQW6Cr55D37NHy684B8ZJpR=s1360-w1360-h1020','https://maps.app.goo.gl/5XQ8pUn7cBuSGHUs6'),
(12,'Apotek Kimia Farma 102 Kediri Tabanan','https://lh3.googleusercontent.com/p/AF1QipPEJsGpDzyaWQCS6PguUBh-E_UKyDPurmqyKoHK=s1360-w1360-h1020','https://maps.app.goo.gl/KFipmRa6d8JDMFv7A'),
(13,'RSUD Wangaya Denpasar','https://lh5.googleusercontent.com/p/AF1QipMlEpaDXJs51oJQxPsCx3AoCvCCw1_cFGn4fz9d=w141-h101-n-k-no-nu','https://maps.app.goo.gl/FtyRE3pRmu2Zvywq5'),
(14,'Puskesmas I Denpasar Timur','https://lh3.googleusercontent.com/p/AF1QipPh0N887q19VgdjbokcRvt7fvM9UA3NcCoOrYu9=s1360-w1360-h1020','https://maps.app.goo.gl/X2AHuPHLc1xFn8Xx8'),
(15,'Apotek Adhi Guna Farma 2','https://lh3.googleusercontent.com/p/AF1QipO4YSSokPHLozjTbZEunDZVpPgIIA3W0B4X-9xX=s1360-w1360-h1020','https://maps.app.goo.gl/semK75m6Bhkd8Ghp8'),
(16,'Rumah Sakit Umum Daerah Bangli','https://lh3.googleusercontent.com/p/AF1QipNwnG0OHjBCH-FRX8fBbmhogWuwzWXwjhafGoA7=s1360-w1360-h1020','https://maps.app.goo.gl/J6ZeEYxUpHeRAuiN8'),
(17,'Puskesmas Bangli','https://lh3.googleusercontent.com/p/AF1QipM_7DOqGEu7vDjEk0UO9aFA821anq1sAxTqxlpx=s1360-w1360-h1020','https://maps.app.goo.gl/9psVsKgewLaTCtz9A'),
(18,'Apotek Carina Farma','https://lh3.googleusercontent.com/p/AF1QipMNsOF-jrLTrqdP-4ShAuy0f2MQxbTNX3G_NgVo=s1360-w1360-h1020','https://maps.app.goo.gl/xMBavNr5oSLnpPyL9'),
(19,'Rumah Sakit Umum Sanjiwani Gianyar','https://lh3.googleusercontent.com/p/AF1QipO_zRX_aDoJwVHjfwMo2RtR4qUsFQKCYc63hzyS=s1360-w1360-h1020','https://maps.app.goo.gl/WXrEuHyHmofVG1BL8'),
(20,'UPTD Puskesmas Gianyar I','https://lh3.googleusercontent.com/p/AF1QipMWXpqw1N1rvKocPeWEGKkwbx8neA54p68Kc4s=s1360-w1360-h1020','https://maps.app.goo.gl/hFQn9TN29YagxLj99'),
(21,'Apotek Ghauri Anindia','https://lh3.googleusercontent.com/p/AF1QipN_9jtfVC-kqy9z6IMUZTGzz6BQDAZHwK99714a=s1360-w1360-h1020','https://maps.app.goo.gl/jdaJJshje5SmUfMMA ');

/*Table structure for table `luka` */

DROP TABLE IF EXISTS `luka`;

CREATE TABLE `luka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_luka` varchar(255) NOT NULL,
  `langkah_penanganan` text NOT NULL,
  `tips_tambahan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `luka` */

insert  into `luka`(`id`,`jenis_luka`,`langkah_penanganan`,`tips_tambahan`) values 
(1,'Luka Lecet (Abrasion)','Langkah Penanganan: Cuci Tangan Sebelum Menangani Luka: Pastikan tangan Anda bersih dengan mencucinya menggunakan sabun dan air mengalir. Hal ini penting untuk mencegah masuknya kuman ke dalam luka. Hentikan Perdarahan Jika Ada: Jika luka lecet mengeluarkan darah, tekan area luka dengan kain bersih atau kasa steril selama beberapa menit hingga darah berhenti. Bersihkan Luka dengan Lembut: Bilas luka dengan air mengalir dan sabun lembut untuk membersihkan kotoran di sekitar luka. Hindari menggunakan alkohol, iodine, atau hidrogen peroksida langsung pada luka, karena dapat menyebabkan iritasi. Gunakan Petroleum Jelly atau Salep: Setelah luka bersih, oleskan petroleum jelly atau salep luka tipis-tipis untuk menjaga kelembaban luka. Tutup Luka dengan Perban Steril: Tutup luka lecet yang telah dibersihkan dan dikeringkan dengan kasa steril/plester luka. Ganti perban setiap hari, atau segera jika perban basah atau kotor. Atasi Rasa Nyeri Jika Diperlukan: Untuk luka yang terasa nyeri, dapat mengonsumsi obat seperti paracetamol sesuai dosis yang dianjurkan. Hindari aspirin karena dapat memperpanjang perdarahan. Perhatikan Tanda-Tanda Infeksi: Segera konsultasikan dengan dokter jika luka menunjukkan tanda-tanda berikut: Kemerahan atau bengkak yang meluas. Rasa sakit bertambah parah. Keluar nanah atau luka terasa panas. Timbul garis merah di sekitar luka. Pastikan Vaksin Tetanus Terbaru Untuk Kondisi Tertentu: Jika luka lecet disebabkan oleh benda kotor, karat, atau gigitan hewan, segera periksa ke fasilitas kesehatan untuk mendapatkan suntikan tetanus jika diperlukan.','Tips Tambahan:\r\nJangan mengorek atau menggaruk luka saat proses penyembuhan, karena dapat memperlambat penyembuhan dan meningkatkan risiko infeksi. Untuk luka lecet kecil, biarkan luka terbuka jika area aman dari kotoran, agar luka cepat kering.'),
(2,'Luka Bakar Ringan (Minor Burn)','Langkah Penanganan: Segera Bilas dengan Air Dingin: Cuci luka di bawah air dingin mengalir selama 15–20 menit. Hindari menggunakan es atau air terlalu dingin. Kemudian, bersihkan luka dengan sabun berbahan ringan dan air untuk menghilangkan kotoran. Kompres Dingin untuk Meredakan Nyeri: Setelah membilas luka, letakkan kain bersih yang dibasahi air dingin di atas luka selama 5–15 menit untuk meredakan nyeri dan bengkak. Jangan terlalu lama untuk mencegah iritasi. Hindari Mengoleskan Bahan Sembarangan: Jangan oleskan pasta gigi, mentega, minyak, atau bahan lain yang belum terbukti aman, karena bisa meningkatkan risiko infeksi dan memperburuk luka. Biarkan Lepuhan Tetap Utuh: Jika luka bakar membentuk lepuhan, jangan memecahkannya. Biarkan lepuhan sembuh sendiri. Jika pecah, bersihkan dan tutupi dengan perban steril. Gunakan Salep Luka yang Tepat: Setelah luka dibersihkan, oleskan salep atau gel luka bakar untuk mempercepat penyembuhan. Oleskan 2 kali sehari pada area bekas luka selama minimal 8 minggu. Tutup Luka dengan Perban Steril: Gunakan perban steril yang tidak lengket untuk melindungi luka dari gesekan atau kotoran. Ganti perban setiap hari atau jika basah atau kotor. Lindungi Luka dari Paparan Sinar Matahari: Gunakan pakaian longgar untuk menutupi area luka saat berada di luar ruangan. Setelah sembuh, gunakan tabir surya SPF 30+ untuk mencegah bekas luka menggelap. Konsumsi Obat Pereda Nyeri Jika Diperlukan: Jika rasa sakit terasa mengganggu, Anda bisa mengkonsumsi obat seperti paracetamol atau ibuprofen sesuai dosis yang dianjurkan. Pantau Perkembangan Luka: Jika luka tidak membaik dalam beberapa hari, menunjukkan tanda infeksi (seperti kemerahan yang meluas, nanah, atau demam), segera konsultasikan dengan dokter.','Tips Tambahan: Jika luka bakar akibat bahan kimia, bilas dengan air mengalir lebih lama, minimal 30 menit. Untuk luka bakar listrik, segera matikan sumber listrik sebelum menyentuh korban.'),
(3,'Luka Sayat Ringan (Minor Cut)','Langkah Penanganan: Bersihkan luka dengan air mengalir: Pastikan tangan Anda bersih dengan mencucinya air mengalir. Hal ini penting untuk mencegah masuknya kuman ke dalam luka. Hentikan pendarahan: Jika terjadi pendarahan, Hentikan perdarahan dengan menekan luka menggunakan kain bersih atau kasa steril, angkat bagian tubuh yang terluka untuk mengurangi perdarahan, dan tekan luka kurang lebih selama 10 menit. Tutup luka dengan perban atau kasa steril: Tutupi luka dengan perban atau kasa steril untuk luka yang lebih besar, atau biarkan terbuka untuk luka kecil. Gunakan gel lidah buaya: Gel lidah buaya dapat mempercepat pertumbuhan luka yang dangkal. Kompres air dingin: Kompres luka anda dengan air dingin apabila luka mengalami pembengkakan atau memar. Jaga kebersihan luka: Pastikan luka anda bersih dan kering selama 5-7 hari. Hindari merokok dan konsumsi alkohol selama proses penyembuhan.','Tips Tambahan, untuk mencari pertolongan medis jika: Luka dalam atau luas, terutama jika perdarahan tidak berhenti setelah 10 menit menekan luka. Luka terkontaminasi kotoran atau yang disebabkan oleh gigitan atau cakaran hewan. Luka pada area sensitif seperti wajah, kulit kepala, atau sekitar persendian. Penderita dengan kondisi medis tertentu seperti diabetes, gangguan pembekuan darah, atau yang sedang mengkonsumsi obat pengencer darah. Hindari menggunakan antiseptik seperti alkohol atau hidrogen peroksida saat membersihkan luka'),
(4,'Luka Lebam Ringan (Minor Bruises)','Langkah Penanganan: Kompres Es Batu: Untuk mengurangi pembengkakan dan nyeri pada luka anda, kompres dengan es batu yang dibungkus kain atau handuk selama 10–20 menit. Ulangi setiap jam jika perlu, terutama dalam 48 jam pertama setelah cedera. Kompres Hangat setelah 48 jam: Kompres hangat dapat digunakan selama 10 menit pada area memar untuk meningkatkan sirkulasi darah dan membantu penyerapan darah yang terperangkap. Istirahatkan bagian tubuh yang memar: Hindari aktivitas yang membebani area tersebut untuk mencegah cedera lebih lanjut dan mengurangi pembengkakan. Membebat Luka dengan Perban Elastis: Membebat area memar dengan perban elastis dapat membantu mengurangi pembengkakan. Pastikan perban tidak terlalu kencang untuk menghindari gangguan sirkulasi darah. Obat Pereda Nyeri: Jika anda merasakan nyeri atau rasa sakit yang mengganggu, anda dapat mengkonsumsi obat pereda nyeri seperti paracetamol atau ibuprofen.','Tips Tambahan: Jangan Tempelkan Es Langsung pada Kulit: Selalu bungkus es dengan kain atau handuk untuk menghindari kerusakan kulit akibat suhu terlalu dingin. Jangan Biarkan Es Terlalu Lama di Kulit: Paparan es terlalu lama dapat merusak kulit, pastikan jeda waktu 20-30 menit sebelum mengompres ulang dengan es. Konsultasi ke Dokter jika: Memar disertai nyeri hebat atau pembengkakan yang signifikan. Memar tidak membaik setelah 2–3 minggu. Ada tanda-tanda infeksi atau gejala syok seperti pusing, keringat berlebihan, atau nyeri dada. Jika disertai dengan gejala seperti mimisan atau gusi berdarah, bisa jadi ini menandakan masalah kesehatan yang lebih serius.');

/*Table structure for table `medical_history` */

DROP TABLE IF EXISTS `medical_history`;

CREATE TABLE `medical_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `kondisi` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `presentase` decimal(5,2) NOT NULL,
  `deskripsi` text,
  `treatment` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `medical_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `medical_history` */

insert  into `medical_history`(`id`,`user_id`,`kondisi`,`image_url`,`presentase`,`deskripsi`,`treatment`) values 
(1,1,'Luka Lebam','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTichrQFpJvC2ixPMWsAN9lfVFwd54zf7oh1w&s',99.99,'Luka akibat benturan yang menyebabkan pembengkakan dan perubahan warna pada kulit. Tidak memerlukan tindakan medis intensif, tetapi memerlukan kompres dingin.','Kompres dingin untuk mengurangi pembengkakan dan rasa sakit.'),
(2,3,'Luka Tergores','https://medical-images.essity.com/images-c5/286/321286/original/wound-treatment-scratches-header-1600x500px.png',98.00,'Luka akibat tergores benda tajam yang dapat menyebabkan luka pada permukaan kulit. Biasanya cepat sembuh dengan pembersihan dan perawatan sederhana.','Pembersihan luka dan pemberian salep antiseptik untuk mencegah infeksi.'),
(3,2,'Luka Bakar Ringan','https://res.cloudinary.com/dk0z4ums3/image/upload/v1589076047/attached_image/obat-luka-bakar-alami-dan-pantangan-mengatasi-luka-bakar-0-alodokter.jpg',97.90,'Luka bakar tingkat 2 pada area tangan dan kaki, dengan kemerahan dan lepuh.','Pengobatan luka bakar dengan salep antibiotik, pemberian analgesik untuk rasa sakit, dan perawatan luka rutin.');

/*Table structure for table `obat` */

DROP TABLE IF EXISTS `obat`;

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama_obat` varchar(255) DEFAULT NULL,
  `foto_obat` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `dosis` varchar(255) DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `obat` */

insert  into `obat`(`id`,`nama_obat`,`foto_obat`,`deskripsi`,`dosis`,`harga`) values 
(1,'Dermatix Ultra','https://images.tokopedia.net/img/cache/700/VqbcmM/2021/12/19/a866f2dd-c46e-4ec7-bd7c-032195351cec.jpg','Dermatix Ultra adalah gel topikal yang teruji klinis dapat meratakan, menghaluskan, dan memudarkan bekas luka bakar ringan hingga 80%. Cepat kering dan tidak lengket','Oleskan 2 kali sehari selama 8 minggu untuk hasil optimal.',362000),
(2,'Bioplacenton Gel 15 g','https://kalbemed.com/storage/images/products/691f2e0f6c3aabd87272a21906736ded.jpg','Bioplacenton Gel adalah obat luka bakar yang mengandung ekstrak plasenta dan Neomycin sulfate, efektif mempercepat pembentukan jaringan baru dan mencegah infeksi bakteri gram negatif pada luka.','Gunakan 4–6 kali sehari atau sesuai kebutuhan.',30000),
(3,'Hansaplast Salep Luka','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSuL41Yq3pWgjoQhYmELQnzffLJ-QBGE1VaA&s','Hansaplast Salep Luka mengandung white petrolatum, thin paraffin oil, ceresin wax, glycerin, panthenol, dan glyceryl stearate, yang efektif mempercepat penyembuhan luka dan mengurangi risiko bekas luka.','Gunakan 2 kali sehari pada area luka, lalu tutup dengan plester.',45000),
(4,'Sumagesic 600 mg tablet (paracetamol/pereda nyeri)','https://www.satudental.com/wp-content/uploads/2024/06/1.-Sumagesic--scaled.jpg','Sumagesic adalah obat pereda nyeri yang mengandung 600 mg Paracetamol, efektif mengatasi nyeri luka. Hindari penggunaan jika memiliki hipersensitif terhadap paracetamol.','Dosis untuk dewasa: 1 kaplet 3-4 kali sehari. Dosis untuk anak 7-12 tahun: ¼ hingga ½ kaplet 3-4 kali sehari.',3300),
(5,'Vaseline Petroleum Jelly','https://images.soco.id/image-0-1595501377354','Vaseline Petroleum Jelly merupakan salep untuk melembabkan dan melindungi kulit luka lecet, serta cocok untuk luka lecet ringan','Cukup oleskan pada area luka yang bersih dan biarkan meresap',25000),
(6,'Betadine Antiseptik Cair 15 ml','https://siplah-oss.tokoladang.co.id/merchant/25008/product/PPwOE5BabHOlC8SMoLf5Llf49y8SBJiE045deCnK.jpg','Betadine Antiseptik Cair 15 ml mengandung 10% povidone iodine untuk membunuh bakteri dan mencegah infeksi pada luka lecet.','Oleskan 1-3 kali sehari',15000),
(7,'Betadine Antiseptik Salep 20 gr','https://favo.id/cdn/shop/products/BEASUP1002_Betadine-Antiseptic-Ointment-Salep-Luka-Luar---20-gr.jpg?v=1635242124','Betadine Antiseptik Salep 20 gr mengandung 10% povidone iodine untuk mencegah infeksi pada luka lecet.','Oleskan 1-3 kali sehari',38000),
(8,'Hansaplast Spray Antiseptik','https://c.alfagift.id/product/1/1_A6878720001022_20220927164846871_base.jpg','Spray antiseptik untuk membersihkan dan mencegah infeksi pada luka sayat ringan. Dapat digunakan pada luka terbuka untuk mencegah infeksi.','Semprotkan pada luka 2-3 kali sehari',33000),
(9,'Gentamicin Salep Kulit 0.1% 5 g','https://res-5.cloudinary.com/dk0z4ums3/image/upload/c_scale,h_750,w_750/v1/production/pharmacy/products/1660914955_62a18ea3f15ee840f565eb16','Antibiotik salep yang digunakan untuk mencegah dan mengobati infeksi pada luka sayat ringan dengan kandungan gentamicin.','Oleskan pada area luka 2-3 kali sehari',5000),
(10,'Thrombophob Gel','https://image.astronauts.cloud/product-images/2024/4/ThrombophobGelSalep1_7645ede9-5e64-4285-82f1-41f53006d3aa_900x900.png','Gel untuk mengurangi pembengkakan dan nyeri pada luka lebam ringan. Mengandung heparin untuk mempercepat proses pemulihan.','Oleskan 2-3 kali sehari pada area memar',50000),
(11,'Thrombophob Salep','https://storage.googleapis.com/rxstorage/Product/large/Apotek_Online_Farmaku_com_Thrombophob_Ointment_15_g.jpg','Salep untuk mengurangi pembengkakan dan rasa nyeri pada luka lebam. Efektif membantu mengurangi memar dan meningkatkan proses pemulihan.','Oleskan 2-3 kali sehari pada area memar',60000);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_profile` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`user_profile`,`fullname`,`phoneNumber`,`dateOfBirth`,`address`) values 
(1,NULL,'Dinda Mayori','081234567890','2004-04-30','Sebatu, Gianyar'),
(2,'https://imgx.sonora.id/crop/0x0:0x0/x/photo/2022/08/09/c4c56a84-6a67-11ea-9de8-4adc9756-20220809013742.jpg','Nadila Sinthadewi','08123456789','2004-06-26','Tabanan, Bali'),
(3,NULL,'Ayu Juliana','0827345678','2004-03-01','Tabanan, Bali'),
(4,NULL,'Ari Aguska','0812345678','1995-06-12','Denpasar, Bali'),
(5,NULL,'Putu Dewi','0876543210','1992-11-22','Ubud, Bali'),
(6,NULL,'Wayan Indra','0832123456','1997-07-19','Kuta, Bali'),
(7,NULL,'Made Kusuma','0867432109','1987-12-04','Amlapura, Bali'),
(8,NULL,'Diana Putra','0845432109','1994-01-30','Mengwi, Bali'),
(9,NULL,'Komang Widi','0821345678','2000-09-25','Seminyak, Bali'),
(10,NULL,'Indira Santi','0898765432','1998-03-17','Nusa Dua, Bali'),
(11,NULL,'Made Adi Putra','082134567890','2000-07-21','Ubud, Gianyar, Bali'),
(12,NULL,'Made Adi Putra','082134567890','2000-07-21','Ubud, Gianyar, Bali'),
(13,NULL,'Madaraaaaaa','082134567890','2000-07-21','Ubud, Gianyar, Bali'),
(14,'https://example.com/profiles/gede-santika','Gede Santika','081234567891','2001-05-15','Tabanan, Bali'),
(18,'img','Madaraaaaaa','082134567890','2000-07-21','Ubud, Gianyar, Bali'),
(19,'img','Madaraaaaaa','082134567890','2000-07-21','Ubud, Gianyar, Bali'),
(20,'img','Madaraaaaaa','082134567890','2000-07-21','Ubud, Gianyar, Bali'),
(21,'img','Andika','628214477889910','2024-12-04','Holang'),
(22,'img','Andika','628214477889910','2024-12-04','Holang'),
(23,'https://example.com/profile/1733320992889.jpg','Andika','628214477889910','2024-12-04','Holang'),
(24,'https://example.com/profile/1733321736355.jpg','Madara','620000000','2024-12-04','oiii'),
(25,'https://example.com/profile/1733325311800.jpg','Made','628214511117878','2024-12-04','Badung'),
(26,'https://example.com/profile/1733325550917.jpg','udin','62822214705','2024-12-04','Bali'),
(27,'https://example.com/profile/1733326720902.jpg','Madari','62928727131','2024-12-04','Indonesia'),
(28,'https://example.com/profile/1733328130741.jpg','Mantap','622121313414','2024-12-04','Bali');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
