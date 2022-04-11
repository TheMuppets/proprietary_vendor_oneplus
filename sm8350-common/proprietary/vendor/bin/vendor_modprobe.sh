#! /vendor/bin/sh
#=============================================================================
# Copyright (c) 2019-2020 Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.
#=============================================================================

#default to /vendor/lib/modules
MODULES_PATH="/vendor/lib/modules/"
GKI_MOD_PATH="/vendor/lib/modules/5.4-gki"

MODPROBE="/vendor/bin/modprobe"
MODULES=`${MODPROBE} -d ${MODULES_PATH} -l`

# Find the first non-blacklisted module and try
# inserting it. If insertion fails the module is not
# compatible with the current kernel. Change the modules
# directory to gki.
for MODULE in ${MODULES}; do
	cat ${MODULES_PATH}/modules.blocklist | grep $MODULE
	if [ $? -ne 0 ]; then
		break
	fi
done

${MODPROBE} -a -b -d ${MODULES_PATH} ${MODULE}
if [ $? -ne 0 ];then
	MODULES_PATH=$GKI_MOD_PATH
	MODULES=`${MODPROBE} -d ${MODULES_PATH} -l`
fi

# Iterate over module list and modprobe them in background.
for MODULE in ${MODULES}; do
	${MODPROBE} -a -b -d ${MODULES_PATH} ${MODULE} &
done

# Wait until all the modprobes are finished
wait
