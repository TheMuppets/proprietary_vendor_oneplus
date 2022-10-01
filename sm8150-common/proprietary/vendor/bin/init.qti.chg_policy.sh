#! /vendor/bin/sh

#
# Copyright (c) 2019-2020 Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.
#
# Copyright (c) 2019 The Linux Foundation. All rights reserved.
#

export PATH=/vendor/bin

soc_id=`getprop ro.vendor.qti.soc_id`
if [ "$soc_id" -eq 415 ] || [ "$soc_id" -eq 439 ] || [ "$soc_id" -eq 450 ]; then
    setprop persist.vendor.hvdcp_opti.start 2
    exit 0
fi

if [ "$soc_id" -eq 441 ] || [ "$soc_id" -eq 471 ]; then
	#Scuba does not support usb-pd or charge pumps
	find /sys/class/power_supply/battery/ -type f  -maxdepth 1 | xargs chown system.system
	find /sys/class/power_supply/bms/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/power_supply/main/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/power_supply/usb/ -type f -maxdepth 1 | xargs chown system.system
else
	find /sys/class/power_supply/battery/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/power_supply/bms/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/power_supply/main/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/power_supply/usb/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/power_supply/charge_pump_master/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/power_supply/pc_port/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/power_supply/dc/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/power_supply/parallel/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/usbpd/usbpd0/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/qc-vdm/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/charge_pump/ -type f -maxdepth 1 | xargs chown system.system
	find /sys/class/qcom-battery/ -type f -maxdepth 1 | xargs chown system.system

	for i in 0 1 2 3 4 5 6 7 8 9
	do
		devname=`cat /sys/bus/iio/devices/iio:device$i/name`
		if [[ "$devname" == *smb* ]] || [[ "$devname" == *qg* ]] || [[ "$devname" == *div2_cp* ]]; then
			find /sys/bus/iio/devices/iio:device$i/ -type f -maxdepth 1 | xargs chown system.system
		fi
	done
fi

setprop persist.vendor.hvdcp_opti.start 1
