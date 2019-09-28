/*
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

-- VERSION: 4
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE qcril_emergency_source_mcc_table(MCC TEXT, NUMBER TEXT, IMS_ADDRESS TEXT, SERVICE TEXT, PRIMARY KEY(MCC,NUMBER));
INSERT INTO qcril_emergency_source_mcc_table VALUES('334','060','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('730','133','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('732','123','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('901','999','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('901','122','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','191','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','1669','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','199','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','112','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('520','911','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','191','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','192','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','199','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('515','117','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('515','112','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('515','911','','limited');
INSERT INTO qcril_emergency_source_mcc_table VALUES('460','110','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('460','119','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('460','120','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('460','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('460','999','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('460','122','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('852','999','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('510','110','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('510','118','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('510','199','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('510','113','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('510','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('452','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('452','113','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('452','114','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('452','115','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('502','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('502','911','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('502','991','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('502','994','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('502','999','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('310','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('310','911','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('302','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('302','911','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('456','191','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('456','192','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('456','199','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('457','191','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('457','192','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('457','199','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('706','122','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('704','122','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('334','066','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('716','105','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('429','100',NULL,NULL);
INSERT INTO qcril_emergency_source_mcc_table VALUES('429','101',NULL,NULL);
INSERT INTO qcril_emergency_source_mcc_table VALUES('429','102',NULL,NULL);
INSERT INTO qcril_emergency_source_mcc_table VALUES('429','108',NULL,NULL);
INSERT INTO qcril_emergency_source_mcc_table VALUES('429','112',NULL,NULL);
INSERT INTO qcril_emergency_source_mcc_table VALUES('470','100',NULL,NULL);
INSERT INTO qcril_emergency_source_mcc_table VALUES('470','101',NULL,NULL);
INSERT INTO qcril_emergency_source_mcc_table VALUES('470','102',NULL,NULL);
INSERT INTO qcril_emergency_source_mcc_table VALUES('470','108',NULL,NULL);
INSERT INTO qcril_emergency_source_mcc_table VALUES('470','112',NULL,NULL);
INSERT INTO qcril_emergency_source_mcc_table VALUES('234','999','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('505','000','','');
CREATE TABLE qcril_emergency_source_voice_table(MCC TEXT, NUMBER TEXT, IMS_ADDRESS TEXT, SERVICE TEXT, PRIMARY KEY(MCC,NUMBER));
INSERT INTO qcril_emergency_source_voice_table VALUES('460','110','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('460','119','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('460','120','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('460','112','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('460','999','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('852','999','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('460','122','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('520','191','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('520','1669','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('520','199','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('520','112','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('520','911','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('414','191','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('414','192','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('414','199','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('515','117','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('515','112','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('515','911','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('510','110','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('510','118','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('510','199','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('510','113','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('510','112','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('452','112','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('452','113','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('452','114','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('452','115','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('502','112','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('502','911','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('502','991','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('502','994','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('502','999','','full');
CREATE TABLE qcril_emergency_source_hard_mcc_table(MCC TEXT, NUMBER TEXT, IMS_ADDRESS TEXT, SERVICE TEXT, PRIMARY KEY(MCC,NUMBER));
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('460','110','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('460','119','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('460','120','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('460','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('460','999','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('852','999','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('460','122','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('520','191','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('520','1669','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('520','199','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('520','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('520','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('414','191','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('414','192','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('414','199','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('515','117','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('515','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('515','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('510','110','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('510','118','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('510','199','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('510','113','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('510','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('452','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('452','113','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('452','114','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('452','115','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('502','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('502','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('502','991','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('502','994','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('502','999','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('310','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('310','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('310','999','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('302','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('302','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('302','999','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('456','191','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('456','192','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('456','199','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('457','191','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('457','192','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('457','199','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('730','133','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('429','100',NULL,NULL);
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('429','101',NULL,NULL);
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('429','102',NULL,NULL);
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('429','108',NULL,NULL);
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('429','112',NULL,NULL);
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('470','100',NULL,NULL);
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('470','101',NULL,NULL);
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('470','102',NULL,NULL);
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('470','108',NULL,NULL);
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('470','112',NULL,NULL);
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('262','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('234','999','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('234','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('234','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('222','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('222','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('222','999','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('222','08','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('222','118','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('222','119','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('214','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('268','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('204','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('272','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('272','999','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('216','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('230','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('230','150','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('230','155','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('230','158','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('655','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('655','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('286','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('226','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('226','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('206','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('260','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('260','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('231','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('231','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('214','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('208','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('208','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('334','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('334','060','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('334','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('732','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('732','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('716','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('716','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('724','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('724','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('724','190','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('724','192','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('724','193','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('722','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('722','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('730','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('730','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('712','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('712','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('740','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('740','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('706','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('706','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('704','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('704','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('710','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('710','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('714','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('714','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('748','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('748','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('734','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('734','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('262','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('262','000','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('262','08','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('262','110','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('262','999','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('262','118','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('262','119','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('262','122','','');
CREATE TABLE qcril_emergency_source_nw_table(MCC TEXT, NUMBER TEXT, IMS_ADDRESS TEXT, SERVICE TEXT, PRIMARY KEY(MCC,NUMBER));
CREATE TABLE qcril_emergency_source_escv_iin_table(IIN TEXT, NUMBER TEXT, ESCV INTEGER, ROAM TEXT, PRIMARY KEY(IIN,NUMBER,ROAM));
CREATE TABLE qcril_emergency_source_escv_nw_table(MCC TEXT, MNC TEXT, NUMBER TEXT, ESCV INTEGER, PRIMARY KEY(MCC,NUMBER, ESCV));
CREATE TABLE qcril_emergency_source_mcc_mnc_table(MCC TEXT, MNC TEXT, NUMBER TEXT, IMS_ADDRESS TEXT, SERVICE TEXT, PRIMARY KEY(MCC,NUMBER,MNC));
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('234','20','999','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('234','20','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('234','15','999','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('234','15','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('234','15','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('222','10','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('222','99','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('222','99','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('222','99','999','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('222','99','08','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('222','99','118','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('222','99','119','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('214','01','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('268','01','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('204','04','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('272','01','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('272','01','999','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('216','70','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('230','03','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('230','03','150','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('230','03','155','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('230','03','158','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('655','01','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('655','01','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('286','02','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('226','10','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('226','10','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('206','10','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('260','03','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('260','03','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('231','01','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('231','01','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('214','03','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('214','03','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','01','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','01','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('334','020','060','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('334','020','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('334','020','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','101','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','101','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('716','10','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('716','10','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','05','190','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','05','192','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','05','193','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','05','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','05','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','12','190','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','12','192','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','12','193','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','12','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','12','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','38','190','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','38','192','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','38','193','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','38','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('724','38','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('722','07','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('722','07','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('722','10','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('722','10','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('722','070','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('722','070','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','02','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','02','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','02','133','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','001','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','001','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','001','123','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','102','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','102','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','102','123','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','123','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','123','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('732','123','123','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('712','04','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('712','04','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('740','00','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('740','00','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('706','04','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('706','04','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('706','04','122','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('704','03','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('704','03','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('704','03','122','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('334','03','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('334','03','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('334','03','066','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('334','030','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('334','030','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('334','030','066','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('710','30','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('710','30','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('710','300','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('710','300','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('714','02','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('714','02','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('716','06','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('716','06','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('716','06','105','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('748','07','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('748','07','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('734','04','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('734','04','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('262','03','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('262','03','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('234','30','999','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('234','30','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('234','33','999','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('234','33','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','840','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','840','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','840','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','840','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','854','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','854','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','854','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','854','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','855','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','855','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','855','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','855','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','856','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','856','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','856','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','856','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','857','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','857','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','857','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','857','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','858','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','858','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','858','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','858','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','859','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','859','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','859','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','859','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','860','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','860','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','860','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','860','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','861','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','861','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','861','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','861','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','862','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','862','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','862','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','862','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','863','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','863','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','863','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','863','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','864','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','864','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','864','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','864','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','865','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','865','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','865','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','865','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','866','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','866','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','866','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','866','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','867','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','867','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','867','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','867','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','868','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','868','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','868','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','868','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','869','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','869','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','869','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','869','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','870','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','870','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','870','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','870','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','871','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','871','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','871','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','871','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','872','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','872','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','872','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','872','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','873','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','873','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','873','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','873','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','874','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','874','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','874','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','874','108','','');
CREATE TABLE qcril_emergency_source_voice_mcc_mnc_table(MCC TEXT, MNC TEXT, NUMBER TEXT, IMS_ADDRESS TEXT, SERVICE TEXT, PRIMARY KEY(MCC,NUMBER,MNC));
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','840','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','840','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','840','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','840','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','854','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','854','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','854','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','854','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','855','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','855','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','855','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','855','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','856','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','856','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','856','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','856','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','857','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','857','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','857','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','857','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','858','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','858','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','858','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','858','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','859','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','859','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','859','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','859','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','860','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','860','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','860','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','860','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','861','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','861','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','861','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','861','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','862','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','862','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','862','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','862','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','863','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','863','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','863','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','863','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','864','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','864','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','864','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','864','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','865','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','865','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','865','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','865','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','866','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','866','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','866','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','866','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','867','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','867','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','867','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','867','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','868','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','868','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','868','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','868','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','869','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','869','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','869','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','869','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','870','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','870','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','870','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','870','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','871','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','871','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','871','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','871','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','872','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','872','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','872','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','872','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','873','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','873','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','873','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','873','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','874','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','874','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','874','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','874','108','','full');

/*Start Emerency List For Germany [GLFT-8599] [GLFT-7245] [GLFT-7546] [GLFT-8643] [GLFT-8160] ravi.katam 2019/09/03 */

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('262','02','000','','full'); /*Vodafone.de*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('262','02','112','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('262','02','911','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('262','02','110','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('262','02','08','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('262','03','110','','full'); /*o2-de*/

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('242','02','110','','full'); /*Fire Telia N*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('242','02','113','','full'); /*Ambulance Telia N*/

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('208','20','15','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('208','20','17','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('208','20','18','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('208','20','119','','full'); /*F-Bouygues Telecom*/

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('208','01','15','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('208','01','17','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('208','01','18','','full'); /*Orange F*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('262','02','000','',''); /*Vodafone.de*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('262','02','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('262','02','911','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('262','02','110','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('262','02','08','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('262','03','110','',''); /*o2-de*/

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('242','02','110','',''); /*Fire Telia N*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('242','02','113','',''); /*Ambulance Telia N*/

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','20','15','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','20','17','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','20','18','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','20','119','',''); /*F-Bouygues Telecom*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','01','15','',''); /*Orange F*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','01','17','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','01','18','','');

/*END Emerency List For Germany qcril_emergency_source_mcc_mnc_table */

/*Start Emerency List For INDIA AIRTEL Operator qcril_emergency_source_mcc_mnc_table ravi.katam 2019/08/24 */

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','10','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','10','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','10','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','10','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','31','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','31','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','31','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','31','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','40','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','40','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','40','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','40','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','45','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','45','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','45','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','45','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','49','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','49','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','49','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','49','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','51','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','51','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','51','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','51','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','52','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','52','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','52','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','52','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','53','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','53','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','53','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','53','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','54','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','54','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','54','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','54','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','55','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','55','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','55','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','55','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','56','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','56','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','56','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','56','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','90','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','90','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','90','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','90','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','92','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','92','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','92','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','92','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','93','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','93','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','93','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','93','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','94','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','94','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','94','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','94','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','95','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','95','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','95','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','95','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','96','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','96','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','96','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','96','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','97','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','97','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','97','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','97','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','98','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','98','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','98','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','98','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','02','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','02','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','02','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','02','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','03','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','03','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','03','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','03','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','16','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','16','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','16','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','16','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','70','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','70','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','70','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','70','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','818','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','818','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','818','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','818','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','819','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','819','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','819','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','819','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','876','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','876','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','876','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','876','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','879','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','879','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','879','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','879','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','927','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','927','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','927','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','927','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','929','100','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','929','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','929','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','929','108','','');


/*End Emerency List For INDIA AIRTEL Operator qcril_emergency_source_mcc_mnc_table */

/*Start Emerency List For INDIA AIRTEL Operator qcril_emergency_source_voice_mcc_mnc_table ravi.katam 2019/08/24 */

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','10','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','10','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','10','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','10','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','31','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','31','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','31','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','31','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','40','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','40','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','40','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','40','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','45','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','45','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','45','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','45','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','49','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','49','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','49','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','49','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','51','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','51','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','51','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','51','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','52','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','52','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','52','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','52','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','53','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','53','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','53','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','53','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','54','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','54','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','54','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','54','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','55','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','55','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','55','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','55','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','56','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','56','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','56','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','56','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','90','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','90','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','90','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','90','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','92','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','92','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','92','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','92','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','93','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','93','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','93','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','93','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','94','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','94','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','94','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','94','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','95','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','95','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','95','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','95','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','96','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','96','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','96','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','96','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','97','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','97','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','97','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','97','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','98','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','98','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','98','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','98','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','02','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','02','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','02','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','02','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','03','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','03','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','03','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','03','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','16','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','16','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','16','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','16','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','70','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','70','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','70','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','70','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','818','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','818','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','818','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','818','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','819','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','819','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','819','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','819','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','876','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','876','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','876','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','876','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','879','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','879','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','879','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','879','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','927','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','927','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','927','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','927','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','929','100','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','929','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','929','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','929','108','','full');


/*End Emerency List For INDIA AIRTEL Operator qcril_emergency_source_voice_mcc_mnc_table */

/*Start Emerency List For INDIA IDEA Operator qcril_emergency_source_mcc_mnc_table ravi.katam 2019/08/24 */

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','07','100','',''); /*Andhra Pradesh*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','07','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','07','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','07','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','04','100','',''); /*Delhi*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','04','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','04','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','04','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','24','100','',''); /*Gujarat*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','24','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','24','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','24','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','12','100','',''); /*Haryana*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','12','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','12','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','12','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','44','100','',''); /*Karnataka*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','44','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','44','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','44','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','19','100','',''); /*Kerala*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','19','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','19','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','19','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','848','100','',''); /*Kolkata*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','848','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','848','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','848','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','22','100','',''); /*Maharashtra*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','22','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','22','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','22','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','799','100','',''); /*Mumbai*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','799','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','799','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','799','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','14','100','',''); /*Punjab*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','14','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','14','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','14','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','87','100','',''); /*Rajasthan*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','87','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','87','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','87','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','852','100','',''); /*TamilNadu*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','852','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','852','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','852','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','89','100','',''); /*Uttar Pradesh (East)*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','89','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','89','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','89','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','56','100','',''); /*Uttar Pradesh (West)*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','56','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','56','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','56','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','853','100','',''); /*West Bengal*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','853','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','853','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','853','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','846','100','',''); /*Jammu & Kashmir*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','846','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','846','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','846','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','845','100','',''); /*Assam*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','845','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','845','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','845','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','70','100','',''); /*Bihar*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','70','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','70','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','70','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','850','100','',''); /*Orissa*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','850','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','850','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','850','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','82','100','',''); /*Himachal Pradesh*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','82','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','82','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','82','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','849','100','',''); /*North East India*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','849','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','849','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','849','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','78','100','',''); /*Madhya Pradesh*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','78','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','78','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','78','108','','');

/*Emerency List IDEA Operator qcril_emergency_source_mcc_mnc_table END*/


/*Start Emerency List For INDIA IDEA Operator qcril_emergency_source_voice_mcc_mnc_table ravi.katam 2019/08/24 */

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','07','100','','full'); /*Andhra Pradesh*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','07','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','07','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','07','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','04','100','','full'); /*Delhi*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','04','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','04','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','04','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','24','100','','full'); /*Gujarat*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','24','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','24','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','24','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','12','100','','full'); /*Haryana*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','12','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','12','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','12','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','44','100','','full'); /*Karnataka*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','44','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','44','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','44','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','19','100','','full'); /*Kerala*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','19','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','19','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','19','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','848','100','','full'); /*Kolkata*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','848','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','848','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','848','108','','');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','22','100','','full'); /*Maharashtra*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','22','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','22','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','22','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','799','100','','full'); /*Mumbai*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','799','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','799','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','799','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','14','100','','full'); /*Punjab*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','14','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','14','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','14','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','87','100','','full'); /*Rajasthan*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','87','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','87','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','87','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','852','100','','full'); /*TamilNadu*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','852','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','852','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','852','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','89','100','','full'); /*Uttar Pradesh (East)*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','89','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','89','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','89','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','56','100','','full'); /*Uttar Pradesh (West)*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','56','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','56','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','56','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','853','100','','full'); /*West Bengal*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','853','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','853','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','853','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','846','100','','full'); /*Jammu & Kashmir*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','846','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','846','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','846','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','845','100','','full'); /*Assam*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','845','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','845','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','845','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','70','100','','full'); /*Bihar*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','70','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','70','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','70','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','850','100','','full'); /*Orissa*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','850','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','850','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','850','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','82','100','','full'); /*Himachal Pradesh*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','82','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','82','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','82','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','849','100','','full'); /*North East India*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','849','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','849','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','849','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','78','100','','full'); /*Madhya Pradesh*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','78','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','78','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','78','108','','full');

/*Emerency List IDEA Operator qcril_emergency_source_voice_mcc_mnc_table END*/

/*Start Emerency List For INDIA VODAFONE Operator qcril_emergency_source_mcc_mnc_table ravi.katam 2019/08/24 */

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','13','100','',''); /*Andhra Pradesh*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','13','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','13','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','13','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','84','100','',''); /*Chennai*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','84','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','84','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','84','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','11','100','',''); /*Delhi*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','11','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','11','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','11','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','05','100','',''); /*Gujarat*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','05','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','05','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','05','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','01','100','',''); /*Haryana*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','01','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','01','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','01','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','86','100','',''); /*Karnataka*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','86','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','86','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','86','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','46','100','',''); /*Kerala*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','46','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','46','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','46','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','30','100','',''); /*Kolkata*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','30','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','30','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','30','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','27','100','',''); /*Maharashtra*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','27','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','27','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','27','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','20','100','',''); /*Mumbai*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','20','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','20','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','20','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','88','100','',''); /*Punjab*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','88','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','88','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','88','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','60','100','',''); /*Rajasthan*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','60','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','60','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','60','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','43','100','',''); /*TamilNadu*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','43','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','43','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','43','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','15','100','',''); /*Uttar Pradesh (East)*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','15','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','15','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','15','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','66','100','',''); /*Uttar Pradesh (West)*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','66','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','66','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','66','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','67','100','',''); /*West Bengal*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','67','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','67','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','67','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','750','100','',''); /*Jammu & Kashmir*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','750','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','750','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','750','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','751','100','',''); /*Assam*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','751','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','751','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','751','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','752','100','',''); /*Bihar*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','752','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','752','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','752','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','753','100','',''); /*Orissa*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','753','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','753','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','753','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','754','100','',''); /*Himachal Pradesh*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','754','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','754','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','754','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','755','100','',''); /*North East India*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','755','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','755','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','755','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','756','100','',''); /*Madhya Pradesh*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','756','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','756','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('405','756','108','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','68','100','','');  /*MTNL Delhi*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','68','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','68','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','68','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','68','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','69','100','',''); /*MTNL Mumbai*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','69','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','69','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','69','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','69','911','','');

/*Emerency List VODAFONE Operator qcril_emergency_source_mcc_mnc_table END*/



/*Start Emerency List For INDIA VODAFONE Operator qcril_emergency_source_voice_mcc_mnc_table ravi.katam 2019/08/24 */

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','13','100','','full'); /*Andhra Pradesh*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','13','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','13','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','13','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','84','100','','full'); /*Chennai*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','84','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','84','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','84','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','11','100','','full'); /*Delhi*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','11','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','11','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','11','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','05','100','','full'); /*Gujarat*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','05','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','05','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','05','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','01','100','','full'); /*Haryana*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','01','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','01','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','01','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','86','100','','full'); /*Karnataka*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','86','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','86','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','86','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','46','100','','full'); /*Kerala*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','46','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','46','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','46','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','30','100','','full'); /*Kolkata*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','30','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','30','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','30','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','27','100','','full'); /*Maharashtra*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','27','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','27','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','27','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','20','100','','full'); /*Mumbai*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','20','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','20','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','20','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','88','100','','full'); /*Punjab*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','88','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','88','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','88','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','60','100','','full'); /*Rajasthan*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','60','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','60','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','60','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','43','100','','full'); /*TamilNadu*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','43','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','43','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','43','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','15','100','','full'); /*Uttar Pradesh (East)*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','15','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','15','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','15','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','66','100','','full'); /*Uttar Pradesh (West)*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','66','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','66','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','66','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','67','100','','full'); /*West Bengal*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','67','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','67','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','67','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','750','100','','full'); /*Jammu & Kashmir*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','750','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','750','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','750','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','751','100','','full'); /*Assam*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','751','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','751','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','751','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','752','100','','full'); /*Bihar*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','752','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','752','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','752','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','753','100','','full'); /*Orissa*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','753','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','753','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','753','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','754','100','','full'); /*Himachal Pradesh*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','754','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','754','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','754','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','755','100','','full'); /*North East India*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','755','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','755','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','755','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','756','100','','full'); /*Madhya Pradesh*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','756','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','756','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('405','756','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','68','100','','full');  /*MTNL Delhi*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','68','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','68','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','68','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','68','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','69','100','','full'); /*MTNL Mumbai*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','69','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','69','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','69','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','69','911','','full');

/*Emerency List VODAFONE Operator qcril_emergency_source_voice_mcc_mnc_table END*/

/*Start Emerency List For INDIA BSNL Operator qcril_emergency_source_mcc_mnc_table ravi.katam 2019/08/27 */

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','34','100','',''); /*Haryana*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','34','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','34','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','34','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','34','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','38','100','',''); /*Assam*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','38','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','38','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','38','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','38','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','51','100','',''); /*Himachal Pradesh*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','51','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','51','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','51','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','51','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','53','100','',''); /*Punjab*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','53','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','53','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','53','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','53','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','54','100','',''); /*Uttar Pradesh (West)*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','54','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','54','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','54','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','54','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','55','100','',''); /*Uttar Pradesh (East)*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','55','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','55','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','55','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','55','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','57','100','',''); /*Gujarat*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','57','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','57','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','57','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','57','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','58','100','',''); /*Madhya Pradesh*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','58','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','58','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','58','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','58','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','59','100','',''); /*Rajasthan*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','59','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','59','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','59','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','59','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','62','100','',''); /*Jammu & Kashmir*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','62','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','62','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','62','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','62','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','64','100','',''); /*Chennai*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','64','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','64','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','64','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','64','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','66','100','',''); /*Maharashtra*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','66','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','66','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','66','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','66','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','71','100','',''); /*Karnataka*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','71','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','71','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','71','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','71','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','72','100','',''); /*Kerala*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','72','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','72','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','72','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','72','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','73','100','',''); /*Andhra Pradesh*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','73','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','73','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','73','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','73','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','74','100','',''); /*West Bengal*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','74','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','74','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','74','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','74','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','75','100','',''); /*Bihar*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','75','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','75','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','75','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','75','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','76','100','',''); /*Orissa*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','76','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','76','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','76','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','76','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','77','100','',''); /*North East*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','77','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','77','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','77','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','77','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','79','100','',''); /*Andaman Nicobar*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','79','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','79','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','79','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','79','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','80','100','',''); /*Tamilnadu*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','80','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','80','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','80','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','80','911','','');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','81','100','',''); /*Kolkata*/
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','81','101','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','81','102','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','81','108','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('404','81','911','','');

/*END Emerency List For INDIA BSNL Operator qcril_emergency_source_mcc_mnc_table  */

/*Start Emerency List For INDIA BSNL Operator qcril_emergency_source_voice_mcc_mnc_table ravi.katam 2019/08/27 */

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','34','100','','full'); /*Haryana*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','34','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','34','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','34','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','34','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','38','100','','full'); /*Assam*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','38','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','38','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','38','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','38','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','51','100','','full'); /*Himachal Pradesh*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','51','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','51','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','51','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','51','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','53','100','','full'); /*Punjab*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','53','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','53','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','53','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','53','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','54','100','','full'); /*Uttar Pradesh (West)*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','54','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','54','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','54','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','54','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','55','100','','full'); /*Uttar Pradesh (East)*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','55','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','55','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','55','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','55','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','57','100','','full'); /*Gujarat*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','57','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','57','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','57','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','57','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','58','100','','full'); /*Madhya Pradesh*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','58','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','58','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','58','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','58','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','59','100','','full'); /*Rajasthan*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','59','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','59','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','59','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','59','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','62','100','','full'); /*Jammu & Kashmir*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','62','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','62','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','62','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','62','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','64','100','','full'); /*Chennai*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','64','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','64','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','64','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','64','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','66','100','','full'); /*Maharashtra*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','66','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','66','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','66','108','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','71','100','','full'); /*Karnataka*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','71','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','71','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','71','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','71','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','72','100','','full'); /*Kerala*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','72','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','72','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','72','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','72','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','73','100','','full'); /*Andhra Pradesh*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','73','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','73','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','73','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','73','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','74','100','','full'); /*West Bengal*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','74','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','74','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','74','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','74','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','75','100','','full'); /*Bihar*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','75','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','75','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','75','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','75','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','76','100','','full'); /*Orissa*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','76','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','76','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','76','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','76','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','77','100','','full'); /*North East*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','77','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','77','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','77','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','77','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','79','100','','full'); /*Andaman Nicobar*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','79','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','79','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','79','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','79','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','80','100','','full'); /*Tamilnadu*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','80','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','80','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','80','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','80','911','','full');

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','81','100','','full'); /*Kolkata*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','81','101','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','81','102','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','81','108','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('404','81','911','','full');

/*END Emerency List For INDIA BSNL Operator qcril_emergency_source_voice_mcc_mnc_table  */

/* START VENDOR_EDIT ravi.katam [GLFT-8666] 2019/08/28 Add Emergency Numbers for "Denmark" Operator*/

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('238','01','114','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('238','02','114','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('238','06','114','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('238','30','114','','full');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('238','70','114','','full');

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('238','01','114','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('238','02','114','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('238','06','114','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('238','30','114','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('238','70','114','','');

/* END VENDOR_EDIT ravi.katam NETWORK */

/* START VENDOR_EDIT ravi.katam [GCEQ-4511] [GLFT-7514] [GLFT-7911] [GLFT-7529] NETWORK 2019/08/13 Add entery for
   100,101,102 & 108 Emergency Numbers, All these Emergency Call type should be process as VOICE call not emg call.*/

/* END VENDOR_EDIT ravi.katam NETWORK */

/* START VENDOR_EDIT ravi.katam [GLFT-8149] 2019/08/28 Add Emergency Numbers for "FREE" Operator*/

INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('208','15','15','','full'); /*AMBULANCE*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('208','15','17','','full'); /*POLICE*/
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('208','15','18','','full'); /*FIRE*/

INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','15','15','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','15','17','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('208','15','18','','');

/* END VENDOR_EDIT ravi.katam NETWORK */

CREATE TABLE qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT INTO qcril_properties_table VALUES('qcrildb_version','4');
CREATE TABLE qcril_operator_specific_config(MCC TEXT, MNC TEXT, WPS_OVER_CS INTEGER, PRIMARY KEY(MCC, MNC));
INSERT INTO qcril_operator_specific_config VALUES('310','410',1);
DELETE FROM qcril_operator_specific_config where MCC = '310' AND MNC = '410';
CREATE TABLE qcril_cdma_operator_specific_config(MCC TEXT, MNC TEXT, FORCE_ON_DC INTEGER, PRIMARY KEY(MCC, MNC));
INSERT INTO qcril_cdma_operator_specific_config VALUES('460','03',1);
INSERT INTO qcril_cdma_operator_specific_config VALUES('460','11',1);
INSERT INTO qcril_cdma_operator_specific_config VALUES('454','03',1);
INSERT INTO qcril_cdma_operator_specific_config VALUES('454','31',1);
INSERT INTO qcril_cdma_operator_specific_config VALUES('204','04',1);

/* START VENDOR_EDIT ravi.katam [GLFT-7362] [GLFT-7535] NETWORK 2019/08/13 Remove entery for RJIL
   100 Emergency Call , For 100 Emergency Call type should be process as VOICE Call Not Emg call.

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '840' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '854' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '855' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '856' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '857' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '858' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '859' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '860' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '861' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '862' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '863' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '864' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '865' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '866' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '867' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '868' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '869' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '870' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '871' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '872' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '873' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '405' AND MNC = '874' AND NUMBER = '100';

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '840' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '854' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '855' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '856' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '857' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '858' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '859' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '860' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '861' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '862' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '863' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '864' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '865' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '866' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '867' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '868' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '869' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '870' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '871' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '872' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '873' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '405' AND MNC = '874' AND NUMBER = '100';

END VENDOR_EDIT ravi.katam NETWORK */

COMMIT;
