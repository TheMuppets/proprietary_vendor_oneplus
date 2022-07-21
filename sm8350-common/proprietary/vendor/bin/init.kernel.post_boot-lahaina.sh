#=============================================================================
# Copyright (c) 2020-2021 Qualcomm Technologies, Inc.
# All Rights Reserved.
# Confidential and Proprietary - Qualcomm Technologies, Inc.
# Copyright (C) 2020 Oplus. All rights reserved.
# Copyright (c) 2009-2012, 2014-2019, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of The Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#=============================================================================

function configure_zram_parameters() {
	MemTotalStr=`cat /proc/meminfo | grep MemTotal`
	MemTotal=${MemTotalStr:16:8}

	low_ram=`getprop ro.config.low_ram`

	# Zram disk - 75% for Go and < 2GB devices .
	# For >2GB Non-Go devices, size = 50% of RAM size. Limit the size to 4GB.
	# And enable lz4 zram compression for Go targets.

	let RamSizeGB="( $MemTotal / 1048576 ) + 1"
	diskSizeUnit=M
	if [ $RamSizeGB -le 2 ]; then
		let zRamSizeMB="( $RamSizeGB * 1024 ) * 3 / 4"
	else
		let zRamSizeMB="( $RamSizeGB * 1024 ) / 2"
	fi

	# use MB avoid 32 bit overflow
	if [ $zRamSizeMB -gt 4096 ]; then
		let zRamSizeMB=4096
	fi

	if [ "$low_ram" == "true" ]; then
		echo lz4 > /sys/block/zram0/comp_algorithm
	fi

	if [ -f /sys/block/zram0/disksize ]; then
		if [ -f /sys/block/zram0/use_dedup ]; then
			echo 1 > /sys/block/zram0/use_dedup
		fi
		echo "$zRamSizeMB""$diskSizeUnit" > /sys/block/zram0/disksize

		# ZRAM may use more memory than it saves if SLAB_STORE_USER
		# debug option is enabled.
		if [ -e /sys/kernel/slab/zs_handle ]; then
			echo 0 > /sys/kernel/slab/zs_handle/store_user
		fi
		if [ -e /sys/kernel/slab/zspage ]; then
			echo 0 > /sys/kernel/slab/zspage/store_user
		fi

		mkswap /dev/block/zram0
		swapon /dev/block/zram0 -p 32758
	fi
}

#/*Add swappiness tunning parameters*/
function oplus_configure_tunning_swappiness() {
    MemTotalStr=`cat /proc/meminfo | grep MemTotal`
    MemTotal=${MemTotalStr:16:8}

    if [ $MemTotal -le 6291456 ]; then
        echo 0 > /proc/sys/vm/swappiness_threshold1_size
        echo 0 > /proc/sys/vm/swappiness_threshold1_size
        echo 0 > /proc/sys/vm/vm_swappiness_threshold2
        echo 0 > /proc/sys/vm/swappiness_threshold2_size
    elif [ $MemTotal -le 8388608 ]; then
        echo 100 > /proc/sys/vm/vm_swappiness_threshold1
        echo 2000 > /proc/sys/vm/swappiness_threshold1_size
        echo 120 > /proc/sys/vm/vm_swappiness_threshold2
        echo 1500 > /proc/sys/vm/swappiness_threshold2_size
    else
        echo 100 > /proc/sys/vm/vm_swappiness_threshold1
        echo 4096 > /proc/sys/vm/swappiness_threshold1_size
        echo 120 > /proc/sys/vm/vm_swappiness_threshold2
        echo 2048 > /proc/sys/vm/swappiness_threshold2_size
    fi
}

#ifdef OPLUS_FEATURE_ZRAM_OPT
function oppo_configure_zram_parameters() {
    MemTotalStr=`cat /proc/meminfo | grep MemTotal`
    MemTotal=${MemTotalStr:16:8}

    echo lz4 > /sys/block/zram0/comp_algorithm
    echo 160 > /sys/module/zram_opt/parameters/vm_swappiness
    echo 60 > /sys/module/zram_opt/parameters/direct_vm_swappiness
    echo 0 > /proc/sys/vm/page-cluster

    if [ -f /sys/block/zram0/disksize ]; then
        if [ -f /sys/block/zram0/use_dedup ]; then
            echo 1 > /sys/block/zram0/use_dedup
        fi

        if [ $MemTotal -le 524288 ]; then
            #config 384MB zramsize with ramsize 512MB
            echo 402653184 > /sys/block/zram0/disksize
        elif [ $MemTotal -le 1048576 ]; then
            #config 768MB zramsize with ramsize 1GB
            echo 805306368 > /sys/block/zram0/disksize
        elif [ $MemTotal -le 2097152 ]; then
            #config 1GB+256MB zramsize with ramsize 2GB
            echo lz4 > /sys/block/zram0/comp_algorithm
            echo 1342177280 > /sys/block/zram0/disksize
        elif [ $MemTotal -le 3145728 ]; then
            #config 1GB+512MB zramsize with ramsize 3GB
            echo 1610612736 > /sys/block/zram0/disksize
        elif [ $MemTotal -le 4194304 ]; then
            #config 2GB+512MB zramsize with ramsize 4GB
            echo 2684354560 > /sys/block/zram0/disksize
        elif [ $MemTotal -le 6291456 ]; then
            #config 3GB zramsize with ramsize 6GB
            echo 3221225472 > /sys/block/zram0/disksize
        else
            #config 4GB zramsize with ramsize >=8GB
            echo 4294967296 > /sys/block/zram0/disksize
        fi
        mkswap /dev/block/zram0
        swapon /dev/block/zram0 -p 32758
    fi
}

function oplus_configure_hybridswap() {
	kernel_version=`uname -r`

	if [[ "$kernel_version" == "5.10"* ]]; then
		echo 160 > /sys/module/oplus_bsp_zram_opt/parameters/vm_swappiness
	else
		echo 160 > /sys/module/zram_opt/parameters/vm_swappiness
	fi

	echo 0 > /proc/sys/vm/page-cluster

	# FIXME: set system memcg pata in init.kernel.post_boot-lahaina.sh temporary
	echo 500 > /dev/memcg/system/memory.app_score
	echo systemserver > /dev/memcg/system/memory.name
}
#endif /*OPLUS_FEATURE_ZRAM_OPT*/

function configure_read_ahead_kb_values() {
	MemTotalStr=`cat /proc/meminfo | grep MemTotal`
	MemTotal=${MemTotalStr:16:8}

	dmpts=$(ls /sys/block/*/queue/read_ahead_kb | grep -e dm -e mmc)

	# Set 128 for <= 3GB &
	# set 512 for >= 4GB targets.
	if [ $MemTotal -le 3145728 ]; then
		ra_kb=128
	else
		ra_kb=512
	fi
	if [ -f /sys/block/mmcblk0/bdi/read_ahead_kb ]; then
		echo $ra_kb > /sys/block/mmcblk0/bdi/read_ahead_kb
	fi
	if [ -f /sys/block/mmcblk0rpmb/bdi/read_ahead_kb ]; then
		echo $ra_kb > /sys/block/mmcblk0rpmb/bdi/read_ahead_kb
	fi
	for dm in $dmpts; do
		dm_dev=`echo $dm |cut -d/ -f4`
		if [ "$dm_dev" = "" ]; then
			is_erofs=""
		else
			is_erofs=`mount |grep erofs |grep "${dm_dev} "`
		fi
		if [ "$is_erofs" = "" ]; then
			echo $ra_kb > $dm
		else
			echo 128 > $dm
		fi
	done
}

function configure_memory_parameters() {
	# Set Memory parameters.
	#
	# Set per_process_reclaim tuning parameters
	# All targets will use vmpressure range 50-70,
	# All targets will use 512 pages swap size.
	#
	# Set Low memory killer minfree parameters
	# 32 bit Non-Go, all memory configurations will use 15K series
	# 32 bit Go, all memory configurations will use uLMK + Memcg
	# 64 bit will use Google default LMK series.
	#
	# Set ALMK parameters (usually above the highest minfree values)
	# vmpressure_file_min threshold is always set slightly higher
	# than LMK minfree's last bin value for all targets. It is calculated as
	# vmpressure_file_min = (last bin - second last bin ) + last bin
	#
	# Set allocstall_threshold to 0 for all targets.
	#
	MemTotalStr=`cat /proc/meminfo | grep MemTotal`
	MemTotal=${MemTotalStr:16:8}

#ifdef OPLUS_FEATURE_ZRAM_OPT
	if [ -f /sys/block/zram0/hybridswap_enable ]; then
		oplus_configure_hybridswap
	else
		oppo_configure_zram_parameters
	fi
        oplus_configure_tunning_swappiness
#else
#       configure_zram_parameters
#endif /*OPLUS_FEATURE_ZRAM_OPT*/
	configure_read_ahead_kb_values
	echo 0 > /proc/sys/vm/page-cluster

	if [ $MemTotal -le 8388608 ]; then
		echo 32 > /proc/sys/vm/watermark_scale_factor
	else
		echo 16 > /proc/sys/vm/watermark_scale_factor
	fi

	echo 0 > /proc/sys/vm/watermark_boost_factor
#ifndef OPLUS_FEATURE_ZRAM_OPT
#	echo 100 > /proc/sys/vm/swappiness
#endif /*OPLUS_FEATURE_ZRAM_OPT*/
}

rev=`cat /sys/devices/soc0/revision`
ddr_type=`od -An -tx /proc/device-tree/memory/ddr_device_type`
ddr_type4="07"
ddr_type5="08"

# Core control parameters for gold
echo 2 > /sys/devices/system/cpu/cpu4/core_ctl/min_cpus
echo 60 > /sys/devices/system/cpu/cpu4/core_ctl/busy_up_thres
echo 30 > /sys/devices/system/cpu/cpu4/core_ctl/busy_down_thres
echo 100 > /sys/devices/system/cpu/cpu4/core_ctl/offline_delay_ms
echo 3 > /sys/devices/system/cpu/cpu4/core_ctl/task_thres

# Core control parameters for gold+
echo 0 > /sys/devices/system/cpu/cpu7/core_ctl/min_cpus
echo 60 > /sys/devices/system/cpu/cpu7/core_ctl/busy_up_thres
echo 30 > /sys/devices/system/cpu/cpu7/core_ctl/busy_down_thres
echo 100 > /sys/devices/system/cpu/cpu7/core_ctl/offline_delay_ms
echo 1 > /sys/devices/system/cpu/cpu7/core_ctl/task_thres

# Controls how many more tasks should be eligible to run on gold CPUs
# w.r.t number of gold CPUs available to trigger assist (max number of
# tasks eligible to run on previous cluster minus number of CPUs in
# the previous cluster).
#
# Setting to 1 by default which means there should be at least
# 4 tasks eligible to run on gold cluster (tasks running on gold cores
# plus misfit tasks on silver cores) to trigger assitance from gold+.
echo 1 > /sys/devices/system/cpu/cpu7/core_ctl/nr_prev_assist_thresh

# Disable Core control on silver
echo 0 > /sys/devices/system/cpu/cpu0/core_ctl/enable

# Setting b.L scheduler parameters
echo 95 95 > /proc/sys/kernel/sched_upmigrate
echo 85 85 > /proc/sys/kernel/sched_downmigrate
echo 100 > /proc/sys/kernel/sched_group_upmigrate
echo 85 > /proc/sys/kernel/sched_group_downmigrate
echo 1 > /proc/sys/kernel/sched_walt_rotate_big_tasks
echo 400000000 > /proc/sys/kernel/sched_coloc_downmigrate_ns
echo 39000000 39000000 39000000 39000000 39000000 39000000 39000000 5000000 > /proc/sys/kernel/sched_coloc_busy_hyst_cpu_ns
echo 240 > /proc/sys/kernel/sched_coloc_busy_hysteresis_enable_cpus
echo 10 10 10 10 10 10 10 95 > /proc/sys/kernel/sched_coloc_busy_hyst_cpu_busy_pct

# set the threshold for low latency task boost feature which prioritize
# binder activity tasks
echo 325 > /proc/sys/kernel/walt_low_latency_task_threshold
# change colocation threshould
echo 162 > /proc/sys/kernel/sched_min_task_util_for_colocation

# cpuset parameters
echo 0-3 > /dev/cpuset/background/cpus
echo 0-3 > /dev/cpuset/system-background/cpus

#cpu cgroup
echo 3 > /dev/cpuctl/background/cpu.uclamp.window_policy
echo 1 > /dev/cpuctl/background/cpu.uclamp.discount_wait_time
echo 1 > /dev/cpuctl/background/cpu.uclamp.ed_task_filter
echo 1 > /dev/cpuctl/background/cpu.uclamp.top_task_filter

# Turn off scheduler boost at the end
echo 0 > /proc/sys/kernel/sched_boost

#config power effiecny tunning parameters
echo 1 > /sys/module/cpufreq_effiency/parameters/affect_mode
echo "300000,45000,1209600,50000,0"  > /sys/module/cpufreq_effiency/parameters/cluster0_effiency
echo "710400,45000,1881600,50000,0"  > /sys/module/cpufreq_effiency/parameters/cluster1_effiency
echo "844800,50000,2035200,55000,0"  > /sys/module/cpufreq_effiency/parameters/cluster2_effiency

# configure governor settings for silver cluster
echo "schedutil" > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor
echo 0 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/down_rate_limit_us
echo 0 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/up_rate_limit_us
if [ $rev == "1.0" ]; then
	echo 1190400 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/hispeed_freq
else
	echo 1209600 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/hispeed_freq
fi
echo 691200 > /sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq
echo 1 > /sys/devices/system/cpu/cpufreq/policy0/schedutil/pl

# configure input boost settings
if [ $rev == "1.0" ]; then
	echo "0:1382800" > /sys/devices/system/cpu/cpu_boost/input_boost_freq
else
	echo "0:1305600" > /sys/devices/system/cpu/cpu_boost/input_boost_freq
fi
echo 120 > /sys/devices/system/cpu/cpu_boost/input_boost_ms

# configure governor settings for gold cluster
echo "schedutil" > /sys/devices/system/cpu/cpufreq/policy4/scaling_governor
echo 0 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/down_rate_limit_us
echo 0 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/up_rate_limit_us
if [ $rev == "1.0" ]; then
	echo 1497600 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/hispeed_freq
else
	echo 1555200 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/hispeed_freq
fi
echo 1 > /sys/devices/system/cpu/cpufreq/policy4/schedutil/pl
echo "80 2112000:95" > /sys/devices/system/cpu/cpufreq/policy4/schedutil/target_loads

# configure governor settings for gold+ cluster
echo "schedutil" > /sys/devices/system/cpu/cpufreq/policy7/scaling_governor
echo 0 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/down_rate_limit_us
echo 0 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/up_rate_limit_us
if [ $rev == "1.0" ]; then
	echo 1536000 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/hispeed_freq
else
	echo 1670400 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/hispeed_freq
fi
echo 1 > /sys/devices/system/cpu/cpufreq/policy7/schedutil/pl
echo "80 2380800:95" > /sys/devices/system/cpu/cpufreq/policy7/schedutil/target_loads

# configure bus-dcvs
for device in /sys/devices/platform/soc
do
	for cpubw in $device/*cpu-cpu-llcc-bw/devfreq/*cpu-cpu-llcc-bw
	do
		cat $cpubw/available_frequencies | cut -d " " -f 1 > $cpubw/min_freq
		echo "4577 7110 9155 12298 14236 15258" > $cpubw/bw_hwmon/mbps_zones
		echo 4 > $cpubw/bw_hwmon/sample_ms
		echo 80 > $cpubw/bw_hwmon/io_percent
		echo 20 > $cpubw/bw_hwmon/hist_memory
		echo 10 > $cpubw/bw_hwmon/hyst_length
		echo 30 > $cpubw/bw_hwmon/down_thres
		echo 0 > $cpubw/bw_hwmon/guard_band_mbps
		echo 250 > $cpubw/bw_hwmon/up_scale
		echo 1600 > $cpubw/bw_hwmon/idle_mbps
		echo 12298 > $cpubw/max_freq
		echo 40 > $cpubw/polling_interval
	done

	for llccbw in $device/*cpu-llcc-ddr-bw/devfreq/*cpu-llcc-ddr-bw
	do
		cat $llccbw/available_frequencies | cut -d " " -f 1 > $llccbw/min_freq
		if [ ${ddr_type:4:2} == $ddr_type4 ]; then
			echo "1720 2086 2929 3879 5931 6515 8136" > $llccbw/bw_hwmon/mbps_zones
		elif [ ${ddr_type:4:2} == $ddr_type5 ]; then
			echo "1720 2086 2929 3879 6515 7980 12191" > $llccbw/bw_hwmon/mbps_zones
		fi
		echo 4 > $llccbw/bw_hwmon/sample_ms
		echo 80 > $llccbw/bw_hwmon/io_percent
		echo 20 > $llccbw/bw_hwmon/hist_memory
		echo 10 > $llccbw/bw_hwmon/hyst_length
		echo 30 > $llccbw/bw_hwmon/down_thres
		echo 0 > $llccbw/bw_hwmon/guard_band_mbps
		echo 250 > $llccbw/bw_hwmon/up_scale
		echo 1600 > $llccbw/bw_hwmon/idle_mbps
		echo 6515 > $llccbw/max_freq
		echo 40 > $llccbw/polling_interval
	done

	for l3bw in $device/*snoop-l3-bw/devfreq/*snoop-l3-bw
	do
		cat $l3bw/available_frequencies | cut -d " " -f 1 > $l3bw/min_freq
		echo 4 > $l3bw/bw_hwmon/sample_ms
		echo 10 > $l3bw/bw_hwmon/io_percent
		echo 20 > $l3bw/bw_hwmon/hist_memory
		echo 10 > $l3bw/bw_hwmon/hyst_length
		echo 0 > $l3bw/bw_hwmon/down_thres
		echo 0 > $l3bw/bw_hwmon/guard_band_mbps
		echo 0 > $l3bw/bw_hwmon/up_scale
		echo 1600 > $l3bw/bw_hwmon/idle_mbps
		echo 9155 > $l3bw/max_freq
		echo 40 > $l3bw/polling_interval
	done

	# configure mem_latency settings for LLCC and DDR scaling and qoslat
	for memlat in $device/*lat/devfreq/*lat
	do
		cat $memlat/available_frequencies | cut -d " " -f 1 > $memlat/min_freq
		echo 8 > $memlat/polling_interval
		echo 400 > $memlat/mem_latency/ratio_ceil
	done

	# configure compute settings for gold latfloor
	for latfloor in $device/*cpu4-cpu*latfloor/devfreq/*cpu4-cpu*latfloor
	do
		cat $latfloor/available_frequencies | cut -d " " -f 1 > $latfloor/min_freq
		echo 8 > $latfloor/polling_interval
	done

	# configure mem_latency settings for prime latfloor
	for latfloor in $device/*cpu7-cpu*latfloor/devfreq/*cpu7-cpu*latfloor
	do
		cat $latfloor/available_frequencies | cut -d " " -f 1 > $latfloor/min_freq
		echo 8 > $latfloor/polling_interval
		echo 25000 > $latfloor/mem_latency/ratio_ceil
	done

	# CPU4 L3 ratio ceil
	for l3gold in $device/*cpu4-cpu-l3-lat/devfreq/*cpu4-cpu-l3-lat
	do
		echo 4000 > $l3gold/mem_latency/ratio_ceil
	done

	# CPU5 L3 ratio ceil
	for l3gold in $device/*cpu5-cpu-l3-lat/devfreq/*cpu5-cpu-l3-lat
	do
		echo 4000 > $l3gold/mem_latency/ratio_ceil
	done

	# CPU6 L3 ratio ceil
	for l3gold in $device/*cpu6-cpu-l3-lat/devfreq/*cpu6-cpu-l3-lat
	do
		echo 4000 > $l3gold/mem_latency/ratio_ceil
	done

	# prime L3 ratio ceil
	for l3prime in $device/*cpu7-cpu-l3-lat/devfreq/*cpu7-cpu-l3-lat
	do
	    echo 20000 > $l3prime/mem_latency/ratio_ceil
	done

	# qoslat ratio ceil
	for qoslat in $device/*qoslat/devfreq/*qoslat
	do
	    echo 50 > $qoslat/mem_latency/ratio_ceil
	done
done
echo N > /sys/module/lpm_levels/parameters/sleep_disabled
#Add for sleep mode adjust. 2020-12-04
inner_temp_boot_mode=`getprop sys.oppo_ftm_mode`
case "$inner_temp_boot_mode" in
	"3")
		echo "Use s2idle(ftm, sleep to idle) sleep mode"
		echo s2idle > /sys/power/mem_sleep
	;;
	*)
		echo "Use deep(sleep to mem) sleep mode"
		echo deep > /sys/power/mem_sleep
	;;
esac
configure_memory_parameters

# Let kernel know our image version/variant/crm_version
if [ -f /sys/devices/soc0/select_image ]; then
	image_version="10:"
	image_version+=`getprop ro.build.id`
	image_version+=":"
	image_version+=`getprop ro.build.version.incremental`
	image_variant=`getprop ro.product.name`
	image_variant+="-"
	image_variant+=`getprop ro.build.type`
	oem_version=`getprop ro.build.version.codename`
	echo 10 > /sys/devices/soc0/select_image
	echo $image_version > /sys/devices/soc0/image_version
	echo $image_variant > /sys/devices/soc0/image_variant
	echo $oem_version > /sys/devices/soc0/image_crm_version
fi

# Change console log level as per console config property
console_config=`getprop persist.vendor.console.silent.config`
case "$console_config" in
	"1")
		echo "Enable console config to $console_config"
		echo 0 > /proc/sys/kernel/printk
	;;
	*)
		echo "Enable console config to $console_config"
	;;
esac

chown -h system.system /sys/devices/system/cpu/cpufreq/policy0/schedutil/target_loads
chown -h system.system /sys/devices/system/cpu/cpufreq/policy4/schedutil/target_loads
chown -h system.system /sys/devices/system/cpu/cpufreq/policy7/schedutil/target_loads

setprop vendor.post_boot.parsed 1
