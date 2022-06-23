/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 6);

DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '262' AND NUMBER = '110';

COMMIT TRANSACTION;
