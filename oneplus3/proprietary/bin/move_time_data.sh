#!/system/bin/sh

# Copyright (c) 2018 Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.

DEST_PATH="/data/vendor/time"
FILES_MOVED="/data/vendor/time/moved"
SRC_PATH="/data/time"

if [ ! -f "$FILES_MOVED" ]; then
  for i in "$SRC_PATH/ats"*; do
    dest_path=$DEST_PATH/"${i#$SRC_PATH/}"
    mv $i "$dest_path"
  done
  restorecon -R "$DEST_PATH"
  echo 1 > "$FILES_MOVED"
fi
