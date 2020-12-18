/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 8);

/*START VENDOR_EDIT ravi.katam [GLFT-11654] Remove Emergency numbers for Vodafone CZ as per the requirement*/
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '230' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '230' AND NUMBER = '155';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '230' AND NUMBER = '158';

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '155';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '158';
/*END VENDOR_EDIT */

COMMIT TRANSACTION;
