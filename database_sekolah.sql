/*
SQLyog Community v12.14 (64 bit)
MySQL - 5.6.24 : Database - database_sekolah
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*CREATE DATABASE /*!32312 IF NOT EXISTS*`database_sekolah` /*!40100 DEFAULT CHARACTER SET latin1 */

USE `database_sekolah`;

/*Table structure for table `jenis_iuran` */

DROP TABLE IF EXISTS `jenis_iuran`;

CREATE TABLE `jenis_iuran` (
<<<<<<< HEAD
  `kode_unit` VARCHAR(4) DEFAULT NULL,
  `type_iuran` VARCHAR(15) DEFAULT NULL,
  `kode_iuran` VARCHAR(15) DEFAULT NULL,
  `nama_iuran` VARCHAR(40) DEFAULT NULL,
  `kode_var` VARCHAR(20) DEFAULT NULL,
  `kode_pendapatan` VARCHAR(20) DEFAULT NULL,
  `kode_chr1` VARCHAR(20) DEFAULT NULL,
  `kode_piutang` VARCHAR(20) DEFAULT NULL,
  `kode_group` VARCHAR(20) DEFAULT NULL,
  `kode_chr4` VARCHAR(20) DEFAULT NULL,
  `kode_diterima` VARCHAR(20) DEFAULT NULL,
  `kode_dec1` DOUBLE DEFAULT NULL,
  `kode_dec2` DOUBLE DEFAULT NULL,
  `delete_status` VARCHAR(1) DEFAULT NULL,
  `created_date` DATETIME DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=latin1;
=======
  `kode_unit` varchar(4) DEFAULT NULL,
  `type_iuran` varchar(15) DEFAULT NULL,
  `kode_jenis_iuran` varchar(15) DEFAULT NULL,
  `nama_iuran` varchar(40) DEFAULT NULL,
  `kode_tujuan` varchar(20) DEFAULT NULL,
  `kode_pendapatan` varchar(20) DEFAULT NULL,
  `kode_piutang` varchar(20) DEFAULT NULL,
  `kode_iuran` int(11) DEFAULT NULL,
  `kode_diterima` varchar(20) DEFAULT NULL,
  `delete_status` varchar(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  KEY `kode_unit` (`kode_unit`,`kode_iuran`),
  KEY `kode_iuran` (`kode_iuran`),
  CONSTRAINT `jenis_iuran_ibfk_1` FOREIGN KEY (`kode_unit`) REFERENCES `unit_sekolah` (`kode_unit`),
  CONSTRAINT `jenis_iuran_ibfk_2` FOREIGN KEY (`kode_iuran`) REFERENCES `tabel_iuran` (`kode_iuran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> ff206b72a2808c37fb559573cbbc2ea23f1b4b34

/*Data for the table `jenis_iuran` */

insert  into `jenis_iuran`(`kode_unit`,`type_iuran`,`kode_jenis_iuran`,`nama_iuran`,`kode_tujuan`,`kode_pendapatan`,`kode_piutang`,`kode_iuran`,`kode_diterima`,`delete_status`,`created_date`) values 
('003','JNSX_IURN','01','SPP Bulanan','1','4.111.2','4.111.2',2,'4.111.2','','0000-00-00 00:00:00');

/*Table structure for table `lokasi_sekolah` */

DROP TABLE IF EXISTS `lokasi_sekolah`;

CREATE TABLE `lokasi_sekolah` (
<<<<<<< HEAD
  `kode_lokasi` INT(3) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` VARCHAR(50) DEFAULT NULL,
  `alamat_lokasi` VARCHAR(100) DEFAULT NULL,
  `telepon_lokasi` VARCHAR(25) DEFAULT NULL,
  `fax_lokasi` VARCHAR(25) DEFAULT NULL,
  PRIMARY KEY (`kode_lokasi`)
) ENGINE=MYISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

=======
  `kode_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(50) DEFAULT NULL,
  `alamat_lokasi` varchar(100) DEFAULT NULL,
  `telepon_lokasi` varchar(25) DEFAULT NULL,
  `fax_lokasi` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kode_lokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
>>>>>>> ff206b72a2808c37fb559573cbbc2ea23f1b4b34

/*Data for the table `lokasi_sekolah` */

insert  into `lokasi_sekolah`(`kode_lokasi`,`nama_lokasi`,`alamat_lokasi`,`telepon_lokasi`,`fax_lokasi`) values 
(3,'YaYasan Al muhsinin','bekasi pejuang jaya 2122','93242','92424');

/*Table structure for table `tabel_iuran` */

DROP TABLE IF EXISTS `tabel_iuran`;

CREATE TABLE `tabel_iuran` (
  `kode_iuran` int(11) NOT NULL AUTO_INCREMENT,
  `nama_iuran` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`kode_iuran`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_iuran` */

insert  into `tabel_iuran`(`kode_iuran`,`nama_iuran`) values 
(2,'SPP');

/*Table structure for table `tabel_jenjang` */

DROP TABLE IF EXISTS `tabel_jenjang`;

CREATE TABLE `tabel_jenjang` (
  `kode_jenjang` int(20) NOT NULL AUTO_INCREMENT,
  `nama_jenjang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_jenjang`),
  KEY `kode_jenjang` (`kode_jenjang`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_jenjang` */

insert  into `tabel_jenjang`(`kode_jenjang`,`nama_jenjang`) values 
(2,'Kelas 1'),
(3,'Kelas 2');

/*Table structure for table `tabel_kelas` */

DROP TABLE IF EXISTS `tabel_kelas`;

CREATE TABLE `tabel_kelas` (
<<<<<<< HEAD
  `kode_unit` VARCHAR(4) DEFAULT NULL,
  `thn_ajar` VARCHAR(8) NOT NULL DEFAULT '',
  `kode_kelas` VARCHAR(7) NOT NULL DEFAULT '',
  `nama_kelas` VARCHAR(50) DEFAULT NULL,
  `tingkatan_kelas` VARCHAR(3) NOT NULL DEFAULT '',
  `jurusan_kelas` VARCHAR(3) NOT NULL DEFAULT '',
  `status_aktif` VARCHAR(1) DEFAULT NULL,
  PRIMARY KEY (`thn_ajar`,`kode_kelas`,`tingkatan_kelas`,`jurusan_kelas`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1;
=======
  `kode_unit` varchar(4) DEFAULT NULL,
  `thn_ajar` varchar(8) NOT NULL DEFAULT '',
  `kode_kelas` varchar(7) NOT NULL DEFAULT '',
  `nama_kelas` varchar(50) DEFAULT NULL,
  `kode_jenjang` int(20) NOT NULL,
  `jurusan_kelas` varchar(3) NOT NULL DEFAULT '',
  `status_aktif` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`thn_ajar`,`kode_kelas`,`kode_jenjang`,`jurusan_kelas`),
  KEY `kode_unit` (`kode_unit`),
  KEY `kode_unit_2` (`kode_unit`),
  KEY `kode_kelas` (`kode_kelas`),
  KEY `kode_jenjang` (`kode_jenjang`),
  KEY `jurusan_kelas` (`jurusan_kelas`),
  KEY `kode_jenjang_2` (`kode_jenjang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> ff206b72a2808c37fb559573cbbc2ea23f1b4b34

/*Data for the table `tabel_kelas` */

insert  into `tabel_kelas`(`kode_unit`,`thn_ajar`,`kode_kelas`,`nama_kelas`,`kode_jenjang`,`jurusan_kelas`,`status_aktif`) values 
('003','1516','200','kelas 1a',2,'','');

/*Table structure for table `tabel_umum` */

DROP TABLE IF EXISTS `tabel_umum`;

CREATE TABLE `tabel_umum` (
  `kode_umum` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_umum`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_umum` */

insert  into `tabel_umum`(`kode_umum`,`type`,`nama`) values 
(1,'kas_tujuan','yayasan'),
(2,'kas_tujuan','sekolah');

/*Table structure for table `tahun_ajar` */

DROP TABLE IF EXISTS `tahun_ajar`;

CREATE TABLE `tahun_ajar` (
  `kode_thn_ajar` VARCHAR(15) NOT NULL DEFAULT '',
  `thn_ajar` VARCHAR(9) NOT NULL DEFAULT '',
  `ket_thn_ajar` VARCHAR(10) DEFAULT NULL,
  `tgl_mulai` DATE DEFAULT NULL,
  `tgl_akhir` DATE DEFAULT NULL,
  `status_aktif` VARCHAR(1) DEFAULT NULL,
  `created_by` VARCHAR(15) DEFAULT NULL,
  `updated_by` VARCHAR(15) DEFAULT NULL,
  `created_date` DATETIME DEFAULT NULL,
  `update_date` DATETIME DEFAULT NULL,
  PRIMARY KEY (`kode_thn_ajar`,`thn_ajar`)
<<<<<<< HEAD
) ENGINE=MYISAM DEFAULT CHARSET=latin1;
=======
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> ff206b72a2808c37fb559573cbbc2ea23f1b4b34

/*Data for the table `tahun_ajar` */

insert  into `tahun_ajar`(`kode_thn_ajar`,`thn_ajar`,`ket_thn_ajar`,`tgl_mulai`,`tgl_akhir`,`status_aktif`,`created_by`,`updated_by`,`created_date`,`update_date`) values 
('01','1516','2015/2016','2015-07-01','2016-06-30',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tb_coaxxx` */

DROP TABLE IF EXISTS `tb_coaxxx`;

CREATE TABLE `tb_coaxxx` (
  `ACCT_CODE` VARCHAR(20) NOT NULL,
  `ACCT_NAMA` VARCHAR(100) NOT NULL,
  `STAT_ACTV` VARCHAR(1) DEFAULT NULL,
  `ACCT_PARN` VARCHAR(20) DEFAULT NULL,
  `ACCT_KATG` VARCHAR(10) DEFAULT NULL,
  `ACCT_TYPE` VARCHAR(2) DEFAULT NULL,
  `ACCT_CURR` VARCHAR(3) DEFAULT NULL,
  `ACCT_LEVL` INT(4) DEFAULT NULL,
  `ACCT_DKXX` VARCHAR(1) DEFAULT NULL,
  `OPTX_SUBT` VARCHAR(1) DEFAULT NULL,
  `OPTX_BUGD` VARCHAR(1) DEFAULT NULL,
  `OPTX_COST` VARCHAR(1) DEFAULT NULL,
  `COST_CODE` VARCHAR(20) DEFAULT NULL,
  `KODEBI` VARCHAR(3) DEFAULT NULL,
  `CRTX_BYXX` VARCHAR(15) DEFAULT NULL,
  `UPDT_BYXX` VARCHAR(15) DEFAULT NULL,
  `CRTX_DATE` DATETIME DEFAULT NULL,
  `UPDT_DATE` DATETIME DEFAULT NULL
) ENGINE=MYISAM DEFAULT CHARSET=latin1;

/*Data for the table `tb_coaxxx` */

INSERT  INTO `tb_coaxxx`(`ACCT_CODE`,`ACCT_NAMA`,`STAT_ACTV`,`ACCT_PARN`,`ACCT_KATG`,`ACCT_TYPE`,`ACCT_CURR`,`ACCT_LEVL`,`ACCT_DKXX`,`OPTX_SUBT`,`OPTX_BUGD`,`OPTX_COST`,`COST_CODE`,`KODEBI`,`CRTX_BYXX`,`UPDT_BYXX`,`CRTX_DATE`,`UPDT_DATE`) VALUES 
('1','AKTIVA','1','00000000000','A','01','IDR',1,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.1','AKTIVA LANCAR','1','1','A','01','IDR',2,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.11','KAS','1','1.1','A','01','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.111','KAS KECIL','1','1.11','A','01','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.111.01','Kas Kecil TKI','1','1.111','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.111.02','Kas Kecil SDI','1','1.111','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.111.03','Kas Kecil SLTPI','1','1.111','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.111.04','Kas Kecil TKA/TPA/TQA','1','1.111','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.111.05','Kas Kecil Bangunan','1','1.111','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.111.06','Kas kecil TK Pengasinan','1','1.111','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.111.07','Kas kecil SLTA','1','1.111','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.112','Kas Besar Pekayon','1','1.11','A','02','IDR',4,'D','0','0','0','',NULL,NULL,'',NULL,'2014-10-15 14:37:28'),
('1.113','Kas Besar Cikunir','1','1.11','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.12','BANK','1','1.1','A','01','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.121','GIRO BMI - 3050003310','1','1.12','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.122','GIRO BMI - 3050001515','1','1.12','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.123','GIRO BSM - 0050029864','1','1.12','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.1231','Giro BSM Grandmall','1','1.12','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.124','TABUNGAN BRITAMA - 0139-01-027481-50-3','1','1.12','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.125','Permata Bank','1','1.12','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.126','Bank BRI SD','1','1.12','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.127','Deposito BSM - Naning R.','1','1.12','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.128','Deposito BSM - Harada N.','1','1.12','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.129','Bank BTN SMA','1','1.12','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.14','PIUTANG USAHA','1','1.1','A','01','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.141','PIUTANG TAHUN LALU','1','1.14','A','01','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.141.01','Piutang PMB','1','1.141','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.141.02','Piutang Daftar Ulang','1','1.141','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.141.03','Piutang Iuran Bulanan','1','1.141','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142','PIUTANG TAHUN BERJALAN','1','1.14','A','01','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.01','Piutang TKA/TPA','1','1.142','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.01.01','Piutang PMB TKA','1','1.142.01','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.01.02','Piutang PMB TPA','1','1.142.01','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.01.03','Piutang Daftar Ulang TKA','1','1.142.01','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.01.04','Piutang Daftar Ulang TPA','1','1.142.01','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.01.05','Piutang Iuran Bulanan TKA','1','1.142.01','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.01.06','Piutang Iuran Bulanan TPA','1','1.142.01','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.02','Piutang TQA','1','1.142','A','01','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.02.01','Piutang PMB','1','1.142.02','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.02.02','Piutang Daftar Ulang','1','1.142.02','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.02.03','Piutang Iuran Bulanan','1','1.142.02','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.03','Piutang TKI','1','1.142','A','01','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.03.01','Piutang PMB TKI','1','1.142.03','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.03.02','Piutang Daftar Ulang TKI','1','1.142.03','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.03.03','Piutang Iuran Bulanan TKI','1','1.142.03','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.04','Piutang SDI','1','1.142','A','01','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.04.01','Piutang PMB SDI','1','1.142.04','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.04.02','Piutang Daftar Ulang SDI','1','1.142.04','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.04.03','Piutang Iuran Bulanan SDI','1','1.142.04','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.05','Piutang SLTPI','1','1.142','A','01','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.05.01','Piutang PMB SLTP','1','1.142.05','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.05.02','Piutang Daftar Ulang SLTP','1','1.142.05','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.05.03','Piutang Iuran Bulanan SLTP','1','1.142.05','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.06','Piutang SLTA','1','1.142','A','01','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.06.01','Piutang PMB SLTA','1','1.142.06','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.06.02','Piutang Daftar Ulang SLTA','1','1.142.06','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.06.03','Piutang Iuran Bulanan SLTA','1','1.142.06','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.07','Piutang TK Pengasinan','1','1.142','A','01','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.07.01','Piutang PMB','1','1.142.07','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.07.02','Piutang Daftar Ulang','1','1.142.07','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.07.03','Piutang Iuran Bulanan','1','1.142.07','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.08','Piutang SMP Unggulan','1','1.142','A','01','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.08.01','Piutang PMB SMP Unggulan','1','1.142.08','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.08.02','Piutang Daftar Ulang SMP Unggulan','1','1.142.08','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.08.03','Piutang Iuran Bulanan SMP Unggulan','1','1.142.08','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.09','Piutang SMA Unggln','1','1.142','A','01','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.09.01','Piutang PMB SLTA Unggln','1','1.142.09','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.09.02','Piutang Daftar Ulang SLTA Unggln','1','1.142.09','A','02','IDR',6,'D','0','0','0','',NULL,NULL,'',NULL,'2014-09-13 10:31:59'),
('1.142.09.03','Piutang Iuran Bulanan SLTA Unggln','1','1.142.09','A','02','IDR',6,'D','0','0','0','',NULL,NULL,'',NULL,'2014-09-13 10:32:13'),
('1.142.10','Piutang SD Unggulan','1','1.142','A','01','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.10.01','Piutang PMB SD Unggulan','1','1.142.10','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.10.02','Piutang Daftar Ulang SD Unggulan','1','1.142.10','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.142.10.03','Piutang Iuran Bulanan SD Unggulan','1','1.142.10','A','02','IDR',6,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16','PIUTANG KARYAWAN','1','1.1','A','01','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.01','Piutang Tini Martini','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.02','Piutang Harada Nurdin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.03','Piutang Iswanti','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.04','Piutang Euis Nuraeni','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.05','Piutang Ida Fardiah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.06','Piutang Supardi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.07','Piutang Solihin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.08','Piutang Farida Herlina','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.09','Piutang Dadan Sutisman','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.10','Piutang Darusman','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.100','Piutang Rica Misnawati','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.101','Piutang Saefuddin Noor','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.102','Piutang Suroso','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.103','Piutang Syahada syafrudin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.104','Piutang Yanti Hidasari','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.105','Piutang Yopi Ahmad Fauzi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.106','Piutang Arum Sari','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.107','Piutang Eneng Santi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.108','Piutang Heni Kurniawati','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.109','Piutang Muflihah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.11','Piutang Iing Solihin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.110','Piutang Mulyanah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.111','Piutang Sri Nurani','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.112','Piutang Sudarti','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.113','Piutang Yusi Rismawati','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.114','Piutang Usman Sholeh','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.115','Piutang Akhsinuddin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.116','Piutang Bambang Muryanto','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.117','Piutang Najan','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.118','Piutang Resti desriyanti','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.119','Piutang Rosidah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.12','Piutang Nazirwan','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.120','Piutang Sugiyem','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.121','Piutang Agus salim','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.122','Piutang Hartono','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.123','Piutang Adang Permana','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.124','Piutang Anih S','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.125','Piutang Sri Supangati','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.126','Piutang Muhammad','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.127','Piutang M. Khuzaifah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.128','Piutang Chotib','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.129','Piutang Gustina F','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.13','Piutang Lukman','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.130','Piutang Mat Yasin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.131','Piutang Windu Puja','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.132','Piutang M. Syukron','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.133','Piutang Resi S','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.134','Piutang Indah W','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.135','Piutang Syarifah Y','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.136','Piutang Normali M','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.137','Piutang Ipah Listyo','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.138','Piutang Nining K','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.139','Piutang Suminar','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.14','Piutang M. Sholeh','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.140','Piutang Hilda Vidya','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.141','Piutang Haris Guntoro','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.142','Piutang Fausiah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.143','Piutang Neneng L','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.144','Piutang Adi K','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.145','Piutang Umi H','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.146','Piutang Tudi S','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.147','Piutang Yeni K','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.148','Piutang Eka S','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.149','Piutang Daday','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.15','Piutang Khaerudin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.150','Piutang Rube\'i','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.151','Piutang Siti Ana R','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.152','Piutang Rosliani R','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.153','Piutang Wulan','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.154','Piutang Badaruddin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.155','Piutang Supratiwi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.156','Piutang Tarno','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.157','Piutang Rabiah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.158','Piutang Micella','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.159','Piutang Dian R','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.16','Piutang Nurfaridah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.160','Piutang Abdul Hakim','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.161','Piutang Henriana','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.162','Piutang Gumyani','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.163','Pinjaman Holid','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.164','Piutang Albert','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.165','Piutang M. Andang','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.166','Piutang Lili Fichri','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.167','Piutang Fahrul','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.168','Piutang Mat Sani','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.169','Piutang Nuramin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.17','Piutang Narso','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.170','Piutang Irma','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.171','Piutang Andi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.172','Piutang Indra Jaya','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.173','Piutang Tedy','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.174','Piutang Muhtadi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.175','Piutang Tantiyosa','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.176','Piutang Rani','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.177','','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.178','Piutang Muriyanti','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.179','Piutang Ridwan Maulana','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.18','Piutang Imas Kurniasih','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.180','Piutang Intan Risma Lestari','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.181','Piutang Nia Yuniarti','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.182','Piutang Sri supangati','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.183','Piutang Fajar Pramono','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.184','Piutang ubad Badrudin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.185','Piutang Wundiroh','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.186','Piutang siti khoriyah ulfah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.187','Piutang Yuli purwita sari','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.188','Piutang Diah Mutmainah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.189','Piutang Sugiawati','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.19','Piutang Juju','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.190','Piutang Agus Suryawan','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.191','Piutang Nur Konem','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.192','Piutang Mahesta Rizki','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.193','Piutang Rima Hinin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.194','Piutang Dedi Junaedi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.195','Piutang Nisin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.196','Piutang Cecep Sumarna','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.197','Piutang Agus Basri','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.198','Piutang Ifriandi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.199','Piutang Abdul Khoir','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.20','Piutang Dedeh Jubaedah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.200','Piutang Marjunis','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.201','Piutang Ivan Aditya K','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.202','Piutang Maulana','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.203','Piutang Yeptin Oktariza','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.204','Piutang M. Winarto','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.205','Piutang Bambang Sriyono','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.206','Piutang Antonio Topani','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.207','Piutang Rita Yuliana','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.208','Piutang Rita Evawati','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.209','Piutang Rosim','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.21','Piutang Farida Sri Astuti','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.210','Piutang Diah Widyawati','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.211','Piutang Rezy Hidayah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.212','Piutang Siti Amaliah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.213','Piutang Tusworo Aji','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.214','Piutang A. Tindarius','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.215','Piutang Bagus Mukti','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.217','Piutang Saepulloh','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.218','Olga Diani','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.219','Rohadi Fauzi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.22','Piutang Taufik Rihatno','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.220','Idul Haqqi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.221','Marlina Sari','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.222','Piutang Hana Hanifah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.223','','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.224','Piutang Faiz El Walad','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.225','Yani Apriyani','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.226','Sugianto','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.227','Piutang Arif Gunawan','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.228','Piutang Sarman','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.229','Piutang Selamet Riyanto','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.23','Piutang Arifin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.230','Piutang Ali Maulana','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.231','Piutang Mitar','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.232','Piutang Mike Danta','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.233','Piutang Mardiansyah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.234','Piutang Andri Golkias','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.235','Piutang Andri Fantosa','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.236','Piutang Sri Rahayu','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.237','Piutang Siti Khodijah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.238','Piutang Boy Permana','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.239','Piutang Neneng Mariya U','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.24','Piutang Wiwi Widya','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.240','Piutang Novi Purwanti','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.241','Piutang Ridwan Zulmi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.242','Piutang Fery Trihardiana','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.243','Piutang Abdul Hafidz','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.244','Piutang Ridwan Zulmi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.245','Piutang Niko Efriza','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.246','Piutang Rahmat Hidayat','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.247','Piutang Dewi Setiani','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.248','Piutang Emi Siyahbana','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.249','Piutang Sumpar W','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.25','Piutang Basuki','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.250','Piutang Edi Budi','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.251','Piutang Agung Nugroho','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.252','Piutang Ika Riba J','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.253','Piutang Pandu Purbo','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.254','Piutang Siti Khodijah','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.255','Piutang Ahmad suheri','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.256','Piutang Fahrul Dawam','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.257','Piutang Kesiani','1','1.16.01','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.258','Piutang Ahmad F','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.259','Piutang Maryam','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.26','Piutang Mutiasari','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.260','Piutang Fahmi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.261','Piutang Gunadih','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.262','Piutang M. Alwi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.263','Piutang Sopi N','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.264','Piutang Udin Marhusin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.27','Piutang Munirul Ikhwan','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.28','Piutang Rohani','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.29','Piutang Mismarudin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.30','Piutang Triyanto','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.31','Piutang Syihabudin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.32','Piutang Destiarto','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.33','Piutang Yoga Dwiputra','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.34','Piutang Franky','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.35','Piutang Hamdiyanti','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.36','Piutang Maemunah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.37','Piutang Nani Suryani','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.38','Piutang Dede Munawar','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.39','Piutang Mumad','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.40','Piutang Anna N','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.41','Piutang Zaini','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.42','Piutang Sidik','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.43','Piutang Latifah nuri','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.44','Piutang Anjayani','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.45','Piutang Sri W','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.46','Piutang Nata Winata','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.47','Piutang Somad','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.48','Piutang Asmiyarni','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.49','Piutang Ade','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.50','Piutang Kusmini','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.51','Piutang Eni K','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.52','Piutang Any Y','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.53','Piutang Jiyono','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.54','Piutang Sugiyem','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.55','Piutang Suryana','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.56','Piutang Sutoyo','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.57','Piutang Diana M','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.58','Piutang Syamsir','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.59','Piutang Masrukhi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.60','Piutang Naning R','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.61','Piutang Aketi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.62','Piutang Yuldevi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.63','Piutang Sirojuddin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.64','Piutang Guru-guru','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.65','Piutang Abdul Rafik','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.66','Piutang Dedi N','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.67','Piutang Kartika','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.68','Piutang Nengsih','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.69','Piutang Surasto','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.70','Piutang Aprilius','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.71','Piutang Wawan Wahyudin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.72','Piutang Yuwana','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.73','Piutang Hanafi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.74','Piutang Any Inayati','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.75','Piutang Rilla Venus','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.76','Piutang Niman','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.77','Piutang Herin T','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.78','Piutang Muhtarom','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.79','Piutang Aini Ummu Sukria','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.80','Piutang Riman','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.81','Piutang Tony','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.82','Piutang Darma','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.83','Piutang Syaroni','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.84','Piutang Nazwan','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.85','Piutang Surti','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.86','Piutang Ahyarudin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.87','Piutang Abdul Hasyim','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.88','Piutang Abdul Manan','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.89','Piutang Abdullah Mansyur','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.90','Piutang Amelia Aulora','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.91','Piutang Asdinar Abidin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.92','Piutang Chadirin','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.93','Piutang Diah W.Irianto','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.94','Piutang Eva Fauziah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.95','Piutang Ina Risniati','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.96','Piutang Ipah Holipah','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.97','Piutang Latifah Nuri','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.98','Piutang Neni Andriyani P','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.01.99','Piutang Nia Utami Dewi','1','1.16.01','A','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.17','PIUTANG LAIN-LAIN','1','1.1','A','01','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.171','PIUTANG JEMPUTAN','1','1.17','A','01','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.171.01','Piutang Bensin - Franky','1','1.171','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.171.02','Piutang Kirun','1','1.171','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.171.03','Piutang Edo','1','1.171','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.171.04','Piutang Anin','1','1.171','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.171.05','Piutang henriana','1','1.171','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.171.06','Piutang tono','1','1.171','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.172','PIUTANG TUKANG BANGUNAN','1','1.17','A','01','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.172.01','Piutang Ubad','1','1.172','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.172.02','Piutang Daud','1','1.172','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.172.03','Piutang Ucok','1','1.172','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.172.04','Piutang Oman','1','1.172','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.172.05','piutang yayan','1','1.172','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.172.06','ASEP','1','1.172','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.172.07','Piutang Endang','1','1.172','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173','PIUTANG PIHAK KETIGA','1','1.17','A','01','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.01','Piutang Koperasi','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.02','Piutang YPUID - Imam S','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.03','Piutang DSC','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.04','Piutang Medical Centre','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.05','Piutang YPUID - Subuh H','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.06','Piutang YPUI sekretariat','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.07','Piutang YPUI Bimbingan Haji','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.08','Piutang Juhroni','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.09','Piutang Azmi A','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.10','Piutang Fatihin U','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.11','Piutang Irwan','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.12','Piutang Lutfi - Listrik','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.13','Piutang Al Hikmah','1','1.173','A','02','IDR',5,'D','0','0','0','',NULL,NULL,'',NULL,'2014-10-23 14:54:29'),
('1.173.14','Pinjaman Susilo','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.15','Piutang Roem','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.16','Piutang murid karyawan','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.17','Pinj. sementara PID ke BKKG','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.18','Pinj. PID ke KOP.','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.19','Piutang Siswa','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.20','Piutang Yakpi','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.21','Piutang Roda Islam','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.173.22','Pinj. Alhikmah ke PID','1','1.173','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.18','PERSEDIAAN BARANG','1','1.1','A','02','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.19','UANG MUKA','1','1.1','A','01','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191','UM KBM','1','1.19','A','01','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.01','UM TKI - Tini','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.02','UM SDI - Taufik','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.03','UM SLTPI - Soleh','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.04','UM Imtihan','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.05','Kegiatan sekolah','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.06','UM Raker','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.07','Kegiatan SDI','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.08','Kegiatan TKI','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.09','Kegiatan SLTPI','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.10','Kegiatan Umum Kantor','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.11','Kegiatan TK Pengasinan','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.12','Kegiatan SLTA','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.13','UM. Bantuan utk kesehatan','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.14','Kegiatan TKA/TPA','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.15','UM DDC','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.191.16','UM Lab. Comp','1','1.191','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.192','UM Bangunan','1','1.19','A','01','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.192.01','UM Harada Nurdin','1','1.192','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.192.02','UM Franki','1','1.192','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.193','UM Inventaris Sekolah','1','1.19','A','01','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.193.01','UM Solihin','1','1.193','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.193.02','UM Naning','1','1.193','A','02','IDR',5,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.194','UM Kompensasi Harada Nurdin','1','1.19','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.2','AKTIVA TETAP','1','1','A','01','IDR',2,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.21','PERTAMANAN & ARENA BERMAIN','1','1.2','A','02','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.22','BANGUNAN','1','1.2','A','01','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.221','MATERIAL','1','1.22','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.222','UPAH','1','1.22','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.223','LAIN-LAIN','1','1.22','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.224','PENGAWAS BANGUNAN','1','1.22','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.23','MENARA','1','1.2','A','02','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.24','INVENTARIS SEKOLAH','1','1.2','A','02','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.25','INVENTARIS KANTOR','1','1.2','A','02','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.26','INVENTARIS LABORATORIUM','1','1.2','A','01','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.261','Lab. Komputer','1','1.26','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.262','Lab. IPA','1','1.26','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.263','Lab. Bahasa','1','1.26','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.27','PERPUSTAKAAN','1','1.2','A','02','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.28','PERLENGKAPAN UMUM','1','1.2','A','02','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29','AKUMULASI PENYUSUTAN','1','1.2','A','01','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.01','Akumulasi Inventaris Kantor','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.02','Akumulasi Inventaris Sekolah','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.03','Akumulasi Lab. IPA','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.04','Akumulasi Lab. Bhs+Elektro','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.05','Akumulasi Alat Bermain','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.06','Akumulasi Lab. Computer','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.07','Akumulasi Inventaris Perpustakaan','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.08','Akumulasi Inventaris Peralatan Umum','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.09','Akumukasi Bangunan','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.10','Akumulasi Menara','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.29.11','Akumulasi Taman','1','1.29','A','02','IDR',4,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.3','AKTIVA LAIN-LAIN','1','1','A','01','IDR',2,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.31','Biaya Pendirian','1','1.3','A','02','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.32','Modal Di setor','1','1.3','A','02','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.33','Biaya Perizinan','1','1.3','A','02','IDR',3,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2','KEWAJIBAN','1','00000000000','K','01','IDR',1,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.1','HUTANG LANCAR','1','2','K','01','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.11','Hutang POMG','1','2.1','K','01','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.111','POMG TKI','1','2.11','K','02','IDR',4,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.112','POMG SDI','1','2.11','K','02','IDR',4,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.113','POMG SLTPI','1','2.11','K','02','IDR',4,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.114','POS TKA/TPA/TQA','1','2.11','K','02','IDR',4,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.115','POMG SMA','1','2.11','K','02','IDR',4,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.116','POMG TK Pengasinan','1','2.11','K','02','IDR',4,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.12','Hutang pada pihak ketiga','1','2.1','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.13','Pendapatan diterima dimuka','1','2.1','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.14','Pembangunan Masjid','1','2.1','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.15','Pembayaran DPLK','1','2.1','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.16','Pembayaran Jamsostek','1','2.1','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.17','Pinjaman Sementara','1','2.1','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.18','Utang Gaji','1','2.1','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.19','Hutang Buku','1','2.1','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.2','HUTANG JANGKA PANJANG','1','2','K','01','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.21','Obligator','1','2.2','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.22','BMI','1','2.2','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.23','BSM Grand Mall','1','2.2','K','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('2.3','Pinj. guru ke BSM','1','2','K','02','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3','MODAL','1','00000000000','M','01','IDR',1,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3.1','MODAL DISETOR','1','3','M','01','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3.11','Penerimaan Infaq & Kotak Amal','1','3.1','M','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3.12','Modal YPUID','1','3.1','M','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3.2','LABA DITAHAN','1','3','M','02','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3.3','LABA/RUGI TAHUN BERJALAN','1','3','M','02','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('3.4','Cad. Amortisasi Pendirian','1','3','M','02','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4','PENDAPATAN','1','00000000000','P','01','IDR',1,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.11','PMB','1','4','P','01','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.111','PMB TKA','1','4.11','P','01','IDR',4,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.111.1','SERAGAM TKA','1','4.111','P','02','IDR',5,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.111.2','ADM PENDIDIKAN TKA','1','4.111','P','02','IDR',5,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.111.3','BANGUNAN TKA','1','4.111','P','02','IDR',5,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.111.4','DAFTAR ULANG UNGGULAN','1','4.111','P','02','IDR',5,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1119','PMB SLTPI UNGGULAN','1','4.11','P','01','IDR',4,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1119.1','SERAGAM SLTPI UNGGULAN','1','4.1119','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1119.2','ADM.PENDIDIKAN SLTPI UNGGULAN','1','4.1119','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1119.3','BANGUNAN SLTI UNGGULAN','1','4.1119','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1119.4','DAFTAR ULANG SLTPI UNGGULAN','1','4.1119','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.112','PMB TPA','1','4.11','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.112.1','SERAGAM TPA','1','4.112','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.112.2','ADM. PENDIDIKAN','1','4.112','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.112.3','BANGUNAN','1','4.112','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.112.4','DAFTAR ULANG','1','4.112','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1120','PMB SMA UNGGULAN','1','4.11','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1120.1','Seragam SMA UNGGULAN','1','4.1120','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1120.2','ADM. PENDIDIKAN SMA UNGGULAN','1','4.1120','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1120.3','BANGUNAN SMA UNGGULAN','1','4.1120','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1120.4','DAFTAR ULANG SMA UNGGULAN','1','4.1120','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1121','PMB SD Unggulan','1','4.11','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1121.1','Seragam SD UNGGULAN','1','4.1121','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1121.2','ADM. PENDIDIKAN SD UNGGULAN','1','4.1121','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1121.3','BANGUNAN SD UNGGULAN','1','4.1121','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1121.4','DAFTAR ULANG SD UNGGULAN','1','4.1121','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.113','PMB TQA/MDA','1','4.11','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.113.1','SERAGAM TQA/MDA','1','4.113','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.113.2','ADM. PENDIDIKAN TQA/MDA','1','4.113','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.113.3','BANGUNAN TQA/MDA','1','4.113','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.113.4','DAFTAR ULANG TQA/MDA','1','4.113','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.114','PMB TKI','1','4.11','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.114.1','SERAGAM TKI','1','4.114','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.114.2','ADM. PENDIDIKAN TKI','1','4.114','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.114.3','BANGUNAN TKI','1','4.114','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.114.4','DAFTAR ULANG TKI','1','4.114','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.115','PMB SDI','1','4.11','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.115.1','SERAGAM SDI','1','4.115','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.115.2','ADM. PENDIDIKAN SDI','1','4.115','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.115.3','BANGUNAN SDI','1','4.115','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.115.4','DAFTAR ULANG SDI','1','4.115','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.116','PMB SLTPI','1','4.11','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.116.1','SERAGAM SLTPI','1','4.116','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.116.2','ADM. PENDIDIKAN SLTPI','1','4.116','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.116.3','BANGUNAN SLTPI','1','4.116','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.116.4','DAFTAR ULANG SLTPI','1','4.116','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.117','PMB SLTA','1','4.11','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.117.1','SERAGAM SLTA','1','4.117','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.117.2','ADM. PENDIDIKAN SLTA','1','4.117','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.117.3','BANGUNAN SLTA','1','4.117','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.117.4','DAFTAR ULANG SLTA','1','4.117','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.118','PMB TK PENGASINAN','1','4.11','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.118.1','SERAGAM','1','4.118','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.118.2','ADM.PENDIDIKAN','1','4.118','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.118.3','BANGUNAN','1','4.118','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.118.4','DAFTAR ULANG','1','4.118','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.12','SPP','1','4','P','01','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.121','SPP TKA','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.121.1','SPP TKA','1','4.121','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.121.2','POMG TKA','1','4.121','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.121.3','LAIN-LAIN TKA','1','4.121','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.122','SPP TPA','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.122.1','SPP TPA','1','4.122','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.122.2','POMG TPA','1','4.122','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.122.3','LAIN-LAIN TPA','1','4.122','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1221','SPP SD UNGGULAN','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1221.1','SPP SD UNGGULAN','1','4.1221','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1221.2','POMGSD UNGGULAN','1','4.1221','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1221.3','MENU SD UNGGULAN','1','4.1221','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1221.4','EXTRAKURIKULER SD UNGGULAN','1','4.1221','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1221.5','LAIN-LAIN SD UNGGULAN','1','4.1221','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1222','SPP SMA UNGGULAN','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1222.1','SPP SMA UNGGULAN','1','4.1222','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1222.2','POMG SMA UNGGULAN','1','4.1222','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1222.3','EXTRAKURIKULER SMA UNGGULAN','1','4.1222','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1222.4','OSIS SMA UNGGULAN','1','4.1222','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.1222.5','LAIN-LAIN SMA UNGGULAN','1','4.1222','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.123','SPP TQA/MDA','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.123.1','SPP TQA/MDA','1','4.123','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.123.2','POMG TQA/MDA','1','4.123','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.123.3','LAIN-LAIN TQA/MDA','1','4.123','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.124','SPP TKI','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.124.1','SPP TKI','1','4.124','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.124.2','POMG TKI','1','4.124','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.124.3','MENU TKI','1','4.124','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.124.4','MAJALAH ANAK TKI','1','4.124','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.124.5','LAIN-LAIN TKI','1','4.124','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.125','SPP SDI','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.125.1','SPP SDI','1','4.125','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.125.2','POMG SDI','1','4.125','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.125.3','MENU SDI','1','4.125','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.125.4','EXTRA KURIKULER SDI','1','4.125','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.125.5','LAIN-LAIN SDI','1','4.125','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.126','SPP SLTPI','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.126.1','SPP SLTPI','1','4.126','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.126.2','POMG SLTPI','1','4.126','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.126.4','EXTRA KULIKULER SLTPI','1','4.126','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.126.5','OSIS SLTPI','1','4.126','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.126.6','LAIN-LAIN SLTPI','1','4.126','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.127','SPP SLTA','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.127.1','SPP SLTA','1','4.127','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.127.2','POMG SLTA','1','4.127','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.127.4','EXTRAKULIKULER SLTA','1','4.127','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.127.5','OSIS SLTA','1','4.127','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.127.6','LAIN-LAIN SLTA','1','4.127','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.128','SPP TK PENGASINAN','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.128.1','SPP','1','4.128','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.128.2','POMG','1','4.128','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.128.3','MENU','1','4.128','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.128.4','EXTRAKULIKULER','1','4.128','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.128.5','LAIN-LAIN','1','4.128','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.129','SPP SLTPI UNGGULAN','1','4.12','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.129.1','SPP SLTPI UNGGULAN','1','4.129','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.129.2','POMG SLTPI UNGGULAN','1','4.129','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.129.3','MENU SLTPI UNGGULAN','1','4.129','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.129.4','EXTRAKULIKULER SLTPI UNGGULAN','1','4.129','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.129.5','OSIS SLTPI UNGGULAN','1','4.129','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.129.6','LAIN-LAIN SLTPI UNGGULAN','1','4.129','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.13','Pendapatan Siswa Batal Masuk','1','4','P','01','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.13.01','Pendapatan PMB','1','4.13','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.13.02','Pendapatan Iuran Bulanan','1','4.13','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.18','PENDAPATAN LAIN-LAIN','1','4','P','01','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.181','BUNGA BANK','1','4.18','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.182','JEMPUTAN','1','4.18','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.183','Selisih Kas Kurang/Lebih','1','4.18','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184','FORM PENDAFTARAN','1','4.18','P','01','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184.01','U. Pendaftaran TKI','1','4.184','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184.02','U. Pendaftaran SDI','1','4.184','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184.03','U. Pendaftaran SLTPI','1','4.184','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184.04','U. Pendaftaran TKA/TPA','1','4.184','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184.05','U. Pendaftaran TQA','1','4.184','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184.06','U. Pendaftaran SMA','1','4.184','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184.07','U. Pendaftaran TK Pengasinan','1','4.184','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184.08','U. Pendaftaran SLTPI Unggulan','1','4.184','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184.09','U.Pendaftaran SLTA  Unggln','1','4.184','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.184.10','U. Pendaftaran SD Unggulan','1','4.184','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.185','Sumbangan Bangunan','1','4.18','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.186','Catering','1','4.18','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.187','Dana Bos','1','4.18','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.188','Pendapatan Lain2','1','4.18','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.189','Pendapatan BKSD (Disc.Buku)','1','4.18','P','02','IDR',NULL,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.19','DISPENSASI','1','4','P','01','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.19.01','TKA/TPA','1','4.19','P','02','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.19.02','TQA/MDA','1','4.19','P','01','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.19.03','TKI','1','4.19','P','01','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.19.04','SDI','1','4.19','P','01','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.19.05','SLTPI','1','4.19','P','01','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.19.06','SLTA','1','4.19','P','01','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.19.07','TK PENGASINAN','1','4.19','P','01','IDR',3,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('4.20','Pendapatan & Pengeluaran DDC','1','4','P','02','IDR',2,'K',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5','BIAYA','1','00000000000','B','01','IDR',1,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.1','BIAYA AWAL TAHUN','1','5','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.11','BIAYA AWAL TAHUN TKA/TPA','1','5.1','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.111','Seragam Murid','1','5.11','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.112','Perlengkapan Kelas','1','5.11','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.113','Perlengkapan KBM','1','5.11','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.114','Buku Pedoman/Cetakan','1','5.11','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.115','Diklat/Konsultan','1','5.11','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.12','BIAYA AWAL TAHUN TQA/MDA','1','5.1','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.121','Seragam Murid','1','5.12','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.122','Perlengkapan Kelas','1','5.12','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.123','Perlengkapan KBM','1','5.12','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.124','Buku Pedoman/Cetakan','1','5.12','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.125','Diklat/Konsultan','1','5.12','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.13','BIAYA AWAL TAHUN TKI','1','5.1','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.131','Seragam Murid TKI','1','5.13','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.132','Perlengkapan Kelas TKI','1','5.13','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.133','Perlengkapan KBM TKI','1','5.13','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.134','Buku Pedoman/Cetakan TKI','1','5.13','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.135','Diklat/Konsultan TKI','1','5.13','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.14','BIAYA AWAL TAHUN SDI','1','5.1','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.141','Seragam Murid SDI','1','5.14','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.142','Perlengkapan Kelas SDI','1','5.14','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.143','Perelngkapan KBM SDI','1','5.14','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.144','Buku Pedoman/Cetakan SDI','1','5.14','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.145','Diklat/Konsultan SDI','1','5.14','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.15','BIAYA AWAL TAHUN SLTPI','1','5.1','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.151','Seragam Murid SLTP','1','5.15','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.152','Perlengkapan Kelas SLTP','1','5.15','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.153','Perlengkapan KBM SLTP','1','5.15','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.154','Buku Pedoman/Cetakan SLTP','1','5.15','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.155','Diklat/Konsultan SLTP','1','5.15','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.16','BIAYA AWAL TAHUN SLTA','1','5.1','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.161','Seragam Murid SLTA','1','5.16','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.162','Perlengkapan Kelas SLTA','1','5.16','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.163','Perlengkapan KBM SLTA','1','5.16','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.164','Buku Pedoman/Cetakan SLTA','1','5.16','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.165','Diklat/Konsultan SLTA','1','5.16','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.17','BIAYA AWAL TAHUN TK PENGASINAN','1','5.1','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.171','Seragam Murid Pengasinan','1','5.17','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.172','Perlengkapan Kelas Pengasinan','1','5.17','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.173','Perlengkapan KBM Pengasinan','1','5.17','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.174','Buku Pedoman/Cetakan Pengasinan','1','5.17','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.175','Diklat/Konsultan Pengasinan','1','5.17','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.2','BIAYA RUTIN','1','5','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.21','BIAYA RUTIN TKA/TPA','1','5.2','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.211','Menu Murid','1','5.21','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.212','Asuransi Kecelakaan/Pengobatan','1','5.21','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.213','ATK','1','5.21','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.214','FC/Reproduksi','1','5.21','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.215','Extrakulikuler','1','5.21','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.216','POMG/POS','1','5.21','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.217','Iuran Asosiasi/Inspeksi Dikbud','1','5.21','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.218','Transportasi','1','5.21','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.22','BIAYA RUTIN TQA','1','5.2','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.221','Menu Murid','1','5.22','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.222','Asuransi Kecelakaan/Pengobatan','1','5.22','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.223','ATK','1','5.22','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.224','FC/Reproduksi','1','5.22','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.225','Extrakulikuler','1','5.22','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.226','POMG/POS','1','5.22','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.227','Iuran Asosiasi/Inspeksi Dikbud','1','5.22','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.228','Transportasi','1','5.22','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.23','BIAYA RUTIN TKI','1','5.2','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.231','Menu Murid TKI','1','5.23','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.232','Asuransi Kecelakaan/Pengobatan TKI','1','5.23','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.233','ATK TKI','1','5.23','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.234','FC/Reproduksi TKI','1','5.23','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.235','Extrakulikuler TKI','1','5.23','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.236','POMG TKI','1','5.23','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.237','Iuran Asosiasi/Inspeksi Dikbud TKI','1','5.23','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.238','Transportasi TKI','1','5.23','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.24','BIAYA RUTIN SDI','1','5.2','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.241','Menu Murid SDI','1','5.24','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.242','Asuransi Kecelakaan SDI','1','5.24','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.243','ATK SDI','1','5.24','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.244','FC/Reproduksi SDI','1','5.24','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.245','Extrakulikuler SDI','1','5.24','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.246','POMG/POS SDI','1','5.24','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.247','Iuran Asosiasi/Inspeksi Dikbud SDI','1','5.24','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.248','Transportasi SDI','1','5.24','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.25','BIAYA RUTIN SLTPI','1','5.2','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.251','Menu Murid SLTP','1','5.25','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.252','Asuransi Kecelakaan SLTP','1','5.25','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.253','ATK SLTP','1','5.25','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.254','FC/Reproduksi SLTP','1','5.25','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.255','Extrakulikuler SLTP','1','5.25','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.256','POMG/POS SLTP','1','5.25','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.257','Iuran Asosiasi/Inspeksi Dikbud SLTP','1','5.25','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.258','Transportasi SLTP','1','5.25','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.26','BIAYA RUTIN SLTA','1','5.2','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.261','Menu Murid SLTA','1','5.26','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.262','Asuransi Kecelakaan SLTA','1','5.26','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.263','ATK SLTA','1','5.26','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.264','FC/Reproduksi SLTA','1','5.26','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.265','Extrakulikuler SLTA','1','5.26','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.266','POMG/POS SLTA','1','5.26','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.267','Iuran Asosiasi/Inspeksi Dikbud SLTA','1','5.26','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.268','Transportasi SLTA','1','5.26','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.27','BIAYA RUTIN TK PENGASINAN','1','5.2','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.271','Menu Murid Pengasinan','1','5.27','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.272','Asuransi Kecelakaan Pengasinan','1','5.27','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.273','ATK Pengasinan','1','5.27','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.274','FC/Reproduksi Pengasinan','1','5.27','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.275','Extrakulikuler Pengasinan','1','5.27','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.276','POMG/POS Pengasinan','1','5.27','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.277','Iuran Asosiasi/Inspeksi Dikbud Pengasinan','1','5.27','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.278','Transportasi Pengasinan','1','5.27','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.3','BIAYA KARYAWAN/GURU','1','5','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.31','BIAYA GURU TKA/TPA','1','5.3','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.311','Gaji Pokok + Tunjangan','1','5.31','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.312','Lembur','1','5.31','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.313','THR','1','5.31','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.314','Dana Kesehatan/Jamsostek','1','5.31','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.315','Makan','1','5.31','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.316','Pakaian Seragam','1','5.31','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.317','Asuransi DPLK','1','5.31','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.318','PPh','1','5.31','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.32','BIAYA GURU TQA','1','5.3','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.321','Gaji Pokok + Tunjangan','1','5.32','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.322','Lembur','1','5.32','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.323','THR','1','5.32','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.324','Dana Kesehatan','1','5.32','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.325','Makan','1','5.32','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.326','Pakaian Seragam','1','5.32','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.327','Asuransi DPLK','1','5.32','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.328','PPh','1','5.32','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.33','BIAYA GURU TKI','1','5.3','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.331','Gaji Pokok - Tunjangan TKI','1','5.33','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.332','Lembur TKI','1','5.33','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.333','THR TKI','1','5.33','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.334','Dana Kesehatan TKI','1','5.33','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.335','Makan TKI','1','5.33','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.336','Pakaian Seragam TKI','1','5.33','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.337','Asuransi DPLK TKI','1','5.33','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.338','PPh TKI','1','5.33','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.34','BIAYA GURU SDI','1','5.3','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.341','Gaji Pokok + Tunjangan SDI','1','5.34','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.342','Lembur SDI','1','5.34','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.343','THR SDI','1','5.34','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.344','Dana Kesehatan SDI','1','5.34','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.345','Makan SDI','1','5.34','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.346','Pakaian Seragam SDI','1','5.34','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.347','Asuransi DPLK SDI','1','5.34','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.348','PPh SDI','1','5.34','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.35','BIAYA GURU SLTPI','1','5.3','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.351','Gaji Pokok SLTP','1','5.35','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.352','Lembur SLTP','1','5.35','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.353','THR SLTP','1','5.35','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.354','Dana Kesehatan SLTP','1','5.35','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.355','Makan SLTP','1','5.35','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.356','Pakaian Seragam SLTP','1','5.35','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.357','Asuransi DPLK SLTP','1','5.35','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.358','PPh SLTP','1','5.35','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.36','BIAYA KARYAWAN','1','5.3','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.361','Gaji Pokok UMUM','1','5.36','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.362','Lembur UMUM','1','5.36','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.363','THR UMUM','1','5.36','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.364','Dana Jamsostek UMUM','1','5.36','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.365','Makan UMUM','1','5.36','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.366','Pakaian Seragam UMUM','1','5.36','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.367','Asuransi DPLK UMUM','1','5.36','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.368','PPh UMUM','1','5.36','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.37','BIAYA GURU SLTA','1','5.3','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.371','Gaji Pokok SLTA','1','5.37','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.372','Lembur SLTA','1','5.37','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.373','THR SLTA','1','5.37','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.374','Dana Jamsostek SLTA','1','5.37','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.375','Makan SLTA','1','5.37','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.376','Pakaian Seragam SLTA','1','5.37','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.377','Asuransi DPLK SLTA','1','5.37','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.378','PPH SLTA','1','5.37','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.38','BIAYA GURU TK PENGASINAN','1','5.3','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.381','Gaji Pokok Pengasinan','1','5.38','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.382','Lembur Pengasinan','1','5.38','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.383','THR Pengasinan','1','5.38','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.384','Dana Jamsostek Pengasinan','1','5.38','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.385','Makan Pengasinan','1','5.38','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.386','Pakaian Seragam Pengasinan','1','5.38','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.387','Asuransi DPLK Pengasinan','1','5.38','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.388','PPH Pengasinan','1','5.38','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.39','Biaya Cikunir','1','5.3','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.391','Gaji Pokok Cikunir','1','5.39','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.392','Lembur Cikunir','1','5.39','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.393','THR Cikunir','1','5.39','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.394','Dana Jamsostek Cikunir','1','5.39','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.395','Makan Cikunir','1','5.39','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.396','Pakaian Seragam Cikunir','1','5.39','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.397','Asuransi DPLK Cikunir','1','5.39','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.398','PPH Cikunir','1','5.39','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.4','BIAYA UMUM','1','5','B','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.401','Reproduksi/Photocopy','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.402','ATK','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.403','Transportasi','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.404','Sosial dan Kesehatan Keluarga Direktur','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.405','Pelatihan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.406','Perjalanan Dinas','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.407','Promosi/PMB','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.408','Koran/Majalah','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.409','Telepon','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.410','Listrik','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.411','Raker','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.412','Konsultan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.413','Sewa Tanah','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.414','Bank','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.415','Pemeliharaan dan Perbaikan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.416','Bonus','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.417','Kebersihan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.418','Uang rusak dan Penghapusan Pihutang','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.419','Dispensasi','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.420','Imtihan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.421','Lain-lain','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.422','B. Pomg TKI','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.423','B. Pomg TKA/TPA','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.424','B. Pomg SDI','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.425','B. Pomg SLTP','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.426','B. Akum. Lab. IPA','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.427','B. Akum. Lab. BHS+Elektro','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.428','B. Akum. Inv Alat Bermain','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.429','B. Akum Inv Peral. Sekolah','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.430','B. Akum Inv Peral. Kantor','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.431','B. Akum Lab. Computer','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.432','B. Akum Inv Perpustakaan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.433','B. Akum Inv Peral. Umum','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.434','B. Bagi Hasil Investor','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.435','B. Kompensasi','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.436','Sosial/Sumbangan Kegiatan Yayasan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.437','B. Akum Bangunan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.438','B. Akum Menara','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.439','B. Akum Taman','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.440','B. DMC','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.441','Buku Grafindo','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.442','Bantuan kesehatan Keluarga guru- karyawan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.443','B. Entertaintment','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.444','Biaya DDC','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.445','B. Pomg SMA','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.446','Kemasjidan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.447','Sosial/Sumbangan Guru - Karyawan','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.448','Kegiatan Adzuriyat','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('5.449','B. Margin Bank','1','5.4','B','02','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.171.07','Piutang Jemputan Lain','1','1.171','A','02','IDR',5,'D','0','0','0','',NULL,'',NULL,'2014-09-03 12:24:11','2014-09-03 12:24:11'),
('4.19.08','SD UNGGULAN','1','4.19','P','01','IDR',3,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:08:39','2014-09-03 14:08:39'),
('4.19.09','SLTP UNGGULAN','1','4.19','P','01','IDR',3,'K','0','0','0','',NULL,'','','2014-09-03 14:08:56','2014-09-03 14:18:46'),
('4.19.10','SLTA UNGGULAN','1','4.19','P','01','IDR',3,'K','0','0','0','',NULL,'','','2014-09-03 14:09:44','2014-09-03 14:19:02'),
('4.19.0401','Disp. SPP SD Islam','1','4.19.04','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:17:09','2014-09-03 14:17:09'),
('4.19.0402','Disp. PMB SD Islam','1','4.19.04','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:17:25','2014-09-03 14:17:25'),
('4.19.0403','Disp. Adm. Pendidikan SD Islam','1','4.19.04','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:18:01','2014-09-03 14:18:01'),
('4.19.0501','Disp. SPP SLTP Islam','1','4.19.05','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:19:40','2014-09-03 14:19:40'),
('4.19.0502','Disp. PMB SLTP Islam','1','4.19.05','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:20:06','2014-09-03 14:20:06'),
('4.19.0503','Disp. Adm. Pendidikan SLTP Islam','1','4.19.05','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:20:36','2014-09-03 14:20:36'),
('4.19.0601','Disp. SPP SLTA Islam','1','4.19.06','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:21:13','2014-09-03 14:21:13'),
('4.19.0602','Disp. PMB SLTA Islam','1','4.19.06','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:21:27','2014-09-03 14:21:27'),
('4.19.0603','Disp. Adm. Pendidikan SLTA Islam','1','4.19.06','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:21:46','2014-09-03 14:21:46'),
('4.19.0301','Disp. SPP TK Islam','1','4.19.03','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:22:14','2014-09-03 14:22:14'),
('4.19.0302','Disp. PMB TK Islam','1','4.19.03','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:22:38','2014-09-03 14:22:38'),
('4.19.0303','Disp. Adm. Pendidikan TK Islam','1','4.19.03','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:22:58','2014-09-03 14:22:58'),
('4.19.0801','Disp. SPP SD Unggulan','1','4.19.08','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:23:27','2014-09-03 14:23:27'),
('4.19.0802','Disp. PMB SD Unggulan','1','4.19.08','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:23:47','2014-09-03 14:23:47'),
('4.19.0803','Disp. Adm. Pendidikan SD Unggulan','1','4.19.08','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:24:16','2014-09-03 14:24:16'),
('4.19.0901','Disp. SPP SLTP Unggulan','1','4.19.09','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:24:44','2014-09-03 14:24:44'),
('4.19.0902','Disp. PMB SLTP Unggulan','1','4.19.09','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:25:09','2014-09-03 14:25:09'),
('4.19.0903','Disp. Adm. Pendiidkan SLTP Unggulan','1','4.19.09','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:25:31','2014-09-03 14:25:31'),
('4.19.1001','Disp. SPP SLTA Unggulan','1','4.19.10','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:26:03','2014-09-03 14:26:03'),
('4.19.1002','Disp. PMB SLTA Unggulan','1','4.19.10','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:26:22','2014-09-03 14:26:22'),
('4.19.1003','Disp. Adm. Pendidikan SLTA Unggulan','1','4.19.10','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2014-09-03 14:26:44','2014-09-03 14:26:44'),
('1.111.08','Kas Keluar Sementara','1','1.111','A','02','IDR',5,'D','0','0','0','',NULL,'',NULL,'2014-10-23 15:36:50','2014-10-23 15:36:50'),
('1.114','Kas Project','1','1.11','A','01','IDR',4,'D','0','0','0','',NULL,'',NULL,'2015-06-08 10:20:25','2015-06-08 10:20:25'),
('1.16.01','Piutang Karyawan PID','1','1.16','A','01','IDR',NULL,'D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('1.16.02','Piutang Project','1','1.16','A','02','IDR',4,'D','0','0','0','',NULL,'','','2015-06-08 10:44:37','2015-08-03 10:10:25'),
('1.16.02.01','Piutang Komet','0','1.16.02','A','02','IDR',5,'D','0','0','0','',NULL,'',NULL,'2015-08-04 07:25:57','2015-08-04 07:25:57'),
('4.19.0304','Disp. Formulir TK Islam','1','4.19.03','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2015-08-05 12:09:34','2015-08-05 12:09:34'),
('4.19.0404','Disp. Formulir SD Islam','1','4.19.04','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2015-08-05 12:09:54','2015-08-05 12:09:54'),
('4.19.0504','Disp. Formulir SMP Islam','1','4.19.05','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2015-08-05 12:10:20','2015-08-05 12:10:20'),
('4.19.0604','Disp. Formulir SLTA Islam','1','4.19.06','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2015-08-05 12:10:48','2015-08-05 12:10:48'),
('4.19.0804','Disp. Formulir SD Unggulan','1','4.19.08','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2015-08-05 12:11:16','2015-08-05 12:11:16'),
('4.19.0904','Disp. Formulir SMP Unggulan','1','4.19.09','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2015-08-05 12:11:40','2015-08-05 12:11:40'),
('4.19.1004','Disp. Formulir SLTA Unggulan','1','4.19.10','P','02','IDR',4,'K','0','0','0','',NULL,'',NULL,'2015-08-05 12:12:10','2015-08-05 12:12:10');

<<<<<<< HEAD
/*Table structure for table `th_codexd` */

DROP TABLE IF EXISTS `th_codexd`;

CREATE TABLE `th_codexd` (
  `CODD_FLNM` VARCHAR(15) NOT NULL DEFAULT '',
  `CODD_VALU` VARCHAR(15) NOT NULL DEFAULT '',
  `CODD_DESC` VARCHAR(40) DEFAULT NULL,
  `CODD_VARC` VARCHAR(20) DEFAULT NULL,
  `CODD_VAR1` VARCHAR(20) DEFAULT NULL,
  `CODD_DECI` DOUBLE DEFAULT NULL,
  `CODD_CHR1` VARCHAR(20) DEFAULT NULL,
  `CODD_CHR2` VARCHAR(20) DEFAULT NULL,
  `CODD_CHR3` VARCHAR(20) DEFAULT NULL,
  `CODD_CHR4` VARCHAR(20) DEFAULT NULL,
  `CODD_CHR5` VARCHAR(20) DEFAULT NULL,
  `CODD_DEC1` DOUBLE DEFAULT NULL,
  `CODD_DEC2` DOUBLE DEFAULT NULL,
  `DELE_STAT` VARCHAR(1) DEFAULT NULL,
  `TRAN_DATE` DATETIME DEFAULT NULL,
  `TRAN_USID` VARCHAR(10) DEFAULT NULL,
  `TRAN_TYPE` VARCHAR(1) DEFAULT NULL,
  `TRAN_COMP` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (`CODD_FLNM`,`CODD_VALU`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1;

/*Data for the table `th_codexd` */

INSERT  INTO `th_codexd`(`CODD_FLNM`,`CODD_VALU`,`CODD_DESC`,`CODD_VARC`,`CODD_VAR1`,`CODD_DECI`,`CODD_CHR1`,`CODD_CHR2`,`CODD_CHR3`,`CODD_CHR4`,`CODD_CHR5`,`CODD_DEC1`,`CODD_DEC2`,`DELE_STAT`,`TRAN_DATE`,`TRAN_USID`,`TRAN_TYPE`,`TRAN_COMP`) VALUES 
('ADTN_PART','1','Addition','a','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-16 10:38:27','000028','A','PT-OMILT1G'),
('ADTN_PART','2','Reduction','b','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-16 10:38:27','000028','A','PT-OMILT1G'),
('APLY_SEQ1','1','First','','',1,'','',NULL,NULL,NULL,0,0,'','2003-06-25 10:33:54','999999','A','HANBITX'),
('APLY_SEQ1','2','2 nd','','',1,'','',NULL,NULL,NULL,0,0,'','2003-06-25 10:33:54','999999','A','HANBITX'),
('APLY_SEQ1','3','First & 2 nd','','',2,'','',NULL,NULL,NULL,0,0,'','2003-06-25 10:33:54','999999','A','HANBITX'),
('APLY_SEQ1','4','Monthly','','',3,'','',NULL,NULL,NULL,0,0,'','2003-06-25 10:33:54','999999','A','HANBITX'),
('APPT_CODE','0001','Upgrade','','',1,'','',NULL,NULL,NULL,0,0,'','2003-06-19 20:08:32','999999','A','HANBITX'),
('APPT_CODE','0002','Downgrade','','',2,'','',NULL,NULL,NULL,0,0,'','2003-06-19 20:08:32','999999','A','HANBITX'),
('APPT_CODE','0003','Moving Dept / Work Area','','',3,'','',NULL,NULL,NULL,0,0,'','2003-06-19 20:08:32','999999','A','HANBITX'),
('APPT_CODE','0004','Change Pay Classification','','',0,'','',NULL,NULL,NULL,0,0,'','2003-06-19 20:08:32','999999','A','HANBITX'),
('APPT_CODE','0005','New Employee','','',0,'','',NULL,NULL,NULL,0,0,'','2003-06-19 20:08:32','999999','A','HANBITX'),
('APPT_CODE','0006','Moving Company','','',4,'','',NULL,NULL,NULL,0,0,'','2003-06-19 20:08:32','999999','A','HANBITX'),
('APPT_CODE','9999','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2003-06-19 20:08:32','999999','A','HANBITX'),
('ATTN_PART','001','No Data Attend','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('ATTN_PART','002','No Data Leave','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('ATTN_PART','003','No Data All','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('AUTO_PART','1','Cash','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-20 09:47:28','1950149','A','SJA'),
('AUTO_PART','2','Transfer Bank','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-20 09:47:28','1950149','A','SJA'),
('BDAY_PART','1','Solar','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BDAY_PART','2','Lunar','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BLOD_CODE','1','A','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BLOD_CODE','2','B','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BLOD_CODE','3','AB','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BLOD_CODE','4','O','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BLOD_CODE','5','A (-)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BLOD_CODE','6','B (-)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BLOD_CODE','7','AB (-)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BLOD_CODE','8','O (-)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BLOD_CODE','9','Not Available','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CALN_PART','1','Holiday','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-02 17:49:10','1950149','A','SJC'),
('CALN_PART','2','National Holiday','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-02 17:49:10','1950149','A','SJC'),
('CALN_PART','3','Company Holiday','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-02 17:49:10','1950149','A','SJC'),
('CERT_CLIN','01','Keterangan Dokter','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CERT_CLIN','02','Disminor','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CERT_PART','010','Active Service','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CERT_PART','020','Retirement','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CERT_PART','030','Promotion','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CERT_PART','040','Termination Letter','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CERT_PART','050','Maternity Leave Letter','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CLAC_FLAG','1','Hadir','','',0,'','',NULL,NULL,NULL,0,0,'','2002-11-27 20:06:07','960020043','A','DIAN'),
('CMPN_PART','1','Compensation (+)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CMPN_PART','2','Compensation (%)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CMPN_PART','3','Deduction (-)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CMPN_PART','4','Deduction (%)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('COMP_SORT','AK24_PART','Cooperation(B) Membership','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','AUTO_PART','Salary Transfer(Bank/Cash)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','CHLD_CONT','Children Count','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','DEPN_CONT','Dependent Family(Count)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','EMPL_PART','Employee Classification','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','ETHN_CODE','Ethnics Code','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','HOLD_PART','Dependent Family','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','HOME_CODE','Type of Residence','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','INSD_PART','Inside / Outside Duty','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','JCHK_CODE','Responsibility','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','JGUB_CODE','Salary Position','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','JGUN_CODE','Occupation Code','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','JJNG_CODE','Occupation Category','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','JMOO_CODE','Assignment (Job) Description','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','KOPR_PART','Cooperation(A) Membership','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','LEVL_CODE','Level / Pangkat Code','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','LOAD_AREA','Area','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:23','0860003','U','SJC'),
('COMP_SORT','MARY_PART','Marital Status','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:24','0860003','U','SJC'),
('COMP_SORT','NTLY_CODE','Nationality','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:24','0860003','U','SJC'),
('COMP_SORT','PACL_PART','Pay / Calculation Part','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:24','0860003','U','SJC'),
('COMP_SORT','PAXY_PART','Pay Class(Daily/Monthly)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:24','0860003','U','SJC'),
('COMP_SORT','RELI_CODE','Religion','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:24','0860003','U','SJC'),
('COMP_SORT','SEXX_PART','Gender','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:24','0860003','U','SJC'),
('COMP_SORT','SPSI_PART','SPSI Membership','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:24','0860003','U','SJC'),
('COMP_SORT','STEP_CODE','Salary Class','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:24','0860003','U','SJC'),
('COMP_SORT','TABL_PART','Salary Table / Manual Entry','','',0,'','',NULL,NULL,NULL,0,0,'','2002-08-29 19:56:24','0860003','U','SJC'),
('COND_TERM','1','More than','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('COND_TERM','2','Less than','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('COND_TERM','3','Between','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('CUST_LEVL','100','LEVEL A','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 09:41:52','firyadi','A',''),
('CUST_LEVL','110','LEVEL B','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 09:41:52','firyadi','A',''),
('CUST_LEVL','120','LEVEL C','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 09:41:52','firyadi','A',''),
('CUST_LEVL','130','LEVEL D','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 09:41:52','firyadi','A',''),
('CUST_LEVL','140','LEVEL E','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 09:41:52','firyadi','A',''),
('DISE_CLAS','001','Infeksi dan Parasit','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','003','\"Darah, Organ Pembuat Darah dan Imun\"','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','004','Endokrin Gizi dan Metabolik','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','005','Jiwa dan Perlaku','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','006','Susunan Syaraf','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','007','Mata dan Adreksa','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','008','Telinga dan Prosesus Mastoid','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','009','Sistem Peredaran Darah','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','010','Sistem Pernafasan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','011','Sistem Pencernaan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','012','Kulit dan Jaringan Subkutan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','013','Sistem Muskuloskeletal / Jaringan Ikat','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','014','Sistem Kemih dan Kelamin','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','015','\"Kehamilan, Persalinan dan Nifas\"','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','016','Kond. Tertentu Bermula pd Masa Perinatal','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CLAS','017','\"Gejala, tanda tak terkwalifikasi\"','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','102','Diarrhea','a','',1,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','105','Typhoid','b','',2,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','106','Caries dentis','c','',3,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','107','KP','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','108','Hepatitis','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','109','GE','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','110','ISPA','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','111','LBP','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','201','Influenza','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','202','Febris','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','203','Bronchitis','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','301','Dysmenor','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','302','Methorrhagia','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','304','Pregnant','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','401','Allergic','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','507','Dermatitis','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','601','Conjunctivity','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','802','Fracture','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','803','Combustio','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_CODE','999','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_PART','1','Low','a','',1,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_PART','2','Moderate','b','',2,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_PART','3','\"Acute, requires intensive care\"','c','',3,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('DISE_PART','9','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('EDUC_CODE','01','Computer course','a','',0,'','',NULL,NULL,NULL,0,0,'','2003-03-14 15:52:47','FIRYADI','A','FIRYADI'),
('EDUC_CODE','02','English course','b','',0,'','',NULL,NULL,NULL,0,0,'','2003-03-14 15:52:47','FIRYADI','A','FIRYADI'),
('EDUC_CODE','03','Sewing course','c','',0,'','',NULL,NULL,NULL,0,0,'','2003-03-14 15:52:47','FIRYADI','A','FIRYADI'),
('EDUC_CODE','04','Personality course','d','',0,'','',NULL,NULL,NULL,0,0,'','2003-03-14 15:52:47','FIRYADI','A','FIRYADI'),
('EDUC_CODE','05','Accounting course','','',0,'','',NULL,NULL,NULL,0,0,'','2003-03-14 15:52:47','FIRYADI','A','FIRYADI'),
('EDUC_CODE','06','ISO 9001 - 2000','','',0,'','',NULL,NULL,NULL,0,0,'','2003-03-14 15:52:47','FIRYADI','A','FIRYADI'),
('EDUC_CODE','07','MRP II','','',0,'','',NULL,NULL,NULL,0,0,'','2003-03-14 15:52:47','FIRYADI','A','FIRYADI'),
('EMPL_GRP1','001','Jakarta','','',613600,'','',NULL,NULL,NULL,0,0,' ','2003-07-16 00:00:00','124454545','A','SEN'),
('EMPL_GRP2','001','Jakarta','','',631600,'','',NULL,NULL,NULL,0,0,'','2003-07-19 13:41:16','000003','A','EE'),
('EMPL_PART','1','Pegawai Honor','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-23 15:47:06','000036','A','INDRA'),
('EMPL_PART','2','Pegawai Percobaan','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-23 15:47:06','000036','A','INDRA'),
('EMPL_PART','3','Pegawai Kontrak','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-23 15:47:06','000036','A','INDRA'),
('ETHN_CODE','001','Jawa','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','002','Sunda','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','003','Batak','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','004','Betawi','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','005','Minang','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','006','Melayu','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','007','Madura','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','008','Bugis','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','009','Bali / Nusa Tenggara','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','010','Palembang','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','011','Lampung','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','030','Karo','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','060','Other Indonesian (Native)','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','070','INAn (Foreign Ethnic)','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','080','Foreign (expatriate)','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('ETHN_CODE','081','Dayak','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:07:42','030134','A','PCERWIN-HR'),
('GBSN_PART','1','Salary','1','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('GBSN_PART','2','Bonus','1','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('GRAD_PERC','001','A','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-14 15:06:06','000036','A','INDRA'),
('GRAD_PERC','002','B +','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-14 15:06:06','000036','A','INDRA'),
('GRAD_PERC','003','B','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-14 15:06:06','000036','A','INDRA'),
('GRAD_PERC','004','B -','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-14 15:06:06','000036','A','INDRA'),
('GRAD_PERC','005','C +','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-14 15:06:06','000036','A','INDRA'),
('GRAD_PERC','006','C','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-14 15:06:06','000036','A','INDRA'),
('GRAD_PERC','007','C -','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-14 15:06:06','000036','A','INDRA'),
('GUNT_CODE','098','System','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','301','Wife`s Giving Birth','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','302','Family Member`s Death','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','303','Child`s Circumcision','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','304','Child`s Baptized','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','305','Child`s Wedding','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','306','Visiting Relative of Acute Illness','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','307','2 Days Visiting Relative (outside Jkt)','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','308','Gov`t Inst. Purpose','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','309','Fire, flood, natural disaster, condemne','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','310','Other types of permission','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','501','Annual Vacation','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','502','Wedding','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','503','Giving Birth','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_CODE','504','Woman`s Monthly','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 22:46:45','ADMIN','A','JASMINE'),
('GUNT_PART','001','Attend & Leave',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('GUNT_PART','002','Attend',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_HAND','1','Masuk',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_HAND','2','Pulang',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_HAND','3','Izin',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_HAND','0','Tidak ada info',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('GUNT_USPT','001','AM code only','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:24:38','010211','A','PCDEV'),
('GUNT_USPT','002','Overtime approval','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:24:38','010211','A','PCDEV'),
('GUNT_USPT','003','Revision time','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:24:38','010211','A','PCDEV'),
('GUNT_USPT','004','Paid vacation','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:24:38','010211','A','PCDEV'),
('GUNT_USPT','005','Unpaid vacation','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:24:38','010211','A','PCDEV'),
('GUNT_USPT','006','Official trip/Educ.','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:24:38','010211','A','PCDEV'),
('GUNT_USPT','007','Official outing','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:24:38','010211','A','PCDEV'),
('GUNT_USPT','999','Not used','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:24:38','010211','A','PCDEV'),
('HOBY_GRAD','1','Excellent','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOBY_GRAD','2','Very good','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOBY_GRAD','3','Good','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOBY_GRAD','4','Average','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOBY_GRAD','5','Sufficient','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOBY_GRAD','6','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOLD_PART','1','Yes','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-15 17:28:41','1950149','A','HANDONO'),
('HOLD_PART','2','No','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-15 17:28:41','1950149','A','HANDONO'),
('HOME_CODE','001','Own House','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOME_CODE','002','Parent\'s House','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOME_CODE','003','Rented House','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOME_CODE','004','Lodging House/Kost','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOME_CODE','005','Flat/Dormitory provided by Company','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOME_CODE','006','House provided by Company','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('HOME_CODE','999','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('INSD_PART','1','Inside Duty','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-20 09:48:23','1950149','A','SJA'),
('INSD_PART','2','Outside Duty','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-20 09:48:23','1950149','A','SJA'),
('IPSA_PART','1','Non-career via selection','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('IPSA_PART','2','Non-career without selection (special)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('IPSA_PART','3','Career via selection','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('IPSA_PART','4','Career without selection','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('IPSA_PART','9','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('JCHK_CODE','1000','Ketua Yayasan','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','1100','Director','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','1200','Deputy Director','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','1300','General Manager','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','1400','National Manager','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','2100','Regional Manager','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','2200','Kabid Pendidikan Yayasan','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','2300','Staff Yayasan','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','2400','Kepala Sekolah','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','3100','Wakasek Kurikulum ','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','3200','Koordinator Bidang','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','3300','Kepala Divisi','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','4100','Wali Kelas','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','4200','Guru Bidang Studi','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','4300','Guru Asisten Kelas','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','4400','Coordinator','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','5100','Kepala Sub Seksie','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','5200','Kepala Gudang','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6100','Administrator','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6110','Staff Koperasi','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6111','Staff Perpustakaan','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6112','Staff SarPras','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6113','Staff TU Accounting','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6120','Staff TU Administrasi','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6130','Stocker','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6140','Checker','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6150','Inspector','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6160','SPG','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6170','Sopir (Driver)','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6180','Asisten Lab.','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6190','Chief of Collector','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6200','Cleaning Service','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6210','Collector','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6220','Expeditur','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6230','Formulator','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6240','Gudang Premix AS','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6250','Jamsostek Claim','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6260','Mekanik','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6270','Office Boy','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6280','Premix','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6290','Security','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6300','Teknisi','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6310','Test Nyamuk','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6320','Tester','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6330','Transit','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6340','Packer','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6350','Web Designer','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6360','Staff Keamanan','1','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6370','Senior Legal & industrial','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6380','Relation Officer','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6390','Analist / Program Developer','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6400','Nettwork Engineering','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6410','Maintenance Data Suport','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6420','Programmer','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6430','Technical Suport','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6440','Fakturing','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6450','Web Design','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6460','Sales MD','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6470','Kanvas Motor Cabang Jakarta II','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6471','Spreading Mobil Cabang Jakarta II','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6472','Kanvas Motor Cabang Jakarta I','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JCHK_CODE','6473','Spreading Mobil Cabang Jakarta I','','',0,'','',NULL,NULL,NULL,0,0,'','2004-06-26 14:18:22','030134','A','PCERWIN-HR'),
('JGUB_CODE','01','I A','1','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','02','I B','2','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','03','I C','3','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','04','I D','4','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','05','I E','5','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','06','I F','6','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','07','II A','7','',0,'','',NULL,NULL,NULL,1000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','08','II B','8','',0,'','',NULL,NULL,NULL,1000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','09','II C','9','',0,'','',NULL,NULL,NULL,1000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','10','II D','1','',0,'','',NULL,NULL,NULL,1000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','11','II E','','',0,'','',NULL,NULL,NULL,1000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','12','II F','','',0,'','',NULL,NULL,NULL,1000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','13','III A','','',0,'','',NULL,NULL,NULL,2000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','14','III B','','',0,'','',NULL,NULL,NULL,2000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','16','III D','','',0,'','',NULL,NULL,NULL,2000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','17','III E','','',0,'','',NULL,NULL,NULL,2000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','18','III F','','',0,'','',NULL,NULL,NULL,2000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','19','IV A','','',0,'','',NULL,NULL,NULL,3000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','20','IV B','','',0,'','',NULL,NULL,NULL,3000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','21','IV C','','',0,'','',NULL,NULL,NULL,3000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','22','IV D','','',0,'','',NULL,NULL,NULL,3000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','23','IV E','','',0,'','',NULL,NULL,NULL,4000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','24','IV F','','',0,'','',NULL,NULL,NULL,4000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','25','V A','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','26','V B','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','27','V C','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','28','V D','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','29','VI A','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','30','VI B','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','31','VI C','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','32','VI D','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','33','VII A','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','34','VII B','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','35','VII C','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','36','VII D','','',0,'','',NULL,NULL,NULL,5000,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUB_CODE','99','No Position','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:42','000036','A','INDRA'),
('JGUN_CODE','01','Standard','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-19 13:42:44','000003','A','EE'),
('JGUN_CODE','02','Packet 5 Work Days','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-19 13:42:44','000003','A','EE'),
('JGUN_CODE','03','Packet 6 Work Days','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-19 13:42:44','000003','A','EE'),
('JGUN_CODE','04','No Overtime','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-19 13:42:44','000003','A','EE'),
('JJIK_PART','1','Aktif','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('JJIK_PART','2','Skorsing/Punishment','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('JJIK_PART','3','Cuti (Pregnant/Sick)','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('JJIK_PART','4','Pindah Sekolah','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('JJIK_PART','5','Dikeluarkan','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('JJIK_PART','9','Lulus','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('JMOO_CODE','101','Mengatur, mengawasi dan manajemen','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:20','0860003','U','SJC'),
('JMOO_CODE','102','Adm., dokumen, audit','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:20','0860003','U','SJC'),
('JMOO_CODE','103','Guru Bantu','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:20','0860003','U','SJC'),
('JMOO_CODE','104','Staff Acct/finance , Kasir','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:20','0860003','U','SJC'),
('JMOO_CODE','105','Pusat Sumber Belajar, Media','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:20','0860003','U','SJC'),
('JMOO_CODE','106','Guru Pengawas','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:20','0860003','U','SJC'),
('JMOO_CODE','107','Cleaning service, office boy','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:20','0860003','U','SJC'),
('JMOO_CODE','108','Penanggung Jawab Bidang Studi','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:20','0860003','U','SJC'),
('JMOO_CODE','109','Korrdinator Guru','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:20','0860003','U','SJC'),
('JMOO_CODE','110','Operator Data Entry','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:20','0860003','U','SJC'),
('JNSX_IURN','01','SPP','01','4.1221.1',NULL,'1','1.142.10.03','01','SPP','2.13',1,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','02','POMG','01','4.1221.2',NULL,'1','1.142.10.03','01','POMG','2.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','03','PMB','01','4.1121.3',NULL,'1','1.142.10.01','03','PANGKAL','2.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','04','Adm. Pendidikan','01','4.1121.2',NULL,'1','1.142.10.02','04','KEG','2.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JMOO_CODE','111','Mekanik, elektrik, maintenance','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JMOO_CODE','112','Penanggung Jawab Kelas','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JMOO_CODE','113','Planning Pendidikan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JNSX_IURN','05','Infaq Masjid','01','4.185',NULL,'1','1.142.10.01','05','GEDUNG','2.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','06','Seragam','01','4.1121.1',NULL,'1','1.142.10.01','06','SRGAM','2.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','07','Daftar Ulang','01','4.1121.4',NULL,'1','1.142.10.02','07','JEMPUT','2.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KATG_SMTR','01','Ganjil',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KATG_SMTR','02','Genap',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JMOO_CODE','114','Gudang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JMOO_CODE','115','Pembina OSIS','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JMOO_CODE','116','Air, Kantin dan Fasilitas Lainnya','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JMOO_CODE','117','Keamanan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JMOO_CODE','118','Staff UKS','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JMOO_CODE','119','Public Relation,Penghubung Rekanan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JMOO_CODE','120','Supir','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('SMBR_IURN','01','Baru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('SMBR_IURN','02','Kelas Terdahulu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JMOO_CODE','799','Manajemen Yayasan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JMOO_CODE','899','Staff Operasional','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('JMOO_CODE','999','Operasional Lainnya','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 17:49:21','0860003','U','SJC'),
('KASX_CODE','01','Housing loan','a','',1,'','',NULL,NULL,NULL,0,0,'','2002-11-18 16:16:16','','U',''),
('KASX_CODE','02','Family education expenses','b','',2,'','',NULL,NULL,NULL,0,0,'','2002-11-18 16:16:16','','U',''),
('KASX_CODE','03','Hospital/medical expenses','c','',3,'','',NULL,NULL,NULL,0,0,'','2002-11-18 16:16:16','','U',''),
('KASX_CODE','04','Pilgrimmage','','',0,'','',NULL,NULL,NULL,0,0,'','2002-11-18 16:16:16','','U',''),
('LANG_CLS1','1','Excellent','a','',1,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('LANG_CLS1','2','Very good','b','',2,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('LANG_CLS1','3','Average','c','',3,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('LANG_CLS1','4','Sufficient','d','',4,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('LANG_CODE','01','English','a','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','02','Korean','b','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','03','Japanese','c','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','04','Chinese/Mandarin','d','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','05','German','e','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','06','Spanish','f','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','07','French','g','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','08','Portuguese','h','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','09','Arabic','i','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','10','Dutch','j','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','11','Russian','k','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','12','Italian','l','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','13','Javanish','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','14','bataknish','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LANG_CODE','99','Others','m','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 16:24:52','020002','A','PCESTER'),
('LEVL_CODE','100','President Director','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','110','Director','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','120','General Manager','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','210','Senior Manager','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','220','Manager','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','230','Assistant Manager','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','235','Senior Supervisor','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','240','Supervisor','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','310','Senior Staff','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','320','Coordinator','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','330','Staff','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','510','Junior Staff','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','611','Non Staff','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','612','SPG','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LEVL_CODE','613','STAFF NON JABATAN','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-15 14:28:51','020002','A','PCESTER'),
('LINE_CODE','001','1 Group','','',1,'','',NULL,NULL,NULL,0,0,'','2003-05-29 23:18:16','ADMIN','A','JASMINE'),
('LINE_CODE','002','2 Group','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 23:18:16','ADMIN','A','JASMINE'),
('LINE_CODE','003','3 Group','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 23:18:16','ADMIN','A','JASMINE'),
('LINE_CODE','004','4 Group','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 23:18:16','ADMIN','A','JASMINE'),
('LINE_CODE','005','Line 1','','',0,'','',NULL,NULL,NULL,0,0,'','2003-05-29 23:18:16','ADMIN','A','JASMINE'),
('LOAD_AREA','100','Jakarta Pusat','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','110','Jakarta Barat','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','120','Jakarta Selatan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','130','Jakarta Timur','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','140','Jakarta Utara','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','150','Tangerang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','160','Bogor','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','169','Cibinong','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','170','Bekasi','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','190','Jakarta','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','200','Medan Binjai Tebingtinggi','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','201','Medan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','206','Tebingtinggi','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','210','Tapanuli Utara','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','212','Kisaran','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','220','Tapanuli Selatan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','222','Sidikalang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','223','Balige','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','224','Tarutung','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','225','Sibolga','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','226','Pandan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','227','Padangsidempuan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','230','Aceh Utara','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','240','Aceh Selatan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','250','Padang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','251','Padang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','256','Painan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','260','50 Kota','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','270','Tanah Datar Solok Sinjunjung','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','280','Riau','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','290','Riau Kepulauan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','300','Palembang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','301','Palembang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','306','Kayuagung','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','310','Muaraenim','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','314','Lahat','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','315','Pagaralam','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','320','Baturaja','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','330','Bangka Belitung','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','332','Sungailiat','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','340','Lampung Tengah','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','350','Lampung Selatan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','351','Bandarlampung','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','355','Kalianda','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','360','Jambi','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','370','Batanghari','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','380','Bengkulu','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','390','Curup','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','400','Bandung','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','401','Bandung','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','406','Kabupaten Bandung','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','410','Karawang Purwakarta','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','413','Karawang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','420','Banten','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','422','Pandeglang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','430','Sukabumi Cianjur','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','440','Garut','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','441','Garut','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','450','Cirebon','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','452','Indramayu','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','455','Kuningan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','460','Ciamis Tasikmalaya','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','500','Semarang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','506','Ambarawa','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','510','Pekalongan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','511','Pekalongan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','512','Batang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','513','Kendal','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','520','Brebes Pemalang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','522','Brebes','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','523','Pemalang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','524','Slawi','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','530','Purwokerto','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','532','Cilacap','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','533','Purbalingga','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','534','Banjarnegara','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','540','Purworejo','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','541','Purworejo','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','543','Kebumen','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','550','Yogyakarta','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','551','Yogyakarta','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','555','Sleman','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','556','Wates','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','557','Bantul','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','560','Magelang Wonosobo','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','570','Solo Klaten','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','574','Klaten','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','580','Cepu Blora','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','582','Blora','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','590','Pati Kudus Jepara','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','600','Surabaya','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','610','Gresik Mojokerto','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','620','Bojonegoro Tuban','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','623','Tuban','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','630','Madiun Ponorogo','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','632','Ngawi','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','633','Magetan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','640','Kediri Nganjuk','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','650','Malang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','660','Blitar','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','670','Probolinggo','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','680','Jember Banyuwangi','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','690','Madura','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','700','Banjarmasin','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','710','Amuntai','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','720','Pulau Laut','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','730','Palangkaraya','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','740','Pangkalanbun Sampit','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','750','Samarinda','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','760','Balikpapan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','770','Tarakan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','780','Kalimantan Barat','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','790','Singkawang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','800','Denpasar','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','810','Singaraja','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','820','Negara','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','830','Lombok','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','840','Bima Dompu','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','841','Bima','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','850','Kupang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','860','Flores','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','870','Sumba','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','880','Dili Manatuto','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','886','Ds. Aiteas MANATUTO','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','890','Timor Timur','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','896','Liquica','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','900','Ujungpandang','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','910','Sulawesi Selatan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','920','Sulawesi Selatan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','930','Sulawesi Tenggara','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','940','Sulawesi Tengah','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','950','Sulawesi Utara','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','960','Gorontalo','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','970','Maluku','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','980','Irian Jaya','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOAD_AREA','990','Jayapura Merauke','','',0,'','',NULL,NULL,NULL,0,0,'','2002-09-18 18:06:01','','A','SJA'),
('LOCT_CODE','1','Jabotabek','','',0,'','',NULL,NULL,NULL,0,0,'','2003-06-10 18:36:03','ADMIN','A','HANBITX'),
('LOCT_CODE','2','Non Jabotabek','','',0,'','',NULL,NULL,NULL,0,0,'','2003-06-10 18:36:03','ADMIN','A','HANBITX'),
('MARY_PART','1','Belum Menikah','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-18 13:33:12','1950149','U','HANDONO'),
('MARY_PART','2','Menikah','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-18 13:33:12','1950149','U','HANDONO'),
('MMDD_PART','1','Month','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('MMDD_PART','2','Day','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('MNGT_SEQX','001','Harian I (Daily)','1','1',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 18:22:45','888888','A','DNA'),
('MNGT_SEQX','002','Harian II (Daily)','1','1',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 18:22:45','888888','A','DNA'),
('MNGT_SEQX','005','Salary (Monthly)','2','1',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 18:22:45','888888','A','DNA'),
('MNGT_SEQX','003','UMT I (Monthly)','2','2',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 18:22:45','888888','A','DNA'),
('MNGT_SEQX','004','UMT II (Monthly)','2','2',0,'','',NULL,NULL,NULL,0,0,'','2004-07-20 18:22:45','888888','A','DNA'),
('MULT_CODE','100','100-Indonesia','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-06 11:11:59','000008','A','COMPUTER'),
('MULT_CODE','200','200-English','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-06 11:11:59','000008','A','COMPUTER'),
('NTLY_CODE','BRN','Brunei','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('NTLY_CODE','CHN','China','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('NTLY_CODE','INA','Indonesia','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('NTLY_CODE','JPN','Japan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('NTLY_CODE','KOR','Korea','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('NTLY_CODE','MYS','Malaysia','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('NTLY_CODE','PHL','Philippines','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('NTLY_CODE','SGP','Singapore','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('NTLY_CODE','TWN','Tiawan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('NTLY_CODE','USA','USA','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_GRUP','01','Low risk drugs','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_GRUP','02','High risk drugs','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_GRUP','03','Supplements','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_GRUP','04','Instruments','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_GRUP','77','ht6fr','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_GRUP','99','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','001','Antibiotics','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','002','Analgetics','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','003','Antipiretics','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','004','Gastritics','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','005','Injection/Infuse','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','006','Anti hypertency','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','007','Anti inflammacy','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','008','Expectorant','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','009','Eye drugs','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','010','Anti allergic','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','011','Vitamins','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','012','KB Pills/Pregnant Women','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','013','First Aid (P3K)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','014','Anti-Uric Acid (Asam urat)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','015','Anti diarrhea','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','016','Tuberculosis Drugs','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','017','Dermatitics','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','018','Kidneys','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','019','Anti Bleeding','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_KIND','020','Other instruments','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_PART','01','Internal Use (Edible)','a','',1,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_PART','02','Injection','a','',2,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_PART','03','Infuse','a','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_PART','04','External Use','a','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_UNIT','01','Tablet','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_UNIT','02','Vial','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_UNIT','03','Tube','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_UNIT','04','Bottle','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_UNIT','05','Strip','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_UNIT','06','Pcs','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_UNIT','07','Liter','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('OBAT_UNIT','08','Kg','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PACL_PART','1','Paid / Calc','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-15 17:23:52','1950149','A','HANDONO'),
('PACL_PART','3','Unpaid / Calc','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-15 17:23:52','1950149','A','HANDONO'),
('PACL_PART','5','Unpaid / No Calc','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-15 17:23:52','1950149','A','HANDONO'),
('PAXY_PART','1','Daily','','',2,'','',NULL,NULL,NULL,0,0,'','2003-07-23 15:54:12','000036','A','INDRA'),
('PAXY_PART','2','Monthly','','',1,'','',NULL,NULL,NULL,0,0,'','2003-07-23 15:54:12','000036','A','INDRA'),
('PROV_CODE','101','DI Aceh','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','102','Sumatra Utara','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','103','Sumatra Barat','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','104','Riau','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','105','Jambi','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','106','Bengkulu','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','107','Sumatra Selatan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','108','Lampung','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','201','DKI Jakarta','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','202','Jawa Barat','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','203','Jawa Tengah','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','204','DI Yogyakarta','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','205','Jawa Timur','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','206','Banten','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','301','Bali','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','302','NTB','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROV_CODE','999','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','11001','Engineering: Mechanical','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','11002','Engineering: Electrical','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','11003','Engineering: Informatics','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','11004','Engineering: Civil','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','11005','Engineering: Industrial','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','11006','Engineering: Chemical','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','11009','Engineering: Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','12001','Applied Computer Sciences','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','13001','\"Medical, Nutrition, Health\"','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','14001','\"Math, Statistics\"','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','15001','\"Farming, Botany\"','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','19999','Other natural sciences','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','21001','Economics: Finance accounting','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','21002','Economics: Management','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','21003','Economics: Development study','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','22001','Social: Business Adm.','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','22002','Social: History','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','22003','Social: Law sciences','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','22004','\"Social: Sociology, Religion\"','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','22005','\"Social: Language, Literature\"','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','22006','Social: Education','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','23001','\"Physical, Sports\"','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','24001','\"Secretary, Public rel. management\"','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('PROX_CODE','29999','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('RELA_CODE','001','Self','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('RELA_CODE','002','Spouse (Husband/Wife)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('RELA_CODE','003','Child (Son/Daughter)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('RELA_CODE','004','Parent (Father/Mother)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('RELA_CODE','005','Sibling (Brother/Sister)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('RELA_CODE','006','Uncle/Aunt','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('RELA_CODE','007','Nephew/Niece','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('RELA_CODE','008','Grand parents','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('RELA_CODE','999','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('RELI_CODE','001','Islam','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-06 11:15:08','000008','A','COMPUTER'),
('RELI_CODE','002','Kristen Protestan','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-06 11:15:08','000008','A','COMPUTER'),
('RELI_CODE','003','Katolik','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-06 11:15:08','000008','A','COMPUTER'),
('RELI_CODE','004','Hindu','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-06 11:15:08','000008','A','COMPUTER'),
('RELI_CODE','005','Budha','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-06 11:15:08','000008','A','COMPUTER'),
('RELI_CODE','006','Kong Hu Cu','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-06 11:15:08','000008','A','COMPUTER'),
('RELI_CODE','999','Lainnya','','',0,'','',NULL,NULL,NULL,0,0,'','2003-08-06 11:15:08','000008','A','COMPUTER'),
('SCHO_CODE','001','No Formal Ed.','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_CODE','002','SD (6/Grade)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_CODE','003','SLTP (3/Jr High)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_CODE','004','SLTA (3/Sr High)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_CODE','005','D1 (1/Diploma)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_CODE','006','D2 (2/Diploma)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_CODE','007','D3 (3/Diploma)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_CODE','008','S1 (4/Undergrad)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_CODE','009','S2 (Masters)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_CODE','010','S3 (Doctors)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_CODE','999','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_LAST','1','Graduated','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_LAST','2','Incomplete','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_LAST','3','Studying (in progress)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_LAST','4','Without Thesis','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SCHO_LAST','9','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SEXX_PART','1','Laki-Laki','','',0,'','',NULL,NULL,NULL,0,0,'','2002-11-30 10:24:20','960020043','A','DIAN'),
('SEXX_PART','2','Perempuan','','',0,'','',NULL,NULL,NULL,0,0,'','2002-11-30 10:24:20','960020043','A','DIAN'),
('SGBL_CODE','1','Award','a','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SGBL_CODE','2','Warning','b','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SGBL_CODE','3','First memorandum','c','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SGBL_CODE','4','Second memorandum','d','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SGBL_CODE','5','Final notice','e','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SGBL_CODE','6','sp4','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SGBL_CODE','9','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SGBL_PART','1','Reward','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-19 14:57:57','000003','A','EE'),
('SGBL_PART','2','Punishment','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-19 14:57:57','000003','A','EE'),
('SHFT_PART','1','YES','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-13 09:22:10','1950149','U','HANDONO'),
('SHFT_PART','2','NO','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-13 09:22:10','1950149','U','HANDONO'),
('SLRY_PART','1','Add (+)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SLRY_PART','2','Perc (%)','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SPSI_PART','1','Member','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('SPSI_PART','2','Non-Member','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_PART','01','Attend to Leave','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_PART','02','Leave to Attend','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_PART','03','Attend to Absence','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_PART','04','Away to Leave','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_PART','05','Away to Attend','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_PART','06','Return to Leave','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_PART','07','Return to Attend','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('STEP_CODE','01','1','','',1,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:25','000036','A','INDRA'),
('STEP_CODE','02','2','','',2,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:25','000036','A','INDRA'),
('STEP_CODE','03','3','','',3,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:25','000036','A','INDRA'),
('STEP_CODE','04','4','','',4,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:25','000036','A','INDRA'),
('STEP_CODE','05','5','','',5,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:25','000036','A','INDRA'),
('STEP_CODE','99','No Class','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-21 11:40:25','000036','A','INDRA'),
('TERM_IDXX','0','00 - Terminal 0','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','1','01 - Terminal 1','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','2','02 - Terminal 2','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','3','03 - Terminal 3','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','4','04 - Terminal 4','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','5','05 - Terminal 5','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','6','06 - Terminal 6','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','7','07 - Terminal 7','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','8','08 - Terminal 8','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','9','09 - Terminal 9','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','10','10 - Terminal 10','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','11','11 - Terminal 11','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_IDXX','99','99 - Manual Trans','','',0,'','',NULL,NULL,NULL,0,0,'','2004-05-11 15:26:37','888888','A','DNA'),
('TERM_PART','1','3rd Warning letters','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('TERM_PART','2','6-day Absence','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('TERM_PART','9','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('TESA_PART','1','Resigned at own request','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-31 10:10:09','000004','A','EE'),
('TESA_PART','2','Resigned without respect','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-31 10:10:09','000004','A','EE'),
('TESA_PART','3','Resigned with respect/PHK','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-31 10:10:09','000004','A','EE'),
('TESA_PART','4','Retired','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-31 10:10:09','000004','A','EE'),
('TESA_PART','5','Resigned of death','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-31 10:10:09','000004','A','EE'),
('TESA_PART','6','Others','','',0,'','',NULL,NULL,NULL,0,0,'','2003-07-31 10:10:09','000004','A','EE'),
('TESA_PART','7','Move Company','','',1,'','',NULL,NULL,NULL,0,0,'','2003-07-31 10:10:09','000004','A','EE'),
('UNIV_CODE','11001','Ak. Borobudur','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','11002','Ak. Gizi Andalusia','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','11003','Ak. Jayabaya','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','11004','Ak. Manaj. Informatika Komp.','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','11005','Ak. Maritim Indonesia','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','11006','Ak. Perindustrian Yogya','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','11007','Lembaga Pend. Sekr. Asasi','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','11008','LIPPI','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','11009','SPK Andalusia','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','11010','STMIK Jakarta STI&K','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','12001','SPK Cianjur','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','21001','ST Keuangan Denpasar','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','22001','STAN','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','31001','Inst. Ilmu Sosial Politik','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','32001','IKIP Semarang','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','32002','Inst. Tek. 10 Nopember','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:36','030134','A','PCERWIN-HR'),
('UNIV_CODE','41001','UKI','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41002','Univ. Atma Jaya','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41003','Univ. Darma Persada','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41004','Univ. Darul Ulum','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41005','Univ. Gunadarma','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41006','Univ. HKBP Nommensen','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41007','Univ. Ibnu Chaldun','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41008','Univ. Islam Bandung','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41009','Univ. Islam Indonesia','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41010','Univ. Islam Nusantara','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41011','Univ. Kristen Satya Wacana','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41012','Univ. Nasional','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41013','Univ. Pakuan','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41014','Univ. Pancasila','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41015','Univ. Parahyangan','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41016','Univ. Pasundan','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41017','Univ. Tarumanegara','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','41018','Univ. Trisakti','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42001','Univ. Gadjah Mada','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42002','Univ. Assyafiiyah','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42003','Univ. Airlangga','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42004','Univ. Cendrawasih','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42005','Univ. Diponegoro','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42006','Univ. Indonesia','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42007','Univ. Jambi','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42008','Univ. Jember','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42009','Univ. Jend. Sudirman','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42010','Univ. Sam Ratulangi','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','42011','STMIK BUDI LUHUR','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','91999','Other private Univ.','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('UNIV_CODE','92999','Other state Univ.','','',0,'','',NULL,NULL,NULL,0,0,'','2004-07-07 15:02:37','030134','A','PCERWIN-HR'),
('USRX_CTRL','01','1','','',0,'','',NULL,NULL,NULL,0,0,'','2004-03-11 13:50:02','888888','A','DNA'),
('USRX_CTRL','02','2','','',0,'','',NULL,NULL,NULL,0,0,'','2004-03-11 13:50:02','888888','A','DNA'),
('USRX_LEVL','01','1','','',0,'','',NULL,NULL,NULL,0,0,'','2004-03-10 13:46:47','888888','A','DNA'),
('USRX_LEVL','02','2','','',0,'','',NULL,NULL,NULL,0,0,'','2004-03-10 13:46:47','888888','A','DNA'),
('VCAT_LIST','1','Validity start','','',0,'','',NULL,NULL,NULL,0,0,'','2002-11-18 16:16:03','','U',''),
('VCAT_LIST','2','Expiration','','',0,'','',NULL,NULL,NULL,0,0,'','2002-11-18 16:16:03','','U',''),
('VCTN_PART','1','Paid','a','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('VCTN_PART','2','Not-paid','b','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('BIDX_PRST','07','MATEMATIKA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('BIDX_PRST','04','IPA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('BIDX_PRST','05','IPS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('BIDX_PRST','02','Bhs. Indonesia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('BIDX_PRST','03','Bhs. Inggris',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('BIDX_PRST','09','Sains',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('BIDX_PRST','06','Komputer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('BIDX_PRST','08','Olah Raga',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('BIDX_PRST','01','Agama',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('STAT_FMLY','01','Anak Kandung',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('STAT_FMLY','02','Anak Angkat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('STAT_FMLY','03','Keponakan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('STAT_FMLY','04','Cucu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('WALI_SISW','5','Lainnya',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('MARY_PART','3','Janda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('MARY_PART','4','Duda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4301','Guru Asisten Kelas 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4302','Guru Asisten Kelas 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4303','Guru Asisten Kelas 3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4201','Guru Bidang Studi Bhs. Inggris','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4202','Guru Bidang Studi Komputer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4203','Guru Bidang Studi Olah Raga',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4204','Guru Bidang Studi PAI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4205','Guru Bidang Studi Penjaskes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4206','Guru Bidang Studi Art',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4207','Guru Bidang Studi Matematika',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4208','Guru Bidang Studi Sains',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4209','Guru Tahfizh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JCHK_CODE','4210','Guru Bhs. Arab',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('SMBR_IURN','03','Data Aktif',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','08','Jemputan','01','4.182',NULL,'1','1.171.07','08','','2.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_MUAT','01','Mata pelajaran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_MUAT','02','Muatan Lokal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_MUAT','03','Pengembangan Diri',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('CURR_MNYX','IDR','Rupiah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('CURR_MNYX','USD','Dollar USA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KATG_ACCX','A','AKTIVA','D','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KATG_ACCX','B','BIAYA','D','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KATG_ACCX','K','KEWAJIBAN','K','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KATG_ACCX','M','MODAL','K','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KATG_ACCX','P','PENDAPATAN','K','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:02','','',''),
('TYPE_ACCX','01','Judul','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:03','','',''),
('TYPE_ACCX','02','Transaksi','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:04','','',''),
('TYPE_BYRX','01','Tunai','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:05','','',''),
('TYPE_BYRX','02','Overbook','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:06','','',''),
('TYPE_JURN','CE','CLOSING ENTRY','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:07','','',''),
('TYPE_JURN','JK','JURNAL KOREKSI','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:08','','',''),
('TYPE_JURN','JU','JURNAL UMUM','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:09','','',''),
('YUMU_PART','1','Normal','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('YUMU_PART','2','Abnormal','','',0,'','',NULL,NULL,NULL,0,0,'','2002-07-12 14:16:02','123456789','A','sjc'),
('TYPE_WORK','001','Lokal',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2004-09-14 12:09:10','888888','A','DNA'),
('TYPE_WORK','002','Expatriat',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2004-09-14 12:09:10','888888','A','DNA'),
('GRPX_WORK','001','Harian',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2004-09-14 12:09:10','888888','A','DNA'),
('GRPX_WORK','002','Bulanan',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2004-09-14 12:09:10','888888','A','DNA'),
('LOCT_OFFX','0001','Head Office',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('LOCT_OFFX','0002','Branch',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('GUNT_PART','003','Leave',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('GUNT_PART','004','Away',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('GUNT_PART','005','Return',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('GUNT_PART','999','Not Use',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_HAND','4','Departemen',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('STAT_HAND','5','Attend & Leave',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,'2002-07-12 14:16:02','123456789','A','sjc'),
('TAHP_BAYAR','01','I',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('TAHP_BAYAR','02','II',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('ANGS_PNJM','01','UM Jamsostek',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('ANGS_PNJM','02','Bank DKI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('ANGS_PNJM','03','Bank BTN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('EMPL_PART','4','Pegawai Tetap','  ',' ',0,' ',' ',NULL,NULL,NULL,0,0,NULL,'2003-07-23 15:47:06','000036','A','INDRA'),
('STAT_KOMP','A','GreatTeacher',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('STAT_KOMP','B','Excellent Teacher',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('STAT_KOMP','C','Good Teacher',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('STAT_KOMP','D','Medium Teacher',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('CUTI_XXXX','1','NIKAH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('CUTI_XXXX','2','MELAHIRKAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('CUTI_XXXX','3','SAKIT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('CUTI_XXXX','4','IBADAH HAJI/UMROH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('CUTI_XXXX','5','TETAP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','01','Kelas 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','02','Kelas 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','03','Kelas 3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','04','Kelas 4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','05','Kelas 5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','06','Kelas 6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('WALI_SISW','1','Orang Tua',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('WALI_SISW','2','Orang Tua Asuh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('WALI_SISW','3','Paman/Bibi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('WALI_SISW','4','Kakek/Nenek',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('LANG_CODE','98','Indonesia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('CITY_AREA','0102','Kab. Bekasi ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0103','Kab. Purwakarta ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0106','Kab. Karawang   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0108','Kab. Bogor   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0109','Kab. Sukabumi  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0110','Kab. Cianjur  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0111','Kab. Bandung ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0112','Kab. Sumedang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0113','Kab. Tasikmalaya  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0114','Kab. Garut  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0115','Kab. Ciamis ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0116','Kab. Cirebon','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0117','Kab. Kuningan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0118','Kab. Indramayu   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0119','Kab. Majalengka  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0121','Kab. Subang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0180','Kota Banjar   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0188','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0191','Kota Bandung ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0192','Kota Bogor   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0193','Kota Sukabumi  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0194','Kota Cirebon','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0195','Kota Tasikmalaya','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0196','Kota Cimahi  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0197','Kota Depok ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0198','Kota Bekasi ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0201','Kab. Lebak   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0202','Kab. Pandeglang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0203','Kab. Serang','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0204','Kab. Tangerang   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0288','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0291','Kota Cilegon  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0292','Kota Tangerang   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0391','Wil. Kota Jakarta Pusat ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0392','Wil. Kota Jakarta Utara  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0393','Wil. Kota Jakarta Barat ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0394','Wil. Kota Jakarta Selatan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0395','Wil. Kota Jakarta Timur  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0501','Kab. Bantul   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0502','Kab. Sleman  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0503','Kab. Gunung Kidul    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0504','Kab. Kulon Progo','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0588','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0591','Kota Yogyakarta  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0901','Kab. Semarang    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0902','Kab. Kendal ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0903','Kab. Demak ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0904','Kab. Grobogan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0905','Kab. Pekalongan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0906','Kab. Tegal  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0907','Kab. Brebes ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0908','Kab. Pati','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0909','Kab. Kudus   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0910','Kab. Pemalang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0911','Kab. Jepara   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0912','Kab. Rembang    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0913','Kab. Blora  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0914','Kab. Banyumas   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0915','Kab. Cilacap  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0916','Kab. Purbalingga  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0917','Kab. Banjarnegara ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0918','Kab. Magelang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0919','Kab. Temanggung ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0920','Kab. Wonosobo   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0921','Kab. Purworejo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0922','Kab. Kebumen    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0923','Kab. Klaten ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0924','Kab. Boyolali ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0925','Kab. Sragen ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0926','Kab. Sukoharjo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0927','Kab. Karanganyar','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0928','Kab. Wonogiri    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0929','Kab. Batang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0988','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0991','Kota Semarang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0992','Kota Salatiga','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0993','Kota Pekalongan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0994','Kota Tegal  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0995','Kota Magelang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0996','Kota Surakarta    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0997','Kotif Klaten  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0998','Kotif Cilacap  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','0999','Kotif Purwokerto','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1201','Kab. Gresik   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1202','Kab. Sidoarjo','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1203','Kab. Mojokerto   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1204','Kab. Jombang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1205','Kab. Sampang    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1206','Kab. Pamekasan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1207','Kab. Sumenep    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1208','Kab. Bangkalan   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1209','Kab. Bondowoso  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1211','Kab. Banyuwangi','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1212','Kab. Jember ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1213','Kab. Malang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1214','Kab. Pasuruan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1215','Kab. Probolinggo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1216','Kab. Lumajang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1217','Kab. Kediri   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1218','Kab. Nganjuk ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1219','Kab. Tulungagung ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1220','Kab. Trenggalek ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1221','Kab. Blitar  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1222','Kab. Madiun  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1223','Kab. Ngawi ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1224','Kab. Magetan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1225','Kab. Ponorogo    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1226','Kab. Pacitan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1227','Kab. Bojonegoro  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1228','Kab. Tuban   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1229','Kab. Lamongan   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1230','Kab. Situbondo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1271','Kota Batu ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1288','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1291','Kota Surabaya    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1292','Kota Mojokerto   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1293','Kota Malang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1294','Kota Pasuruan    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1295','Kota Probolinggo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1296','Kota Blitar  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1297','Kota Kediri   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1298','Kota Madiun  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','1299','Kota Jember ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','2301','Kab. Bengkulu Selatan','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','2302','Kab. Bengkulu Utara ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','2303','Kab. Rejang Lebong   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','2388','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','2391','Kota Bengkulu    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3101','Kab. Batanghari   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3104','Kab. Sarolangun   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3105','Kab. Kerinci  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3106','Kab. Muaro Jambi  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3107','Kab. Tanjung Jabung Barat ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3108','Kab. Tanjung Jabung Timur ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3109','Kab. Tebo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3110','Kab. Muara Bungo ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3111','Kab. Merangin   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3188','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3191','Kota Jambi   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3201','Kab. Aceh Besar ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3202','Kab. Pidie    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3203','Kab. Aceh Utara ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3204','Kab. Aceh Timur  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3205','Kab. Aceh Selatan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3206','Kab. Aceh Barat ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3207','Kab. Aceh Tengah ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3208','Kab. Aceh Tenggara   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3209','Kab. Aceh Singkil   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3210','Kab. Aceh Jeumpa/Bireuen ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3211','Kab. Aceh Tamiang   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3212','Kab. Gayo Luwes  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3213','Kab. Aceh Barat Daya  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3214','Kab. Aceh Jaya   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3215','Kab. Nagan Raya','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3216','Kab. Aceh Simeuleu  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3288','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3291','Kota Banda Aceh  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3292','Kota Sabang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3293','Kota Lhokseumawe  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3294','Kota Langsa ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3295','Kota Simeulue ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3301','Kab. Deli Serdang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3302','Kab. Langkat','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3303','Kab. Karo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3304','Kab. Simalungun','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3305','Kab. Labuhan Batu    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3306','Kab. Asahan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3307','Kab. Dairi    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3308','Kab. Tapanuli Utara   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3309','Kab. Tapanuli Tengah','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3310','Kab. Tapanuli Selatan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3311','Kab. Nias ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3312','Kota Rantau Prapat','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3313','Kab. Toba Samosir ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3314','Kab. Mandailing Natal ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3388','Kab/Kota Lainnya','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3391','Kota Tebing Tinggi  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3392','Kota Binjai   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3393','Kota Pematang Siantar','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3394','Kota Tanjung Balai    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3395','Kota Sibolga','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3396','Kota Medan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3398','Kota Kisaran','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3399','Kota Padang Sidempuan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3401','Kab. Agam   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3402','Kab. Pasaman ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3403','Kab. Limapuluh Koto  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3404','Kab. Solok  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3405','Kab. Padang Pariaman','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3406','Kab. Pesisir Selatan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3407','Kab. Tanah Datar  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3408','Kab. Sawahlunto/Sijunjung','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3409','Kab. Kepulauan Mentawai ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3488','Kab/Kota Lainnya','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3491','Kota Bukittinggi ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3492','Kota Padang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3493','Kota Sawahlunto ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3494','Kota Padang Panjang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3495','Kota Solok  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3496','Kota Payakumbuh ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3497','Kota Pariaman    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3501','Kab. Kampar  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3502','Kab. Bengkalis  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3503','Kab. Kepulauan Riau','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3504','Kab. Indragiri Hulu    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3505','Kab. Indragiri Hilir ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3506','Kab. Karimun  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3507','Kab. Natuna ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3508','Kab. Rokan Hulu','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3509','Kab. Rokan Hilir ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3510','Kab. Pelalawan   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3511','Kab. Siak ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3512','Kab. Kuantan Singingi    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3588','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3591','Kota Pekanbaru   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3592','Kota Dumai ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3593','Kota Tanjungpinang   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3594','Kota Batam ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3606','Kab. Musi Banyuasin ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3607','Kab. Ogan Komering Ulu ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3608','Kab. Lematang Ilir Ogan Tengah (Muara En','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3609','Kab. Lahat   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3610','Kab. Musi Rawas  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3611','Kab. Ogan Komering Ilir   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3612','Kab. Pangkalan Balai ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3688','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3691','Kota Palembang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3693','Kota Lubuklinggau    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3694','Kota Prabumulih ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3695','Kota Baturaja','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3697','Kota Pagar Alam ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3701','Kab. Bangka  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3702','Kab. Belitung','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3788','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3791','Kota Pangkal Pinang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3901','Kab. Lampung Selatan','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3902','Kab. Lampung Tengah ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3903','Kab. Lampung Utara ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3904','Kab. Lampung Barat   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3905','Kab. Tulang Bawang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3906','Kab. Tanggamus ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3907','Kab. Lampung Timur  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3908','Kab. Way Kanan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3988','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3991','Kota Bandar Lampung','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','3992','Kota Metro ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5101','Kab. Banjar ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5102','Kab. Tanah Laut ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5103','Kab. Tapin  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5104','Kab. Hulu Sungai Selatan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5105','Kab. Hulu Sungai Tengah ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5106','Kab. Hulu Sungai Utara    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5107','Kab. Barito Kuala','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5108','Kab. Kota Baru  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5109','Kab. Tabalong ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5110','Kab.Tanah Bumbu.','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5111','Kab. Balangan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5188','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5191','Kota Banjarmasin','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5192','Kota Banjarbaru ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5301','Kab. Pontianak  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5302','Kab. Sambas  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5303','Kab. Ketapang    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5304','Kab. Sanggau ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5305','Kab. Sintang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5306','Kab. Kapuas Hulu ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5307','Kab. Bengkayang    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5308','Kab. Landak ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5388','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5391','Kota Pontianak  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5392','Kota Singkawang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5401','Kab. Kutai Kartanegara ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5402','Kab. Berau   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5403','Kab. Pasir ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5404','Kab. Bulungan    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5405','Kab. Kutai Barat','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5406','Kab. Kutai Timur  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5407','Kab. Bulungan Selatan','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5408','Kab. Bulungan Utara   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5409','Kab. Nunukan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5410','Kab. Malinau ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5411','Kab. Penajam Paser Utara  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5488','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5491','Kota Samarinda   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5492','Kota Balikpapan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5493','Kota Tarakan','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5494','Kota Bontang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5801','Kab. Kapuas  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5802','Kab. Kotawaringin Barat   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5803','Kab. Kotawaringin Timur  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5804','Kab. Murung Raya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5805','Kab. Barito Timur','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5806','Kab. Barito Selatan    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5807','Kab. Gunung Mas ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5808','Kab. Barito Utara  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5809','Kab. Pulang Pisau ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5810','Kab. Seruyan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5811','Kab. Katingan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5812','Kab. Sukamara    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5813','Kab. Lamandau  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5888','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','5892','Kota Palangkaraya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6001','Kab. Donggala    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6002','Kab. Poso    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6003','Kab. Parimo/Banggai ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6004','Kab. Toli-Toli ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6005','Kab.Banggai Kepulauan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6006','Kab. Morowali  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6007','Kab. Buol ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6088','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6091','Kota Palu ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6101','Kab. Pinrang  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6102','Kab. Gowa   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6103','Kab. Wajo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6104','Kab. Mamuju','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6105','Kab. Bone    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6106','Kab. Tana Toraja  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6107','Kab. Maros   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6108','Kab. Majene  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6109','Kab. Luwu   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6110','Kab. Sinjai  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6111','Kab. Bulukumba ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6112','Kab. Bantaeng    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6113','Kab. Jeneponto  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6114','Kab. Selayar  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6115','Kab. Takalar  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6116','Kab. Barru  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6117','Kab. Sidenreng Rappang   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6118','Kab. Pangkajene Kepulauan    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6119','Kab. Watansoppeng  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6120','Kab. Polewali    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6121','Kab. Enrekang    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6122','Kab. Luwu Selatan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6123','Kab. Mamasa ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6124','Kab. Luwu Utara','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6188','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6191','Kota Makassar','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6192','Kota Pare-Pare    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6193','Kota Palopo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6194','Kota Watampone ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6202','Kab. Minahasa    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6203','Kab. Bolaang Mongondow','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6204','Kab. Sangihe','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6205','Kab. kepulauan Talaud ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6206','ab. Minahasa Selatan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6288','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6291','Kota Menado','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6293','Kota Bitung ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6294','Kota. Tomohon   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6301','Kab. Gorontalo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6302','Kab. Bualemo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6303','Kab. Bonebolango','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6304','Kab. Pohuwato    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6388','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6391','Kota Gorontalo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6901','Kab. Buton   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6902','Kab. Kendari','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6903','Kab. Muna  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6904','Kab. Kolaka ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6988','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6990','Kota Bau-Bau ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','6991','Kota Kendari','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7101','Kab. Lombok Barat  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7102','Kab. Lombok Tengah  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7103','Kab. Lombok Timur   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7104','Kab. Sumbawa  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7105','Kab. Bima  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7106','Kab. Dompu  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7188','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7191','Kota Mataram ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7192','Kota. Bima  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7201','Kab. Buleleng ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7202','Kab. Jembrana    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7203','Kab. Tabanan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7204','Kab. Badung','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7205','Kab. Gianyar','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7206','Kab. Klungkung ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7207','Kab. Bangli ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7208','Kab. Karangasem','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7288','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7291','Kota Denpasar    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7401','Kab. Kupang','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7402','Kab. Timor-Tengah Selatan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7403','Kab. Timor-Tengah Utara ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7404','Kab. Belu    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7405','Kab. Alor ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7406','Kab. Flores Timur ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7407','Kab. Sikka  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7408','Kab. Ende    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7409','Kab. Ngada   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7410','Kab. Manggarai   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7411','Kab. Sumba Timur ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7412','Kab. Sumba Barat','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7413','Kab. Lembata','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7414','Kab. Rote ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7488','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','7491','Kota Kupang','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8101','Kab. Maluku Tengah ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8102','Kab. Maluku Tenggara ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8103','Kab. Maluku Tenggara Barat   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8104','Kab Buru.','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8188','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8191','Kota Ambon  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8201','Kab. Jayapura ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8202','Kab. Biak Numfor ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8204','Kab. Sorong ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8205','Kab. Fak-Fak','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8209','Kab. Manokwari ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8210','Kab. Yapen-Waropen  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8211','Kab. Merauke ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8212','Kab. Paniai   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8213','Kab. Jayawijaya   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8214','Kab. Nabire   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8215','Kab. Mimika  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8216','Kab. Puncak Jaya  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8217','Kab. Sarmi  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8218','Kab. Keerom ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8219','Kab. Sorong Selatan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8220','Kab. Raja Ampat ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8221','Kab. Pegunungan Bintang ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8222','Kab. Yahukimo  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8223','Kab. Tolikara ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8224','Kab. Waropen.','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8225','Kab. Kaimana.','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8226','Kab. Boven Digoel ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8227','Kab. Mappi ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8228','Kab. Asmat ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8229','Kab. Teluk Bintuni ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8230','Kab. Teluk Wondama','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8288','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8291','Kota Jayapura ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8292','Kota Sorong ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8301','Kab. Maluku Utara   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8302','Kab. Halmahera Tengah   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8388','Kab./Kota Lainnya ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('CITY_AREA','8390','Kota Ternate ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','0100','Jawa Barat ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','0200','Banten  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','0300','DKI Jakarta ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','0500','D.I Yogyakarta ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','0900','Jawa Tengah ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','1200','Jawa Timur  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','2300','Bengkulu  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','3100','Jambi   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','3200','NAD ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','3300','Sumatera Utara ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','3400','Sumatera Barat ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','3500','Riau    ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','3600','Sumatera Selatan ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','3700','Kep. Bangka Belitung','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','3900','Lampung  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','5100','Kalimantan Selatan  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','5300','Kalimantan Barat ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','5400','Kalimantan Timur   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','5800','Kalimantan Tengah  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','6000','Sulawesi Tengah.','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','6100','Sulawesi Selatan','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','6200','Sulawesi Utara  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','6300','Gorontalo ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','6900','Sulawesi Tenggara ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','7100','Nusa Tenggara Barat ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','7200','Bali','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','7400','Nusa Tenggara Timur ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','8100','Maluku','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','8200','Papua  ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','8300','Maluku Utara   ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('PROV_AREA','9900','LUAR INDONESIA ','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('KATG_JOBX','01','PNS','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('KATG_JOBX','02','Swasta','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('KATG_JOBX','03','Wiraswasta','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('KATG_JOBX','04','Petani','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('KATG_JOBX','05','Nelayan','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('KATG_JOBX','06','Pedagang','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('KATG_JOBX','07','Lain-lain','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00','','',''),
('TYPE_JURN','KK','KAS KELUAR','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:10','','',''),
('TYPE_JURN','KM','KAS MASUK','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:11','','',''),
('TYPE_SIMP','01','Tabungan Wadiah','101','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:12','','',''),
('TYPE_SIMP','02','Tabungan Mudharabah','101','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:13',NULL,NULL,NULL),
('TRNX_SIMP','10','Setor Tunai','K','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:14',NULL,NULL,NULL),
('TRNX_SIMP','20','Tarik Tunai','D','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:15',NULL,NULL,NULL),
('TRNX_SIMP','30','Pemindahbukuan','D','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:16',NULL,NULL,NULL),
('TRNX_SIMP','40','Koreksi','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:17',NULL,NULL,NULL),
('TRNX_SIMP','50','Bagi Hasil','K','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:18',NULL,NULL,NULL),
('TRNX_SIMP','60','Biaya Administrasi','D','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:19',NULL,NULL,NULL),
('TRNX_SIMP','70','Pemindahan Saldo','','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:20',NULL,NULL,NULL),
('TRNX_SIMP','80','Zakat','D','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:21',NULL,NULL,NULL),
('TRNX_SIMP','90','Pajak','D','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:22',NULL,NULL,NULL),
('TRNX_SIMP','99','Penutupan','D','',NULL,'','',NULL,NULL,NULL,NULL,NULL,'','2002-07-12 14:16:23',NULL,NULL,NULL),
('IURN_ZISX','98','Infaq dan Shodaqoh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('IURN_ZISX','99','Zakat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_ZISX','13','Infaq dan Shodaqoh',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_ZISX','14','Zakat',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KASX_TUJX','01','Yayasan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KASX_TUJX','02','Sekolah',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('AKAS_TLRX','99','1.113',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','07','Kelas 7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','08','Kelas 8',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','09','Kelas 9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','10','Kelas 10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','09','Menu','01','4.1221.3',NULL,'1','1.142.10.03','01','BUKU1','2.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','10','Ekstrakurikuler','01','4.1221.4',NULL,'1','1.142.10.03','01','BUKU2','2.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','11','Kelas 11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','12','Kelas 12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','00','TK & PlayGroup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('SISW_PART','1','Aktif','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('SISW_PART','2','Skorsing/Punishment','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('SISW_PART','3','Cuti (Sick)','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('SISW_PART','4','Pindah Sekolah','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('SISW_PART','5','Dikeluarkan','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('SISW_PART','9','Lulus','','',0,'','',NULL,NULL,NULL,0,0,'','2004-11-03 14:20:40','010211','A','PCDEV'),
('JNSX_IURN','11','Infaq dan Shodaqoh','01','4.1221.5',NULL,'1','3.11','11','','3.11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','12','Zakat','01','4.1221.5',NULL,'1','3.11','12','','3.11',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','13','DDC','01','4.20',NULL,'1','1.142.10.03','01','','2.13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KTGX_PSBX','01','Umum',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KTGX_PSBX','02','Anak Guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KTGX_PSBX','03','Alumni',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_GELX','01','Gelombang 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_GELX','02','Gelombang 2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','14','Dispensasi SPP','01','4.19.0801',NULL,'1','4.19.0801','14','','4.19.0801',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','16','Dispensasi Adm. Pendidikan','01','4.19.0803',NULL,'1','4.19.0803','16','','4.19.0803',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('JNSX_IURN','17','Formulir Daftar','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),
('BLNX_XXXX','01','JANUARI','JAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','02','FEBRUARI','FEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','03','MARET','MAR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','04','APRIL','APR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','05','MEI','MEI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','06','JUNI','JUN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','07','JULI','JUL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','08','AGUSTUS','AGS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','09','SEPTEMBER','SEP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','10','OKTOBER','OKT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','11','NOVEMBER','NOV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('BLNX_XXXX','12','DESEMBER','DES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-07-12 14:16:02',NULL,NULL,NULL),
('KODE_BLNX','01','I','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','02','II','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','03','III','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','04','IV','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','05','V','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','06','VI','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','07','VII','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','08','VIII','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','09','IX','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','10','X','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','11','XI','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_BLNX','12','XII','','',NULL,'','','','','',NULL,NULL,'','2002-07-12 14:16:02','','',''),
('KODE_LEVL','13','TES',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','14','88',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','1','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','16','KELAS 10000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','17','KELAS ABCD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('KODE_LEVL','18','Kelas 90',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

=======
>>>>>>> ff206b72a2808c37fb559573cbbc2ea23f1b4b34
/*Table structure for table `unit_sekolah` */

DROP TABLE IF EXISTS `unit_sekolah`;

CREATE TABLE `unit_sekolah` (
<<<<<<< HEAD
  `kode_unit` VARCHAR(4) NOT NULL,
  `nama_unit` VARCHAR(50) DEFAULT NULL,
  `kode_lokasi` VARCHAR(3) DEFAULT NULL,
  `keterangan` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`kode_unit`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1;
=======
  `kode_unit` varchar(4) NOT NULL,
  `nama_unit` varchar(50) DEFAULT NULL,
  `kode_lokasi` varchar(3) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode_unit`),
  KEY `kode_unit` (`kode_unit`),
  KEY `kode_unit_2` (`kode_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> ff206b72a2808c37fb559573cbbc2ea23f1b4b34

/*Data for the table `unit_sekolah` */

insert  into `unit_sekolah`(`kode_unit`,`nama_unit`,`kode_lokasi`,`keterangan`) values 
('003','SD RIANG GEMBIRA','3','sekolah luar biasa');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
