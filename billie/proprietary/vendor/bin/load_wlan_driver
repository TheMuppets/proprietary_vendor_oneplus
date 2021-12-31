#!/vendor/bin/sh
# load_wlan_driver.sh

ftm_mode=$(getprop ro.boot.ftm_mode)
wlan_mod=$(lsmod | grep "^wlan")
if [[ $wlan_mod == "" && $ftm_mode != "ftm_at" && $ftm_mode != "ftm_rf" ]]
then
    insmod /vendor/lib/modules/qca_cld3_wlan.ko
    insmod /vendor/lib/modules-aging/qca_cld3_wlan.ko
fi
