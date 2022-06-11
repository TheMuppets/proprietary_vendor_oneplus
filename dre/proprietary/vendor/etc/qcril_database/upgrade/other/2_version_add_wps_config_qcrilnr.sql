/*
  Copyright (c) 2017 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 2);

CREATE TABLE IF NOT EXISTS qcril_operator_specific_config(MCC TEXT, MNC TEXT, WPS_OVER_CS INTEGER, PRIMARY KEY(MCC, MNC));
INSERT OR REPLACE INTO qcril_operator_specific_config VALUES ('310', '410', 1);
