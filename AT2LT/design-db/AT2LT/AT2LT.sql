/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     19/08/2015 16:28:21                          */
/*==============================================================*/


alter table AMR.DATA_METER
   drop constraint FK_DATA_MET_GET_TYPE__MASTER_T;

alter table AMR.DATA_MODEM
   drop constraint FK_DATA_MOD_GET_SIM_DATA_SIM;

alter table AMR.DATA_SIM
   drop constraint FK_DATA_SIM_GET_SIM2_DATA_MOD;

alter table AMR.DATA_TIKUR
   drop constraint FK_DATA_TIK_GET_GI2_MASTER_G;

alter table AMR.DATA_TIKUR
   drop constraint FK_DATA_TIK_GET_KD_UN_MASTER_U;

alter table AMR.DATA_TIKUR
   drop constraint FK_DATA_TIK_GET_TRAFO_MASTER_T;

alter table AMR.KONFIGURASI_TIKUR
   drop constraint FK_KONFIGUR_GET_KONST_MASTER_K;

alter table AMR.KONFIGURASI_TIKUR
   drop constraint FK_KONFIGUR_GET_MUTAS_MUTASI_M;

alter table AMR.KONFIGURASI_TIKUR
   drop constraint FK_KONFIGUR_GET_TIKUR_DATA_TIK;

alter table AMR.LOG_TRANSAKSI
   drop constraint FK_LOG_TRAN_GET_FM6_MASTER_F;

alter table AMR.LOG_TRANSAKSI
   drop constraint FK_LOG_TRAN_GET_METER_DATA_MET;

alter table AMR.LOG_TRANSAKSI
   drop constraint FK_LOG_TRAN_GET_RC7_MASTER_R;

alter table AMR.MASTER_GI
   drop constraint FK_MASTER_G_GET_GI_MASTER_U;

alter table AMR.MASTER_TRAFO
   drop constraint FK_MASTER_T_GET_TRAFO_MASTER_G;

alter table AMR.MASTER_UNIT_INDUK
   drop constraint FK_MASTER_U_GET_PERUS_MASTER_P;

alter table AMR.MASTER_UNIT_PELAKSANA
   drop constraint FK_MASTER_U_GET_JENIS_MASTER_J;

alter table AMR.MASTER_UNIT_PELAKSANA
   drop constraint FK_MASTER_U_GET_PELAK_MASTER_U;

alter table AMR.MUTASI_METER
   drop constraint FK_MUTASI_M_GET_KD_M_MASTER_K;

alter table AMR.MUTASI_METER
   drop constraint FK_MUTASI_M_GET_T_DATA_TIK;

alter table AMR.MUTASI_MODEM
   drop constraint FK_MUTASI_M_GET_KD_M2_MASTER_K;

alter table AMR.MUTASI_MODEM
   drop constraint FK_MUTASI_M_GET_METER_DATA_MET;

alter table AMR.MUTASI_MODEM
   drop constraint FK_MUTASI_M_GET_MODEM_DATA_MOD;

alter table AMR.MUTASI_MODEM
   drop constraint FK_MUTASI_M_GET_T2_DATA_TIK;

alter table AMR.TRANS_DATA_EVENT
   drop constraint FK_TRANS_DA_GET_FM3_MASTER_F;

alter table AMR.TRANS_DATA_EVENT
   drop constraint FK_TRANS_DA_GET_METER_DATA_MET;

alter table AMR.TRANS_DATA_EVENT
   drop constraint FK_TRANS_DA_GET_RC3_MASTER_R;

alter table AMR.TRANS_EOB
   drop constraint FK_TRANS_EO_GETMTR1_DATA_MET;

alter table AMR.TRANS_EOB
   drop constraint FK_TRANS_EO_GET_FM2_MASTER_F;

alter table AMR.TRANS_EOB
   drop constraint FK_TRANS_EO_GET_RC2_MASTER_R;

alter table AMR.TRANS_EOB_MANUAL
   drop constraint FK_TRANS_EO_GETMTR5_DATA_MET;

alter table AMR.TRANS_EOB_MANUAL
   drop constraint FK_TRANS_EO_GET_DOK_E_LOG_MANU;

alter table AMR.TRANS_EOB_MANUAL
   drop constraint FK_TRANS_EO_GET_FM5_MASTER_F;

alter table AMR.TRANS_EOB_MANUAL
   drop constraint FK_TRANS_EO_GET_RC5_MASTER_R;

alter table AMR.TRANS_LP
   drop constraint FK_TRANS_LP_GET_FM_MASTER_F;

alter table AMR.TRANS_LP
   drop constraint FK_TRANS_LP_GET_METER_DATA_MET;

alter table AMR.TRANS_LP
   drop constraint FK_TRANS_LP_GET_RC_MASTER_R;

alter table AMR.TRANS_LP_MANUAL
   drop constraint FK_TRANS_LP_GET_DOK_LOG_MANU;

alter table AMR.TRANS_LP_MANUAL
   drop constraint FK_TRANS_LP_GET_RC6_MASTER_R;

alter table AMR.TRANS_LP_MANUAL
   drop constraint FK_TRANS_LP_RELATIONS_DATA_MET;

drop index AMR.IDXDATA04;

drop index AMR.IDXDATA03;

drop index AMR.IDXDATA02;

drop index AMR.IDXDATA01;

drop index AMR.DATA_INDUK_U01;

drop table AMR."tmp_DATA_INDUK" cascade constraints;

alter table AMR.DATA_INDUK rename to "tmp_DATA_INDUK";

drop index AMR.GET_TYPE_METER_FK;

alter table AMR.DATA_METER
   drop primary key cascade;

drop table AMR."tmp_DATA_METER" cascade constraints;

alter table AMR.DATA_METER rename to "tmp_DATA_METER";

drop index AMR.GET_SIM_FK;

alter table AMR.DATA_MODEM
   drop primary key cascade;

drop table AMR."tmp_DATA_MODEM" cascade constraints;

alter table AMR.DATA_MODEM rename to "tmp_DATA_MODEM";

drop index AMR.GET_SIM2_FK;

alter table AMR.DATA_SIM
   drop primary key cascade;

drop table AMR."tmp_DATA_SIM" cascade constraints;

alter table AMR.DATA_SIM rename to "tmp_DATA_SIM";

drop index AMR.GET_TRAFO2_FK;

drop index AMR.GET_KD_UNIT_PELAKSANA_FK;

drop index AMR.GET_GI2_FK;

alter table AMR.DATA_TIKUR
   drop primary key cascade;

drop table AMR."tmp_DATA_TIKUR" cascade constraints;

alter table AMR.DATA_TIKUR rename to "tmp_DATA_TIKUR";

drop index AMR.GET_TIKUR3_FK;

drop index AMR.GET_MUTASI_METER_FK;

drop index AMR.GET_KONSTRUKSI_FK;

alter table AMR.KONFIGURASI_TIKUR
   drop primary key cascade;

drop table AMR."tmp_KONFIGURASI_TIKUR" cascade constraints;

alter table AMR.KONFIGURASI_TIKUR rename to "tmp_KONFIGURASI_TIKUR";

alter table AMR.KWH_PROD
   drop primary key cascade;

drop table AMR."tmp_KWH_PROD" cascade constraints;

alter table AMR.KWH_PROD rename to "tmp_KWH_PROD";

alter table AMR.KWH_PS_GI
   drop primary key cascade;

drop table AMR."tmp_KWH_PS_GI" cascade constraints;

alter table AMR.KWH_PS_GI rename to "tmp_KWH_PS_GI";

alter table AMR.KWH_PS_SENTRAL
   drop primary key cascade;

drop table AMR."tmp_KWH_PS_SENTRAL" cascade constraints;

alter table AMR.KWH_PS_SENTRAL rename to "tmp_KWH_PS_SENTRAL";

drop table AMR."tmp_KWH_SALUR_TRANSMISI" cascade constraints;

alter table AMR.KWH_SALUR_TRANSMISI rename to "tmp_KWH_SALUR_TRANSMISI";

drop table AMR."tmp_KWH_TERIMA" cascade constraints;

alter table AMR.KWH_TERIMA rename to "tmp_KWH_TERIMA";

drop table AMR."tmp_LOG_BILLING_OLD" cascade constraints;

alter table AMR.LOG_BILLING_OLD rename to "tmp_LOG_BILLING_OLD";

drop index AMR.IDXEOB03;

drop index AMR.IDXEOB02;

drop index AMR.IDXEOB01;

drop table AMR."tmp_LOG_EOB" cascade constraints;

alter table AMR.LOG_EOB rename to "tmp_LOG_EOB";

drop index AMR.IDX02;

drop index AMR.IDX01;

drop table AMR."tmp_LOG_EVENT" cascade constraints;

alter table AMR.LOG_EVENT rename to "tmp_LOG_EVENT";

drop table AMR."tmp_LOG_EVENT_OLD" cascade constraints;

alter table AMR.LOG_EVENT_OLD rename to "tmp_LOG_EVENT_OLD";

drop index AMR.IDX3;

drop index AMR.IDX2;

drop index AMR.IDX1;

drop index AMR.IDX04;

drop table AMR."tmp_LOG_LOG" cascade constraints;

alter table AMR.LOG_LOG rename to "tmp_LOG_LOG";

drop index AMR.IDXLP03;

drop index AMR.IDXLP02;

drop index AMR.IDXLP01;

drop table AMR."tmp_LOG_LP" cascade constraints;

alter table AMR.LOG_LP rename to "tmp_LOG_LP";

alter table AMR.LOG_MANUAL_EOB
   drop primary key cascade;

drop table AMR."tmp_LOG_MANUAL_EOB" cascade constraints;

alter table AMR.LOG_MANUAL_EOB rename to "tmp_LOG_MANUAL_EOB";

alter table AMR.LOG_MANUAL_LP
   drop primary key cascade;

drop table AMR."tmp_LOG_MANUAL_LP" cascade constraints;

alter table AMR.LOG_MANUAL_LP rename to "tmp_LOG_MANUAL_LP";

drop table AMR."tmp_LOG_METER_SESSION_OLD" cascade constraints;

alter table AMR.LOG_METER_SESSION_OLD rename to "tmp_LOG_METER_SESSION_OLD";

drop table AMR."tmp_LOG_PROFILE_OLD" cascade constraints;

alter table AMR.LOG_PROFILE_OLD rename to "tmp_LOG_PROFILE_OLD";

drop index AMR.IDX012;

drop index AMR.IDX011;

drop table AMR."tmp_LOG_SESSION" cascade constraints;

alter table AMR.LOG_SESSION rename to "tmp_LOG_SESSION";

drop index AMR.GET_RC7_FK;

drop index AMR.GET_METER6_FK;

drop index AMR.GET_FM6_FK;

drop table AMR."tmp_LOG_TRANSAKSI" cascade constraints;

alter table AMR.LOG_TRANSAKSI rename to "tmp_LOG_TRANSAKSI";

drop table AMR."tmp_LOG_TRANSAKSI_OLD" cascade constraints;

alter table AMR.LOG_TRANSAKSI_OLD rename to "tmp_LOG_TRANSAKSI_OLD";

alter table AMR.MASTER_BACA
   drop primary key cascade;

drop table AMR."tmp_MASTER_BACA" cascade constraints;

alter table AMR.MASTER_BACA rename to "tmp_MASTER_BACA";

alter table AMR.MASTER_EVENT
   drop primary key cascade;

drop table AMR."tmp_MASTER_EVENT" cascade constraints;

alter table AMR.MASTER_EVENT rename to "tmp_MASTER_EVENT";

alter table AMR.MASTER_FUNGSI_METER
   drop primary key cascade;

drop table AMR."tmp_MASTER_FUNGSI_METER" cascade constraints;

alter table AMR.MASTER_FUNGSI_METER rename to "tmp_MASTER_FUNGSI_METER";

drop index AMR.GET_GI_FK;

alter table AMR.MASTER_GI
   drop primary key cascade;

drop table AMR."tmp_MASTER_GI" cascade constraints;

alter table AMR.MASTER_GI rename to "tmp_MASTER_GI";

alter table AMR.MASTER_JENIS_BAHAN_BAKAR
   drop primary key cascade;

drop table AMR."tmp_MASTER_JENIS_BAHAN_BAKAR" cascade constraints;

alter table AMR.MASTER_JENIS_BAHAN_BAKAR rename to "tmp_MASTER_JENIS_BAHAN_BAKAR";

alter table AMR.MASTER_KODE_MUTASI
   drop primary key cascade;

drop table AMR."tmp_MASTER_KODE_MUTASI" cascade constraints;

alter table AMR.MASTER_KODE_MUTASI rename to "tmp_MASTER_KODE_MUTASI";

alter table AMR.MASTER_KONTRUKSI
   drop primary key cascade;

drop table AMR."tmp_MASTER_KONTRUKSI" cascade constraints;

alter table AMR.MASTER_KONTRUKSI rename to "tmp_MASTER_KONTRUKSI";

alter table AMR.MASTER_PERUSAHAAN
   drop primary key cascade;

drop table AMR."tmp_MASTER_PERUSAHAAN" cascade constraints;

alter table AMR.MASTER_PERUSAHAAN rename to "tmp_MASTER_PERUSAHAAN";

alter table AMR.MASTER_RC
   drop primary key cascade;

drop table AMR."tmp_MASTER_RC" cascade constraints;

alter table AMR.MASTER_RC rename to "tmp_MASTER_RC";

drop index AMR.GET_TRAFO_FK;

alter table AMR.MASTER_TRAFO
   drop primary key cascade;

drop table AMR."tmp_MASTER_TRAFO" cascade constraints;

alter table AMR.MASTER_TRAFO rename to "tmp_MASTER_TRAFO";

alter table AMR.MASTER_TYPE_METER
   drop primary key cascade;

drop table AMR."tmp_MASTER_TYPE_METER" cascade constraints;

alter table AMR.MASTER_TYPE_METER rename to "tmp_MASTER_TYPE_METER";

drop index AMR.GET_PERUSAHAAN_FK;

alter table AMR.MASTER_UNIT_INDUK
   drop primary key cascade;

drop table AMR."tmp_MASTER_UNIT_INDUK" cascade constraints;

alter table AMR.MASTER_UNIT_INDUK rename to "tmp_MASTER_UNIT_INDUK";

drop index AMR.GET_PELAKSANA_FK;

drop index AMR.GET_JENIS_BB_FK;

alter table AMR.MASTER_UNIT_PELAKSANA
   drop primary key cascade;

drop table AMR."tmp_MASTER_UNIT_PELAKSANA" cascade constraints;

alter table AMR.MASTER_UNIT_PELAKSANA rename to "tmp_MASTER_UNIT_PELAKSANA";

drop index AMR.GET_TIKUR_FK;

drop index AMR.GET_KD_MUTASI_FK;

alter table AMR.MUTASI_METER
   drop primary key cascade;

drop table AMR."tmp_MUTASI_METER" cascade constraints;

alter table AMR.MUTASI_METER rename to "tmp_MUTASI_METER";

drop index AMR.GET_TIKUR2_FK;

drop index AMR.GET_MODEM_FK;

drop index AMR.GET_METER_FK;

drop index AMR.GET_KD_MUTASI2_FK;

alter table AMR.MUTASI_MODEM
   drop primary key cascade;

drop table AMR."tmp_MUTASI_MODEM" cascade constraints;

alter table AMR.MUTASI_MODEM rename to "tmp_MUTASI_MODEM";

drop index AMR.GET_RC3_FK;

drop index AMR.GET_METER4_FK;

drop index AMR.GET_FM3_FK;

drop table AMR."tmp_TRANS_DATA_EVENT" cascade constraints;

alter table AMR.TRANS_DATA_EVENT rename to "tmp_TRANS_DATA_EVENT";

drop index AMR.GET_RC2_FK;

drop index AMR.GET_METER3_FK;

drop index AMR.GET_FM2_FK;

drop table AMR."tmp_TRANS_EOB" cascade constraints;

alter table AMR.TRANS_EOB rename to "tmp_TRANS_EOB";

drop index AMR.GET_RC5_FK;

drop index AMR.GET_METER5_FK;

drop index AMR.GET_FM5_FK;

drop index AMR.GET_DOK_EOB_FK;

drop table AMR."tmp_TRANS_EOB_MANUAL" cascade constraints;

alter table AMR.TRANS_EOB_MANUAL rename to "tmp_TRANS_EOB_MANUAL";

alter table AMR.TRANS_III07
   drop primary key cascade;

drop table AMR."tmp_TRANS_III07" cascade constraints;

alter table AMR.TRANS_III07 rename to "tmp_TRANS_III07";

alter table AMR.TRANS_III09
   drop primary key cascade;

drop table AMR."tmp_TRANS_III09" cascade constraints;

alter table AMR.TRANS_III09 rename to "tmp_TRANS_III09";

drop index AMR.GET_RC_FK;

drop index AMR.GET_METER2_FK;

drop index AMR.GET_FM_FK;

drop table AMR."tmp_TRANS_LP" cascade constraints;

alter table AMR.TRANS_LP rename to "tmp_TRANS_LP";

drop table AMR."tmp_TRANS_LP3" cascade constraints;

alter table AMR.TRANS_LP3 rename to "tmp_TRANS_LP3";

drop index AMR.RELATIONSHIP_30_FK;

drop index AMR.GET_RC6_FK;

drop index AMR.GET_DOK_FK;

drop table AMR."tmp_TRANS_LP_MANUAL" cascade constraints;

alter table AMR.TRANS_LP_MANUAL rename to "tmp_TRANS_LP_MANUAL";

drop index AMR.T_USERMAN_U01;

drop index AMR.R015_FK;

drop index AMR.R013_FK;

drop index AMR.PK_T_USERMAN;

drop table AMR."tmp_T_USERMAN" cascade constraints;

alter table AMR.T_USERMAN rename to "tmp_T_USERMAN";

drop index AMR.T_USERPROFILE_U01;

drop index AMR.R017_FK;

drop index AMR.R013_FK2;

drop index AMR.PK_T_USERPROFILE;

drop table AMR."tmp_T_USERPROFILE" cascade constraints;

alter table AMR.T_USERPROFILE rename to "tmp_T_USERPROFILE";

drop table AMR."tmp_T_UTILDAO_EXEC" cascade constraints;

alter table AMR.T_UTILDAO_EXEC rename to "tmp_T_UTILDAO_EXEC";

drop table AMR."tmp_T_UTILDAO_OBJ" cascade constraints;

alter table AMR.T_UTILDAO_OBJ rename to "tmp_T_UTILDAO_OBJ";

drop table AMR."tmp_T_UTILDAO_SETTER" cascade constraints;

alter table AMR.T_UTILDAO_SETTER rename to "tmp_T_UTILDAO_SETTER";

alter table AMR.T_VERSION
   drop primary key cascade;

drop table AMR."tmp_T_VERSION" cascade constraints;

alter table AMR.T_VERSION rename to "tmp_T_VERSION";

drop user AMR;

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: DATA_INDUK                                            */
/*==============================================================*/
create table DATA_INDUK 
(
   KD_UPI               VARCHAR2(2)          not null,
   KD_AREA              VARCHAR2(3)          not null,
   KD_LOKASI            VARCHAR2(4)          not null,
   KD_FM                VARCHAR2(2)          not null,
   PERUSAHAAN           VARCHAR2(100),
   UNIT_INDUK           VARCHAR2(100),
   UNIT_PELAKSANA       VARCHAR2(100),
   LOKASI               VARCHAR2(100),
   NAMA_TITIK_UKUR      VARCHAR2(50),
   IDTIKUR              VARCHAR2(13)         not null,
   NO_METER             VARCHAR2(15),
   PERAN_METER          VARCHAR2(100),
   FUNGSIMETER          VARCHAR2(100),
   KIRIM_DARI_LUAR_PLN  VARCHAR2(100),
   KIRIM_DARI_UNIT_INDUK VARCHAR2(100),
   KE_UNIT_INDUK        VARCHAR2(100),
   KE_LUAR_PLN          VARCHAR2(100),
   MERKMETER            VARCHAR2(15),
   TYPEMETER            VARCHAR2(15),
   KELAS                VARCHAR2(10),
   ARUS                 VARCHAR2(10),
   CT                   VARCHAR2(20),
   PT                   VARCHAR2(20),
   FAKTORKALI           NUMBER,
   TEG                  VARCHAR2(2),
   KONSTRUKSI           VARCHAR2(100),
   MERK_MODEM           VARCHAR2(100),
   TYPE_MODEM           VARCHAR2(100),
   IMEI                 VARCHAR2(100),
   PROVIDER             VARCHAR2(100),
   NO_SIMCARD           VARCHAR2(100),
   MCM_JARINGAN         VARCHAR2(100),
   JNS_LAYANAN          VARCHAR2(100),
   KOORDINAT_X          VARCHAR2(50),
   KOORDINAT_Y          VARCHAR2(50),
   STATUS               VARCHAR2(200),
   NO_MUTASI            VARCHAR2(7),
   BULAN_MUTASI         VARCHAR2(6),
   JENIS_MUTASI         VARCHAR2(1),
   NAMA_MUTASI          VARCHAR2(20),
   STAND_EOB_SATUAN     VARCHAR2(5)          default 'KWH',
   STAND_EOB_TOTAL      VARCHAR2(5)          default 'ADA',
   STAND_EOB_WBP        VARCHAR2(5)          default 'ADA',
   STAND_EOB_LWBP1      VARCHAR2(5)          default 'ADA',
   STAND_EOB_LWBP2      VARCHAR2(5)          default 'ADA',
   ISO_SIGN             VARCHAR2(5)          default 'ADA',
   ISO_EOB              VARCHAR2(5)          default 'ADA',
   ISO_LOADPROFILE      VARCHAR2(5)          default 'ADA',
   ISO_EVENT            VARCHAR2(5)          default 'ADA',
   JAM_AMAT_AWAL        VARCHAR2(14)         default '15:00:00',
   JAM_AMAT_AKHIR       VARCHAR2(14)         default '15:00:00',
   STANDKWH_AKHIR       VARCHAR2(14)         default '001000',
   STANDKWH_CABUT       VARCHAR2(14)         default '001000',
   STANDKWH_PASANG      VARCHAR2(14)         default '001000',
   TGLPASANG            VARCHAR2(8)          default TO_CHAR(SYSDATE,'yyyymmdd'),
   TGLNYALA             VARCHAR2(8)          default TO_CHAR(SYSDATE,'yyyymmdd'),
   USERID               VARCHAR2(30),
   TGUPDATE             VARCHAR2(14)         default TO_CHAR(SYSDATE,'yyyymmddHH24MISS'),
   IP_ADDRESS           VARCHAR2(15)
);

insert into DATA_INDUK (KD_UPI, KD_AREA, KD_LOKASI, KD_FM, PERUSAHAAN, UNIT_INDUK, UNIT_PELAKSANA, LOKASI, NAMA_TITIK_UKUR, IDTIKUR, NO_METER, PERAN_METER, FUNGSIMETER, KIRIM_DARI_LUAR_PLN, KIRIM_DARI_UNIT_INDUK, KE_UNIT_INDUK, KE_LUAR_PLN, MERKMETER, TYPEMETER, KELAS, ARUS, CT, PT, FAKTORKALI, TEG, KONSTRUKSI, MERK_MODEM, TYPE_MODEM, IMEI, PROVIDER, NO_SIMCARD, MCM_JARINGAN, JNS_LAYANAN, KOORDINAT_X, KOORDINAT_Y, STATUS, NO_MUTASI, BULAN_MUTASI, JENIS_MUTASI, NAMA_MUTASI, STAND_EOB_SATUAN, STAND_EOB_TOTAL, STAND_EOB_WBP, STAND_EOB_LWBP1, STAND_EOB_LWBP2, ISO_SIGN, ISO_EOB, ISO_LOADPROFILE, ISO_EVENT, JAM_AMAT_AWAL, JAM_AMAT_AKHIR, STANDKWH_AKHIR, STANDKWH_CABUT, STANDKWH_PASANG, TGLPASANG, TGLNYALA, USERID, TGUPDATE, IP_ADDRESS)
select KD_UPI, KD_AREA, KD_LOKASI, KD_FM, PERUSAHAAN, UNIT_INDUK, UNIT_PELAKSANA, LOKASI, NAMA_TITIK_UKUR, IDTIKUR, NO_METER, PERAN_METER, FUNGSIMETER, KIRIM_DARI_LUAR_PLN, KIRIM_DARI_UNIT_INDUK, KE_UNIT_INDUK, KE_LUAR_PLN, MERKMETER, TYPEMETER, KELAS, ARUS, CT, PT, FAKTORKALI, TEG, KONSTRUKSI, MERK_MODEM, TYPE_MODEM, IMEI, PROVIDER, NO_SIMCARD, MCM_JARINGAN, JNS_LAYANAN, KOORDINAT_X, KOORDINAT_Y, STATUS, NO_MUTASI, BULAN_MUTASI, JENIS_MUTASI, NAMA_MUTASI, STAND_EOB_SATUAN, STAND_EOB_TOTAL, STAND_EOB_WBP, STAND_EOB_LWBP1, STAND_EOB_LWBP2, ISO_SIGN, ISO_EOB, ISO_LOADPROFILE, ISO_EVENT, JAM_AMAT_AWAL, JAM_AMAT_AKHIR, STANDKWH_AKHIR, STANDKWH_CABUT, STANDKWH_PASANG, TGLPASANG, TGLNYALA, USERID, TGUPDATE, IP_ADDRESS
from AMR."tmp_DATA_INDUK";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: DATA_METER                                            */
/*==============================================================*/
create table DATA_METER 
(
   NO_METER             VARCHAR2(15)         not null,
   KD_TYPE_METER        NUMBER,
   TGL_REGISTRASI       DATE,
   NO_TELP              NUMBER,
   constraint PK_DATA_METER primary key (NO_METER)
);

insert into DATA_METER (NO_METER, KD_TYPE_METER, TGL_REGISTRASI, NO_TELP)
select NO_METER, KD_TYPE_METER, TGL_REGISTRASI, NO_TELP
from AMR."tmp_DATA_METER";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_21                                                 */
/*==============================================================*/
create index FK_21 on DATA_METER (
   KD_TYPE_METER ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: DATA_MODEM                                            */
/*==============================================================*/
create table DATA_MODEM 
(
   NO_MODEM             VARCHAR2(80)         not null,
   NOMOR_SIM            NUMBER,
   KD_TYPE_MODEM        NUMBER,
   MERK                 VARCHAR2(20),
   TYPE                 VARCHAR2(20),
   IMEI                 VARCHAR2(80),
   constraint PK_DATA_MODEM primary key (NO_MODEM)
);

insert into DATA_MODEM (NO_MODEM, NOMOR_SIM, KD_TYPE_MODEM, MERK, TYPE, IMEI)
select NO_MODEM, NOMOR_SIM, KD_TYPE_MODEM, MERK, TYPE, IMEI
from AMR."tmp_DATA_MODEM";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_22                                                 */
/*==============================================================*/
create index FK_22 on DATA_MODEM (
   NOMOR_SIM ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: DATA_SIM                                              */
/*==============================================================*/
create table DATA_SIM 
(
   NOMOR_SIM            NUMBER               not null,
   NO_MODEM             VARCHAR2(80),
   JENIS                VARCHAR2(12),
   TYPE                 VARCHAR2(20),
   NO_TELP              NUMBER,
   MASA_AKTIF           DATE,
   MASA_TENGGANG        DATE,
   constraint PK_DATA_SIM primary key (NOMOR_SIM)
);

insert into DATA_SIM (NOMOR_SIM, NO_MODEM, JENIS, TYPE, NO_TELP, MASA_AKTIF, MASA_TENGGANG)
select NOMOR_SIM, NO_MODEM, JENIS, TYPE, NO_TELP, MASA_AKTIF, MASA_TENGGANG
from AMR."tmp_DATA_SIM";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_23                                                 */
/*==============================================================*/
create index FK_23 on DATA_SIM (
   NO_MODEM ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: DATA_TIKUR                                            */
/*==============================================================*/
create table DATA_TIKUR 
(
   KD_TIKUR             VARCHAR2(13)         not null,
   KD_TRAFO             NUMBER,
   KD_GI                VARCHAR2(5),
   KD_UNIT_PELAKSANA    VARCHAR2(5),
   NAMA_TIKUR           VARCHAR2(80),
   IP_ADDRESS           VARCHAR2(15),
   KOORDINAT_X          NUMBER,
   KOORDINAT_Y          NUMBER,
   constraint PK_DATA_TIKUR primary key (KD_TIKUR)
);

insert into DATA_TIKUR (KD_TIKUR, KD_TRAFO, KD_GI, KD_UNIT_PELAKSANA, NAMA_TIKUR, IP_ADDRESS, KOORDINAT_X, KOORDINAT_Y)
select KD_TIKUR, KD_TRAFO, KD_GI, KD_UNIT_PELAKSANA, NAMA_TIKUR, IP_ADDRESS, KOORDINAT_X, KOORDINAT_Y
from AMR."tmp_DATA_TIKUR";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_24                                                 */
/*==============================================================*/
create index FK_24 on DATA_TIKUR (
   KD_TRAFO ASC
);

/*==============================================================*/
/* Index: FK_25                                                 */
/*==============================================================*/
create index FK_25 on DATA_TIKUR (
   KD_UNIT_PELAKSANA ASC
);

/*==============================================================*/
/* Index: FK_26                                                 */
/*==============================================================*/
create index FK_26 on DATA_TIKUR (
   KD_GI ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: KONFIGURASI_TIKUR                                     */
/*==============================================================*/
create table KONFIGURASI_TIKUR 
(
   KD_TIKUR             VARCHAR2(13)         not null,
   NO_MUTASI_METER      NUMBER               not null,
   KD_KONSTRUKSI        VARCHAR2(2)          not null,
   TGL_KONFIGURASI      DATE,
   KD_TEGANGAN          VARCHAR2(2),
   RASIO_CT             NUMBER,
   RASIO_PT             NUMBER,
   FAKTOR_KALI          NUMBER,
   NO_SERTIFIKAT_KALIBRASI VARCHAR2(20),
   TGL_SERTIFIKAT_KALIBRASI DATE,
   FILE_SERTIFIKAT      BLOB,
   constraint PK_KONFIGURASI_TIKUR primary key (KD_TIKUR, NO_MUTASI_METER, KD_KONSTRUKSI)
);

insert into KONFIGURASI_TIKUR (KD_TIKUR, NO_MUTASI_METER, KD_KONSTRUKSI, TGL_KONFIGURASI, KD_TEGANGAN, RASIO_CT, RASIO_PT, FAKTOR_KALI, NO_SERTIFIKAT_KALIBRASI, TGL_SERTIFIKAT_KALIBRASI)
select KD_TIKUR, NO_MUTASI_METER, KD_KONSTRUKSI, TGL_KONFIGURASI, KD_TEGANGAN, RASIO_CT, RASIO_PT, FAKTOR_KALI, NO_SERTIFIKAT_KALIBRASI, TGL_SERTIFIKAT_KALIBRASI
from AMR."tmp_KONFIGURASI_TIKUR";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_27                                                 */
/*==============================================================*/
create index FK_27 on KONFIGURASI_TIKUR (
   KD_TIKUR ASC
);

/*==============================================================*/
/* Index: FK_28                                                 */
/*==============================================================*/
create index FK_28 on KONFIGURASI_TIKUR (
   NO_MUTASI_METER ASC
);

/*==============================================================*/
/* Index: FK_29                                                 */
/*==============================================================*/
create index FK_29 on KONFIGURASI_TIKUR (
   KD_KONSTRUKSI ASC
);

/*==============================================================*/
/* Table: KWH_JUAL_DIST                                         */
/*==============================================================*/
create table KWH_JUAL_DIST 
(
   KD_UNIT_PELAKSANA_KIRIM VARCHAR2(5),
   KD_UNIT_PELAKSANA_TERIMA VARCHAR2(5),
   BLTH                 NUMBER(6),
   TEGANGAN             VARCHAR2(2),
   TARGET_TH            NUMBER,
   WBP                  NUMBER,
   LWBP_1               NUMBER,
   LWBP_2               NUMBER,
   TOTAL_KWH            NUMBER,
   KVARH                NUMBER,
   KWH_OUT              NUMBER,
   KVARH_OUT            NUMBER,
   KWH_IN               NUMBER,
   KVARH_IN             NUMBER,
   PEAK_KOINSIDEN       NUMBER,
   KD_TIKUR             VARCHAR2(13)
);

comment on table KWH_JUAL_DIST is
'KWH penjualan oleh distribusi (III-09/III-07)';

comment on column KWH_JUAL_DIST.TEGANGAN is
'TR; TM; TT';

comment on column KWH_JUAL_DIST.TOTAL_KWH is
'UNTUK UNIT YG MENGIRIMKAN 1 PAKET TARIF';

comment on column KWH_JUAL_DIST.PEAK_KOINSIDEN is
'TEGANGAN TRAFO  PADA SAAT KVARH MAX';

/*==============================================================*/
/* Table: KWH_KIRIM                                             */
/*==============================================================*/
create table KWH_KIRIM 
(
   KD_UNIT_PELAKSANA_KIRIM VARCHAR2(5),
   KD_UNIT_PELAKSANA_TERIMA VARCHAR2(5),
   BLTH                 NUMBER(6),
   TEGANGAN             VARCHAR2(2),
   TARGET_TH            NUMBER,
   WBP                  NUMBER,
   LWBP_1               NUMBER,
   LWBP_2               NUMBER,
   TOTAL_KWH            NUMBER,
   KVARH                NUMBER,
   KWH_OUT              NUMBER,
   KVARH_OUT            NUMBER,
   KWH_IN               NUMBER,
   KVARH_IN             NUMBER,
   PEAK_KOINSIDEN       NUMBER,
   KD_TIKUR             VARCHAR2(13)
);

comment on table KWH_KIRIM is
'KWH KIRIM';

comment on column KWH_KIRIM.TEGANGAN is
'TR; TM; TT';

comment on column KWH_KIRIM.TOTAL_KWH is
'UNTUK UNIT YG MENGIRIMKAN 1 PAKET TARIF';

comment on column KWH_KIRIM.PEAK_KOINSIDEN is
'TEGANGAN TRAFO  PADA SAAT KVARH MAX';

/*==============================================================*/
/* Table: KWH_KIRIM_DIST                                        */
/*==============================================================*/
create table KWH_KIRIM_DIST 
(
   KD_UNIT_PELAKSANA_KIRIM VARCHAR2(5),
   KD_UNIT_PELAKSANA_TERIMA VARCHAR2(5),
   BLTH                 NUMBER(6),
   TEGANGAN             VARCHAR2(2),
   TARGET_TH            NUMBER,
   WBP                  NUMBER,
   LWBP_1               NUMBER,
   LWBP_2               NUMBER,
   TOTAL_KWH            NUMBER,
   KVARH                NUMBER,
   KWH_OUT              NUMBER,
   KVARH_OUT            NUMBER,
   KWH_IN               NUMBER,
   KVARH_IN             NUMBER,
   PEAK_KOINSIDEN       NUMBER,
   KD_TIKUR             VARCHAR2(13)
);

comment on table KWH_KIRIM_DIST is
'KWH dikirim dari distribusi ke unit PLN lain';

comment on column KWH_KIRIM_DIST.TEGANGAN is
'TR; TM; TT';

comment on column KWH_KIRIM_DIST.TOTAL_KWH is
'UNTUK UNIT YG MENGIRIMKAN 1 PAKET TARIF';

comment on column KWH_KIRIM_DIST.PEAK_KOINSIDEN is
'TEGANGAN TRAFO  PADA SAAT KVARH MAX';

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: KWH_PROD                                              */
/*==============================================================*/
create table KWH_PROD 
(
   KD_UNIT_PELAKSANA_KIRIM VARCHAR2(5)          not null,
   KD_UNIT_PELAKSANA_TERIMA VARCHAR2(5)          not null,
   BLTH                 NUMBER(6)            not null,
   TEGANGAN             VARCHAR2(2),
   TARGET_TH            NUMBER,
   WBP                  NUMBER,
   LWBP_1               NUMBER,
   LWBP_2               NUMBER,
   TOTAL_KWH            NUMBER,
   KVARH                NUMBER,
   KWH_OUT              NUMBER,
   KVARH_OUT            NUMBER,
   KWH_IN               NUMBER,
   KVARH_IN             NUMBER,
   PEAK_KOINSIDEN       NUMBER,
   KD_TIKUR             VARCHAR2(13),
   constraint PK_KWH_PROD primary key (KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH)
);

comment on column KWH_PROD.TEGANGAN is
'TR; TM; TT';

comment on column KWH_PROD.TOTAL_KWH is
'UNTUK UNIT YG MENGIRIMKAN 1 PAKET TARIF';

comment on column KWH_PROD.PEAK_KOINSIDEN is
'TEGANGAN TRAFO  PADA SAAT KVARH MAX';

insert into KWH_PROD (KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH, TEGANGAN, TARGET_TH, WBP, LWBP_1, LWBP_2, TOTAL_KWH, KVARH, KWH_OUT, KVARH_OUT, KWH_IN, KVARH_IN, PEAK_KOINSIDEN, KD_TIKUR)
select KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH, TEGANGAN, TARGET_TH, WBP, LWBP_1, LWBP_2, TOTAL_KWH, KVARH, KWH_OUT, KVARH_OUT, KWH_IN, KVARH_IN, PEAK_KOINSIDEN, KD_TIKUR
from AMR."tmp_KWH_PROD";

alter system set encryption wallet close;
/*==============================================================*/
/* Table: KWH_PS_DIST                                           */
/*==============================================================*/
create table KWH_PS_DIST 
(
   KD_UNIT_PELAKSANA_KIRIM VARCHAR2(5),
   KD_UNIT_PELAKSANA_TERIMA VARCHAR2(5),
   BLTH                 NUMBER(6),
   TEGANGAN             VARCHAR2(2),
   TARGET_TH            NUMBER,
   WBP                  NUMBER,
   LWBP_1               NUMBER,
   LWBP_2               NUMBER,
   TOTAL_KWH            NUMBER,
   KVARH                NUMBER,
   KWH_OUT              NUMBER,
   KVARH_OUT            NUMBER,
   KWH_IN               NUMBER,
   KVARH_IN             NUMBER,
   PEAK_KOINSIDEN       NUMBER,
   KD_TIKUR             VARCHAR2(13)
);

comment on table KWH_PS_DIST is
'KWH PS DISTRIBUSI';

comment on column KWH_PS_DIST.TEGANGAN is
'TR; TM; TT';

comment on column KWH_PS_DIST.TOTAL_KWH is
'UNTUK UNIT YG MENGIRIMKAN 1 PAKET TARIF';

comment on column KWH_PS_DIST.PEAK_KOINSIDEN is
'TEGANGAN TRAFO  PADA SAAT KVARH MAX';

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: KWH_PS_GI                                             */
/*==============================================================*/
create table KWH_PS_GI 
(
   KD_UNIT_PELAKSANA_KIRIM VARCHAR2(5)          not null,
   KD_UNIT_PELAKSANA_TERIMA VARCHAR2(5)          not null,
   BLTH                 NUMBER(6)            not null,
   TEGANGAN             VARCHAR2(2),
   TARGET_TH            NUMBER,
   WBP                  NUMBER,
   LWBP_1               NUMBER,
   LWBP_2               NUMBER,
   TOTAL_KWH            NUMBER,
   KVARH                NUMBER,
   KWH_OUT              NUMBER,
   KVARH_OUT            NUMBER,
   KWH_IN               NUMBER,
   KVARH_IN             NUMBER,
   PEAK_KOINSIDEN       NUMBER,
   KD_TIKUR             VARCHAR2(13),
   constraint PK_KWH_PS_GI primary key (KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH)
);

comment on table KWH_PS_GI is
'KWH Pemakaian sendiri GI';

comment on column KWH_PS_GI.TEGANGAN is
'TR; TM; TT';

comment on column KWH_PS_GI.TOTAL_KWH is
'UNTUK UNIT YG MENGIRIMKAN 1 PAKET TARIF';

comment on column KWH_PS_GI.PEAK_KOINSIDEN is
'TEGANGAN TRAFO  PADA SAAT KVARH MAX';

insert into KWH_PS_GI (KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH, TEGANGAN, TARGET_TH, WBP, LWBP_1, LWBP_2, TOTAL_KWH, KVARH, KWH_OUT, KVARH_OUT, KWH_IN, KVARH_IN, PEAK_KOINSIDEN, KD_TIKUR)
select KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH, TEGANGAN, TARGET_TH, WBP, LWBP_1, LWBP_2, TOTAL_KWH, KVARH, KWH_OUT, KVARH_OUT, KWH_IN, KVARH_IN, PEAK_KOINSIDEN, KD_TIKUR
from AMR."tmp_KWH_PS_GI";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: KWH_PS_SENTRAL                                        */
/*==============================================================*/
create table KWH_PS_SENTRAL 
(
   KD_UNIT_PELAKSANA_KIRIM VARCHAR2(5)          not null,
   KD_UNIT_PELAKSANA_TERIMA VARCHAR2(5)          not null,
   BLTH                 NUMBER(6)            not null,
   TEGANGAN             VARCHAR2(2),
   TARGET_TH            NUMBER,
   WBP                  NUMBER,
   LWBP_1               NUMBER,
   LWBP_2               NUMBER,
   TOTAL_KWH            NUMBER,
   KVARH                NUMBER,
   KWH_OUT              NUMBER,
   KVARH_OUT            NUMBER,
   KWH_IN               NUMBER,
   KVARH_IN             NUMBER,
   PEAK_KOINSIDEN       NUMBER,
   KD_TIKUR             VARCHAR2(13),
   constraint PK_KWH_PS_SENTRAL primary key (KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH)
);

comment on column KWH_PS_SENTRAL.TEGANGAN is
'TR; TM; TT';

comment on column KWH_PS_SENTRAL.TOTAL_KWH is
'UNTUK UNIT YG MENGIRIMKAN 1 PAKET TARIF';

comment on column KWH_PS_SENTRAL.PEAK_KOINSIDEN is
'TEGANGAN TRAFO  PADA SAAT KVARH MAX';

insert into KWH_PS_SENTRAL (KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH, TEGANGAN, TARGET_TH, WBP, LWBP_1, LWBP_2, TOTAL_KWH, KVARH, KWH_OUT, KVARH_OUT, KWH_IN, KVARH_IN, PEAK_KOINSIDEN, KD_TIKUR)
select KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH, TEGANGAN, TARGET_TH, WBP, LWBP_1, LWBP_2, TOTAL_KWH, KVARH, KWH_OUT, KVARH_OUT, KWH_IN, KVARH_IN, PEAK_KOINSIDEN, KD_TIKUR
from AMR."tmp_KWH_PS_SENTRAL";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: KWH_SALUR_TRANSMISI                                   */
/*==============================================================*/
create table KWH_SALUR_TRANSMISI 
(
   KD_UNIT_PELAKSANA_KIRIM VARCHAR2(5),
   KD_UNIT_PELAKSANA_TERIMA VARCHAR2(5),
   BLTH                 NUMBER(6),
   TEGANGAN             VARCHAR2(2),
   TARGET_TH            NUMBER,
   WBP                  NUMBER,
   LWBP_1               NUMBER,
   LWBP_2               NUMBER,
   TOTAL_KWH            NUMBER,
   KVARH                NUMBER,
   KWH_OUT              NUMBER,
   KVARH_OUT            NUMBER,
   KWH_IN               NUMBER,
   KVARH_IN             NUMBER,
   PEAK_KOINSIDEN       NUMBER,
   KD_TIKUR             VARCHAR2(13)
);

comment on table KWH_SALUR_TRANSMISI is
'KWH siap salur transmisi';

comment on column KWH_SALUR_TRANSMISI.TEGANGAN is
'TR; TM; TT';

comment on column KWH_SALUR_TRANSMISI.TOTAL_KWH is
'UNTUK UNIT YG MENGIRIMKAN 1 PAKET TARIF';

comment on column KWH_SALUR_TRANSMISI.PEAK_KOINSIDEN is
'TEGANGAN TRAFO  PADA SAAT KVARH MAX';

insert into KWH_SALUR_TRANSMISI (KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH, TEGANGAN, TARGET_TH, WBP, LWBP_1, LWBP_2, TOTAL_KWH, KVARH, KWH_OUT, KVARH_OUT, KWH_IN, KVARH_IN, PEAK_KOINSIDEN, KD_TIKUR)
select KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH, TEGANGAN, TARGET_TH, WBP, LWBP_1, LWBP_2, TOTAL_KWH, KVARH, KWH_OUT, KVARH_OUT, KWH_IN, KVARH_IN, PEAK_KOINSIDEN, KD_TIKUR
from AMR."tmp_KWH_SALUR_TRANSMISI";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: KWH_TERIMA                                            */
/*==============================================================*/
create table KWH_TERIMA 
(
   KD_UNIT_PELAKSANA_KIRIM VARCHAR2(5),
   KD_UNIT_PELAKSANA_TERIMA VARCHAR2(5),
   BLTH                 NUMBER(6),
   TEGANGAN             VARCHAR2(2),
   TARGET_TH            NUMBER,
   WBP                  NUMBER,
   LWBP_1               NUMBER,
   LWBP_2               NUMBER,
   TOTAL_KWH            NUMBER,
   KVARH                NUMBER,
   KWH_OUT              NUMBER,
   KVARH_OUT            NUMBER,
   KWH_IN               NUMBER,
   KVARH_IN             NUMBER,
   PEAK_KOINSIDEN       NUMBER,
   KD_TIKUR             VARCHAR2(13)
);

comment on column KWH_TERIMA.TEGANGAN is
'TR; TM; TT';

comment on column KWH_TERIMA.TOTAL_KWH is
'UNTUK UNIT YG MENGIRIMKAN 1 PAKET TARIF';

comment on column KWH_TERIMA.PEAK_KOINSIDEN is
'TEGANGAN TRAFO  PADA SAAT KVARH MAX';

insert into KWH_TERIMA (KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH, TEGANGAN, TARGET_TH, WBP, LWBP_1, LWBP_2, TOTAL_KWH, KVARH, KWH_OUT, KVARH_OUT, KWH_IN, KVARH_IN, PEAK_KOINSIDEN, KD_TIKUR)
select KD_UNIT_PELAKSANA_KIRIM, KD_UNIT_PELAKSANA_TERIMA, BLTH, TEGANGAN, TARGET_TH, WBP, LWBP_1, LWBP_2, TOTAL_KWH, KVARH, KWH_OUT, KVARH_OUT, KWH_IN, KVARH_IN, PEAK_KOINSIDEN, KD_TIKUR
from AMR."tmp_KWH_TERIMA";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_BILLING_OLD                                       */
/*==============================================================*/
create table LOG_BILLING_OLD 
(
   NOMETER              VARCHAR2(15),
   FMETER               VARCHAR2(3),
   TGLKIRIM             VARCHAR2(19),
   TGLBACA              VARCHAR2(19),
   STANDKWH_LWBP1_KIRIM NUMBER,
   STANDKWH_LWBP1_TERIMA NUMBER,
   STANDKWH_LWBP2_KIRIM NUMBER,
   STANDKWH_LWBP2_TERIMA NUMBER,
   STANDKWH_WBP_KIRIM   NUMBER,
   STANDKWH_WBP_TERIMA  NUMBER,
   STANDKWH_KVARH_KIRIM NUMBER,
   STANDKWH_KVARH_TERIMA NUMBER,
   STANDKVAMAX          NUMBER(17,6),
   TGLKVAMAX            VARCHAR2(14),
   TGUPDATE             VARCHAR2(19),
   REFNUM               VARCHAR2(32),
   KIRIM                VARCHAR2(1),
   RC                   VARCHAR2(2),
   NOBATCH              VARCHAR2(5)
);

insert into LOG_BILLING_OLD (NOMETER, FMETER, TGLKIRIM, TGLBACA, STANDKWH_LWBP1_KIRIM, STANDKWH_LWBP1_TERIMA, STANDKWH_LWBP2_KIRIM, STANDKWH_LWBP2_TERIMA, STANDKWH_WBP_KIRIM, STANDKWH_WBP_TERIMA, STANDKWH_KVARH_KIRIM, STANDKWH_KVARH_TERIMA, STANDKVAMAX, TGLKVAMAX, TGUPDATE, REFNUM, KIRIM, RC, NOBATCH)
select NOMETER, FMETER, TGLKIRIM, TGLBACA, STANDKWH_LWBP1_KIRIM, STANDKWH_LWBP1_TERIMA, STANDKWH_LWBP2_KIRIM, STANDKWH_LWBP2_TERIMA, STANDKWH_WBP_KIRIM, STANDKWH_WBP_TERIMA, STANDKWH_KVARH_KIRIM, STANDKWH_KVARH_TERIMA, STANDKVAMAX, TGLKVAMAX, TGUPDATE, REFNUM, KIRIM, RC, NOBATCH
from AMR."tmp_LOG_BILLING_OLD";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_EOB                                               */
/*==============================================================*/
create table LOG_EOB 
(
   NO_METER             VARCHAR2(15),
   KD_FM                VARCHAR2(3),
   TGL_KIRIM            VARCHAR2(19),
   TGL_BACA             VARCHAR2(19),
   STANDKWH_WBP_KIRIM   NUMBER,
   STANDKWH_WBP_TERIMA  NUMBER,
   STANDKWH_LWBP1_KIRIM NUMBER(17,6),
   STANDKWH_LWBP1_TERIMA NUMBER(17,6),
   STANDKWH_LWBP2_KIRIM NUMBER(17,6),
   STANDKWH_LWBP2_TERIMA NUMBER(17,6),
   STANDKWH_KVARH_KIRIM NUMBER(17,6),
   STANDKWH_KVARH_TERIMA NUMBER(17,6),
   STANDKWH_TOTAL_KIRIM NUMBER(17,6),
   STANDKWH_TOTAL_TERIMA NUMBER(17,6),
   STANDKVA_MAX         NUMBER(17,6),
   TGL_KVA_MAX          VARCHAR2(14),
   TGL_UPDATE           VARCHAR2(19)         default TO_CHAR(SYSDATE,'yyyy-mm-dd hh24:mi:ss'),
   REF_NUMBER           VARCHAR2(32),
   KIRIM                VARCHAR2(1)          default NULL,
   RC                   VARCHAR2(3)          default NULL
);

insert into LOG_EOB (NO_METER, KD_FM, TGL_KIRIM, TGL_BACA, STANDKWH_WBP_KIRIM, STANDKWH_WBP_TERIMA, STANDKWH_LWBP1_KIRIM, STANDKWH_LWBP1_TERIMA, STANDKWH_LWBP2_KIRIM, STANDKWH_LWBP2_TERIMA, STANDKWH_KVARH_KIRIM, STANDKWH_KVARH_TERIMA, STANDKWH_TOTAL_KIRIM, STANDKWH_TOTAL_TERIMA, STANDKVA_MAX, TGL_KVA_MAX, TGL_UPDATE, REF_NUMBER, KIRIM, RC)
select NO_METER, KD_FM, TGL_KIRIM, TGL_BACA, STANDKWH_WBP_KIRIM, STANDKWH_WBP_TERIMA, STANDKWH_LWBP1_KIRIM, STANDKWH_LWBP1_TERIMA, STANDKWH_LWBP2_KIRIM, STANDKWH_LWBP2_TERIMA, STANDKWH_KVARH_KIRIM, STANDKWH_KVARH_TERIMA, STANDKWH_TOTAL_KIRIM, STANDKWH_TOTAL_TERIMA, STANDKVA_MAX, TGL_KVA_MAX, TGL_UPDATE, REF_NUMBER, KIRIM, RC
from AMR."tmp_LOG_EOB";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_EVENT                                             */
/*==============================================================*/
create table LOG_EVENT 
(
   NO_METER             VARCHAR2(15),
   KD_FM                VARCHAR2(3),
   TGL_KIRIM            VARCHAR2(19),
   KD_EVENT             VARCHAR2(4),
   NAMA_EVENT           VARCHAR2(50),
   TGL_EVENT            VARCHAR2(14),
   TGL_UPDATE           VARCHAR2(19)         default TO_CHAR(SYSDATE,'yyyy-mm-dd hh24:mi:ss'),
   REF_NUMBER           VARCHAR2(32),
   KIRIM                VARCHAR2(1)          default NULL,
   RC                   VARCHAR2(3)          default NULL
);

insert into LOG_EVENT (NO_METER, KD_FM, TGL_KIRIM, KD_EVENT, NAMA_EVENT, TGL_EVENT, TGL_UPDATE, REF_NUMBER, KIRIM, RC)
select NO_METER, KD_FM, TGL_KIRIM, KD_EVENT, NAMA_EVENT, TGL_EVENT, TGL_UPDATE, REF_NUMBER, KIRIM, RC
from AMR."tmp_LOG_EVENT";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_EVENT_OLD                                         */
/*==============================================================*/
create table LOG_EVENT_OLD 
(
   NOMETER              VARCHAR2(15),
   FMETER               VARCHAR2(3),
   TGLKIRIM             VARCHAR2(19),
   KD_EVENT             VARCHAR2(4),
   NAMA_EVENT           VARCHAR2(20),
   TGL_EVENT            DATE,
   TGUPDATE             VARCHAR2(19),
   REFNUM               VARCHAR2(32),
   KIRIM                VARCHAR2(1),
   RC                   VARCHAR2(2),
   NOBATCH              VARCHAR2(5)
);

comment on column LOG_EVENT_OLD.TGL_EVENT is
'TGL EVENT TERJADI';

insert into LOG_EVENT_OLD (NOMETER, FMETER, TGLKIRIM, KD_EVENT, NAMA_EVENT, TGL_EVENT, TGUPDATE, REFNUM, KIRIM, RC, NOBATCH)
select NOMETER, FMETER, TGLKIRIM, KD_EVENT, NAMA_EVENT, TGL_EVENT, TGUPDATE, REFNUM, KIRIM, RC, NOBATCH
from AMR."tmp_LOG_EVENT_OLD";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_LOG                                               */
/*==============================================================*/
create table LOG_LOG 
(
   NO_METER             VARCHAR2(15),
   TGL_UPDATE           VARCHAR2(19)         default '0000-00-00 00:00:00',
   TGL_KIRIM            VARCHAR2(14),
   TGL_METER            VARCHAR2(14),
   MTI                  VARCHAR2(4),
   RC                   VARCHAR2(2),
   DATA_LOST            VARCHAR2(6),
   PAN                  VARCHAR2(3),
   REF_NUMBER           VARCHAR2(32),
   STREAM               VARCHAR2(400),
   KIRIM                VARCHAR2(1)
);

insert into LOG_LOG (NO_METER, TGL_UPDATE, TGL_KIRIM, TGL_METER, MTI, RC, DATA_LOST, PAN, REF_NUMBER, STREAM, KIRIM)
select NO_METER, TGL_UPDATE, TGL_KIRIM, TGL_METER, MTI, RC, DATA_LOST, PAN, REF_NUMBER, STREAM, KIRIM
from AMR."tmp_LOG_LOG";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_LP                                                */
/*==============================================================*/
create table LOG_LP 
(
   NO_METER             VARCHAR2(15),
   KD_FM                VARCHAR2(3),
   TGL_KIRIM            VARCHAR2(19),
   TGL_BACA             VARCHAR2(19),
   KWH_KIRIM            NUMBER(17,6),
   KVARH_KIRIM          NUMBER(17,6),
   KWH_TERIMA           NUMBER(17,6),
   KVARH_TERIMA         NUMBER(17,6),
   TEGANGAN_R           NUMBER(11,6),
   TEGANGAN_S           NUMBER(11,6),
   TEGANGAN_T           NUMBER(11,6),
   ARUS_R               NUMBER(11,6),
   ARUS_S               NUMBER(11,6),
   ARUS_T               NUMBER(11,6),
   FAKTOR_KERJA         NUMBER(7,6),
   FREKUENSI            NUMBER(8,6),
   DAYA                 NUMBER(17,6),
   DAYA_REAKTIF         NUMBER(17,6),
   TGL_UPDATE           VARCHAR2(19)         default TO_CHAR(SYSDATE,'yyyy-mm-dd hh24:mi:ss'),
   REF_NUMBER           VARCHAR2(32),
   KIRIM                VARCHAR2(1)          default NULL,
   RC                   VARCHAR2(3)          default NULL
);

insert into LOG_LP (NO_METER, KD_FM, TGL_KIRIM, TGL_BACA, KWH_KIRIM, KVARH_KIRIM, KWH_TERIMA, KVARH_TERIMA, TEGANGAN_R, TEGANGAN_S, TEGANGAN_T, ARUS_R, ARUS_S, ARUS_T, FAKTOR_KERJA, FREKUENSI, DAYA, DAYA_REAKTIF, TGL_UPDATE, REF_NUMBER, KIRIM, RC)
select NO_METER, KD_FM, TGL_KIRIM, TGL_BACA, KWH_KIRIM, KVARH_KIRIM, KWH_TERIMA, KVARH_TERIMA, TEGANGAN_R, TEGANGAN_S, TEGANGAN_T, ARUS_R, ARUS_S, ARUS_T, FAKTOR_KERJA, FREKUENSI, DAYA, DAYA_REAKTIF, TGL_UPDATE, REF_NUMBER, KIRIM, RC
from AMR."tmp_LOG_LP";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_MANUAL_EOB                                        */
/*==============================================================*/
create table LOG_MANUAL_EOB 
(
   KD_DOKUMEN_EOB       NUMBER               not null,
   TGL_UPLOAD           DATE,
   NAMA_FILE            VARCHAR2(20),
   "FILE"               RAW(80),
   PETUGAS              VARCHAR2(80),
   constraint PK_LOG_MANUAL_EOB primary key (KD_DOKUMEN_EOB)
);

insert into LOG_MANUAL_EOB (KD_DOKUMEN_EOB, TGL_UPLOAD, NAMA_FILE, "FILE", PETUGAS)
select KD_DOKUMEN_EOB, TGL_UPLOAD, NAMA_FILE, "FILE", PETUGAS
from AMR."tmp_LOG_MANUAL_EOB";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_MANUAL_LP                                         */
/*==============================================================*/
create table LOG_MANUAL_LP 
(
   KD_DOKUMEN_LP        NUMBER               not null,
   TGL_UPLOAD           DATE,
   NAMA_FILE            VARCHAR2(20),
   "FILE"               RAW(80),
   PETUGAS              VARCHAR2(80),
   constraint PK_LOG_MANUAL_LP primary key (KD_DOKUMEN_LP)
);

insert into LOG_MANUAL_LP (KD_DOKUMEN_LP, TGL_UPLOAD, NAMA_FILE, "FILE", PETUGAS)
select KD_DOKUMEN_LP, TGL_UPLOAD, NAMA_FILE, "FILE", PETUGAS
from AMR."tmp_LOG_MANUAL_LP";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_METER_SESSION_OLD                                 */
/*==============================================================*/
create table LOG_METER_SESSION_OLD 
(
   NOMETER              VARCHAR2(15),
   IDTIKUR              VARCHAR2(7),
   METER_SESSION        VARCHAR2(50),
   METER_LASTSESSION    VARCHAR2(19),
   METER_IP             VARCHAR2(15)
);

insert into LOG_METER_SESSION_OLD (NOMETER, IDTIKUR, METER_SESSION, METER_LASTSESSION, METER_IP)
select NOMETER, IDTIKUR, METER_SESSION, METER_LASTSESSION, METER_IP
from AMR."tmp_LOG_METER_SESSION_OLD";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_PROFILE_OLD                                       */
/*==============================================================*/
create table LOG_PROFILE_OLD 
(
   NOMETER              VARCHAR2(15),
   FMETER               VARCHAR2(3),
   TGLKIRIM             VARCHAR2(19),
   TGLBACA              VARCHAR2(19),
   KWH_KIRIM            NUMBER,
   KVARH_KIRIM          NUMBER,
   KWH_TERIMA           NUMBER,
   KVARH_TERIMA         NUMBER,
   TEGANGAN_R           NUMBER,
   TEGANGAN_S           NUMBER,
   TEGANGAN_T           NUMBER,
   ARUS_R               NUMBER,
   ARUS_S               NUMBER,
   ARUS_T               NUMBER,
   FREKUENSI            NUMBER,
   FAKTOR_KERJA         NUMBER,
   DAYA_MW              NUMBER(17,6),
   DAYA_MVAR            NUMBER(17,6),
   TGUPDATE             VARCHAR2(19),
   REFNUM               VARCHAR2(32),
   KIRIM                VARCHAR2(1),
   RC                   VARCHAR2(2),
   NOBATCH              VARCHAR2(5)
);

insert into LOG_PROFILE_OLD (NOMETER, FMETER, TGLKIRIM, TGLBACA, KWH_KIRIM, KVARH_KIRIM, KWH_TERIMA, KVARH_TERIMA, TEGANGAN_R, TEGANGAN_S, TEGANGAN_T, ARUS_R, ARUS_S, ARUS_T, FREKUENSI, FAKTOR_KERJA, DAYA_MW, DAYA_MVAR, TGUPDATE, REFNUM, KIRIM, RC, NOBATCH)
select NOMETER, FMETER, TGLKIRIM, TGLBACA, KWH_KIRIM, KVARH_KIRIM, KWH_TERIMA, KVARH_TERIMA, TEGANGAN_R, TEGANGAN_S, TEGANGAN_T, ARUS_R, ARUS_S, ARUS_T, FREKUENSI, FAKTOR_KERJA, DAYA_MW, DAYA_MVAR, TGUPDATE, REFNUM, KIRIM, RC, NOBATCH
from AMR."tmp_LOG_PROFILE_OLD";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_SESSION                                           */
/*==============================================================*/
create table LOG_SESSION 
(
   NO_METER             VARCHAR2(15),
   TGL_KIRIM            VARCHAR2(14),
   METER_SESSION        VARCHAR2(19)         default '0000-00-00 00:00:00',
   METER_IP             VARCHAR2(15)
);

insert into LOG_SESSION (NO_METER, TGL_KIRIM, METER_SESSION, METER_IP)
select NO_METER, TGL_KIRIM, METER_SESSION, METER_IP
from AMR."tmp_LOG_SESSION";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_TRANSAKSI                                         */
/*==============================================================*/
create table LOG_TRANSAKSI 
(
   RC                   VARCHAR2(2),
   KD_FM                VARCHAR2(3),
   NO_METER             VARCHAR2(15),
   TGL_UPDATE           DATE,
   TGL_KIRIM            DATE,
   TGL_METER            DATE,
   MTI                  VARCHAR2(4),
   REF_NUMBER           NUMBER,
   MESSAGE              VARCHAR2(400)
);

comment on column LOG_TRANSAKSI.TGL_METER is
'DATE/TIME METER SAVED';

insert into LOG_TRANSAKSI (RC, KD_FM, NO_METER, TGL_UPDATE, TGL_KIRIM, TGL_METER, MTI, REF_NUMBER, MESSAGE)
select RC, KD_FM, NO_METER, TGL_UPDATE, TGL_KIRIM, TGL_METER, MTI, REF_NUMBER, MESSAGE
from AMR."tmp_LOG_TRANSAKSI";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_30                                                 */
/*==============================================================*/
create index FK_30 on LOG_TRANSAKSI (
   RC ASC
);

/*==============================================================*/
/* Index: FK_31                                                 */
/*==============================================================*/
create index FK_31 on LOG_TRANSAKSI (
   NO_METER ASC
);

/*==============================================================*/
/* Index: FK_32                                                 */
/*==============================================================*/
create index FK_32 on LOG_TRANSAKSI (
   KD_FM ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: LOG_TRANSAKSI_OLD                                     */
/*==============================================================*/
create table LOG_TRANSAKSI_OLD 
(
   TGLUPDATE            VARCHAR2(19),
   TGLREQUEST           VARCHAR2(19),
   TGLMETER             VARCHAR2(19),
   MTI                  VARCHAR2(4),
   RC                   VARCHAR2(2),
   NOMETER              VARCHAR2(15),
   PAN                  VARCHAR2(3),
   REFNUM               VARCHAR2(32),
   STREAM               VARCHAR2(400),
   KIRIM                VARCHAR2(1)
);

insert into LOG_TRANSAKSI_OLD (TGLUPDATE, TGLREQUEST, TGLMETER, MTI, RC, NOMETER, PAN, REFNUM, STREAM, KIRIM)
select TGLUPDATE, TGLREQUEST, TGLMETER, MTI, RC, NOMETER, PAN, REFNUM, STREAM, KIRIM
from AMR."tmp_LOG_TRANSAKSI_OLD";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_BACA                                           */
/*==============================================================*/
create table MASTER_BACA 
(
   BLTH                 NUMBER(6)            not null,
   TGL_AWAL             DATE,
   TGL_AKHIR            DATE,
   JML_HARI             NUMBER,
   JML_ROW              NUMBER,
   constraint PK_MASTER_BACA primary key (BLTH)
);

insert into MASTER_BACA (BLTH, TGL_AWAL, TGL_AKHIR, JML_HARI, JML_ROW)
select BLTH, TGL_AWAL, TGL_AKHIR, JML_HARI, JML_ROW
from AMR."tmp_MASTER_BACA";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_EVENT                                          */
/*==============================================================*/
create table MASTER_EVENT 
(
   KD_EVENT             VARCHAR2(4)          not null,
   NAMA_EVENT           VARCHAR2(20),
   constraint PK_MASTER_EVENT primary key (KD_EVENT)
);

insert into MASTER_EVENT (KD_EVENT, NAMA_EVENT)
select KD_EVENT, NAMA_EVENT
from AMR."tmp_MASTER_EVENT";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_FUNGSI_METER                                   */
/*==============================================================*/
create table MASTER_FUNGSI_METER 
(
   KD_FM                VARCHAR2(3)          not null,
   NAMA_FM              VARCHAR2(80),
   constraint PK_MASTER_FUNGSI_METER primary key (KD_FM)
);

insert into MASTER_FUNGSI_METER (KD_FM, NAMA_FM)
select KD_FM, NAMA_FM
from AMR."tmp_MASTER_FUNGSI_METER";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_GI                                             */
/*==============================================================*/
create table MASTER_GI 
(
   KD_GI                VARCHAR2(5)          not null,
   KD_UNIT_PELAKSANA    VARCHAR2(5),
   NAMA_GI              VARCHAR2(80),
   ALAMAT               VARCHAR2(80),
   KOORDINAT_X          NUMBER,
   KOORDINAT_Y          NUMBER,
   constraint PK_MASTER_GI primary key (KD_GI)
);

comment on table MASTER_GI is
'MASTER GARDU INDUK';

insert into MASTER_GI (KD_GI, KD_UNIT_PELAKSANA, NAMA_GI, ALAMAT, KOORDINAT_X, KOORDINAT_Y)
select KD_GI, KD_UNIT_PELAKSANA, NAMA_GI, ALAMAT, KOORDINAT_X, KOORDINAT_Y
from AMR."tmp_MASTER_GI";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_MASTER_G_GET_GI_MASTER_U_FK                        */
/*==============================================================*/
create index FK_MASTER_G_GET_GI_MASTER_U_FK on MASTER_GI (
   KD_UNIT_PELAKSANA ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_JENIS_BAHAN_BAKAR                              */
/*==============================================================*/
create table MASTER_JENIS_BAHAN_BAKAR 
(
   KD_JENIS_BAHAN_BAKAR NUMBER(2)            not null,
   JENIS_BAHAN_BAKAR    VARCHAR2(20),
   TENAGA               VARCHAR2(20),
   constraint PK_MASTER_JENIS_BAHAN_BAKAR primary key (KD_JENIS_BAHAN_BAKAR)
);

comment on table MASTER_JENIS_BAHAN_BAKAR is
'Referensi jenis bahan bakar untuk master unit pelaksana';

insert into MASTER_JENIS_BAHAN_BAKAR (KD_JENIS_BAHAN_BAKAR, JENIS_BAHAN_BAKAR, TENAGA)
select KD_JENIS_BAHAN_BAKAR, JENIS_BAHAN_BAKAR, TENAGA
from AMR."tmp_MASTER_JENIS_BAHAN_BAKAR";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_KODE_MUTASI                                    */
/*==============================================================*/
create table MASTER_KODE_MUTASI 
(
   KD_MUTASI            VARCHAR2(1)          not null,
   NAMA_MUTASI          VARCHAR2(20),
   constraint PK_MASTER_KODE_MUTASI primary key (KD_MUTASI)
);

insert into MASTER_KODE_MUTASI (KD_MUTASI, NAMA_MUTASI)
select KD_MUTASI, NAMA_MUTASI
from AMR."tmp_MASTER_KODE_MUTASI";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_KONTRUKSI                                      */
/*==============================================================*/
create table MASTER_KONTRUKSI 
(
   KD_KONSTRUKSI        VARCHAR2(2)          not null,
   NAMA_KONSTRUKSI      VARCHAR2(25),
   constraint PK_MASTER_KONTRUKSI primary key (KD_KONSTRUKSI)
);

insert into MASTER_KONTRUKSI (KD_KONSTRUKSI, NAMA_KONSTRUKSI)
select KD_KONSTRUKSI, NAMA_KONSTRUKSI
from AMR."tmp_MASTER_KONTRUKSI";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_PERUSAHAAN                                     */
/*==============================================================*/
create table MASTER_PERUSAHAAN 
(
   KD_PERUSAHAAN        NUMBER(5)            not null,
   NAMA_PERUSAHAAN      VARCHAR2(80),
   TIPE_PERUSAHAAN      VARCHAR2(20),
   JENIS_PERUSAHAAN     VARCHAR2(20),
   constraint PK_MASTER_PERUSAHAAN primary key (KD_PERUSAHAAN)
);

--WARNING: The following insert order will not restore columns: KD_PERUSAHAAN
insert into MASTER_PERUSAHAAN (KD_PERUSAHAAN, NAMA_PERUSAHAAN, TIPE_PERUSAHAAN, JENIS_PERUSAHAAN)
select ?, NAMA_PERUSAHAAN, TIPE_PERUSAHAAN, JENIS_PERUSAHAAN
from AMR."tmp_MASTER_PERUSAHAAN";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_RC                                             */
/*==============================================================*/
create table MASTER_RC 
(
   RC                   VARCHAR2(2)          not null,
   NAMA_RC              VARCHAR2(25),
   constraint PK_MASTER_RC primary key (RC)
);

insert into MASTER_RC (RC, NAMA_RC)
select RC, NAMA_RC
from AMR."tmp_MASTER_RC";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_TRAFO                                          */
/*==============================================================*/
create table MASTER_TRAFO 
(
   KD_TRAFO             NUMBER               not null,
   KD_GI                VARCHAR2(5),
   NAMA_TRAFO           VARCHAR2(20),
   KOORDINAT_X          NUMBER,
   KOORDINAT_Y          NUMBER,
   constraint PK_MASTER_TRAFO primary key (KD_TRAFO)
);

comment on table MASTER_TRAFO is
'MASTER TRAFO GARDU INDUK';

insert into MASTER_TRAFO (KD_TRAFO, KD_GI, NAMA_TRAFO, KOORDINAT_X, KOORDINAT_Y)
select KD_TRAFO, KD_GI, NAMA_TRAFO, KOORDINAT_X, KOORDINAT_Y
from AMR."tmp_MASTER_TRAFO";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_33                                                 */
/*==============================================================*/
create index FK_33 on MASTER_TRAFO (
   KD_GI ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_TYPE_METER                                     */
/*==============================================================*/
create table MASTER_TYPE_METER 
(
   KD_TYPE_METER        NUMBER               not null,
   MERK_METER           VARCHAR2(20),
   TYPE_METER           VARCHAR2(20),
   constraint PK_MASTER_TYPE_METER primary key (KD_TYPE_METER)
);

insert into MASTER_TYPE_METER (KD_TYPE_METER, MERK_METER, TYPE_METER)
select KD_TYPE_METER, MERK_METER, TYPE_METER
from AMR."tmp_MASTER_TYPE_METER";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_UNIT_INDUK                                     */
/*==============================================================*/
create table MASTER_UNIT_INDUK 
(
   KD_UNIT_INDUK        VARCHAR2(2)          not null,
   KD_PERUSAHAAN        NUMBER(5),
   NAMA_UNIT_INDUK      VARCHAR2(80),
   ALAMAT               VARCHAR2(80),
   KOORDINAT_X          NUMBER,
   KOORDINAT_Y          NUMBER,
   constraint PK_MASTER_UNIT_INDUK primary key (KD_UNIT_INDUK)
);

comment on table MASTER_UNIT_INDUK is
'Master unit untuk organisasi level 2';

--WARNING: The following insert order will not restore columns: KD_PERUSAHAAN
insert into MASTER_UNIT_INDUK (KD_UNIT_INDUK, NAMA_UNIT_INDUK, ALAMAT, KOORDINAT_X, KOORDINAT_Y)
select KD_UNIT_INDUK, NAMA_UNIT_INDUK, ALAMAT, KOORDINAT_X, KOORDINAT_Y
from AMR."tmp_MASTER_UNIT_INDUK";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_34                                                 */
/*==============================================================*/
create index FK_34 on MASTER_UNIT_INDUK (
   KD_PERUSAHAAN ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MASTER_UNIT_PELAKSANA                                 */
/*==============================================================*/
create table MASTER_UNIT_PELAKSANA 
(
   KD_UNIT_PELAKSANA    VARCHAR2(5)          not null,
   KD_UNIT_INDUK        VARCHAR2(2),
   KD_JENIS_BAHAN_BAKAR NUMBER(2),
   NAMA_UNIT_PELAKSANA  VARCHAR2(80),
   ALAMAT               VARCHAR2(80),
   KETERANGAN           VARCHAR2(200),
   KOORDINAT_X          NUMBER,
   KOORDINAT_Y          NUMBER,
   constraint PK_MASTER_UNIT_PELAKSANA primary key (KD_UNIT_PELAKSANA)
);

comment on table MASTER_UNIT_PELAKSANA is
'Master unit untuk organisasi level 3';

insert into MASTER_UNIT_PELAKSANA (KD_UNIT_PELAKSANA, KD_UNIT_INDUK, KD_JENIS_BAHAN_BAKAR, NAMA_UNIT_PELAKSANA, ALAMAT, KETERANGAN, KOORDINAT_X, KOORDINAT_Y)
select KD_UNIT_PELAKSANA, KD_UNIT_INDUK, KD_JENIS_BAHAN_BAKAR, NAMA_UNIT_PELAKSANA, ALAMAT, KETERANGAN, KOORDINAT_X, KOORDINAT_Y
from AMR."tmp_MASTER_UNIT_PELAKSANA";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_35                                                 */
/*==============================================================*/
create index FK_35 on MASTER_UNIT_PELAKSANA (
   KD_UNIT_INDUK ASC
);

/*==============================================================*/
/* Index: FK_36                                                 */
/*==============================================================*/
create index FK_36 on MASTER_UNIT_PELAKSANA (
   KD_JENIS_BAHAN_BAKAR ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MUTASI_METER                                          */
/*==============================================================*/
create table MUTASI_METER 
(
   NO_MUTASI_METER      NUMBER               not null,
   KD_MUTASI            VARCHAR2(1),
   KD_TIKUR             VARCHAR2(13),
   TGL_MUTASI           DATE,
   TGL_PASANG           DATE,
   TGL_BONGKAR          DATE,
   STAND_BONGKAR        NUMBER,
   STAND_PASANG         NUMBER,
   AKTIF                NUMBER(1),
   NO_METER_UTAMA       VARCHAR2(15),
   PETUGAS              VARCHAR2(80),
   FLAG_APPROVAL        NUMBER,
   TGL_APPROVAL         DATE,
   APPROVED_BY          VARCHAR2(35),
   constraint PK_MUTASI_METER primary key (NO_MUTASI_METER)
);

insert into MUTASI_METER (NO_MUTASI_METER, KD_MUTASI, KD_TIKUR, TGL_MUTASI, TGL_PASANG, TGL_BONGKAR, STAND_BONGKAR, STAND_PASANG, AKTIF, NO_METER_UTAMA, PETUGAS, FLAG_APPROVAL, TGL_APPROVAL, APPROVED_BY)
select NO_MUTASI_METER, KD_MUTASI, KD_TIKUR, TGL_MUTASI, TGL_PASANG, TGL_BONGKAR, STAND_BONGKAR, STAND_PASANG, AKTIF, NO_METER_UTAMA, PETUGAS, FLAG_APPROVAL, TGL_APPROVAL, APPROVED_BY
from AMR."tmp_MUTASI_METER";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_MUTASI_M_GET_T_DATA_TIK_FK                         */
/*==============================================================*/
create index FK_MUTASI_M_GET_T_DATA_TIK_FK on MUTASI_METER (
   KD_TIKUR ASC
);

/*==============================================================*/
/* Index: FK_37                                                 */
/*==============================================================*/
create index FK_37 on MUTASI_METER (
   KD_MUTASI ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: MUTASI_MODEM                                          */
/*==============================================================*/
create table MUTASI_MODEM 
(
   NO_MUTASI_MODEM      NUMBER               not null,
   NO_METER             VARCHAR2(15),
   KD_MUTASI            VARCHAR2(1),
   KD_TIKUR             VARCHAR2(13),
   NO_MODEM             VARCHAR2(80),
   TGL_MUTASI           DATE,
   TGL_PASANG           DATE,
   TGL_BONGKAR          DATE,
   STAND_BONGKAR        NUMBER,
   STAND_PASANG         NUMBER,
   AKTIF                NUMBER(1),
   PETUGAS              VARCHAR2(80),
   FLAG_APPROVAL        NUMBER,
   TGL_APPROVAL         DATE,
   APPROVED_BY          VARCHAR2(35),
   constraint PK_MUTASI_MODEM primary key (NO_MUTASI_MODEM)
);

insert into MUTASI_MODEM (NO_MUTASI_MODEM, NO_METER, KD_MUTASI, KD_TIKUR, NO_MODEM, TGL_MUTASI, TGL_PASANG, TGL_BONGKAR, STAND_BONGKAR, STAND_PASANG, AKTIF, PETUGAS, FLAG_APPROVAL, TGL_APPROVAL, APPROVED_BY)
select NO_MUTASI_MODEM, NO_METER, KD_MUTASI, KD_TIKUR, NO_MODEM, TGL_MUTASI, TGL_PASANG, TGL_BONGKAR, STAND_BONGKAR, STAND_PASANG, AKTIF, PETUGAS, FLAG_APPROVAL, TGL_APPROVAL, APPROVED_BY
from AMR."tmp_MUTASI_MODEM";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_MUTASI_M_GET_T2_DATA_TIK_FK                        */
/*==============================================================*/
create index FK_MUTASI_M_GET_T2_DATA_TIK_FK on MUTASI_MODEM (
   KD_TIKUR ASC
);

/*==============================================================*/
/* Index: FK_38                                                 */
/*==============================================================*/
create index FK_38 on MUTASI_MODEM (
   NO_MODEM ASC
);

/*==============================================================*/
/* Index: FK_39                                                 */
/*==============================================================*/
create index FK_39 on MUTASI_MODEM (
   NO_METER ASC
);

/*==============================================================*/
/* Index: FK_40                                                 */
/*==============================================================*/
create index FK_40 on MUTASI_MODEM (
   KD_MUTASI ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: TRANS_DATA_EVENT                                      */
/*==============================================================*/
create table TRANS_DATA_EVENT 
(
   KD_FM                VARCHAR2(3),
   RC                   VARCHAR2(2),
   NO_METER             VARCHAR2(15),
   TGL_KIRIM            DATE,
   NAMA_EVENT           VARCHAR2(20),
   TGL_EVENT            DATE,
   TGL_UPDATE           DATE,
   REF_NUMBER           NUMBER,
   FLAG_KIRIM           NUMBER(1)
);

comment on column TRANS_DATA_EVENT.TGL_EVENT is
'TGL EVENT TERJADI';

comment on column TRANS_DATA_EVENT.FLAG_KIRIM is
'FLAG NULL  ; 1 SUDAH DIKIRIM';

insert into TRANS_DATA_EVENT (KD_FM, RC, NO_METER, TGL_KIRIM, NAMA_EVENT, TGL_EVENT, TGL_UPDATE, REF_NUMBER, FLAG_KIRIM)
select KD_FM, RC, NO_METER, TGL_KIRIM, NAMA_EVENT, TGL_EVENT, TGL_UPDATE, REF_NUMBER, FLAG_KIRIM
from AMR."tmp_TRANS_DATA_EVENT";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_41                                                 */
/*==============================================================*/
create index FK_41 on TRANS_DATA_EVENT (
   RC ASC
);

/*==============================================================*/
/* Index: FK_42                                                 */
/*==============================================================*/
create index FK_42 on TRANS_DATA_EVENT (
   NO_METER ASC
);

/*==============================================================*/
/* Index: FK_43                                                 */
/*==============================================================*/
create index FK_43 on TRANS_DATA_EVENT (
   KD_FM ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: TRANS_EOB                                             */
/*==============================================================*/
create table TRANS_EOB 
(
   RC                   VARCHAR2(2),
   KD_FM                VARCHAR2(3),
   NO_METER             VARCHAR2(15),
   TGL_KIRIM            DATE,
   TGL_BACA             DATE,
   STANDKWH_WBP_KIRIM___ NUMBER,
   STANDKWH_WBP_TERIMA__ NUMBER,
   STANDKWH_LWBP1_KIRIM_ NUMBER,
   STANDKWH_LWBP1_TERIMA NUMBER,
   STANDKWH_LWBP2_KIRIM_ NUMBER,
   STANDKWH_LWBP2_TERIMA NUMBER,
   STANDKWH_KVARH_KIRIM_ NUMBER,
   STANDKWH_KVARH_TERIMA NUMBER,
   STANDKWH_TOTAL_KIRIM NUMBER,
   STANDKWH_TOTAL_TERIMA NUMBER,
   STANDKVA_MAX         NUMBER,
   TGL_KVA_MAX          DATE,
   TGL_UPDATE           DATE,
   REF_NUMBER           NUMBER,
   FLAG_KIRIM           NUMBER(1)
);

comment on table TRANS_EOB is
'Transaksi data End Off Billing';

comment on column TRANS_EOB.FLAG_KIRIM is
'FLAG NULL  ; 1 SUDAH DIKIRIM';

insert into TRANS_EOB (RC, KD_FM, NO_METER, TGL_KIRIM, TGL_BACA, STANDKWH_WBP_KIRIM___, STANDKWH_WBP_TERIMA__, STANDKWH_LWBP1_KIRIM_, STANDKWH_LWBP1_TERIMA, STANDKWH_LWBP2_KIRIM_, STANDKWH_LWBP2_TERIMA, STANDKWH_KVARH_KIRIM_, STANDKWH_KVARH_TERIMA, STANDKWH_TOTAL_KIRIM, STANDKWH_TOTAL_TERIMA, STANDKVA_MAX, TGL_KVA_MAX, TGL_UPDATE, REF_NUMBER, FLAG_KIRIM)
select RC, KD_FM, NO_METER, TGL_KIRIM, TGL_BACA, STANDKWH_WBP_KIRIM___, STANDKWH_WBP_TERIMA__, STANDKWH_LWBP1_KIRIM_, STANDKWH_LWBP1_TERIMA, STANDKWH_LWBP2_KIRIM_, STANDKWH_LWBP2_TERIMA, STANDKWH_KVARH_KIRIM_, STANDKWH_KVARH_TERIMA, STANDKWH_TOTAL_KIRIM, STANDKWH_TOTAL_TERIMA, STANDKVA_MAX, TGL_KVA_MAX, TGL_UPDATE, REF_NUMBER, FLAG_KIRIM
from AMR."tmp_TRANS_EOB";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_44                                                 */
/*==============================================================*/
create index FK_44 on TRANS_EOB (
   RC ASC
);

/*==============================================================*/
/* Index: FK_45                                                 */
/*==============================================================*/
create index FK_45 on TRANS_EOB (
   KD_FM ASC
);

/*==============================================================*/
/* Index: FK_46                                                 */
/*==============================================================*/
create index FK_46 on TRANS_EOB (
   NO_METER ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: TRANS_EOB_MANUAL                                      */
/*==============================================================*/
create table TRANS_EOB_MANUAL 
(
   KD_FM                VARCHAR2(3),
   RC                   VARCHAR2(2),
   NO_METER             VARCHAR2(15),
   KD_DOKUMEN_EOB       NUMBER,
   TGL_KIRIM            DATE,
   TGL_BACA             DATE,
   STANDKWH_WBP_KIRIM   NUMBER,
   STANDKWH_WBP_TERIMA  NUMBER,
   STANDKWH_LWBP1_KIRIM NUMBER,
   STANDKWH_LWBP1_TERIMA NUMBER,
   STANDKWH_LWBP2_KIRIM NUMBER,
   STANDKWH_LWBP2_TERIMA NUMBER,
   STANDKWH_KVARH_KIRIM NUMBER,
   STANDKWH_KVARH_TERIMA NUMBER,
   STANDKWH_TOTAL_KIRIM NUMBER,
   STANDKWH_TOTAL_TERIMA NUMBER,
   STANDKVA_MAX         NUMBER,
   TGL_KVA_MAX          DATE,
   TGL_UPDATE           DATE,
   REF_NUMBER           NUMBER,
   FLAG_KIRIM           NUMBER(1),
   KD_DOKUMEN_LP        NUMBER
);

comment on table TRANS_EOB_MANUAL is
'Transaksi data End Off Billing manual';

comment on column TRANS_EOB_MANUAL.FLAG_KIRIM is
'FLAG NULL  ; 1 SUDAH DIKIRIM';

insert into TRANS_EOB_MANUAL (KD_FM, RC, NO_METER, KD_DOKUMEN_EOB, TGL_KIRIM, TGL_BACA, STANDKWH_WBP_KIRIM, STANDKWH_WBP_TERIMA, STANDKWH_LWBP1_KIRIM, STANDKWH_LWBP1_TERIMA, STANDKWH_LWBP2_KIRIM, STANDKWH_LWBP2_TERIMA, STANDKWH_KVARH_KIRIM, STANDKWH_KVARH_TERIMA, STANDKWH_TOTAL_KIRIM, STANDKWH_TOTAL_TERIMA, STANDKVA_MAX, TGL_KVA_MAX, TGL_UPDATE, REF_NUMBER, FLAG_KIRIM, KD_DOKUMEN_LP)
select KD_FM, RC, NO_METER, KD_DOKUMEN_EOB, TGL_KIRIM, TGL_BACA, STANDKWH_WBP_KIRIM, STANDKWH_WBP_TERIMA, STANDKWH_LWBP1_KIRIM, STANDKWH_LWBP1_TERIMA, STANDKWH_LWBP2_KIRIM, STANDKWH_LWBP2_TERIMA, STANDKWH_KVARH_KIRIM, STANDKWH_KVARH_TERIMA, STANDKWH_TOTAL_KIRIM, STANDKWH_TOTAL_TERIMA, STANDKVA_MAX, TGL_KVA_MAX, TGL_UPDATE, REF_NUMBER, FLAG_KIRIM, KD_DOKUMEN_LP
from AMR."tmp_TRANS_EOB_MANUAL";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_48                                                 */
/*==============================================================*/
create index FK_48 on TRANS_EOB_MANUAL (
   RC ASC
);

/*==============================================================*/
/* Index: FK_47                                                 */
/*==============================================================*/
create index FK_47 on TRANS_EOB_MANUAL (
   KD_FM ASC
);

/*==============================================================*/
/* Index: FK_49                                                 */
/*==============================================================*/
create index FK_49 on TRANS_EOB_MANUAL (
   KD_DOKUMEN_EOB ASC
);

/*==============================================================*/
/* Index: FK_50                                                 */
/*==============================================================*/
create index FK_50 on TRANS_EOB_MANUAL (
   NO_METER ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: TRANS_III07                                           */
/*==============================================================*/
create table TRANS_III07 
(
   THBLREK              NUMBER(6),
   UNITUPI              VARCHAR2(2),
   UNITAP               CLOB,
   UNITUP               VARCHAR2(5),
   NO_BARIS             NUMBER,
   GOLTARIF             VARCHAR2(3),
   TARIF                VARCHAR2(2),
   DAYA_MIN             NUMBER,
   DAYA_MAX             NUMBER,
   LABEL                VARCHAR2(100),
   LABEL_ASTERIK        VARCHAR2(10),
   JMLPLG               NUMBER,
   JMLDAYA              NUMBER,
   JMLKWH               NUMBER,
   KWHLWBP              NUMBER,
   KWHWBP               NUMBER,
   KELBKVARH            NUMBER,
   RPBEBAN              NUMBER,
   RPLWBP               NUMBER,
   RPWBP                NUMBER,
   RPKVARH              NUMBER,
   RPPTL_BRUTO          NUMBER,
   CAPPING_TAMBAH       NUMBER,
   CAPPING_KURANG       NUMBER,
   RPDISKONTMP          NUMBER,
   RPPTL_NETTO          NUMBER,
   RPANGSBP             NUMBER,
   RPANGSUJL            NUMBER,
   RPANGSTSP2TL         NUMBER,
   RPANGSKLP            NUMBER,
   RPBPTRAFO            NUMBER,
   RPSEWATRAFO          NUMBER,
   RPBPKAP              NUMBER,
   RPSEWAKAP            NUMBER,
   RPINVOICE            NUMBER,
   RPBPJU               NUMBER,
   RPPPN                NUMBER,
   RPMAT                NUMBER,
   RPTAG_TERCETAK       NUMBER,
   PENGURANGAN          NUMBER,
   PENAMBAHAN           NUMBER,
   RESTITUSI            NUMBER,
   JMLPERBAIKAN         NUMBER,
   RPTAG                NUMBER,
   THBLLAP              NUMBER(6)
);

insert into TRANS_III07 (THBLREK, UNITUPI, UNITAP, UNITUP, GOLTARIF, TARIF, DAYA_MIN, DAYA_MAX, JMLPLG, JMLDAYA, JMLKWH, KWHLWBP, KWHWBP, KELBKVARH, RPBEBAN, RPLWBP, RPWBP, RPKVARH)
select THBLREK, UNITUPI, UNITAP, UNITUP, GOLTARIF, TARIF, DAYA_MIN, DAYA_MAX, JMLPLG, JMLDAYA, JMLKWH, KWHLWBP, KWHWBP, KELBKVARH, RPBEBAN, RPLWBP, RPWBP, RPKVARH
from AMR."tmp_TRANS_III07";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: TRANS_III09                                           */
/*==============================================================*/
create table TRANS_III09 
(
   THBLLAP              NUMBER(6),
   JENISLAP             VARCHAR2(20),
   UNITUPI              VARCHAR2(2),
   UNITAP               CLOB,
   UNITUP               VARCHAR2(5),
   NO_BARIS             NUMBER,
   GOLTARIF             VARCHAR2(3),
   TARIF                VARCHAR2(2),
   DAYA_MIN             NUMBER,
   DAYA_MAX             NUMBER,
   LABEL                VARCHAR2(100),
   LABEL_ASTERIK        VARCHAR2(10),
   JMLPLG               NUMBER,
   JMLDAYA              NUMBER,
   JMLKWH               NUMBER,
   KWHLWBP              NUMBER,
   KWHWBP               NUMBER,
   KELBKVARH            NUMBER,
   RPBEBAN              NUMBER,
   RPKWH                NUMBER,
   RPKVARH              NUMBER,
   RPPTL                NUMBER,
   RATA_VA_LANGGANAN    NUMBER,
   RATA_KWH_LANGGANAN   NUMBER,
   RATA_RP_KWH          NUMBER,
   JAM_NYALA            NUMBER,
   KWH_SD_BLN_INI       NUMBER,
   KVARH_SD_BLN_INI     NUMBER,
   B_BEBAN_SD_BLN_INI   NUMBER,
   B_KWH_SD_BLN_INI     NUMBER,
   B_KVARH_SD_BLN_INI   NUMBER,
   JUMLAH_SD_BLN_INI    NUMBER,
   RP_KWH_SD_BLN_INI    NUMBER
);

insert into TRANS_III09 (UNITUPI, UNITAP, UNITUP, GOLTARIF, TARIF, DAYA_MIN, DAYA_MAX, JMLPLG, JMLDAYA, JMLKWH, KWHLWBP, KWHWBP, KELBKVARH, RPBEBAN, RPKWH, RPKVARH, RPPTL)
select UNITUPI, UNITAP, UNITUP, GOLTARIF, TARIF, DAYA_MIN, DAYA_MAX, JMLPLG, JMLDAYA, JMLKWH, KWHLWBP, KWHWBP, KELBKVARH, RPBEBAN, RPKWH, RPKVARH, RPPTL
from AMR."tmp_TRANS_III09";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: TRANS_LP                                              */
/*==============================================================*/
create table TRANS_LP 
(
   KD_FM                VARCHAR2(3),
   NO_METER             VARCHAR2(15),
   RC                   VARCHAR2(2),
   TGL_KIRIM            DATE,
   TGL_BACA             DATE,
   KWH_KIRIM            NUMBER,
   KVARH_KIRIM          NUMBER,
   KWH_TERIMA           NUMBER,
   KVARH_TERIMA         NUMBER,
   TEGANGAN_R           NUMBER,
   TEGANGAN_S           NUMBER,
   TEGANGAN_T           NUMBER,
   ARUS_R               NUMBER,
   ARUS_S               NUMBER,
   ARUS_T               NUMBER,
   FAKTOR_KERJA         NUMBER,
   FREKUENSI            NUMBER,
   DAYA                 NUMBER,
   DAYA_REAKTIF         NUMBER,
   TGL_UPDATE           DATE,
   REF_NUMBER           NUMBER,
   FLAG_KIRIM           NUMBER(1)
);

comment on table TRANS_LP is
'Transaksi data load profile';

comment on column TRANS_LP.FLAG_KIRIM is
'FLAG NULL  ; 1 SUDAH DIKIRIM';

insert into TRANS_LP (KD_FM, NO_METER, RC, TGL_KIRIM, TGL_BACA, KWH_KIRIM, KVARH_KIRIM, KWH_TERIMA, KVARH_TERIMA, TEGANGAN_R, TEGANGAN_S, TEGANGAN_T, ARUS_R, ARUS_S, ARUS_T, FAKTOR_KERJA, FREKUENSI, DAYA, DAYA_REAKTIF, TGL_UPDATE, REF_NUMBER, FLAG_KIRIM)
select KD_FM, NO_METER, RC, TGL_KIRIM, TGL_BACA, KWH_KIRIM, KVARH_KIRIM, KWH_TERIMA, KVARH_TERIMA, TEGANGAN_R, TEGANGAN_S, TEGANGAN_T, ARUS_R, ARUS_S, ARUS_T, FAKTOR_KERJA, FREKUENSI, DAYA, DAYA_REAKTIF, TGL_UPDATE, REF_NUMBER, FLAG_KIRIM
from AMR."tmp_TRANS_LP";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_TRANS_LP_GET_RC_MASTER_R_FK                        */
/*==============================================================*/
create index FK_TRANS_LP_GET_RC_MASTER_R_FK on TRANS_LP (
   RC ASC
);

/*==============================================================*/
/* Index: FK_51                                                 */
/*==============================================================*/
create index FK_51 on TRANS_LP (
   NO_METER ASC
);

/*==============================================================*/
/* Index: FK_TRANS_LP_GET_FM_MASTER_F_FK                        */
/*==============================================================*/
create index FK_TRANS_LP_GET_FM_MASTER_F_FK on TRANS_LP (
   KD_FM ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: TRANS_LP3                                             */
/*==============================================================*/
create table TRANS_LP3 
(
   NO_METER3            VARCHAR2(15),
   KD_FM3               VARCHAR2(3),
   TGL_KIRIM3           DATE,
   TGL_BACA3            DATE,
   KWH_KIRIM3           NUMBER,
   KVARH_KIRIM3         NUMBER,
   KWH_TERIMA3          NUMBER,
   KVARH_TERIMA3        NUMBER,
   TEGANGAN_R3          NUMBER,
   TEGANGAN_S3          NUMBER,
   TEGANGAN_T3          NUMBER,
   ARUS_R3              NUMBER,
   ARUS_S3              NUMBER,
   ARUS_T3              NUMBER,
   FAKTOR_KERJA3        NUMBER,
   FREKUENSI3           NUMBER,
   DAYA3                NUMBER,
   DAYA_REAKTIF3        NUMBER,
   TGL_UPDATE3          DATE,
   REF_NUMBER3          NUMBER,
   FLAG_KIRIM3          NUMBER(1),
   RC3                  VARCHAR2(2)
);

comment on table TRANS_LP3 is
'Transaksi data load profile';

comment on column TRANS_LP3.FLAG_KIRIM3 is
'FLAG NULL  ; 1 SUDAH DIKIRIM';

insert into TRANS_LP3 (NO_METER3, KD_FM3, TGL_KIRIM3, TGL_BACA3, KWH_KIRIM3, KVARH_KIRIM3, KWH_TERIMA3, KVARH_TERIMA3, TEGANGAN_R3, TEGANGAN_S3, TEGANGAN_T3, ARUS_R3, ARUS_S3, ARUS_T3, FAKTOR_KERJA3, FREKUENSI3, DAYA3, DAYA_REAKTIF3, TGL_UPDATE3, REF_NUMBER3, FLAG_KIRIM3, RC3)
select NO_METER3, KD_FM3, TGL_KIRIM3, TGL_BACA3, KWH_KIRIM3, KVARH_KIRIM3, KWH_TERIMA3, KVARH_TERIMA3, TEGANGAN_R3, TEGANGAN_S3, TEGANGAN_T3, ARUS_R3, ARUS_S3, ARUS_T3, FAKTOR_KERJA3, FREKUENSI3, DAYA3, DAYA_REAKTIF3, TGL_UPDATE3, REF_NUMBER3, FLAG_KIRIM3, RC3
from AMR."tmp_TRANS_LP3";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: TRANS_LP_MANUAL                                       */
/*==============================================================*/
create table TRANS_LP_MANUAL 
(
   NO_METER             VARCHAR2(15),
   KD_DOKUMEN_LP        NUMBER,
   RC                   VARCHAR2(2),
   TGL_KIRIM            DATE,
   TGL_BACA             DATE,
   KWH_KIRIM            NUMBER,
   KVARH_KIRIM          NUMBER,
   KWH_TERIMA           NUMBER,
   KVARH_TERIMA         NUMBER,
   TEGANGAN_R           NUMBER,
   TEGANGAN_S           NUMBER,
   TEGANGAN_T           NUMBER,
   ARUS_R               NUMBER,
   ARUS_S               NUMBER,
   ARUS_T               NUMBER,
   FAKTOR_KERJA         NUMBER,
   FREKUENSI            NUMBER,
   DAYA                 NUMBER,
   DAYA_REAKTIF         NUMBER,
   TGL_UPDATE           DATE,
   REF_NUMBER           NUMBER,
   FLAG_KIRIM           NUMBER(1)
);

comment on table TRANS_LP_MANUAL is
'Transaksi data load profile manual';

comment on column TRANS_LP_MANUAL.FLAG_KIRIM is
'FLAG NULL  ; 1 SUDAH DIKIRIM';

insert into TRANS_LP_MANUAL (NO_METER, KD_DOKUMEN_LP, RC, TGL_KIRIM, TGL_BACA, KWH_KIRIM, KVARH_KIRIM, KWH_TERIMA, KVARH_TERIMA, TEGANGAN_R, TEGANGAN_S, TEGANGAN_T, ARUS_R, ARUS_S, ARUS_T, FAKTOR_KERJA, FREKUENSI, DAYA, DAYA_REAKTIF, TGL_UPDATE, REF_NUMBER, FLAG_KIRIM)
select NO_METER, KD_DOKUMEN_LP, RC, TGL_KIRIM, TGL_BACA, KWH_KIRIM, KVARH_KIRIM, KWH_TERIMA, KVARH_TERIMA, TEGANGAN_R, TEGANGAN_S, TEGANGAN_T, ARUS_R, ARUS_S, ARUS_T, FAKTOR_KERJA, FREKUENSI, DAYA, DAYA_REAKTIF, TGL_UPDATE, REF_NUMBER, FLAG_KIRIM
from AMR."tmp_TRANS_LP_MANUAL";

alter system set encryption wallet close;
/*==============================================================*/
/* Index: FK_52                                                 */
/*==============================================================*/
create index FK_52 on TRANS_LP_MANUAL (
   NO_METER ASC
);

/*==============================================================*/
/* Index: FK_53                                                 */
/*==============================================================*/
create index FK_53 on TRANS_LP_MANUAL (
   RC ASC
);

/*==============================================================*/
/* Index: FK_55                                                 */
/*==============================================================*/
create index FK_55 on TRANS_LP_MANUAL (
   KD_DOKUMEN_LP ASC
);

alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: T_USERMAN                                             */
/*==============================================================*/
create table T_USERMAN 
(
   USER_ID              NUMBER               not null,
   USER_NAME            VARCHAR2(80),
   USER_PASSWORD        VARCHAR2(80),
   IS_AKTIF             NUMBER,
   CREATEBY             VARCHAR2(80)         not null,
   CREATEDATE           DATE                 not null,
   APP_ID               NUMBER
);

insert into T_USERMAN (USER_ID, USER_NAME, USER_PASSWORD, IS_AKTIF, CREATEBY, CREATEDATE, APP_ID)
select USER_ID, USER_NAME, USER_PASSWORD, IS_AKTIF, CREATEBY, CREATEDATE, APP_ID
from AMR."tmp_T_USERMAN";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: T_USERPROFILE                                         */
/*==============================================================*/
create table T_USERPROFILE 
(
   USER_ID              NUMBER               not null,
   FIRST_NAME           VARCHAR2(200),
   MAIL                 VARCHAR2(200),
   LAST_NAME            VARCHAR2(200),
   MIDDLE_NAME          VARCHAR2(200),
   PHONE_NUMBER         NUMBER,
   CREATEBY             VARCHAR2(80)         not null,
   CREATEDATE           DATE                 not null,
   UNITID               VARCHAR2(5)
);

insert into T_USERPROFILE (USER_ID, FIRST_NAME, MAIL, LAST_NAME, MIDDLE_NAME, PHONE_NUMBER, CREATEBY, CREATEDATE, UNITID)
select USER_ID, FIRST_NAME, MAIL, LAST_NAME, MIDDLE_NAME, PHONE_NUMBER, CREATEBY, CREATEDATE, UNITID
from AMR."tmp_T_USERPROFILE";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: T_UTILDAO_EXEC                                        */
/*==============================================================*/
create table T_UTILDAO_EXEC 
(
   FUNCTION_NAME        VARCHAR2(500)        not null,
   SETTER_NAME          VARCHAR2(500),
   DESCRIPTION          VARCHAR2(800),
   SCHEMA_NAME          VARCHAR2(200)        not null,
   CREATEDATE           DATE,
   CREATEBY             VARCHAR2(80)         not null
);

insert into T_UTILDAO_EXEC (FUNCTION_NAME, SETTER_NAME, DESCRIPTION, SCHEMA_NAME, CREATEDATE, CREATEBY)
select FUNCTION_NAME, SETTER_NAME, DESCRIPTION, SCHEMA_NAME, CREATEDATE, CREATEBY
from AMR."tmp_T_UTILDAO_EXEC";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: T_UTILDAO_OBJ                                         */
/*==============================================================*/
create table T_UTILDAO_OBJ 
(
   FUNCTION_NAME        VARCHAR2(200)        not null,
   PACKAGE_NAME         VARCHAR2(200),
   TYPE_DATA            VARCHAR2(50)         not null,
   IS_LOAD              NUMBER               not null,
   SCHEMA_NAME          VARCHAR2(200)        not null,
   DESCRIPTION          VARCHAR2(500),
   CREATEDATE           DATE,
   CREATEBY             VARCHAR2(80)         not null
);

insert into T_UTILDAO_OBJ (FUNCTION_NAME, PACKAGE_NAME, TYPE_DATA, IS_LOAD, SCHEMA_NAME, DESCRIPTION, CREATEDATE, CREATEBY)
select FUNCTION_NAME, PACKAGE_NAME, TYPE_DATA, IS_LOAD, SCHEMA_NAME, DESCRIPTION, CREATEDATE, CREATEBY
from AMR."tmp_T_UTILDAO_OBJ";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: T_UTILDAO_SETTER                                      */
/*==============================================================*/
create table T_UTILDAO_SETTER 
(
   SETTER_NAME          VARCHAR2(200)        not null,
   TYPE_DATA            VARCHAR2(90)         not null,
   MAPPING_NAME         VARCHAR2(200)        not null,
   IS_LOAD              NUMBER,
   TABLE_NAME           VARCHAR2(100),
   SCHEMA_NAME          VARCHAR2(100),
   IS_UTIL_GEN          VARCHAR2(20),
   CREATEDATE           DATE,
   CREATEBY             VARCHAR2(80)
);

insert into T_UTILDAO_SETTER (SETTER_NAME, TYPE_DATA, MAPPING_NAME, IS_LOAD, TABLE_NAME, SCHEMA_NAME, IS_UTIL_GEN, CREATEDATE, CREATEBY)
select SETTER_NAME, TYPE_DATA, MAPPING_NAME, IS_LOAD, TABLE_NAME, SCHEMA_NAME, IS_UTIL_GEN, CREATEDATE, CREATEBY
from AMR."tmp_T_UTILDAO_SETTER";

alter system set encryption wallet close;
alter system set encryption wallet open identified by 123456;
/*==============================================================*/
/* Table: T_VERSION                                             */
/*==============================================================*/
create table T_VERSION 
(
   ID                   NUMBER               not null,
   VERSION              VARCHAR2(80)         not null,
   APP_NAME             VARCHAR2(100),
   CREATEDATE           DATE,
   CREATEBY             VARCHAR2(80)
);

insert into T_VERSION (ID, VERSION, APP_NAME, CREATEDATE, CREATEBY)
select ID, VERSION, APP_NAME, CREATEDATE, CREATEBY
from AMR."tmp_T_VERSION";

alter system set encryption wallet close;
alter table DATA_METER
   add constraint FK_DATA_MET_FK_DATA_M_MASTER_T foreign key (KD_TYPE_METER)
      references MASTER_TYPE_METER (KD_TYPE_METER)
      not deferrable;

alter table DATA_MODEM
   add constraint FK_DATA_MOD_FK_DATA_M_DATA_SIM foreign key (NOMOR_SIM)
      references DATA_SIM (NOMOR_SIM)
      not deferrable;

alter table DATA_SIM
   add constraint FK_DATA_SIM_FK_DATA_S_DATA_MOD foreign key (NO_MODEM)
      references DATA_MODEM (NO_MODEM)
      not deferrable;

alter table DATA_TIKUR
   add constraint FK_DATA_TIK_FK_DATA_T_MASTER_G foreign key (KD_GI)
      references MASTER_GI (KD_GI)
      not deferrable;

alter table DATA_TIKUR
   add constraint FK_DATA_TIK_FK_DATA_T_MASTER_U foreign key (KD_UNIT_PELAKSANA)
      references MASTER_UNIT_PELAKSANA (KD_UNIT_PELAKSANA)
      not deferrable;

alter table DATA_TIKUR
   add constraint FK_DATA_TIK_FK_DATA_T_MASTER_T foreign key (KD_TRAFO)
      references MASTER_TRAFO (KD_TRAFO)
      not deferrable;

alter table KONFIGURASI_TIKUR
   add constraint FK_KONFIGUR_FK_KONFIG_MASTER_K foreign key (KD_KONSTRUKSI)
      references MASTER_KONTRUKSI (KD_KONSTRUKSI);

alter table KONFIGURASI_TIKUR
   add constraint FK_KONFIGUR_FK_KONFIG_MUTASI_M foreign key (NO_MUTASI_METER)
      references MUTASI_METER (NO_MUTASI_METER);

alter table KONFIGURASI_TIKUR
   add constraint FK_KONFIGUR_FK_KONFIG_DATA_TIK foreign key (KD_TIKUR)
      references DATA_TIKUR (KD_TIKUR);

alter table LOG_TRANSAKSI
   add constraint FK_LOG_TRAN_FK_LOG_TR_MASTER_F foreign key (KD_FM)
      references MASTER_FUNGSI_METER (KD_FM)
      not deferrable;

alter table LOG_TRANSAKSI
   add constraint FK_LOG_TRAN_FK_LOG_TR_DATA_MET foreign key (NO_METER)
      references DATA_METER (NO_METER)
      not deferrable;

alter table LOG_TRANSAKSI
   add constraint FK_LOG_TRAN_FK_LOG_TR_MASTER_R foreign key (RC)
      references MASTER_RC (RC)
      not deferrable;

alter table MASTER_GI
   add constraint FK_MASTER_G_FK_MASTER_MASTER_U foreign key (KD_UNIT_PELAKSANA)
      references MASTER_UNIT_PELAKSANA (KD_UNIT_PELAKSANA)
      not deferrable;

alter table MASTER_TRAFO
   add constraint FK_MASTER_T_FK_MASTER_MASTER_G foreign key (KD_GI)
      references MASTER_GI (KD_GI)
      not deferrable;

alter table MASTER_UNIT_INDUK
   add constraint FK_MASTER_U_FK_MASTER_MASTER_P foreign key (KD_PERUSAHAAN)
      references MASTER_PERUSAHAAN (KD_PERUSAHAAN)
      not deferrable;

alter table MASTER_UNIT_PELAKSANA
   add constraint FK_MASTER_U_FK_MASTER_MASTER_J foreign key (KD_JENIS_BAHAN_BAKAR)
      references MASTER_JENIS_BAHAN_BAKAR (KD_JENIS_BAHAN_BAKAR)
      not deferrable;

alter table MASTER_UNIT_PELAKSANA
   add constraint FK_MASTER_U_FK_MASTER_MASTER_U foreign key (KD_UNIT_INDUK)
      references MASTER_UNIT_INDUK (KD_UNIT_INDUK)
      not deferrable;

alter table MUTASI_METER
   add constraint FK_MUTASI_M_FK_1_DATA_TIK foreign key (KD_TIKUR)
      references DATA_TIKUR (KD_TIKUR)
      not deferrable;

alter table MUTASI_METER
   add constraint FK_MUTASI_M_FK_2_MASTER_K foreign key (KD_MUTASI)
      references MASTER_KODE_MUTASI (KD_MUTASI)
      not deferrable;

alter table MUTASI_MODEM
   add constraint FK_MUTASI_M_FK_3_DATA_TIK foreign key (KD_TIKUR)
      references DATA_TIKUR (KD_TIKUR)
      not deferrable;

alter table MUTASI_MODEM
   add constraint FK_MUTASI_M_FK_4_MASTER_K foreign key (KD_MUTASI)
      references MASTER_KODE_MUTASI (KD_MUTASI)
      not deferrable;

alter table MUTASI_MODEM
   add constraint FK_MUTASI_M_FK_MUTASI_DATA_MET foreign key (NO_METER)
      references DATA_METER (NO_METER)
      not deferrable;

alter table MUTASI_MODEM
   add constraint FK_MUTASI_M_FK_MUTASI_DATA_MOD foreign key (NO_MODEM)
      references DATA_MODEM (NO_MODEM)
      not deferrable;

alter table TRANS_DATA_EVENT
   add constraint FK_TRANS_DA_FK_TRANS__MASTER_F foreign key (KD_FM)
      references MASTER_FUNGSI_METER (KD_FM)
      not deferrable;

alter table TRANS_DATA_EVENT
   add constraint FK_TRANS_DA_FK_TRANS__DATA_MET foreign key (NO_METER)
      references DATA_METER (NO_METER)
      not deferrable;

alter table TRANS_DATA_EVENT
   add constraint FK_TRANS_DA_FK_TRANS__MASTER_R foreign key (RC)
      references MASTER_RC (RC)
      not deferrable;

alter table TRANS_EOB
   add constraint FK_TRANS_EO_FK_5_MASTER_R foreign key (RC)
      references MASTER_RC (RC)
      not deferrable;

alter table TRANS_EOB
   add constraint FK_TRANS_EO_FK_6_MASTER_F foreign key (KD_FM)
      references MASTER_FUNGSI_METER (KD_FM)
      not deferrable;

alter table TRANS_EOB
   add constraint FK_TRANS_EO_FK_7_DATA_MET foreign key (NO_METER)
      references DATA_METER (NO_METER)
      not deferrable;

alter table TRANS_EOB_MANUAL
   add constraint FK_TRANS_EO_FK_10_DATA_MET foreign key (NO_METER)
      references DATA_METER (NO_METER)
      not deferrable;

alter table TRANS_EOB_MANUAL
   add constraint FK_TRANS_EO_FK_8_MASTER_R foreign key (RC)
      references MASTER_RC (RC)
      not deferrable;

alter table TRANS_EOB_MANUAL
   add constraint FK_TRANS_EO_FK_9_MASTER_F foreign key (KD_FM)
      references MASTER_FUNGSI_METER (KD_FM)
      not deferrable;

alter table TRANS_EOB_MANUAL
   add constraint FK_TRANS_EO_FK_TRANS__LOG_MANU foreign key (KD_DOKUMEN_EOB)
      references LOG_MANUAL_EOB (KD_DOKUMEN_EOB)
      not deferrable;

alter table TRANS_LP
   add constraint FK_TRANS_LP_FK_11_MASTER_R foreign key (RC)
      references MASTER_RC (RC)
      not deferrable;

alter table TRANS_LP
   add constraint FK_TRANS_LP_FK_12_DATA_MET foreign key (NO_METER)
      references DATA_METER (NO_METER)
      not deferrable;

alter table TRANS_LP
   add constraint FK_TRANS_LP_FK_TRANS__MASTER_F foreign key (KD_FM)
      references MASTER_FUNGSI_METER (KD_FM)
      not deferrable;

alter table TRANS_LP_MANUAL
   add constraint FK_TRANS_LP_FK_13_DATA_MET foreign key (NO_METER)
      references DATA_METER (NO_METER)
      not deferrable;

alter table TRANS_LP_MANUAL
   add constraint FK_TRANS_LP_FK_14_MASTER_R foreign key (RC)
      references MASTER_RC (RC)
      not deferrable;

alter table TRANS_LP_MANUAL
   add constraint FK_TRANS_LP_FK_TRANS__LOG_MANU foreign key (KD_DOKUMEN_LP)
      references LOG_MANUAL_LP (KD_DOKUMEN_LP)
      not deferrable;

