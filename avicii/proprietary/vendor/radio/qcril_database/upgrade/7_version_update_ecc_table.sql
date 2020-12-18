/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 7);

/*Start: Emergency numbers for Poland*/
/*Start: Poland Play*/
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','06','997','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','06','998','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','06','999','','full');
/*End: Poland Play*/
/*Start: Orange Poland*/
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','03','997','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','03','998','','full');
INSERT OR REPLACE INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','03','999','','full');
/*End: Orange Poland*/
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('260','997','','');
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('260','998','','');
INSERT OR REPLACE INTO qcril_emergency_source_voice_table VALUES('260','999','','');
/*End: Emergency numbers for Poland*/
COMMIT TRANSACTION;
