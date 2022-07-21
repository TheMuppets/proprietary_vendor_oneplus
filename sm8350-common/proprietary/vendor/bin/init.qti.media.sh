#! /vendor/bin/sh
#==============================================================================
#       init.qti.media.sh
#
# Copyright (c) 2020-2021, Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.
#
# Copyright (c) 2020, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of The Linux Foundation nor the names of its
#       contributors may be used to endorse or promote products derived
#       from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#===============================================================================

if [ -f /sys/devices/soc0/soc_id ]; then
    soc_hwid=`cat /sys/devices/soc0/soc_id` 2> /dev/null
else
    soc_hwid=`cat /sys/devices/system/soc/soc0/id` 2> /dev/null
fi

target_qssi=`getprop vendor.media.target.qssi`
target=`getprop ro.board.platform`
build_codename=`getprop vendor.media.system.build_codename`
case "$target" in
    "lahaina")
        case "$soc_hwid" in
            475|515)
                setprop vendor.media.target_variant "_yupik_v0"
                if [ $build_codename -eq "11" ]; then
                    setprop vendor.netflix.bsp_rev "Q7325-SPY-33758-1"
                fi
                sku_ver=`cat /sys/devices/platform/soc/aa00000.qcom,vidc/sku_version` 2> /dev/null
                if [ $sku_ver -eq 1 ]; then
                    setprop vendor.media.target_variant "_yupik_v1"
                fi
                ;;
            450)
                setprop vendor.media.target_variant "_shima_v3"
                if [ $build_codename -eq "11" ]; then
                    setprop vendor.netflix.bsp_rev "Q875-32774-1"
                fi
                sku_ver=`cat /sys/devices/platform/soc/aa00000.qcom,vidc/sku_version` 2> /dev/null
                if [ $sku_ver -eq 1 ]; then
                    setprop vendor.media.target_variant "_shima_v1"
                elif [ $sku_ver -eq 2 ]; then
                    setprop vendor.media.target_variant "_shima_v2"
                fi
                ;;
            497|498)
                    setprop vendor.media.target_variant "_yupik_iot"
                ;;
            *)
                if [ $target_qssi == "true" ]; then
                    setprop vendor.media.target_variant "_lahaina_vendor"
                else
                    setprop vendor.media.target_variant "_lahaina"
                fi
                if [ $build_codename -eq "11" ]; then
                    setprop vendor.netflix.bsp_rev "Q875-32408-1"
                fi
                ;;
        esac
        ;;
    "holi")
        case "$soc_hwid" in
            507)
                setprop vendor.media.target_variant "_blair"
                if [ $build_codename -eq "11" ]; then
                    setprop vendor.netflix.bsp_rev "Q4350-32962-1"
                fi
                ;;
            454|472)
                setprop vendor.media.target_variant "_holi"
                if [ $build_codename -eq "11" ]; then
                    setprop vendor.netflix.bsp_rev "Q4350-32962-1"
                fi
                ;;
        esac
        ;;
    "msmnile")
        setprop vendor.media.target_variant "_msmnile"
        ;;
    "sm6150")
        setprop vendor.media.target_variant "_sm6150"
        ;;
esac
