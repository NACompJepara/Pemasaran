-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.32-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Membuang struktur basisdata untuk db_alhikmah
CREATE DATABASE IF NOT EXISTS `db_alhikmah` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */;
USE `db_alhikmah`;

-- membuang struktur untuk table db_alhikmah.cabang
CREATE TABLE IF NOT EXISTS `cabang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kdcabang` varchar(20) NOT NULL,
  `nama_cabang` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kdcabang` (`kdcabang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Membuang data untuk tabel db_alhikmah.cabang: ~3 rows (lebih kurang)
/*!40000 ALTER TABLE `cabang` DISABLE KEYS */;
REPLACE INTO `cabang` (`id`, `kdcabang`, `nama_cabang`) VALUES
	(1, '01', 'Cabang Kalinyamatan'),
	(2, '02', 'Cabang Mayong'),
	(3, '03', 'Cabang Suwawal');
/*!40000 ALTER TABLE `cabang` ENABLE KEYS */;

-- membuang struktur untuk table db_alhikmah.pemasaran
CREATE TABLE IF NOT EXISTS `pemasaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipe` enum('1','2','3','4') NOT NULL COMMENT '1-Prospecting, 2-Canvassing, 3-Cross Selling, 4-Majelis Taklim',
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `jns_usaha` varchar(100) NOT NULL,
  `jml_kary` int(11) DEFAULT 0,
  `omset` decimal(15,2) DEFAULT 0.00,
  `asset` decimal(15,2) DEFAULT 0.00,
  `tanggal` date NOT NULL,
  `hasil` enum('mengajukan','tidak') NOT NULL,
  `jml_pengajuan` decimal(15,2) DEFAULT 0.00,
  `kegunaan` text DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `desa` varchar(100) NOT NULL,
  `target_brosur` int(11) NOT NULL DEFAULT 0,
  `brosur_tersebar` int(11) NOT NULL DEFAULT 0,
  `metode_penawaran` enum('WA','Telpon','Kunjungan') NOT NULL,
  `produk_penawaran` varchar(255) NOT NULL,
  `ketua` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  `kdcabang` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Membuang data untuk tabel db_alhikmah.pemasaran: ~68 rows (lebih kurang)
/*!40000 ALTER TABLE `pemasaran` DISABLE KEYS */;
REPLACE INTO `pemasaran` (`id`, `tipe`, `nama`, `alamat`, `nohp`, `jns_usaha`, `jml_kary`, `omset`, `asset`, `tanggal`, `hasil`, `jml_pengajuan`, `kegunaan`, `foto`, `desa`, `target_brosur`, `brosur_tersebar`, `metode_penawaran`, `produk_penawaran`, `ketua`, `userid`, `kdcabang`) VALUES
	(5, '1', 'Dedi Saputra', 'Jl. Ahmad Yani No. 12', '081344455566', 'Bengkel Motor', 5, 20000000.00, 80000000.00, '2025-03-11', 'tidak', 0.00, NULL, '67d7f6eb1ea27.jpg', '', 0, 0, 'WA', '', '', 5, '01'),
	(6, '1', 'Yulia Handayani', 'Jl. Mangga No. 88', '081377788899', 'Salon Kecantikan', 4, 18000000.00, 60000000.00, '2025-03-10', 'mengajukan', 7500000.00, 'Beli peralatan salon', '67d7f71de8e55.jpg', '', 0, 0, 'WA', '', '', 5, '01'),
	(7, '1', 'Joko Prasetyo', 'Jl. Mawar No. 5', '081399988877', 'Toko Elektronik', 6, 50000000.00, 200000000.00, '2025-03-09', 'mengajukan', 30000000.00, 'Tambah stok barang', '67d7f902f2f48.jpg', '', 0, 0, 'WA', '', '', 5, '01'),
	(8, '1', 'Linda Sari', 'Jl. Melati No. 18', '081311122233', 'Katering', 8, 40000000.00, 120000000.00, '2025-03-08', 'tidak', 0.00, NULL, NULL, '', 0, 0, 'WA', '', '', 5, '01'),
	(9, '1', 'Hendra Kurniawan', 'Jl. Anggrek No. 33', '081322211100', 'Usaha Laundry', 4, 15000000.00, 50000000.00, '2025-03-07', 'mengajukan', 10000000.00, 'Beli mesin cuci tambahan', '', '', 0, 0, 'WA', '', '', 5, '01'),
	(10, '1', 'Dian Purnama', 'Jl. Kenanga No. 9', '081366677788', 'Warung Sembako', 2, 12000000.00, 40000000.00, '2025-03-06', 'tidak', 0.00, NULL, NULL, '', 0, 0, 'WA', '', '', 5, '01'),
	(11, '2', 'Budi Santoso', 'Jl. Merdeka No.1', '081234567890', 'Toko Kelontong', 2, 5000000.00, 10000000.00, '2025-03-26', 'mengajukan', 3000000.00, 'Modal tambahan stok', 'canvasing-1743015374642-869318033.jpg', 'Desa A', 50, 30, 'Kunjungan', 'Kredit Mikro', '', 0, '01'),
	(12, '2', 'Siti Aminah', 'Jl. Raya No.23', '081234567891', 'Warung Makan', 4, 7000000.00, 15000000.00, '2025-03-14', 'tidak', 0.00, NULL, 'canvasing-1743005275676-854954670.jpg', 'Desa B', 60, 50, 'WA', 'Kredit Usaha Rakyat', '', 0, '01'),
	(13, '2', 'Rahmat Hidayat', 'Jl. Sukajadi No.9', '081234567892', 'Bengkel Motor', 3, 10000000.00, 20000000.00, '2025-03-13', 'mengajukan', 5000000.00, 'Pembelian alat baru', 'canvasing-1743005285125-617301106.jpg', 'Desa C', 40, 35, 'Telpon', 'Kredit Modal Kerja', '', 0, '01'),
	(14, '1', 'Ahmad Fadli', 'Jl. Cempaka No.7', '081234567893', 'Majelis Taklim', 0, 0.00, 0.00, '2025-03-12', 'tidak', 0.00, NULL, NULL, 'Desa D', 70, 55, 'Kunjungan', 'Kredit Syariah', '', 5, '01'),
	(15, '1', 'Dewi Lestari', 'Jl. Mawar No.5', '081234567894', 'Salon Kecantikan', 2, 8000000.00, 18000000.00, '2025-03-11', 'mengajukan', 4000000.00, 'Renovasi salon', NULL, 'Desa E', 50, 45, 'WA', 'Kredit Mikro', '', 5, '01'),
	(16, '1', 'Hendra Saputra', 'Jl. Kenanga No.3', '081234567895', 'Laundry', 2, 6000000.00, 12000000.00, '2025-03-10', 'tidak', 0.00, NULL, NULL, 'Desa F', 55, 40, 'Telpon', 'Kredit Usaha Rakyat', '', 5, '01'),
	(17, '1', 'Lina Susanti', 'Jl. Flamboyan No.8', '081234567896', 'Penjahit', 1, 3000000.00, 5000000.00, '2025-03-09', 'mengajukan', 2500000.00, 'Pembelian mesin jahit', NULL, 'Desa G', 30, 25, 'Kunjungan', 'Kredit Modal Kerja', '', 5, '01'),
	(18, '1', 'Muhammad Ridwan', 'Jl. Anggrek No.10', '081234567897', 'Majelis Taklim', 0, 0.00, 0.00, '2025-03-08', 'tidak', 0.00, NULL, NULL, 'Desa H', 65, 50, 'WA', 'Kredit Syariah', '', 5, '01'),
	(19, '1', 'Rina Pertiwi', 'Jl. Dahlia No.12', '081234567898', 'Toko Elektronik', 3, 15000000.00, 30000000.00, '2025-03-07', 'mengajukan', 7000000.00, 'Menambah stok barang', NULL, 'Desa I', 45, 30, 'Telpon', 'Kredit Mikro', '', 5, '01'),
	(20, '1', 'Samsul Bahri', 'Jl. Melati No.6', '081234567899', 'Warung Kopi', 2, 4000000.00, 9000000.00, '2025-03-06', 'tidak', 0.00, NULL, NULL, 'Desa J', 60, 55, 'Kunjungan', 'Kredit Usaha Rakyat', '', 5, '01'),
	(22, '3', 'Taufik Hidayat', 'Jl. Teratai No.4', '081234567801', 'Majelis Taklim', 0, 0.00, 0.00, '2025-03-04', 'tidak', 0.00, NULL, NULL, 'Desa L', 75, 65, 'Telpon', 'Kredit Syariah', '', 5, '02'),
	(23, '3', 'Wahyu Setiawan', 'Jl. Anyelir No.2', '081234567802', 'Percetakan', 4, 17000000.00, 35000000.00, '2025-03-03', 'mengajukan', 8000000.00, 'Pengadaan alat cetak', NULL, 'Desa M', 55, 50, 'Kunjungan', 'Kredit Mikro', '', 5, '03'),
	(25, '3', 'Hadi Pranoto', 'Jl. Cendana No.9', '081234567804', 'Toko Pancing', 2, 8000000.00, 15000000.00, '2025-03-01', 'mengajukan', 3500000.00, 'Menambah stok alat pancing', '1742991753138-860359156.jpg', 'Desa O', 40, 35, 'Telpon', 'Kredit Modal Kerja', '', 2, '01'),
	(26, '3', 'Yulianti Putri', 'Jl. Pinus No.14', '081234567805', 'Majelis Taklim', 0, 0.00, 0.00, '2025-02-28', 'tidak', 0.00, NULL, '67d7f668a29b1.jpg', 'Desa P', 80, 70, 'Kunjungan', 'Kredit Syariah', '', 5, '01'),
	(27, '3', 'Andre Kurniawan', 'Jl. Cemara No.16', '081234567806', 'Konveksi', 6, 20000000.00, 40000000.00, '2025-02-27', 'mengajukan', 9000000.00, 'Menambah mesin produksi', '67d7f668a29b1.jpg', 'Desa Q', 60, 55, 'WA', 'Kredit Mikro', '', 5, '01'),
	(28, '3', 'Lestari Dewi', 'Jl. Akasia No.20', '081234567807', 'Toko Kue', 3, 9000000.00, 18000000.00, '2025-02-26', 'tidak', 0.00, NULL, '67d7f668a29b1.jpg', 'Desa R', 70, 65, 'Telpon', 'Kredit Usaha Rakyat', '', 5, '02'),
	(29, '1', 'Muh Isro\'i', 'Semarang', '082247766781', 'Kontruksi', 10, 200000000.00, 5000000000.00, '2025-03-16', 'mengajukan', 50000000.00, 'Tambah Modal', NULL, '', 0, 0, 'WA', '', '', 5, '01'),
	(30, '1', 'Zainal Ma\'arif', 'Jogjakarta', '083220002122', 'Batubara', 1000, 150000000.00, 5200000000.00, '2025-03-16', 'tidak', 350000000.00, 'Tambah Modal', '20250316142415_5_67d6d0ff9ae70.jpg', '', 0, 0, 'WA', '', '', 5, '01'),
	(32, '1', 'Siti Nurbaya', 'Kuwasen Rt 10/02 Jepara', '082665777101', 'Warung Makan', 2, 1200000.00, 35000000.00, '2025-03-15', 'mengajukan', 15000000.00, 'Tambah Modal', '1742967398835-110629440.jpg', '', 0, 0, 'WA', '', '', 2, '01'),
	(33, '1', 'Gourge Bush', 'Wosington DC', '087777877311', 'Properti', 1023, 25000000.00, 300000000.00, '2025-03-17', 'tidak', 3000000.00, 'Utk makan', '20250317051845_2_67d7a2a59c19a.jpg', '', 0, 0, 'WA', '', '', 2, '01'),
	(34, '1', 'Anang Hermansyah', 'Suwawal Timur No. 2 Jepara', '087666660002', 'Konveksi', 17, 25000000.00, 35000000.00, '2025-03-17', 'mengajukan', 5000000.00, 'THR Karyawan', '20250317054548_2_67d7a8fc26b0a.jpg', '', 0, 0, 'WA', '', '', 2, '01'),
	(36, '1', 'Arif', 'Pati', '0888888', 'SWASTA', 2, 10000000.00, 50000000.00, '2025-03-13', 'mengajukan', 200000000.00, 'Pengembangan usaha', '1744082116846-204985057.jpg', '', 0, 0, 'WA', '', '', 2, '01'),
	(47, '3', 'tes', 'Tes juga', '0888888', '', 0, 0.00, 0.00, '0000-00-00', '', 0.00, NULL, '1742992349627-605466295.jpg', '', 0, 0, 'Kunjungan', 'Kredit Modal Kerja', '', 2, '01'),
	(48, '3', 'Siti', 'Langon', '081234567804', '', 0, 0.00, 0.00, '0000-00-00', 'tidak', 0.00, NULL, '1742992435287-227497616.jpg', '', 0, 0, 'Kunjungan', 'Kredit Usaha Rakyat', '', 2, '01'),
	(49, '3', 'PENGURUS', 'Tahunan', '083220002122', '', 0, 0.00, 0.00, '0000-00-00', '', 0.00, NULL, NULL, '', 0, 0, 'Telpon', 'Kredit Usaha Rakyat', '', 5, '01'),
	(50, '2', '', '', '', '', 0, 0.00, 0.00, '2025-03-26', 'mengajukan', 0.00, NULL, 'canvasing-1743003977356-860444223.jpg', 'Tahunan', 25, 20, 'WA', '', '', 0, '01'),
	(51, '2', '', '', '', '', 0, 0.00, 0.00, '2025-03-26', 'mengajukan', 0.00, NULL, 'canvasing-1743004646052-956415067.jpg', 'Langon', 100, 75, 'WA', '', '', 5, '01'),
	(53, '1', 'Jaya Baya', 'Tahunan Rt 10/02 Jepara', '082665774443', 'Restauran', 2, 1200000.00, 35000000.00, '2025-03-26', 'mengajukan', 15000000.00, NULL, '1743030301344-590390800.jpg', '', 0, 0, 'WA', '', '', 22, '02'),
	(54, '2', '', '', '', '', 0, 0.00, 0.00, '2025-03-26', 'mengajukan', 0.00, NULL, 'canvasing-1743030782036-304164021.jpg', 'Bagusan', 100, 90, 'WA', '', '', 22, '02'),
	(55, '3', 'Jaya Suprana', 'Langon Rt 10/02 Jepara', '082665777101', '', 0, 0.00, 0.00, '0000-00-00', '', 0.00, NULL, '1743030528184-556697298.jpg', '', 0, 0, 'Telpon', '2000000', '', 22, '02'),
	(56, '4', 'RT 02/01', 'Langon', '', '', 0, 0.00, 0.00, '2025-03-24', 'mengajukan', 0.00, NULL, 'taklim-1743041474229-295964967.png', '', 0, 50, 'WA', '', 'Jojon', 22, '02'),
	(57, '4', 'PKK Langon', 'Langon, Jepara', '', '', 0, 0.00, 0.00, '2025-03-26', 'mengajukan', 0.00, NULL, 'taklim-1743041738382-348428734.jpg', '', 0, 30, 'WA', '', 'Yati', 22, '02'),
	(59, '1', 'JONO', 'LANGON', '0822222251', 'Kontruksi', 20, 200.00, 5000000000.00, '2025-03-27', 'tidak', 0.00, NULL, '1743071646986-507746755.jpg', '', 0, 0, 'WA', '', '', 22, '02'),
	(62, '2', '', '', '', '', 0, 0.00, 0.00, '2025-03-26', 'mengajukan', 0.00, NULL, 'canvasing-1743324396581-291279274.jpg', 'Tahunan', 50, 40, 'WA', '', '', 2, '01'),
	(63, '4', 'Manakiban Rt10/5', 'Langon Rt 10/5', '', '', 0, 0.00, 0.00, '2025-03-29', 'mengajukan', 0.00, NULL, 'taklim-1743324602054-177735175.jpg', '', 0, 60, 'WA', '', 'Yusro,  S.Pd', 2, '01'),
	(64, '4', 'Kemisan', 'Kedungmalang', '', '', 0, 0.00, 0.00, '2025-03-28', 'mengajukan', 0.00, NULL, 'taklim-1744078702160-457881826.jpg', '', 0, 56, 'WA', '', 'Budin', 2, '01'),
	(65, '1', 'Arkana', 'Kedalingan', '08888888i88', 'Kontraktor', 100, 1000000000.00, 2000000000.00, '2025-03-31', 'mengajukan', 200000000.00, NULL, '1743515481491-151073741.jpg', '', 0, 0, 'WA', '', '', 5, '01'),
	(66, '2', '', '', '', '', 0, 0.00, 0.00, '2025-04-02', 'mengajukan', 0.00, NULL, 'canvasing-1743724852267-88903115.jpg', 'Sukodono', 75, 45, 'WA', '', '', 2, '01'),
	(67, '2', '', '', '', '', 0, 0.00, 0.00, '2025-04-02', 'mengajukan', 0.00, NULL, 'canvasing-1744078558301-168612775.jpg', 'Krapyak', 65, 50, 'WA', '', '', 2, '01'),
	(80, '3', 'Dadang Suhendra', 'Ngabul, Jepara', '08999999999', '', 0, 0.00, 0.00, '0000-00-00', 'mengajukan', 0.00, NULL, '1743749175107-119254851.jpg', '', 0, 0, 'Kunjungan', 'Pemby Mudharabah', '', 2, '01'),
	(82, '1', 'Suparman', 'Langon', '08222222222', 'Tukang Kayu', 2, 100000000.00, 250000000.00, '2025-04-24', 'mengajukan', 25000000.00, 'Tambahan Modal', '1748686234423-730360855.jpg', '', 0, 0, 'WA', '', '', 26, '01'),
	(83, '2', '', '', '', '', 0, 0.00, 0.00, '2025-04-26', 'mengajukan', 0.00, NULL, '1748686564935-198224844.jpg', 'Tahunan', 25, 20, 'WA', '', '', 26, '01'),
	(85, '4', 'RT 02/01', 'Ngabul Rt 02/01', '', '', 0, 0.00, 0.00, '2025-04-26', 'mengajukan', 0.00, NULL, 'taklim-1748731485219-744300782.png', '', 0, 30, 'WA', '', 'Bambang', 26, '01'),
	(86, '1', 'WAHID', 'MLONGGO', '0822222', 'BENGKEL', 50, 200000000.00, 500000000.00, '2025-04-25', 'mengajukan', 50000000.00, NULL, '1748686247345-351213757.png', '', 0, 0, 'WA', '', '', 26, '01'),
	(88, '1', 'siap', 'siiiip', '08666', 'tess', 6, 250000.00, 25000.00, '2025-05-26', 'mengajukan', 25000.00, NULL, '1748686275385-353315537.jpg', '', 0, 0, 'WA', '', '', 26, '01'),
	(89, '1', 'kartun', 'langon', '08222', 'dagang', 9, 5000000.00, 600000.00, '2025-05-27', 'mengajukan', 50000.00, NULL, '1748686260854-538352778.png', '', 0, 0, 'WA', '', '', 26, '01'),
	(91, '1', 'testing', 'lagi yaa', '0888', 'tes', 8, 500000.00, 500000.00, '2025-05-28', 'mengajukan', 400000.00, NULL, '1748686220509-421289809.png', '', 0, 0, 'WA', '', '', 26, '01'),
	(95, '1', 'jono', 'ngabul', '0777766', 'wiraswasta', 8, 2500000.00, 50000000.00, '2025-05-28', 'mengajukan', 5000000.00, NULL, '1748686197470-221684586.png', '', 0, 0, 'WA', '', '', 26, '01'),
	(96, '1', 'Dudung', 'Tahunan', '088888', 'wiraswasta', 8, 25000000.00, 30000000.00, '2025-05-28', 'mengajukan', 5000000.00, NULL, '1748686186991-359702171.png', '', 0, 0, 'WA', '', '', 26, '01'),
	(97, '2', '', '', '', '', 0, 0.00, 0.00, '2025-05-28', 'mengajukan', 0.00, NULL, '1748686554814-466801671.png', 'Mantingan', 80, 25, 'WA', '', '', 26, '01'),
	(98, '2', '', '', '', '', 0, 0.00, 0.00, '2025-05-28', 'mengajukan', 0.00, NULL, '1748686542413-775015832.jpg', 'Ngabul', 60, 50, 'WA', '', '', 26, '01'),
	(102, '2', '', '', '', '', 0, 0.00, 0.00, '2025-05-28', 'mengajukan', 0.00, NULL, '1748686527418-543194909.png', 'Sukodono', 45, 40, 'WA', '', '', 26, '01'),
	(103, '2', '', '', '', '', 0, 0.00, 0.00, '2025-05-31', 'mengajukan', 0.00, NULL, '1748686511038-312417780.png', 'Mangunan', 60, 50, 'WA', '', '', 26, '01'),
	(104, '1', 'Deni', 'Jepara', '089999', 'Warung Kopi', 3, 5000000.00, 10000000.00, '2025-05-31', 'mengajukan', 5000000.00, NULL, '1748686340582-611072339.png', '', 0, 0, 'WA', '', '', 26, '01'),
	(105, '2', '', '', '', '', 0, 0.00, 0.00, '2025-05-31', 'mengajukan', 0.00, NULL, '1748686588624-907840571.png', 'Kuwasen', 55, 50, 'WA', '', '', 26, '01'),
	(107, '3', 'Hendra', 'Kecapi', '081234567803', '', 0, 0.00, 0.00, '0000-00-00', 'mengajukan', 0.00, NULL, '1748699092408-729081004.png', '', 0, 0, 'WA', 'Kredit Modal Kerja', '', 26, '01'),
	(108, '3', 'AHMAD RIFAI', 'LANGON', '08999', '', 0, 0.00, 0.00, '0000-00-00', 'mengajukan', 0.00, NULL, '1748697858298-920263010.png', '', 0, 0, 'WA', 'Ijarah', '', 26, '01'),
	(109, '4', 'Pengajian Ahad Pagi', 'Langon', '', '', 0, 0.00, 0.00, '2025-05-31', 'mengajukan', 0.00, NULL, 'taklim-1748731505922-577483731.jpg', '', 0, 60, 'WA', '', 'H. Sholeh', 26, '01'),
	(110, '4', 'Muslimat', 'Tahunan', '', '', 0, 0.00, 0.00, '2025-05-22', 'mengajukan', 0.00, NULL, 'taklim-1748756524511-524624122.png', '', 0, 60, 'WA', '', 'Hj. Masudah', 26, '01');
/*!40000 ALTER TABLE `pemasaran` ENABLE KEYS */;

-- membuang struktur untuk table db_alhikmah.pengajuan
CREATE TABLE IF NOT EXISTS `pengajuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_referensi` varchar(50) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `ibu_kandung` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `status_pernikahan` enum('Belum Menikah','Menikah','Duda/Janda') NOT NULL,
  `jumlah_tanggungan` int(11) DEFAULT 0,
  `pekerjaan` varchar(100) DEFAULT NULL,
  `alamat_pekerjaan` text DEFAULT NULL,
  `lama_usaha` varchar(50) DEFAULT NULL,
  `omset_rata_rata` decimal(15,2) DEFAULT NULL,
  `keuntungan_rata_rata` decimal(15,2) DEFAULT NULL,
  `pendapatan_lain` decimal(15,2) DEFAULT NULL,
  `status_keanggotaan` enum('Aktif','Nonaktif','Calon Anggota') DEFAULT NULL,
  `cara_daftar` varchar(50) DEFAULT NULL,
  `no_anggota` varchar(50) DEFAULT NULL,
  `no_rekening` varchar(50) DEFAULT NULL,
  `rekening_sirela` varchar(50) DEFAULT NULL,
  `daftar_lewat_karyawan` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `key_person` varchar(100) DEFAULT NULL,
  `nama_pasangan` varchar(100) DEFAULT NULL,
  `no_telp_pasangan` varchar(20) DEFAULT NULL,
  `pekerjaan_pasangan` varchar(100) DEFAULT NULL,
  `alamat_pasangan` text DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `tiktok` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `twitter_akun_lain` varchar(100) DEFAULT NULL,
  `agunan1` varchar(255) DEFAULT NULL,
  `agunan2` varchar(255) DEFAULT NULL,
  `agunan3` varchar(255) DEFAULT NULL,
  `agunan4` varchar(255) DEFAULT NULL,
  `agunan5` varchar(255) DEFAULT NULL,
  `agunan6` varchar(255) DEFAULT NULL,
  `syarat_ktp` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_ktp_pasangan` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_kk` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_fc_agunan` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_buku_nikah` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_fc_stnk` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_ktp_pemilik_agunan` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_tumpi` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_cek_fisik_kendaraan` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_slip_gaji` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_rek_koran` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_akta_kematian_perceraian` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `syarat_lengkap` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL,
  `kdcabang` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `no_ktp` (`no_ktp`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `no_anggota` (`no_anggota`),
  UNIQUE KEY `no_rekening` (`no_rekening`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Membuang data untuk tabel db_alhikmah.pengajuan: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `pengajuan` DISABLE KEYS */;
REPLACE INTO `pengajuan` (`id`, `kode_referensi`, `no_ktp`, `nama`, `tempat_lahir`, `tgl_lahir`, `alamat`, `ibu_kandung`, `email`, `no_telpon`, `status_pernikahan`, `jumlah_tanggungan`, `pekerjaan`, `alamat_pekerjaan`, `lama_usaha`, `omset_rata_rata`, `keuntungan_rata_rata`, `pendapatan_lain`, `status_keanggotaan`, `cara_daftar`, `no_anggota`, `no_rekening`, `rekening_sirela`, `daftar_lewat_karyawan`, `key_person`, `nama_pasangan`, `no_telp_pasangan`, `pekerjaan_pasangan`, `alamat_pasangan`, `facebook`, `tiktok`, `instagram`, `twitter_akun_lain`, `agunan1`, `agunan2`, `agunan3`, `agunan4`, `agunan5`, `agunan6`, `syarat_ktp`, `syarat_ktp_pasangan`, `syarat_kk`, `syarat_fc_agunan`, `syarat_buku_nikah`, `syarat_fc_stnk`, `syarat_ktp_pemilik_agunan`, `syarat_tumpi`, `syarat_cek_fisik_kendaraan`, `syarat_slip_gaji`, `syarat_rek_koran`, `syarat_akta_kematian_perceraian`, `syarat_lengkap`, `created_at`, `userid`, `kdcabang`) VALUES
	(1, 'REF001', '3210011009876543', 'Siti Aminah', 'Jakarta', '1985-05-10', 'Jl. Diponegoro No. 45', 'Fatimah', 'siti@example.com', '081298765432', 'Menikah', 2, 'Warung Makan', 'Jl. Diponegoro No. 45', '5 Tahun', 10000000.00, 3000000.00, 1000000.00, 'Aktif', 'Offline', NULL, NULL, NULL, 'Tidak', NULL, 'Budi', '081222333444', 'Pedagang', 'Jl. Melati No. 5', 'siti_fb', 'siti_tiktok', 'siti_ig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ya', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Ya', '2025-03-16 05:29:17', 0, ''),
	(2, 'REF003', '3210033007654321', 'Yulia Handayani', 'Surabaya', '1988-07-21', 'Jl. Mangga No. 88', 'Sulastri', 'yulia@example.com', '081377788899', 'Menikah', 1, 'Salon Kecantikan', 'Jl. Mangga No. 88', '4 Tahun', 18000000.00, 5000000.00, 2000000.00, 'Aktif', 'Offline', NULL, NULL, NULL, 'Tidak', NULL, 'Andi', '081299988877', 'PNS', 'Jl. Kenanga No. 12', 'yulia_fb', 'yulia_tiktok', 'yulia_ig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ya', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Ya', '2025-03-16 05:32:44', 0, ''),
	(3, 'REF004', '3210044006543210', 'Joko Prasetyo', 'Semarang', '1982-03-30', 'Jl. Mawar No. 5', 'Sutarmi', 'joko@example.com', '081399988877', 'Menikah', 3, 'Toko Elektronik', 'Jl. Mawar No. 5', '7 Tahun', 50000000.00, 12000000.00, 3000000.00, 'Aktif', 'Offline', NULL, NULL, NULL, 'Tidak', NULL, 'Ani', '081322233344', 'Wiraswasta', 'Jl. Flamboyan No. 9', 'joko_fb', 'joko_tiktok', 'joko_ig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ya', 'Ya', 'Ya', 'Ya', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', '2025-03-16 05:33:10', 0, ''),
	(4, 'REF005', '3210055005432109', 'Hendra Kurniawan', 'Yogyakarta', '1985-12-12', 'Jl. Anggrek No. 33', 'Sumiyati', 'hendra@example.com', '081322211100', 'Menikah', 2, 'Usaha Laundry', 'Jl. Anggrek No. 33', '6 Tahun', 15000000.00, 4500000.00, 1500000.00, 'Calon Anggota', 'Offline', NULL, NULL, NULL, 'Tidak', NULL, 'Sari', '081344455566', 'Ibu Rumah Tangga', 'Jl. Melati No. 20', 'hendra_fb', 'hendra_tiktok', 'hendra_ig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ya', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Ya', '2025-03-16 05:33:28', 0, '');
/*!40000 ALTER TABLE `pengajuan` ENABLE KEYS */;

-- membuang struktur untuk table db_alhikmah.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `job` varchar(100) DEFAULT NULL,
  `motto` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `leveluser` int(11) NOT NULL DEFAULT 1,
  `kdcabang` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Membuang data untuk tabel db_alhikmah.users: ~15 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `username`, `password`, `email`, `full_name`, `job`, `motto`, `img`, `role`, `leveluser`, `kdcabang`, `created_at`) VALUES
	(1, 'admin', '$2b$10$DRxQpHwl8t0rqs1lX3wW3O3q7pl1ek6OEE3mbLnfGEKQ0l5WMBSwO', 'admin@example.com', 'Administrator', 'Admin Level', 'Esok kan masih ada', 'avatar4.png', 'admin', 5, '', '2025-03-16 16:55:03'),
	(2, 'heri', '$2y$10$ZrzJwWBSfrrf6a3qY/gz4O/UnUXPKBQ4MCgBaUBPYqT3YYCV2YTea', 'heri@example.com', 'Heri Subagja', 'Customer Service', 'Teliti... dan selalu koscek', '67f4941e01a44.jpg', 'user', 1, '01', '2025-03-16 16:55:03'),
	(3, 'jane', '$2y$10$L0I7VTawbkNPwFP6ooSD5uj8WFP5equxCAI/PlGOtO4lfkdhwUjfq', 'jane@example.com', 'Jane Doe', 'Customer Service', 'Serius tapi santai', 'avatar2.png', 'user', 1, '01', '2025-03-16 16:55:03'),
	(4, 'supervisor', '$2y$10$e9cj2vqWi7z6b9a1ES3rhe3G1SakXUGp2H2NIfna31de/DMP7mtV.', 'supervisor@example.com', 'Bambang Wibowo', 'Supervisor', 'Akan tiba saatnya. Tetap fokus', 'avatar5.png', 'user', 4, '01', '2025-03-16 16:55:03'),
	(5, 'mukti', '$2b$10$3b8qLFTDGGEMxNYNyYp/Ue/nYZMC9c0ASAC0OSH34M9hSE5f4zOV6', 'kprisimpako@gmail.com', 'Mukti Agung', 'Manager Cab. Kalinyamatan', 'Start now, it\'s not too late', '1748959920746-858098249.jpg', 'admin', 2, '01', '2025-03-16 16:55:03'),
	(6, 'ao1', '$2y$10$B4OSFDxvDfCpU3GtQZlOZOD3h5uAlnl4n/D9RNeeLIjAjcDpITDES', 'staff1@example.com', 'Staff Member One', 'AO Kalinyamatan', 'Berakit2 dahulu berenang2 ke tepian', 'avatar.png', 'user', 2, '01', '2025-03-16 16:55:03'),
	(7, 'ao2', '$2y$10$0CToHTyEVGL53I0iKz.JRuDvZrzF6mFj3MZof6WRG2rhshrhwGyau', 'staff2@example.com', 'Staff Member Two', 'AO Kalinyamatan', 'Semangat.. dan bersyukurlah', 'avatar.png', 'user', 2, '01', '2025-03-16 16:55:03'),
	(9, 'bambang', '$2b$10$QR926oH7sjIEQAu79ZotGOUQoAckhYJ2G/.fYO8SnIqqkUdv/Ch3a', 'bambangjepara@gmail.com', 'Bambang Wibowo', 'Jurnalis', 'Santai Lak Wes...', '67de2a3cd3349.jpg', 'user', 1, '01', '2025-03-18 12:08:41'),
	(10, 'eko', '$2b$10$Dgy2gNGYKIJmrF28ZkTeB.gBAh83MyuPsDXChZsDQIbZbCuzSS3n.', 'dikeko@gmail.com', 'Dik Eko', 'Programmer', 'Yesss', '67de290562108.jpg', 'user', 1, '01', '2025-03-22 11:27:46'),
	(11, 'arif', '$2b$10$u5jLmeVGGsDERVIjBTmnBujtTRjNgNUTzM9GD7UzfhuhbX04E5b5a', 'arif@gmail.com', 'Arif Widodo', 'HRD', 'JOSSS', '67de2f5b6cf5e.jpg', 'user', 1, '01', '2025-03-22 11:55:26'),
	(12, 'tes', '$2b$10$yuNEWRq0Q56yEwb7eitFoOa41u5IMVKNw4vxFjZQkW1Mqz5lbvJty', 'tes@gmail.com', 'nama tes', 'pekerjaan tes', NULL, NULL, 'user', 1, '01', '2025-03-22 20:52:04'),
	(14, 'dodo', '$2b$10$tLZDSLiIWcuwleMc/y61TOD8OLXG9v.DoB97mqWNC3qj8OeOzG7EG', 'dodo@gmail.com', 'Dodo Widardo', 'Customer Service', 'Tdk Usah Pakai Motto Biar Sehat', '67de46a33d922.jpg', 'user', 1, '01', '2025-03-22 21:03:30'),
	(22, 'suci', '$2b$10$LMOOXWIixK2Cfk8gRb/JROmeephihQWZ17YMZv3pYkQGE0BmE9ii6', '', 'Suciwati', 'Jurnalis', '', 'avatar.png', 'user', 0, '02', '2025-03-23 12:47:30'),
	(24, 'lagi', '$2b$10$e7Yaus5TB77hK0XUTGAnGOsbhPLwUJP3brR7dDZT1PfkTnrdeth1.', '', 'lagi', 'lagi', '', '67df3fae954b2.jpg', 'user', 1, '02', '2025-03-23 13:01:37'),
	(25, 'dian', '$2b$10$XKLOdff.axs1iJDNvhlQyuXXxkJXgtpbscADZvftrd7U75h/OTN76', 'avatar@gmail.com', 'Dian', 'Manager', 'Ajino Motto', 'avatar.png', 'admin', 5, '', '2025-03-23 13:45:57'),
	(26, 'abdul', '$2b$10$UynSSlC74LijDC6BRn3GhO18LKBGzuEsSeHTjQoefQgKeUbVa6SP.', 'abdul@gmail.com', 'Abdul Rouf', 'Marketing', 'Tetap Semangat', '1748827398102-725867553.jpg', 'user', 1, '01', '2025-04-27 20:00:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- membuang struktur untuk table db_alhikmah.user_level
CREATE TABLE IF NOT EXISTS `user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT 0,
  `kewenangan` text NOT NULL,
  `plafond` decimal(15,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Membuang data untuk tabel db_alhikmah.user_level: ~8 rows (lebih kurang)
/*!40000 ALTER TABLE `user_level` DISABLE KEYS */;
REPLACE INTO `user_level` (`id`, `level`, `kewenangan`, `plafond`) VALUES
	(1, 0, 'CS', 0.00),
	(2, 1, 'Marketing', 5000000.00),
	(3, 2, 'Manager Cabang', 15000000.00),
	(4, 3, 'Supervisor Landing 1', 20000000.00),
	(5, 4, 'Supervisor Landing 2', 100000000.00),
	(6, 5, 'Manager Marketing', 150000000.00),
	(7, 6, 'Manager Eksekutif', 250000000.00),
	(8, 7, 'Pengurus', 10000000000.00);
/*!40000 ALTER TABLE `user_level` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
