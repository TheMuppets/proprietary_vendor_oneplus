/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 8);

/*Start: VENDOR_EDIT siddharth.telang - Add Local Emergency Numbers for Bosnia and Poland */
/*Start Emerency List For Bosnia */
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('218','122','','');
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('218','123','','');
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('218','124','','');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('218','03','122','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('218','03','123','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('218','03','124','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('218','05','122','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('218','05','123','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('218','05','124','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('218','90','122','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('218','90','123','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('218','90','124','','full');
/*End Emerency List For Bosnia */
/*Start: Emergency numbers for Poland*/
/*Start: Plus Poland*/
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','01','997','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','01','998','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','01','999','','full');
/*End: Plus Poland*/
/*Start: DT Poland*/
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','02','997','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','02','998','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','02','999','','full');
/*End: DT Poland*/
/*Start: Orange Poland*/
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','03','997','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','03','998','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','03','999','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','05','997','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','05','998','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','05','999','','full');
/*End: Orange Poland*/
/*Start: Play Poland*/
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','06','997','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','06','998','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','06','999','','full');
/*End: Play Poland*/
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('260','997','','');
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('260','998','','');
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('260','999','','');
/*End: Emergency numbers for Poland*/
/*End: VENDOR_EDIT siddharth.telang - Add Local Emergency Numbers for Bosnia and Poland */

/*START VENDOR_EDIT ravi.katam [GLFT-11654] Remove Emergency numbers for Vodafone CZ as per the requirement*/
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '230' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '230' AND NUMBER = '155';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '230' AND NUMBER = '158';

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '155';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '158';
/*END VENDOR_EDIT */

COMMIT TRANSACTION;
