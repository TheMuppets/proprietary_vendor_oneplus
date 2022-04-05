/*
  Copyright (c) 2021 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT PRIMARY KEY NOT NULL, def_val TEXT, value TEXT);
INSERT OR REPLACE INTO qcril_properties_table(property, def_val) VALUES('qcrildb_version',7.0);
INSERT OR REPLACE INTO qcril_properties_table(property, def_val) VALUES("persist.vendor.radio.shutdown_deactivate_timer", "90");
UPDATE qcril_properties_table SET def_val="1" WHERE property="persist.vendor.radio.cs_srv_type";
DELETE FROM qcril_properties_table WHERE property="persist.vendor.radio.hlos_prov_pref_auto";
