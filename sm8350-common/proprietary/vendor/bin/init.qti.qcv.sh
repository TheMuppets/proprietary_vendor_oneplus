#! /vendor/bin/sh
#=============================================================================
# Copyright (c) 2020-21 Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.
#=============================================================================

soc_id=`cat /sys/devices/soc0/soc_id` 2> /dev/null

# Store soc_id in ro.vendor.qti.soc_id
setprop ro.vendor.qti.soc_id $soc_id

# For chipsets in QCV family, convert soc_id to soc_name
# and store it in ro.vendor.qti.soc_name.
if [ "$soc_id" -eq 415 ] || [ "$soc_id" -eq 439 ] || [ "$soc_id" -eq 456 ] ||
   [ "$soc_id" -eq 501 ] || [ "$soc_id" -eq 502 ]; then
    setprop ro.vendor.qti.soc_name lahaina
    setprop ro.vendor.qti.soc_model SM8350
elif [ "$soc_id" -eq 450 ]; then
    setprop ro.vendor.qti.soc_name shima
    setprop ro.vendor.qti.soc_model SM7350
elif [ "$soc_id" -eq 475 ] || [ "$soc_id" -eq 499 ] ||
     [ "$soc_id" -eq 497 ] || [ "$soc_id" -eq 498 ] ||
     [ "$soc_id" -eq 515 ]; then
    setprop ro.vendor.qti.soc_name yupik
    setprop ro.vendor.qti.soc_model SM7325
fi
