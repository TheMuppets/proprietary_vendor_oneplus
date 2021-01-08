/*
  Copyright (c) 2018 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 7);

/* VENDOR_EDIT  [HD-28485] Process 101,102 numbers as normal voice call numbers */
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('425','101','','');
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('425','102','','');

INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('425','03','101','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('425','03','102','','full');
/* VENDOR_EDIT END [HD-28485] */

COMMIT TRANSACTION;
