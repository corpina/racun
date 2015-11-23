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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`database_sekolah` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `database_sekolah`;

/*Table structure for table `jenis_iuran` */

DROP TABLE IF EXISTS `jenis_iuran`;

CREATE TABLE `jenis_iuran` (
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

/*Data for the table `jenis_iuran` */

insert  into `jenis_iuran`(`kode_unit`,`type_iuran`,`kode_jenis_iuran`,`nama_iuran`,`kode_tujuan`,`kode_pendapatan`,`kode_piutang`,`kode_iuran`,`kode_diterima`,`delete_status`,`created_date`) values 
('003','JNSX_IURN','01','SPP Bulanan','1','4.111.2','4.111.2',2,'4.111.2','','0000-00-00 00:00:00');

/*Table structure for table `lokasi_sekolah` */

DROP TABLE IF EXISTS `lokasi_sekolah`;

CREATE TABLE `lokasi_sekolah` (
  `kode_lokasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lokasi` varchar(50) DEFAULT NULL,
  `alamat_lokasi` varchar(100) DEFAULT NULL,
  `telepon_lokasi` varchar(25) DEFAULT NULL,
  `fax_lokasi` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kode_lokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
  `kode_thn_ajar` varchar(15) NOT NULL DEFAULT '',
  `thn_ajar` varchar(9) NOT NULL DEFAULT '',
  `ket_thn_ajar` varchar(10) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `status_aktif` varchar(1) DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `updated_by` varchar(15) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`kode_thn_ajar`,`thn_ajar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tahun_ajar` */

insert  into `tahun_ajar`(`kode_thn_ajar`,`thn_ajar`,`ket_thn_ajar`,`tgl_mulai`,`tgl_akhir`,`status_aktif`,`created_by`,`updated_by`,`created_date`,`update_date`) values 
('01','1516','2015/2016','2015-07-01','2016-06-30',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `tb_coaxxx` */

DROP TABLE IF EXISTS `tb_coaxxx`;

CREATE TABLE `tb_coaxxx` (
  `ACCT_CODE` varchar(20) NOT NULL,
  `ACCT_NAMA` varchar(100) NOT NULL,
  `STAT_ACTV` varchar(1) DEFAULT NULL,
  `ACCT_PARN` varchar(20) DEFAULT NULL,
  `ACCT_KATG` varchar(10) DEFAULT NULL,
  `ACCT_TYPE` varchar(2) DEFAULT NULL,
  `ACCT_CURR` varchar(3) DEFAULT NULL,
  `ACCT_LEVL` int(4) DEFAULT NULL,
  `ACCT_DKXX` varchar(1) DEFAULT NULL,
  `OPTX_SUBT` varchar(1) DEFAULT NULL,
  `OPTX_BUGD` varchar(1) DEFAULT NULL,
  `OPTX_COST` varchar(1) DEFAULT NULL,
  `COST_CODE` varchar(20) DEFAULT NULL,
  `KODEBI` varchar(3) DEFAULT NULL,
  `CRTX_BYXX` varchar(15) DEFAULT NULL,
  `UPDT_BYXX` varchar(15) DEFAULT NULL,
  `CRTX_DATE` datetime DEFAULT NULL,
  `UPDT_DATE` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tb_coaxxx` */

insert  into `tb_coaxxx`(`ACCT_CODE`,`ACCT_NAMA`,`STAT_ACTV`,`ACCT_PARN`,`ACCT_KATG`,`ACCT_TYPE`,`ACCT_CURR`,`ACCT_LEVL`,`ACCT_DKXX`,`OPTX_SUBT`,`OPTX_BUGD`,`OPTX_COST`,`COST_CODE`,`KODEBI`,`CRTX_BYXX`,`UPDT_BYXX`,`CRTX_DATE`,`UPDT_DATE`) values 
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

/*Table structure for table `unit_sekolah` */

DROP TABLE IF EXISTS `unit_sekolah`;

CREATE TABLE `unit_sekolah` (
  `kode_unit` varchar(4) NOT NULL,
  `nama_unit` varchar(50) DEFAULT NULL,
  `kode_lokasi` varchar(3) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kode_unit`),
  KEY `kode_unit` (`kode_unit`),
  KEY `kode_unit_2` (`kode_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `unit_sekolah` */

insert  into `unit_sekolah`(`kode_unit`,`nama_unit`,`kode_lokasi`,`keterangan`) values 
('003','SD RIANG GEMBIRA','3','sekolah luar biasa');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
