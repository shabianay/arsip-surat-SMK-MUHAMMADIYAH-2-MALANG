DROP TABLE tbl_disposisi;

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO tbl_disposisi VALUES("7",".","ccc","Informasikan","2023-02-03","cc","23","1");
INSERT INTO tbl_disposisi VALUES("8","Wk Kurikulum","-","Tindak Lanjut","2023-02-04","-","25","1");



DROP TABLE tbl_instansi;

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `NBM` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_instansi VALUES("1","Pendidikan Dasar dan Menengah Pimpinan Daerah Muhammadiyah Kota Malang","SMK MUHAMMADIYAH 2 MALANG","STATUS \"TERAKREDITASI\"","Jl. Baiduri Sepah No.27, Telepon (0341)552857, Faximile (0341)552857 Kota Malang 65114","LUKMAN HAKIM, S.HI, M.Pd.I","1.003.998","https://www.smkm2malang.sch.id","smkm2_mlg@yahoo.co.id","lg.jpg","1");



DROP TABLE tbl_klasifikasi;

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(11) NOT NULL AUTO_INCREMENT,
  `no_pakket` int(11) NOT NULL,
  `nama` varchar(11) NOT NULL,
  `uraian` varchar(11) NOT NULL,
  `id_user` tinyint(11) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




DROP TABLE tbl_sett;

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tbl_sett VALUES("1","10","10","10","1");



DROP TABLE tbl_surat_keluar;

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `no_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_keluar VALUES("19","3","Permohonan Izin Orang Tua","02.3549/SMKM.2/05/2023","Izin Melakukan Magang","m","2023-02-05","2023-02-03","7027-Contoh-surat-perjanjian-kerjasama-dalam-bidang-bisnis-FH-UII.doc","-","1");



DROP TABLE tbl_surat_masuk;

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(11) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(200) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

INSERT INTO tbl_surat_masuk VALUES("23","1","dd","dd","ddd","C5","33","2023-02-03","2023-02-03","8058-CV_Noura Yumna_190412630165_LLL (1).pdf","ff","1");
INSERT INTO tbl_surat_masuk VALUES("25","3212","2.12.147/UN32.4.1/DL/2022","Universitas Negeri Malang","Penelitian Skripsi
","Kurikulum","C","2022-12-02","2023-02-04","3542-Surat observasi kampus.pdf","-","1");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tbl_user VALUES("1","Admin","21232f297a57a5a743894a0e4a801fc3","Tata Usaha","-","1");
INSERT INTO tbl_user VALUES("2","staff","82849c85acf1f4e6e4eec748f0aeddf4","Staff","-","3");



