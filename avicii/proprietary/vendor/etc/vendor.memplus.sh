#! /vendor/bin/sh

function configure_memplus_parameters() {
    bootmode=`getprop ro.vendor.factory.mode`
    if [ "$bootmode" == "ftm" ] || [ "$bootmode" == "wlan" ] || [ "$bootmode" == "rf" ];then
        return
    fi
    # wait post_boot config to be done
    while :
    do
        postboot_running=`getprop vendor.sys.memplus.postboot`
        if [ "$postboot_running" == "2" ]; then
            setprop vendor.sys.memplus.postboot 3
            exit 0
        elif [ "$postboot_running" == "3" ]; then
            break
        fi
        sleep 1
    done
    memplus=`getprop persist.vendor.memplus.enable`
    case "$memplus" in
        "0")
            # disable swapspace
            # use original settings
            # remove swapfile to reclaim storage space
            # runtime disable, we don't remove swap
            # rm /data/vendor/swap/swapfile
            swapoff /dev/block/zram0
            #echo 2 > /sys/module/memplus_core/parameters/memory_plus_enabled
            ;;
        "1")
            # enable memplus
            # reset zram swapspace
            swapoff /dev/block/zram0
            echo 1 > /sys/block/zram0/reset
            echo 2202009600 > /sys/block/zram0/disksize
            echo 0 > /sys/block/zram0/mem_limit
            mkswap /dev/block/zram0
            swapon /dev/block/zram0 -p 32758
            if [ $? -eq 0 ]; then
                echo 1 > /sys/module/memplus_core/parameters/memory_plus_enabled
            fi
            ;;
        *)
            # reset zram swapspace
            swapoff /dev/block/zram0
            echo 1 > /sys/block/zram0/reset
            echo 2202009600 > /sys/block/zram0/disksize
            echo 0 > /sys/block/zram0/mem_limit
            mkswap /dev/block/zram0
            swapon /dev/block/zram0 -p 32758
            if [ $? -eq 0 ]; then
                echo 0 > /sys/module/memplus_core/parameters/memory_plus_enabled
            fi
            ;;
    esac

    # final check for consistency
    memplus_now=`getprop persist.vendor.memplus.enable`
    if [ "$memplus" == "$memplus_now" ]; then
        retry=0
    fi
}
retry=1
while :
do
    if [ "$retry" == "1" ]; then
        configure_memplus_parameters
    else
        break
    fi
done
